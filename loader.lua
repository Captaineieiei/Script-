-- ============================================================
-- Nova Hub | Loader v3  (Enhanced Loading Screen UI)
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

-- Background
local BG = Instance.new("Frame")
BG.Name                   = "Background"
BG.Size                   = UDim2.new(1, 0, 1, 0)
BG.BackgroundColor3       = Color3.fromRGB(6, 6, 14)
BG.BackgroundTransparency = 1
BG.BorderSizePixel        = 0
BG.ZIndex                 = 1
BG.Parent                 = ScreenGui

-- Background gradient
local BGGrad = Instance.new("UIGradient")
BGGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(6, 4, 20)),
  ColorSequenceKeypoint.new(0.5, Color3.fromRGB(10, 6, 28)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(4, 4, 16)),
})
BGGrad.Rotation = 135
BGGrad.Parent = BG

-- ============================================================
--  FLOATING PARTICLES
-- ============================================================
local function makeParticle(x, y, size, alpha, color)
  local d = Instance.new("Frame")
  d.Size                    = UDim2.new(0, size, 0, size)
  d.Position                = UDim2.new(x, 0, y, 0)
  d.BackgroundColor3        = color or Color3.fromRGB(110, 60, 255)
  d.BackgroundTransparency  = alpha
  d.BorderSizePixel         = 0
  d.ZIndex                  = 2
  d.Parent                  = BG
  local c = Instance.new("UICorner")
  c.CornerRadius = UDim.new(1, 0)
  c.Parent = d
  return d
end

local particles = {
  makeParticle(0.08, 0.12, 220, 0.6,  Color3.fromRGB(100, 50, 255)),
  makeParticle(0.75, 0.05, 160, 0.75, Color3.fromRGB(160, 80, 255)),
  makeParticle(0.85, 0.75, 240, 0.6,  Color3.fromRGB(80,  40, 200)),
  makeParticle(0.04, 0.78, 140, 0.7,  Color3.fromRGB(130, 60, 255)),
  makeParticle(0.55, 0.88, 100, 0.8,  Color3.fromRGB(180, 100, 255)),
  makeParticle(0.20, 0.50, 80,  0.82, Color3.fromRGB(90,  50, 220)),
  makeParticle(0.90, 0.40, 60,  0.78, Color3.fromRGB(140, 70, 255)),
}

-- Animate floating particles
task.spawn(function()
  local offsets = {}
  for i = 1, #particles do
    offsets[i] = math.random() * math.pi * 2
  end
  while ScreenGui and ScreenGui.Parent do
    local t = tick()
    for i, p in ipairs(particles) do
      local wave = math.sin(t * 0.6 + offsets[i]) * 0.015
      local baseY = select(2, p.Position.Y.Scale, p.Position.Y.Offset)
      TW:Create(p, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {
        Position = UDim2.new(p.Position.X.Scale, 0, p.Position.Y.Scale + wave, 0)
      }):Play()
    end
    task.wait(0.8)
  end
end)

-- ============================================================
--  SCAN LINES (retro overlay)
-- ============================================================
local ScanLine = Instance.new("Frame")
ScanLine.Size                    = UDim2.new(1, 0, 1, 0)
ScanLine.BackgroundTransparency  = 1
ScanLine.BorderSizePixel         = 0
ScanLine.ZIndex                  = 2
ScanLine.Parent                  = BG
local ScanGrad = Instance.new("UIGradient")
ScanGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(0, 0, 0)),
  ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(0, 0, 0)),
})
ScanGrad.Transparency = NumberSequence.new({
  NumberSequenceKeypoint.new(0,   0.98),
  NumberSequenceKeypoint.new(0.5, 0.95),
  NumberSequenceKeypoint.new(1,   0.98),
})
ScanGrad.Rotation = 90
ScanGrad.Parent = ScanLine

task.spawn(function()
  local offset = 0
  while ScreenGui and ScreenGui.Parent do
    offset = (offset + 0.005) % 1
    ScanGrad.Offset = Vector2.new(0, offset)
    task.wait(0.03)
  end
end)

-- ============================================================
--  MAIN CARD
-- ============================================================
local Card = Instance.new("Frame")
Card.Name                   = "Card"
Card.Size                   = UDim2.new(0, 440, 0, 340)
Card.Position               = UDim2.new(0.5, -220, 0.6, -170)   -- starts lower
Card.BackgroundColor3       = Color3.fromRGB(12, 10, 28)
Card.BackgroundTransparency = 1
Card.BorderSizePixel        = 0
Card.ZIndex                 = 3
Card.Parent                 = ScreenGui

local CardCorner = Instance.new("UICorner")
CardCorner.CornerRadius = UDim.new(0, 20)
CardCorner.Parent = Card

-- Card gradient
local CardGrad = Instance.new("UIGradient")
CardGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(18, 12, 42)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(8, 6, 22)),
})
CardGrad.Rotation = 145
CardGrad.Parent = Card

-- Card glow border
local CardStroke = Instance.new("UIStroke")
CardStroke.Color       = Color3.fromRGB(120, 60, 255)
CardStroke.Thickness   = 1.5
CardStroke.Transparency = 0.2
CardStroke.Parent = Card

-- Animate border glow pulse
task.spawn(function()
  while ScreenGui and ScreenGui.Parent do
    TW:Create(CardStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      Transparency = 0.55, Color = Color3.fromRGB(160, 80, 255)
    }):Play()
    task.wait(1.5)
    TW:Create(CardStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      Transparency = 0.1, Color = Color3.fromRGB(100, 50, 255)
    }):Play()
    task.wait(1.5)
  end
end)

-- ============================================================
--  TOP ACCENT BAR (shimmer)
-- ============================================================
local AccentBar = Instance.new("Frame")
AccentBar.Size             = UDim2.new(1, 0, 0, 4)
AccentBar.Position         = UDim2.new(0, 0, 0, 0)
AccentBar.BackgroundColor3 = Color3.fromRGB(120, 60, 255)
AccentBar.BorderSizePixel  = 0
AccentBar.ZIndex           = 4
AccentBar.Parent           = Card

local AccentGrad = Instance.new("UIGradient")
AccentGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(60, 30, 180)),
  ColorSequenceKeypoint.new(0.3, Color3.fromRGB(140, 70, 255)),
  ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 160, 255)),
  ColorSequenceKeypoint.new(0.7, Color3.fromRGB(140, 70, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(60, 30, 180)),
})
AccentGrad.Parent = AccentBar

local AccentCorner = Instance.new("UICorner")
AccentCorner.CornerRadius = UDim.new(0, 20)
AccentCorner.Parent = AccentBar

-- Shimmer animation
task.spawn(function()
  local offset = 0
  while ScreenGui and ScreenGui.Parent do
    offset = (offset + 0.018) % 1
    AccentGrad.Offset = Vector2.new(offset, 0)
    task.wait(0.04)
  end
end)

-- ============================================================
--  LOGO CIRCLE
-- ============================================================
local LogoOuter = Instance.new("Frame")
LogoOuter.Size             = UDim2.new(0, 76, 0, 76)
LogoOuter.Position         = UDim2.new(0.5, -38, 0, 24)
LogoOuter.BackgroundColor3 = Color3.fromRGB(20, 12, 50)
LogoOuter.BorderSizePixel  = 0
LogoOuter.ZIndex           = 4
LogoOuter.Parent           = Card
local LogoOuterCorner = Instance.new("UICorner")
LogoOuterCorner.CornerRadius = UDim.new(1, 0)
LogoOuterCorner.Parent = LogoOuter
local LogoOuterStroke = Instance.new("UIStroke")
LogoOuterStroke.Color     = Color3.fromRGB(150, 80, 255)
LogoOuterStroke.Thickness = 2.5
LogoOuterStroke.Parent    = LogoOuter

local LogoFrame = Instance.new("Frame")
LogoFrame.Size             = UDim2.new(0, 60, 0, 60)
LogoFrame.Position         = UDim2.new(0.5, -30, 0.5, -30)
LogoFrame.BackgroundColor3 = Color3.fromRGB(35, 20, 75)
LogoFrame.BorderSizePixel  = 0
LogoFrame.ZIndex           = 5
LogoFrame.Parent           = LogoOuter
local LogoFrameCorner = Instance.new("UICorner")
LogoFrameCorner.CornerRadius = UDim.new(1, 0)
LogoFrameCorner.Parent = LogoFrame

local LogoLabel = Instance.new("TextLabel")
LogoLabel.Size                   = UDim2.new(1, 0, 1, 0)
LogoLabel.BackgroundTransparency = 1
LogoLabel.Text                   = "✦"
LogoLabel.TextColor3             = Color3.fromRGB(190, 140, 255)
LogoLabel.TextScaled             = true
LogoLabel.Font                   = Enum.Font.GothamBold
LogoLabel.ZIndex                 = 6
LogoLabel.Parent                 = LogoFrame

-- Pulse logo color + rotation-like scale trick
task.spawn(function()
  while ScreenGui and ScreenGui.Parent do
    TW:Create(LogoLabel, TweenInfo.new(1.0, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      TextColor3 = Color3.fromRGB(240, 190, 255)
    }):Play()
    TW:Create(LogoOuterStroke, TweenInfo.new(1.0, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      Color = Color3.fromRGB(200, 120, 255), Thickness = 3.5
    }):Play()
    task.wait(1.0)
    TW:Create(LogoLabel, TweenInfo.new(1.0, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      TextColor3 = Color3.fromRGB(100, 60, 200)
    }):Play()
    TW:Create(LogoOuterStroke, TweenInfo.new(1.0, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      Color = Color3.fromRGB(110, 55, 230), Thickness = 2
    }):Play()
    task.wait(1.0)
  end
end)

-- ============================================================
--  TITLE + TAGLINE
-- ============================================================
local Title = Instance.new("TextLabel")
Title.Size                   = UDim2.new(1, -40, 0, 38)
Title.Position               = UDim2.new(0, 20, 0, 114)
Title.BackgroundTransparency = 1
Title.Text                   = "NOVA HUB"
Title.TextColor3             = Color3.fromRGB(235, 215, 255)
Title.TextScaled             = false
Title.TextSize               = 28
Title.Font                   = Enum.Font.GothamBold
Title.TextXAlignment         = Enum.TextXAlignment.Center
Title.ZIndex                 = 4
Title.Parent                 = Card

local TitleGrad = Instance.new("UIGradient")
TitleGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(200, 160, 255)),
  ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 220, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(180, 120, 255)),
})
TitleGrad.Parent = Title

-- Shimmer title
task.spawn(function()
  local o = 0
  while ScreenGui and ScreenGui.Parent do
    o = (o + 0.025) % 1
    TitleGrad.Offset = Vector2.new(o, 0)
    task.wait(0.05)
  end
end)

local Tagline = Instance.new("TextLabel")
Tagline.Size                   = UDim2.new(1, -40, 0, 20)
Tagline.Position               = UDim2.new(0, 20, 0, 150)
Tagline.BackgroundTransparency = 1
Tagline.Text                   = "✧  Premium Script Service  ✧"
Tagline.TextColor3             = Color3.fromRGB(120, 90, 195)
Tagline.TextScaled             = false
Tagline.TextSize               = 13
Tagline.Font                   = Enum.Font.Gotham
Tagline.TextXAlignment         = Enum.TextXAlignment.Center
Tagline.ZIndex                 = 4
Tagline.Parent                 = Card

-- ============================================================
--  DIVIDER (animated width)
-- ============================================================
local Divider = Instance.new("Frame")
Divider.Size             = UDim2.new(0, 0, 0, 1)
Divider.Position         = UDim2.new(0.5, 0, 0, 182)
Divider.BackgroundColor3 = Color3.fromRGB(100, 60, 180)
Divider.BorderSizePixel  = 0
Divider.ZIndex           = 4
Divider.Parent           = Card
local DivGrad = Instance.new("UIGradient")
DivGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(30, 15, 60)),
  ColorSequenceKeypoint.new(0.5, Color3.fromRGB(160, 90, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(30, 15, 60)),
})
DivGrad.Parent = Divider

-- ============================================================
--  STATUS LABEL
-- ============================================================
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size                   = UDim2.new(1, -40, 0, 24)
StatusLabel.Position               = UDim2.new(0, 20, 0, 196)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text                   = "กำลังเริ่มต้น..."
StatusLabel.TextColor3             = Color3.fromRGB(180, 160, 255)
StatusLabel.TextScaled             = false
StatusLabel.TextSize               = 13
StatusLabel.Font                   = Enum.Font.Gotham
StatusLabel.TextXAlignment         = Enum.TextXAlignment.Center
StatusLabel.ZIndex                 = 4
StatusLabel.Parent                 = Card

-- ============================================================
--  PROGRESS BAR
-- ============================================================
local BarBG = Instance.new("Frame")
BarBG.Size             = UDim2.new(0, 360, 0, 10)
BarBG.Position         = UDim2.new(0.5, -180, 0, 232)
BarBG.BackgroundColor3 = Color3.fromRGB(22, 14, 48)
BarBG.BorderSizePixel  = 0
BarBG.ZIndex           = 4
BarBG.Parent           = Card
local BarBGCorner = Instance.new("UICorner")
BarBGCorner.CornerRadius = UDim.new(1, 0)
BarBGCorner.Parent = BarBG

local BarFill = Instance.new("Frame")
BarFill.Name             = "Fill"
BarFill.Size             = UDim2.new(0, 0, 1, 0)
BarFill.BackgroundColor3 = Color3.fromRGB(130, 65, 255)
BarFill.BorderSizePixel  = 0
BarFill.ZIndex           = 5
BarFill.Parent           = BarBG
local BarFillCorner = Instance.new("UICorner")
BarFillCorner.CornerRadius = UDim.new(1, 0)
BarFillCorner.Parent = BarFill

local BarFillGrad = Instance.new("UIGradient")
BarFillGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(70, 35, 190)),
  ColorSequenceKeypoint.new(0.6, Color3.fromRGB(160, 80, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(220, 160, 255)),
})
BarFillGrad.Parent = BarFill

-- Bar shimmer
task.spawn(function()
  local o = 0
  while ScreenGui and ScreenGui.Parent do
    o = (o + 0.03) % 1
    BarFillGrad.Offset = Vector2.new(o, 0)
    task.wait(0.04)
  end
end)

-- Glowing dot at bar tip
local BarGlow = Instance.new("Frame")
BarGlow.Size             = UDim2.new(0, 14, 0, 14)
BarGlow.AnchorPoint      = Vector2.new(0.5, 0.5)
BarGlow.BackgroundColor3 = Color3.fromRGB(210, 150, 255)
BarGlow.BackgroundTransparency = 0.2
BarGlow.BorderSizePixel  = 0
BarGlow.ZIndex           = 6
BarGlow.Parent           = BarFill
local BarGlowCorner = Instance.new("UICorner")
BarGlowCorner.CornerRadius = UDim.new(1, 0)
BarGlowCorner.Parent = BarGlow
-- Position at right edge
BarGlow.Position = UDim2.new(1, 0, 0.5, 0)

task.spawn(function()
  while ScreenGui and ScreenGui.Parent do
    TW:Create(BarGlow, TweenInfo.new(0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      BackgroundTransparency = 0.7, Size = UDim2.new(0, 10, 0, 10)
    }):Play()
    task.wait(0.7)
    TW:Create(BarGlow, TweenInfo.new(0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      BackgroundTransparency = 0.1, Size = UDim2.new(0, 16, 0, 16)
    }):Play()
    task.wait(0.7)
  end
end)

-- Progress % label
local BarLabel = Instance.new("TextLabel")
BarLabel.Size                   = UDim2.new(1, 0, 0, 18)
BarLabel.Position               = UDim2.new(0, 0, 0, 248)
BarLabel.BackgroundTransparency = 1
BarLabel.Text                   = "0%"
BarLabel.TextColor3             = Color3.fromRGB(120, 90, 200)
BarLabel.TextScaled             = false
BarLabel.TextSize               = 11
BarLabel.Font                   = Enum.Font.GothamBold
BarLabel.TextXAlignment         = Enum.TextXAlignment.Center
BarLabel.ZIndex                 = 4
BarLabel.Parent                 = Card

-- Key label
local KeyLabel = Instance.new("TextLabel")
KeyLabel.Size                   = UDim2.new(1, -40, 0, 22)
KeyLabel.Position               = UDim2.new(0, 20, 0, 290)
KeyLabel.BackgroundTransparency = 1
KeyLabel.Text                   = KEY ~= "" and ("🔑 "..KEY:sub(1,5).."-****-****-****") or "🔑 No Key"
KeyLabel.TextColor3             = Color3.fromRGB(90, 70, 150)
KeyLabel.TextScaled             = false
KeyLabel.TextSize               = 11
KeyLabel.Font                   = Enum.Font.Gotham
KeyLabel.TextXAlignment         = Enum.TextXAlignment.Center
KeyLabel.ZIndex                 = 4
KeyLabel.Parent                 = Card

-- ============================================================
--  ANIMATION HELPERS
-- ============================================================
local function tweenProp(obj, info, goal)
  TW:Create(obj, info, goal):Play()
end

-- === INTRO SEQUENCE ===
-- BG fade in
tweenProp(BG, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
  BackgroundTransparency = 0
})

-- Card slide up + fade in
task.wait(0.15)
tweenProp(Card, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
  BackgroundTransparency = 0,
  Position = UDim2.new(0.5, -220, 0.5, -170)
})

-- Divider expand
task.wait(0.5)
tweenProp(Divider, TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
  Size     = UDim2.new(0.65, 0, 0, 1),
  Position = UDim2.new(0.175, 0, 0, 182),
})

-- ============================================================
--  PROGRESS CONTROL
-- ============================================================
local function setProgress(pct, status)
  if status then StatusLabel.Text = status end
  local w = math.clamp(pct / 100, 0, 1)
  tweenProp(BarFill, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
    Size = UDim2.new(w, 0, 1, 0)
  })
  BarLabel.Text = math.floor(pct) .. "%"
end

local function setStatus(msg, col)
  -- Fade text swap
  tweenProp(StatusLabel, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
    TextTransparency = 1
  })
  task.wait(0.15)
  StatusLabel.Text       = msg
  StatusLabel.TextColor3 = col or Color3.fromRGB(180, 160, 255)
  tweenProp(StatusLabel, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {
    TextTransparency = 0
  })
end

-- ============================================================
--  CLOSE SCREEN
-- ============================================================
local function closeScreen(success)
  task.wait(0.6)
  -- card scale down + fade out
  tweenProp(Card, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, -220, 0.45, -170)
  })
  tweenProp(BG, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {
    BackgroundTransparency = 1
  })
  task.wait(0.9)
  ScreenGui:Destroy()
end

-- ============================================================
--  NOTIFY
-- ============================================================
local function notify(msg, col)
  pcall(function() SG:SetCore("SendNotification", {Title = NAME, Text = msg, Duration = 4}) end)
  pcall(function()
    SG:SetCore("ChatMakeSystemMessage", {
      Text     = "[" .. NAME .. "] " .. msg,
      Color    = col or Color3.fromRGB(100, 220, 255),
      Font     = Enum.Font.GothamBold,
      TextSize = 14
    })
  end)
  print("[" .. NAME .. "] " .. msg)
end

-- ============================================================
--  HWID
-- ============================================================
local function getHWID()
  local ok, id = pcall(function()
    return tostring(game:GetService("RbxAnalyticsService"):GetClientId())
  end)
  if ok and id and id ~= "" then return id end
  return tostring(game:GetService("Players").LocalPlayer.UserId)
end

-- ============================================================
--  WHITELIST CHECK
-- ============================================================
local function checkWhitelist()
  local hwid = getHWID()
  local url  = API .. "/api/lookup?key=" .. KEY .. "&hwid=" .. hwid

  setProgress(15, "กำลังเชื่อมต่อ Server...")
  task.wait(0.4)
  setProgress(35, "กำลังตรวจสอบ Whitelist...")

  local ok, raw = pcall(game.HttpGet, game, url, true)
  if not ok then
    setStatus("❌ เชื่อมต่อ Server ไม่ได้", Color3.fromRGB(255, 90, 90))
    setProgress(100)
    notify("❌ เชื่อมต่อ Server ไม่ได้", Color3.fromRGB(255, 80, 80))
    closeScreen(false); return false
  end

  setProgress(60, "กำลังตรวจสอบสิทธิ์...")
  task.wait(0.2)

  local ok2, result = pcall(HS.JSONDecode, HS, raw)
  if not ok2 then
    setStatus("❌ Server response error", Color3.fromRGB(255, 90, 90))
    setProgress(100)
    notify("❌ Server response error", Color3.fromRGB(255, 80, 80))
    closeScreen(false); return false
  end

  setProgress(85, "กำลัง Authorize...")
  task.wait(0.3)

  if result.success then
    local data     = result.data
    local timeLeft = "Permanent"
    if data.expiresAt ~= -1 then
      local diff = math.floor((data.expiresAt - os.time() * 1000) / 1000)
      if diff <= 0 then
        setStatus("❌ Key หมดอายุแล้ว", Color3.fromRGB(255, 90, 90))
        setProgress(100)
        notify("❌ Key หมดอายุแล้ว", Color3.fromRGB(255, 80, 80))
        closeScreen(false); return false
      end
      local d = math.floor(diff / 86400)
      local h = math.floor((diff % 86400) / 3600)
      local m = math.floor((diff % 3600) / 60)
      timeLeft = d .. "d " .. h .. "h " .. m .. "m"
    end

    setProgress(100, "✅ Authorized  |  เหลือ: " .. timeLeft)
    StatusLabel.TextColor3 = Color3.fromRGB(100, 255, 160)
    notify("✅ Authorized | เหลือ: " .. timeLeft, Color3.fromRGB(80, 255, 120))
    task.wait(0.3)
    return true
  else
    setStatus("❌ " .. (result.message or "Unauthorized"), Color3.fromRGB(255, 90, 90))
    setProgress(100)
    notify("❌ " .. (result.message or "Unauthorized"), Color3.fromRGB(255, 80, 80))
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

notify("🚀 กำลังโหลด Script...", Color3.fromRGB(80, 200, 255))
task.wait(0.2)

local ok, err = pcall(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Captaineieiei/Script-/refs/heads/main/Zzaa", true))()
end)
if not ok then
  notify("❌ Script error: " .. tostring(err), Color3.fromRGB(255, 80, 80))
end
