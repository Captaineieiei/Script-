-- SpectreWare | ESPLib v1.0
-- Usage:
--   local ESP = loadstring(game:HttpGet("RAW_URL"))()
--   local esp = ESP.new(CFG, Blacklist)
--   esp:FireScan()       -- เรียกหลัง Enable ESP
--   esp:ScanWorkspace()  -- สแกน NPC
--   esp:Destroy()        -- เคลียร์ทั้งหมด

local Players    = game:GetService("Players")
local RunService = game:GetService("RunService")
local LP         = Players.LocalPlayer

local ESPLib = {}

function ESPLib.new(CFG, Blacklist)
    local self      = {}
    local ESPObjects  = {}
    local BypassConns = {}
    local _pendingESP = {}
    local _toRemove   = {}
    local _drawKeys   = {"boxTop","boxBot","boxLeft","boxRight","hpBG","hpFill","nameLabel","distLabel","hpLabel"}
    local _conns      = {}   -- event connections สำหรับ Destroy

    local Camera = workspace.CurrentCamera
    local _camConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
        Camera = workspace.CurrentCamera
    end)
    table.insert(_conns, _camConn)

    -- ── Bypass ──────────────────────────────────────────────────────────────
    local function applyBypass(c)
        if BypassConns[c] then return end
        pcall(function()
            for _,p in ipairs(c:GetDescendants()) do
                if p:IsA("BasePart") then p.LocalTransparencyModifier = 0 end
            end
        end)
        BypassConns[c] = { c.DescendantAdded:Connect(function(i)
            if i:IsA("BasePart") then pcall(function() i.LocalTransparencyModifier = 0 end) end
        end) }
    end
    local function removeBypass(c)
        local t = BypassConns[c]; if not t then return end
        for _,v in ipairs(t) do pcall(function() v:Disconnect() end) end
        BypassConns[c] = nil
    end

    -- ── Helpers ──────────────────────────────────────────────────────────────
    local function resolveHRP(c)
        return c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("UpperTorso")
            or c:FindFirstChild("Torso") or c:FindFirstChild("Head")
    end

    local function GetBoundingBox(hrp, vpY)
        if not hrp or not hrp.Parent or not Camera then return nil end
        local pos    = hrp.Position
        local center = Camera:WorldToViewportPoint(pos)
        if not center or center.Z <= 0 then return nil end
        local vpSizeY = vpY or Camera.ViewportSize.Y
        if not vpSizeY then return nil end
        local top    = Camera:WorldToViewportPoint(pos + Vector3.new(0,  2.80, 0))
        local bottom = Camera:WorldToViewportPoint(pos + Vector3.new(0, -2.75, 0))
        if not top or not bottom then return nil end
        local topY    = top.Z    <= 0 and 0       or top.Y
        local bottomY = bottom.Z <= 0 and vpSizeY or bottom.Y
        local h = bottomY - topY
        if h < 2 then return nil end
        local w = h * 0.42
        return center.X-w, topY, center.X+w, bottomY
    end

    local function GetHPColor(r)
        r = math.clamp(r, 0, 1)
        return r > 0.5 and Color3.new(1-(r-0.5)*2, 1, 0) or Color3.new(1, r*2, 0)
    end

    local function IsNPC(model)
        if not model:IsA("Model") or Players:GetPlayerFromCharacter(model) then return false end
        if not model:FindFirstChildOfClass("Humanoid") then return false end
        return (model:FindFirstChild("HumanoidRootPart") or model:FindFirstChild("Torso")) ~= nil
    end

    -- ── Drawing ──────────────────────────────────────────────────────────────
    local function NewLine()
        local l = Drawing.new("Line")
        l.Visible=false; l.Thickness=CFG.BoxThickness; l.Color=CFG.BoxColor; l.ZIndex=5; return l
    end
    local function NewRect()
        local r = Drawing.new("Square")
        r.Visible=false; r.Thickness=0; r.Filled=true; r.ZIndex=4; return r
    end
    local function NewText(size, color)
        local t = Drawing.new("Text")
        t.Visible=false; t.Size=size or CFG.NameSize; t.Font=Drawing.Fonts.UI
        t.Color=color or Color3.new(1,1,1); t.Outline=true; t.OutlineColor=Color3.new(0,0,0)
        t.Center=true; t.ZIndex=6; return t
    end

    local function SetAllVisible(obj, v)
        obj.boxTop.Visible=v;  obj.boxBot.Visible=v
        obj.boxLeft.Visible=v; obj.boxRight.Visible=v
        obj.hpBG.Visible=v;    obj.hpFill.Visible=v
        obj.nameLabel.Visible=v; obj.distLabel.Visible=v; obj.hpLabel.Visible=v
    end
    local function hideObj(obj)
        if obj._vis then SetAllVisible(obj, false); obj._vis=false end
    end

    -- ── Core ESP ─────────────────────────────────────────────────────────────
    local function CreateESP(c, forcePlr)
        if ESPObjects[c] then return end
        local hrp  = resolveHRP(c)
        local hum2 = c:FindFirstChildOfClass("Humanoid")
        if not hrp or not hum2 then return end
        local plr = forcePlr or Players:GetPlayerFromCharacter(c)
        if plr == LP then return end
        local obj = {
            boxTop=NewLine(), boxBot=NewLine(), boxLeft=NewLine(), boxRight=NewLine(),
            hpBG=NewRect(), hpFill=NewRect(),
            nameLabel=NewText(CFG.NameSize),
            distLabel=NewText(11, Color3.fromRGB(200,200,200)),
            hpLabel=NewText(10),
            hrp=hrp, hum=hum2, plr=plr,
            isNPC = not plr and IsNPC(c),
            _vis=false, char=c, _hideFrames=0,
        }
        obj.sides = {obj.boxTop, obj.boxBot, obj.boxLeft, obj.boxRight}
        obj.hpBG.Color=Color3.fromRGB(30,30,30); obj.hpBG.Transparency=0.4
        ESPObjects[c] = obj
        if CFG.BypassAntiESP and not obj.isNPC then applyBypass(c) end
    end

    local function RemoveESP(c)
        local obj = ESPObjects[c]; if not obj then return end
        ESPObjects[c] = nil; _pendingESP[c] = nil
        for _,k in ipairs(_drawKeys) do pcall(function() obj[k]:Remove() end) end
        removeBypass(c)
    end

    -- ── RenderStepped ────────────────────────────────────────────────────────
    local _rsConn = RunService.RenderStepped:Connect(function()
        if not CFG.Enabled or not Camera then return end
        local myHRP      = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
        local frameThick = CFG.BoxThickness
        local frameColor = CFG.BoxColor
        local frameVpY   = Camera.ViewportSize.Y
        if not frameVpY then return end
        local myPos = myHRP and myHRP.Position
        local ri = 0

        for c2,obj in pairs(ESPObjects) do
            if not c2 or not c2.Parent then ri+=1; _toRemove[ri]=c2; continue end
            if obj.isNPC and not CFG.NPCSESP then hideObj(obj); continue end
            if not obj.hrp or not obj.hrp.Parent then obj.hrp = resolveHRP(c2) end
            if not obj.hum or not obj.hum.Parent then obj.hum = c2:FindFirstChildOfClass("Humanoid") end
            local hrp2, hum2 = obj.hrp, obj.hum
            if not hrp2 or not hrp2.Parent or not hum2 or not hum2.Parent
                or (CFG.HideDeadESP and hum2.Health<=0) then
                obj._hideFrames += 1
                if obj._hideFrames >= 5 then hideObj(obj) end
                continue
            end
            local charName = obj.plr and obj.plr.Name or c2.Name
            if Blacklist[charName] then hideObj(obj); continue end
            local dist = myPos and (myPos-hrp2.Position).Magnitude or math.huge
            if dist > CFG.MaxDist then hideObj(obj); continue end
            local x1,y1,x2,y2 = GetBoundingBox(hrp2, frameVpY)
            if not x1 then
                obj._hideFrames += 1
                if obj._hideFrames >= 5 then hideObj(obj) end
                continue
            end
            obj._hideFrames = 0; obj._vis = true
            local h, cx  = y2-y1, (x1+x2)*0.5
            local lineCol = obj.isNPC and Color3.fromRGB(255,80,80) or frameColor
            obj.boxTop.From=Vector2.new(x1,y1);  obj.boxTop.To=Vector2.new(x2,y1)
            obj.boxBot.From=Vector2.new(x1,y2);  obj.boxBot.To=Vector2.new(x2,y2)
            obj.boxLeft.From=Vector2.new(x1,y1); obj.boxLeft.To=Vector2.new(x1,y2)
            obj.boxRight.From=Vector2.new(x2,y1);obj.boxRight.To=Vector2.new(x2,y2)
            for _,side in ipairs(obj.sides) do
                side.Color=lineCol; side.Thickness=frameThick; side.Visible=true
            end
            if CFG.ShowHP and hum2.MaxHealth>0 then
                local ratio = math.clamp(hum2.Health/hum2.MaxHealth, 0, 1)
                local hpCol = GetHPColor(ratio)
                local barX  = x1 - CFG.HPBarWidth - 2
                local barH  = h * ratio
                obj.hpBG.Position=Vector2.new(barX,y1);    obj.hpBG.Size=Vector2.new(CFG.HPBarWidth,h);    obj.hpBG.Visible=true
                obj.hpFill.Position=Vector2.new(barX,y2-barH); obj.hpFill.Size=Vector2.new(CFG.HPBarWidth,barH)
                obj.hpFill.Color=hpCol; obj.hpFill.Visible=true
                if CFG.ShowHPText then
                    obj.hpLabel.Text=math.floor(hum2.Health).."/"..math.floor(hum2.MaxHealth)
                    obj.hpLabel.Color=hpCol; obj.hpLabel.Position=Vector2.new(cx,y2+2); obj.hpLabel.Visible=true
                else obj.hpLabel.Visible=false end
            else obj.hpBG.Visible=false; obj.hpFill.Visible=false; obj.hpLabel.Visible=false end
            if CFG.ShowName then
                obj.nameLabel.Text=obj.plr and obj.plr.DisplayName or c2.Name
                obj.nameLabel.Size=CFG.NameSize; obj.nameLabel.Position=Vector2.new(cx,y1-16); obj.nameLabel.Visible=true
            else obj.nameLabel.Visible=false end
            if CFG.ShowDist then
                obj.distLabel.Text=math.floor(dist).." studs"
                obj.distLabel.Position=Vector2.new(cx, y2+((CFG.ShowHP and CFG.ShowHPText) and 14 or 2))
                obj.distLabel.Visible=true
            else obj.distLabel.Visible=false end
        end
        for i=1,ri do RemoveESP(_toRemove[i]); _toRemove[i]=nil end
    end)
    table.insert(_conns, _rsConn)

    -- ── Player management ────────────────────────────────────────────────────
    local function cleanPlayerESP(plr)
        local toClean={}
        for oldChar,obj in pairs(ESPObjects) do if obj.plr==plr then table.insert(toClean,oldChar) end end
        for _,oldChar in ipairs(toClean) do RemoveESP(oldChar) end
    end
    local function spawnESP(c2, plr)
        if _pendingESP[c2] then return end
        _pendingESP[c2] = true
        task.spawn(function()
            pcall(function() c2:WaitForChild("HumanoidRootPart",5); c2:WaitForChild("Humanoid",5) end)
            _pendingESP[c2] = nil
            if c2 and c2.Parent then CreateESP(c2, plr) end
        end)
    end
    local function setupPlayerESP(plr)
        if plr==LP then return end
        if plr.Character then spawnESP(plr.Character, plr) end
        plr.CharacterAdded:Connect(function(c2) cleanPlayerESP(plr); spawnESP(c2, plr) end)
    end

    for _,plr in pairs(Players:GetPlayers()) do setupPlayerESP(plr) end
    table.insert(_conns, Players.PlayerAdded:Connect(setupPlayerESP))
    table.insert(_conns, Players.PlayerRemoving:Connect(cleanPlayerESP))

    -- ── Scan loop (BindableEvent-driven) ─────────────────────────────────────
    local _scanEvent = Instance.new("BindableEvent")
    task.spawn(function()
        while true do
            _scanEvent.Event:Wait()
            while CFG.Enabled do
                for _,plr in pairs(Players:GetPlayers()) do
                    if plr~=LP and plr.Character and plr.Character.Parent
                        and not ESPObjects[plr.Character] then
                        spawnESP(plr.Character, plr)
                    end
                end
                task.wait(1)
            end
        end
    end)

    -- ── Stale cleanup ────────────────────────────────────────────────────────
    task.spawn(function()
        while task.wait(20) do
            local stale={}
            for c2,obj in pairs(ESPObjects) do
                if not c2 or not c2.Parent or (obj.hum and not obj.hum.Parent) then
                    table.insert(stale, c2)
                end
            end
            for _,c2 in ipairs(stale) do RemoveESP(c2) end
        end
    end)

    -- ── NPC workspace scan ───────────────────────────────────────────────────
    local function ScanWorkspace()
        if not CFG.Enabled or not CFG.NPCSESP then return end
        for _,obj in ipairs(workspace:GetChildren()) do
            if obj:IsA("Model") and IsNPC(obj) then CreateESP(obj) end
        end
    end
    table.insert(_conns, workspace.ChildAdded:Connect(function(obj)
        if obj:IsA("Model") then
            task.delay(0.3, function()
                if IsNPC(obj) and CFG.NPCSESP and CFG.Enabled then CreateESP(obj) end
            end)
        end
    end))
    table.insert(_conns, workspace.ChildRemoved:Connect(function(obj)
        if ESPObjects[obj] then RemoveESP(obj) end
    end))

    task.spawn(function()
        task.wait(1); ScanWorkspace()
        LP.CharacterAdded:Connect(function()
            task.wait(1)
            for _,plr in pairs(Players:GetPlayers()) do
                if plr~=LP and plr.Character and plr.Character.Parent
                    and not ESPObjects[plr.Character] then
                    spawnESP(plr.Character, plr)
                end
            end
            ScanWorkspace()
        end)
    end)

    -- ── Public API ───────────────────────────────────────────────────────────
    function self:FireScan()  _scanEvent:Fire() end
    function self:ScanWorkspace() ScanWorkspace() end
    function self:GetObjects() return ESPObjects end

    function self:Destroy()
        for _,c in ipairs(_conns) do pcall(function() c:Disconnect() end) end
        for c2 in pairs(ESPObjects) do RemoveESP(c2) end
        _scanEvent:Destroy()
    end

    return self
end

return ESPLib
