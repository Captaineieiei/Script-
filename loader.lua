-- ============================================================
-- Nova Hub | Loader v2  (with Loading Screen UI)
-- ============================================================
local KEY  = getgenv().KEY or ""
local API  = "http://fi8.bot-hosting.net:21017"
local NAME = "Nova Hub"
local HS   = game:GetService("HttpService")
local SG   = game:GetService("StarterGui")
local TW   = game:GetService("TweenService")
local RS   = game:GetService("RunService")
local PL   = game:GetService("Players").LocalPlayer

-- ============================================================
--  LOADING SCREEN GUI
-- ============================================================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name             = "NovaHubLoader"
ScreenGui.DisplayOrder     = 999
ScreenGui.IgnoreGuiInset   = true
ScreenGui.ResetOnSpawn     = false
ScreenGui.ZIndexBehavior   = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent           = PL.PlayerGui

-- Background Blur overlay
local BG = Instance.new("Frame")
BG.Name            = "Background"
BG.Size            = UDim2.new(1,0,1,0)
BG.BackgroundColor3 = Color3.fromRGB(8, 8, 18)
BG.BackgroundTransparency = 1
BG.BorderSizePixel = 0
BG.ZIndex          = 1
BG.Parent          = ScreenGui

-- Particle dots (decorative)
local function makeDot(x, y, size, alpha)
  local d = Instance.new("Frame")
  d.Size = UDim2.new(0, size, 0, size)
  d.Position = UDim2.new(x, 0, y, 0)
  d.BackgroundColor3 = Color3.fromRGB(120, 80, 255)
  d.BackgroundTransparency = alpha
  d.BorderSizePixel = 0
  d.ZIndex = 2
  d.Parent = BG
  local c = Instance.new("UICorner")
  c.CornerRadius = UDim.new(1, 0)
  c.Parent = d
  return d
end

-- Decorative glow dots
local dots = {
  makeDot(0.08, 0.12, 180, 0.7),
  makeDot(0.75, 0.05, 140, 0.8),
  makeDot(0.85, 0.75, 200, 0.65),
  makeDot(0.05, 0.80, 120, 0.75),
}

-- Main Card
local Card = Instance.new("Frame")
Card.Name              = "Card"
Card.Size              = UDim2.new(0, 420, 0, 320)
Card.Position          = UDim2.new(0.5, -210, 0.5, -160)
Card.BackgroundColor3  = Color3.fromRGB(15, 15, 30)
Card.BackgroundTransparency = 1
Card.BorderSizePixel   = 0
Card.ZIndex            = 3
Card.Parent            = ScreenGui

local CardCorner = Instance.new("UICorner")
CardCorner.CornerRadius = UDim.new(0, 18)
CardCorner.Parent = Card

-- Card border glow
local CardStroke = Instance.new("UIStroke")
CardStroke.Color     = Color3.fromRGB(110, 60, 255)
CardStroke.Thickness = 1.5
CardStroke.Transparency = 0.3
CardStroke.Parent = Card

-- Top accent bar
local AccentBar = Instance.new("Frame")
AccentBar.Size             = UDim2.new(1, 0, 0, 3)
AccentBar.Position         = UDim2.new(0, 0, 0, 0)
AccentBar.BackgroundColor3 = Color3.fromRGB(120, 60, 255)
AccentBar.BorderSizePixel  = 0
AccentBar.ZIndex           = 4
AccentBar.Parent           = Card

local AccentGrad = Instance.new("UIGradient")
AccentGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(80, 40, 200)),
  ColorSequenceKeypoint.new(0.5, Color3.fromRGB(160, 80, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(80, 40, 200)),
})
AccentGrad.Parent = AccentBar

local AccentCorner = Instance.new("UICorner")
AccentCorner.CornerRadius = UDim.new(0, 18)
AccentCorner.Parent = AccentBar

-- Logo / Icon area
local LogoFrame = Instance.new("Frame")
LogoFrame.Size             = UDim2.new(0, 64, 0, 64)
LogoFrame.Position         = UDim2.new(0.5, -32, 0, 28)
LogoFrame.BackgroundColor3 = Color3.fromRGB(30, 20, 60)
LogoFrame.BorderSizePixel  = 0
LogoFrame.ZIndex           = 4
LogoFrame.Parent           = Card

local LogoCorner = Instance.new("UICorner")
LogoCorner.CornerRadius = UDim.new(1, 0)
LogoCorner.Parent = LogoFrame

local LogoStroke = Instance.new("UIStroke")
LogoStroke.Color       = Color3.fromRGB(140, 80, 255)
LogoStroke.Thickness   = 2
LogoStroke.Parent = LogoFrame

local LogoLabel = Instance.new("TextLabel")
LogoLabel.Size              = UDim2.new(1, 0, 1, 0)
LogoLabel.BackgroundTransparency = 1
LogoLabel.Text              = "✦"
LogoLabel.TextColor3        = Color3.fromRGB(180, 130, 255)
LogoLabel.TextScaled        = true
LogoLabel.Font              = Enum.Font.GothamBold
LogoLabel.ZIndex            = 5
LogoLabel.Parent            = LogoFrame

-- Title
local Title = Instance.new("TextLabel")
Title.Size                 = UDim2.new(1, -40, 0, 36)
Title.Position             = UDim2.new(0, 20, 0, 104)
Title.BackgroundTransparency = 1
Title.Text                 = "NOVA HUB"
Title.TextColor3           = Color3.fromRGB(230, 210, 255)
Title.TextScaled           = false
Title.TextSize             = 26
Title.Font                 = Enum.Font.GothamBold
Title.TextXAlignment       = Enum.TextXAlignment.Center
Title.LetterSpacing        = 4
Title.ZIndex               = 4
Title.Parent               = Card

-- Version / tagline
local Tagline = Instance.new("TextLabel")
Tagline.Size               = UDim2.new(1, -40, 0, 20)
Tagline.Position           = UDim2.new(0, 20, 0, 138)
Tagline.BackgroundTransparency = 1
Tagline.Text               = "Premium Script Service"
Tagline.TextColor3         = Color3.fromRGB(130, 100, 200)
Tagline.TextScaled         = false
Tagline.TextSize           = 13
Tagline.Font               = Enum.Font.Gotham
Tagline.TextXAlignment     = Enum.TextXAlignment.Center
Tagline.ZIndex             = 4
Tagline.Parent             = Card

-- Divider
local Divider = Instance.new("Frame")
Divider.Size               = UDim2.new(0.7, 0, 0, 1)
Divider.Position           = UDim2.new(0.15, 0, 0, 170)
Divider.BackgroundColor3   = Color3.fromRGB(80, 50, 140)
Divider.BorderSizePixel    = 0
Divider.ZIndex             = 4
Divider.Parent             = Card

-- Status label
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size            = UDim2.new(1, -40, 0, 22)
StatusLabel.Position        = UDim2.new(0, 20, 0, 185)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text            = "กำลังเริ่มต้น..."
StatusLabel.TextColor3      = Color3.fromRGB(180, 160, 255)
StatusLabel.TextScaled      = false
StatusLabel.TextSize        = 13
StatusLabel.Font            = Enum.Font.Gotham
StatusLabel.TextXAlignment  = Enum.TextXAlignment.Center
StatusLabel.ZIndex          = 4
StatusLabel.Parent          = Card

-- Progress Bar BG
local BarBG = Instance.new("Frame")
BarBG.Size              = UDim2.new(0, 340, 0, 10)
BarBG.Position          = UDim2.new(0.5, -170, 0, 218)
BarBG.BackgroundColor3  = Color3.fromRGB(30, 20, 55)
BarBG.BorderSizePixel   = 0
BarBG.ZIndex            = 4
BarBG.Parent            = Card

local BarBGCorner = Instance.new("UICorner")
BarBGCorner.CornerRadius = UDim.new(1, 0)
BarBGCorner.Parent = BarBG

-- Progress Bar Fill
local BarFill = Instance.new("Frame")
BarFill.Name            = "Fill"
BarFill.Size            = UDim2.new(0, 0, 1, 0)
BarFill.BackgroundColor3 = Color3.fromRGB(120, 60, 255)
BarFill.BorderSizePixel = 0
BarFill.ZIndex          = 5
BarFill.Parent          = BarBG

local BarFillCorner = Instance.new("UICorner")
BarFillCorner.CornerRadius = UDim.new(1, 0)
BarFillCorner.Parent = BarFill

local BarFillGrad = Instance.new("UIGradient")
BarFillGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(80, 40, 200)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(200, 120, 255)),
})
BarFillGrad.Parent = BarFill

-- Progress % label
local BarLabel = Instance.new("TextLabel")
BarLabel.Size              = UDim2.new(1, 0, 0, 18)
BarLabel.Position          = UDim2.new(0, 0, 0, 235)
BarLabel.BackgroundTransparency = 1
BarLabel.Text              = "0%"
BarLabel.TextColor3        = Color3.fromRGB(120, 90, 200)
BarLabel.TextScaled        = false
BarLabel.TextSize          = 11
BarLabel.Font              = Enum.Font.GothamBold
BarLabel.TextXAlignment    = Enum.TextXAlignment.Center
BarLabel.ZIndex            = 4
BarLabel.Parent            = Card

-- Key info label
local KeyLabel = Instance.new("TextLabel")
KeyLabel.Size              = UDim2.new(1, -40, 0, 20)
KeyLabel.Position          = UDim2.new(0, 20, 0, 265)
KeyLabel.BackgroundTransparency = 1
KeyLabel.Text              = KEY ~= "" and ("🔑 "..KEY:sub(1,5).."-****-****-****") or "🔑 No Key"
KeyLabel.TextColor3        = Color3.fromRGB(100, 80, 160)
KeyLabel.TextScaled        = false
KeyLabel.TextSize          = 11
KeyLabel.Font              = Enum.Font.Gotham
KeyLabel.TextXAlignment    = Enum.TextXAlignment.Center
KeyLabel.ZIndex            = 4
KeyLabel.Parent            = Card

-- ============================================================
--  ANIMATION HELPERS
-- ============================================================
local function tweenProp(obj, info, goal)
  TW:Create(obj, info, goal):Play()
end

-- Fade in background + card
local fadeIn = TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
tweenProp(BG,   fadeIn, { BackgroundTransparency = 0 })
tweenProp(Card, fadeIn, { BackgroundTransparency = 0 })
task.wait(0.1)
tweenProp(Card, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
  { Position = UDim2.new(0.5, -210, 0.5, -160) })

-- Pulse logo
task.spawn(function()
  while ScreenGui and ScreenGui.Parent do
    tweenProp(LogoLabel, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
      { TextColor3 = Color3.fromRGB(220, 170, 255) })
    task.wait(1.2)
    tweenProp(LogoLabel, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
      { TextColor3 = Color3.fromRGB(130, 70, 220) })
    task.wait(1.2)
  end
end)

-- Shimmer accent bar
task.spawn(function()
  local offset = 0
  while ScreenGui and ScreenGui.Parent do
    offset = (offset + 0.02) % 1
    AccentGrad.Offset = Vector2.new(offset, 0)
    task.wait(0.05)
  end
end)

-- ============================================================
--  PROGRESS CONTROL
-- ============================================================
local function setProgress(pct, status)
  StatusLabel.Text = status or StatusLabel.Text
  local w = math.clamp(pct / 100, 0, 1)
  tweenProp(BarFill, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
    { Size = UDim2.new(w, 0, 1, 0) })
  BarLabel.Text = math.floor(pct) .. "%"
end

local function setStatus(msg, col)
  StatusLabel.Text       = msg
  StatusLabel.TextColor3 = col or Color3.fromRGB(180, 160, 255)
end

-- ============================================================
--  CLOSE SCREEN (success / error)
-- ============================================================
local function closeScreen(success)
  task.wait(0.6)
  local fadeOut = TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
  tweenProp(Card, fadeOut, { BackgroundTransparency = 1,
    Position = UDim2.new(0.5, -210, 0.5, -140) })
  tweenProp(BG,   fadeOut, { BackgroundTransparency = 1 })
  task.wait(0.85)
  ScreenGui:Destroy()
end

-- ============================================================
--  NOTIFY (systray fallback)
-- ============================================================
local function notify(msg, col)
  pcall(function() SG:SetCore("SendNotification",{Title=NAME,Text=msg,Duration=4}) end)
  pcall(function()
    SG:SetCore("ChatMakeSystemMessage",{
      Text="["..NAME.."] "..msg,
      Color=col or Color3.fromRGB(100,220,255),
      Font=Enum.Font.GothamBold, TextSize=14
    })
  end)
  print("["..NAME.."] "..msg)
end

-- ============================================================
--  HWID
-- ============================================================
local function getHWID()
  local ok,id = pcall(function() return tostring(game:GetService("RbxAnalyticsService"):GetClientId()) end)
  if ok and id and id~="" then return id end
  return tostring(game:GetService("Players").LocalPlayer.UserId)
end

-- ============================================================
--  WHITELIST CHECK  (with UI progress)
-- ============================================================
local function checkWhitelist()
  local hwid = getHWID()
  local url  = API.."/api/lookup?key="..KEY.."&hwid="..hwid

  setProgress(15, "กำลังเชื่อมต่อ Server...")
  task.wait(0.4)
  setProgress(35, "กำลังตรวจสอบ Whitelist...")

  local ok, raw = pcall(game.HttpGet, game, url, true)
  if not ok then
    setStatus("❌ เชื่อมต่อ Server ไม่ได้", Color3.fromRGB(255, 90, 90))
    setProgress(100)
    notify("❌ เชื่อมต่อ Server ไม่ได้", Color3.fromRGB(255,80,80))
    closeScreen(false); return false
  end

  setProgress(60, "กำลังตรวจสอบสิทธิ์...")
  task.wait(0.2)

  local ok2, result = pcall(HS.JSONDecode, HS, raw)
  if not ok2 then
    setStatus("❌ Server response error", Color3.fromRGB(255, 90, 90))
    setProgress(100)
    notify("❌ Server response error", Color3.fromRGB(255,80,80))
    closeScreen(false); return false
  end

  setProgress(85, "กำลัง Authorize...")
  task.wait(0.3)

  if result.success then
    local data = result.data
    local timeLeft = "Permanent"
    if data.expiresAt ~= -1 then
      local diff = math.floor((data.expiresAt - os.time()*1000)/1000)
      if diff <= 0 then
        setStatus("❌ Key หมดอายุแล้ว", Color3.fromRGB(255, 90, 90))
        setProgress(100)
        notify("❌ Key หมดอายุแล้ว", Color3.fromRGB(255,80,80))
        closeScreen(false); return false
      end
      local d=math.floor(diff/86400); local h=math.floor((diff%86400)/3600); local m=math.floor((diff%3600)/60)
      timeLeft = d.."d "..h.."h "..m.."m"
    end

    setProgress(100, "✅ Authorized  |  เหลือ: "..timeLeft)
    StatusLabel.TextColor3 = Color3.fromRGB(100, 255, 160)
    notify("✅ Authorized | เหลือ: "..timeLeft, Color3.fromRGB(80,255,120))
    task.wait(0.3); return true
  else
    setStatus("❌ "..(result.message or "Unauthorized"), Color3.fromRGB(255, 90, 90))
    setProgress(100)
    notify("❌ "..(result.message or "Unauthorized"), Color3.fromRGB(255,80,80))
    closeScreen(false); return false
  end
end

-- ============================================================
--  MAIN
-- ============================================================
setProgress(5, "กำลังเริ่มต้น...")
task.wait(0.5)

if not checkWhitelist() then return end

setStatus("🚀 กำลังโหลด Script...", Color3.fromRGB(160, 220, 255))
task.wait(0.3)
closeScreen(true)

notify("🚀 กำลังโหลด Script...", Color3.fromRGB(80,200,255))
task.wait(0.2)

-- ใส่ loadstring script หลักของคุณด้านล่างนี้
-- loadstring(game:HttpGet("YOUR_MAIN_SCRIPT_URL", true))()
