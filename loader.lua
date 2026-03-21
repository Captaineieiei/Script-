-- ============================================================
-- Nova Hub | Loader v3  (Enhanced Loading Screen UI - Redesigned)
-- ============================================================
local KEY  = getgenv().KEY or ""
local API  = "http://fi8.bot-hosting.net:21017"
local NAME = "Nova Hub"
local VER  = "v3.0"
local HS   = game:GetService("HttpService")
local SG   = game:GetService("StarterGui")
local TW   = game:GetService("TweenService")
local RS   = game:GetService("RunService")
local PL   = game:GetService("Players").LocalPlayer

-- ============================================================
--  SCREEN GUI
-- ============================================================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name             = "NovaHubLoader"
ScreenGui.DisplayOrder     = 999
ScreenGui.IgnoreGuiInset   = true
ScreenGui.ResetOnSpawn     = false
ScreenGui.ZIndexBehavior   = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent           = PL.PlayerGui

-- ============================================================
--  BACKGROUND
-- ============================================================
local BG = Instance.new("Frame")
BG.Name                   = "Background"
BG.Size                   = UDim2.new(1, 0, 1, 0)
BG.BackgroundColor3       = Color3.fromRGB(4, 6, 18)
BG.BackgroundTransparency = 1
BG.BorderSizePixel        = 0
BG.ZIndex                 = 1
BG.Parent                 = ScreenGui

local BGGrad = Instance.new("UIGradient")
BGGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(2, 4, 20)),
  ColorSequenceKeypoint.new(0.4, Color3.fromRGB(5, 8, 30)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(8, 4, 22)),
})
BGGrad.Rotation = 120
BGGrad.Parent = BG

-- ============================================================
--  VIGNETTE OVERLAY
-- ============================================================
local Vignette = Instance.new("Frame")
Vignette.Size                   = UDim2.new(1, 0, 1, 0)
Vignette.BackgroundTransparency = 1
Vignette.BorderSizePixel        = 0
Vignette.ZIndex                 = 2
Vignette.Parent                 = BG
local VigGrad = Instance.new("UIGradient")
VigGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(0, 0, 0)),
  ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 255, 255)),
  ColorSequenceKeypoint.new(0.6, Color3.fromRGB(255, 255, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(0, 0, 0)),
})
VigGrad.Transparency = NumberSequence.new({
  NumberSequenceKeypoint.new(0,   0.5),
  NumberSequenceKeypoint.new(0.4, 1),
  NumberSequenceKeypoint.new(0.6, 1),
  NumberSequenceKeypoint.new(1,   0.5),
})
VigGrad.Rotation = 0
VigGrad.Parent = Vignette

-- ============================================================
--  FLOATING ORBS (background glow blobs)
-- ============================================================
local function makeOrb(x, y, size, alpha, r, g, b)
  local d = Instance.new("Frame")
  d.Size                   = UDim2.new(0, size, 0, size)
  d.Position               = UDim2.new(x, -size/2, y, -size/2)
  d.BackgroundColor3       = Color3.fromRGB(r, g, b)
  d.BackgroundTransparency = alpha
  d.BorderSizePixel        = 0
  d.ZIndex                 = 2
  d.Parent                 = BG
  local c = Instance.new("UICorner")
  c.CornerRadius = UDim.new(1, 0)
  c.Parent = d
  return d
end

local orbs = {
  makeOrb(0.15, 0.20, 260, 0.55,  60, 20, 200),
  makeOrb(0.80, 0.10, 200, 0.60,  0, 140, 255),
  makeOrb(0.88, 0.80, 280, 0.55,  100, 30, 220),
  makeOrb(0.05, 0.75, 180, 0.65,  20, 80, 200),
  makeOrb(0.50, 0.90, 140, 0.72,  80, 160, 255),
}

task.spawn(function()
  local offsets = {}
  for i = 1, #orbs do offsets[i] = math.random() * math.pi * 2 end
  while ScreenGui and ScreenGui.Parent do
    local t = tick()
    for i, p in ipairs(orbs) do
      local wave = math.sin(t * 0.4 + offsets[i]) * 0.018
      TW:Create(p, TweenInfo.new(1.2, Enum.EasingStyle.Sine), {
        Position = UDim2.new(p.Position.X.Scale, p.Position.X.Offset, p.Position.Y.Scale + wave, p.Position.Y.Offset)
      }):Play()
    end
    task.wait(1.2)
  end
end)

-- ============================================================
--  SCAN LINES
-- ============================================================
local ScanLine = Instance.new("Frame")
ScanLine.Size                   = UDim2.new(1, 0, 1, 0)
ScanLine.BackgroundTransparency = 1
ScanLine.BorderSizePixel        = 0
ScanLine.ZIndex                 = 3
ScanLine.Parent                 = BG
local ScanGrad = Instance.new("UIGradient")
ScanGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(0, 0, 0)),
  ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(0, 0, 0)),
})
ScanGrad.Transparency = NumberSequence.new({
  NumberSequenceKeypoint.new(0,   0.97),
  NumberSequenceKeypoint.new(0.5, 0.94),
  NumberSequenceKeypoint.new(1,   0.97),
})
ScanGrad.Rotation = 90
ScanGrad.Parent = ScanLine

task.spawn(function()
  local o = 0
  while ScreenGui and ScreenGui.Parent do
    o = (o + 0.004) % 1
    ScanGrad.Offset = Vector2.new(0, o)
    task.wait(0.03)
  end
end)

-- ============================================================
--  MAIN CARD  (500 x 390)
-- ============================================================
local Card = Instance.new("Frame")
Card.Name                   = "Card"
Card.Size                   = UDim2.new(0, 500, 0, 390)
Card.Position               = UDim2.new(0.5, -250, 0.65, -195)  -- starts lower
Card.BackgroundColor3       = Color3.fromRGB(8, 10, 28)
Card.BackgroundTransparency = 1
Card.BorderSizePixel        = 0
Card.ZIndex                 = 4
Card.Parent                 = ScreenGui

local CardCorner = Instance.new("UICorner")
CardCorner.CornerRadius = UDim.new(0, 16)
CardCorner.Parent = Card

local CardGrad = Instance.new("UIGradient")
CardGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(12, 15, 38)),
  ColorSequenceKeypoint.new(0.5, Color3.fromRGB(10, 12, 32)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(6, 8, 24)),
})
CardGrad.Rotation = 135
CardGrad.Parent = Card

-- Card border stroke
local CardStroke = Instance.new("UIStroke")
CardStroke.Color       = Color3.fromRGB(0, 160, 255)
CardStroke.Thickness   = 1.5
CardStroke.Transparency = 0.3
CardStroke.Parent      = Card

task.spawn(function()
  while ScreenGui and ScreenGui.Parent do
    TW:Create(CardStroke, TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      Color = Color3.fromRGB(120, 60, 255), Transparency = 0.6
    }):Play()
    task.wait(1.8)
    TW:Create(CardStroke, TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      Color = Color3.fromRGB(0, 180, 255), Transparency = 0.1
    }):Play()
    task.wait(1.8)
  end
end)

-- ============================================================
--  CORNER BRACKET DECORATIONS
-- ============================================================
local function makeBracket(anchorX, anchorY, rotDeg)
  local size = 18
  local thick = 2

  local h = Instance.new("Frame")        -- horizontal line
  h.Size             = UDim2.new(0, size, 0, thick)
  h.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
  h.BorderSizePixel  = 0
  h.ZIndex           = 6
  h.Parent           = Card
  local hc = Instance.new("UICorner"); hc.CornerRadius = UDim.new(1,0); hc.Parent = h

  local v = Instance.new("Frame")        -- vertical line
  v.Size             = UDim2.new(0, thick, 0, size)
  v.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
  v.BorderSizePixel  = 0
  v.ZIndex           = 6
  v.Parent           = Card
  local vc = Instance.new("UICorner"); vc.CornerRadius = UDim.new(1,0); vc.Parent = v

  local offX = anchorX == 0 and 10 or -10 - size
  local offY = anchorY == 0 and 10 or -10 - size

  h.Position = UDim2.new(anchorX, offX, anchorY, offY)
  v.Position = UDim2.new(anchorX, offX, anchorY, offY)
  return h, v
end

makeBracket(0, 0)   -- top-left
makeBracket(1, 0)   -- top-right
makeBracket(0, 1)   -- bottom-left
makeBracket(1, 1)   -- bottom-right

-- ============================================================
--  TOP ACCENT BAR (shimmer)
-- ============================================================
local AccentBar = Instance.new("Frame")
AccentBar.Size             = UDim2.new(1, 0, 0, 3)
AccentBar.Position         = UDim2.new(0, 0, 0, 0)
AccentBar.BackgroundColor3 = Color3.fromRGB(0, 160, 255)
AccentBar.BorderSizePixel  = 0
AccentBar.ZIndex           = 5
AccentBar.Parent           = Card
local AccentCorner = Instance.new("UICorner")
AccentCorner.CornerRadius = UDim.new(0, 16)
AccentCorner.Parent = AccentBar

local AccentGrad = Instance.new("UIGradient")
AccentGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(20, 80, 200)),
  ColorSequenceKeypoint.new(0.25, Color3.fromRGB(0, 160, 255)),
  ColorSequenceKeypoint.new(0.5, Color3.fromRGB(180, 120, 255)),
  ColorSequenceKeypoint.new(0.75, Color3.fromRGB(0, 160, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(20, 80, 200)),
})
AccentGrad.Parent = AccentBar

task.spawn(function()
  local o = 0
  while ScreenGui and ScreenGui.Parent do
    o = (o + 0.016) % 1
    AccentGrad.Offset = Vector2.new(o, 0)
    task.wait(0.04)
  end
end)

-- ============================================================
--  LOGO AREA
-- ============================================================
-- Outer ring
local LogoOuter = Instance.new("Frame")
LogoOuter.Size             = UDim2.new(0, 82, 0, 82)
LogoOuter.Position         = UDim2.new(0.5, -41, 0, 20)
LogoOuter.BackgroundColor3 = Color3.fromRGB(6, 10, 32)
LogoOuter.BorderSizePixel  = 0
LogoOuter.ZIndex           = 5
LogoOuter.Parent           = Card
local LogoOuterCorner = Instance.new("UICorner")
LogoOuterCorner.CornerRadius = UDim.new(1, 0)
LogoOuterCorner.Parent = LogoOuter

local LogoRingStroke = Instance.new("UIStroke")
LogoRingStroke.Color     = Color3.fromRGB(0, 180, 255)
LogoRingStroke.Thickness = 2
LogoRingStroke.Parent    = LogoOuter

-- Inner circle
local LogoInner = Instance.new("Frame")
LogoInner.Size             = UDim2.new(0, 62, 0, 62)
LogoInner.Position         = UDim2.new(0.5, -31, 0.5, -31)
LogoInner.BackgroundColor3 = Color3.fromRGB(10, 16, 48)
LogoInner.BorderSizePixel  = 0
LogoInner.ZIndex           = 6
LogoInner.Parent           = LogoOuter
local LogoInnerCorner = Instance.new("UICorner")
LogoInnerCorner.CornerRadius = UDim.new(1, 0)
LogoInnerCorner.Parent = LogoInner

local LogoInnerGrad = Instance.new("UIGradient")
LogoInnerGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 30, 80)),
  ColorSequenceKeypoint.new(1, Color3.fromRGB(6, 10, 36)),
})
LogoInnerGrad.Rotation = 135
LogoInnerGrad.Parent = LogoInner

local LogoLabel = Instance.new("TextLabel")
LogoLabel.Size                   = UDim2.new(1, 0, 1, 0)
LogoLabel.BackgroundTransparency = 1
LogoLabel.Text                   = "◈"
LogoLabel.TextColor3             = Color3.fromRGB(0, 200, 255)
LogoLabel.TextScaled             = true
LogoLabel.Font                   = Enum.Font.GothamBold
LogoLabel.ZIndex                 = 7
LogoLabel.Parent                 = LogoInner

-- Pulse logo + ring
task.spawn(function()
  while ScreenGui and ScreenGui.Parent do
    TW:Create(LogoLabel, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      TextColor3 = Color3.fromRGB(160, 100, 255)
    }):Play()
    TW:Create(LogoRingStroke, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      Color = Color3.fromRGB(160, 80, 255), Thickness = 3
    }):Play()
    task.wait(1.2)
    TW:Create(LogoLabel, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      TextColor3 = Color3.fromRGB(0, 200, 255)
    }):Play()
    TW:Create(LogoRingStroke, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      Color = Color3.fromRGB(0, 180, 255), Thickness = 2
    }):Play()
    task.wait(1.2)
  end
end)

-- ============================================================
--  VERSION BADGE
-- ============================================================
local VerBadge = Instance.new("Frame")
VerBadge.Size             = UDim2.new(0, 44, 0, 18)
VerBadge.Position         = UDim2.new(0.5, 22, 0, 42)
VerBadge.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
VerBadge.BorderSizePixel  = 0
VerBadge.ZIndex           = 8
VerBadge.Parent           = Card
local VerBadgeCorner = Instance.new("UICorner")
VerBadgeCorner.CornerRadius = UDim.new(0, 6)
VerBadgeCorner.Parent = VerBadge

local VerBadgeGrad = Instance.new("UIGradient")
VerBadgeGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 200)),
  ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 40, 200)),
})
VerBadgeGrad.Rotation = 90
VerBadgeGrad.Parent = VerBadge

local VerLabel = Instance.new("TextLabel")
VerLabel.Size                   = UDim2.new(1, 0, 1, 0)
VerLabel.BackgroundTransparency = 1
VerLabel.Text                   = VER
VerLabel.TextColor3             = Color3.fromRGB(200, 230, 255)
VerLabel.TextScaled             = false
VerLabel.TextSize               = 10
VerLabel.Font                   = Enum.Font.GothamBold
VerLabel.TextXAlignment         = Enum.TextXAlignment.Center
VerLabel.ZIndex                 = 9
VerLabel.Parent                 = VerBadge

-- ============================================================
--  TITLE
-- ============================================================
local Title = Instance.new("TextLabel")
Title.Size                   = UDim2.new(1, -40, 0, 42)
Title.Position               = UDim2.new(0, 20, 0, 116)
Title.BackgroundTransparency = 1
Title.Text                   = "NOVA  HUB"
Title.TextColor3             = Color3.fromRGB(200, 230, 255)
Title.TextScaled             = false
Title.TextSize               = 32
Title.Font                   = Enum.Font.GothamBold
Title.TextXAlignment         = Enum.TextXAlignment.Center
Title.LetterSpacing           = 4
Title.ZIndex                 = 5
Title.Parent                 = Card

local TitleGrad = Instance.new("UIGradient")
TitleGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(0, 180, 255)),
  ColorSequenceKeypoint.new(0.4, Color3.fromRGB(180, 140, 255)),
  ColorSequenceKeypoint.new(0.6, Color3.fromRGB(255, 240, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(0, 160, 255)),
})
TitleGrad.Parent = Title

task.spawn(function()
  local o = 0
  while ScreenGui and ScreenGui.Parent do
    o = (o + 0.02) % 1
    TitleGrad.Offset = Vector2.new(o, 0)
    task.wait(0.05)
  end
end)

-- ============================================================
--  TAGLINE
-- ============================================================
local Tagline = Instance.new("TextLabel")
Tagline.Size                   = UDim2.new(1, -40, 0, 20)
Tagline.Position               = UDim2.new(0, 20, 0, 162)
Tagline.BackgroundTransparency = 1
Tagline.Text                   = "— PREMIUM SCRIPT SERVICE —"
Tagline.TextColor3             = Color3.fromRGB(60, 120, 190)
Tagline.TextScaled             = false
Tagline.TextSize               = 11
Tagline.Font                   = Enum.Font.GothamBold
Tagline.TextXAlignment         = Enum.TextXAlignment.Center
Tagline.ZIndex                 = 5
Tagline.Parent                 = Card

-- ============================================================
--  DIVIDER
-- ============================================================
local Divider = Instance.new("Frame")
Divider.Size             = UDim2.new(0, 0, 0, 1)
Divider.Position         = UDim2.new(0.5, 0, 0, 196)
Divider.BackgroundColor3 = Color3.fromRGB(0, 140, 220)
Divider.BorderSizePixel  = 0
Divider.ZIndex           = 5
Divider.Parent           = Card
local DivGrad = Instance.new("UIGradient")
DivGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(0, 0, 0)),
  ColorSequenceKeypoint.new(0.3, Color3.fromRGB(0, 160, 255)),
  ColorSequenceKeypoint.new(0.7, Color3.fromRGB(120, 80, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(0, 0, 0)),
})
DivGrad.Parent = Divider

-- ============================================================
--  STATUS LABEL
-- ============================================================
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size                   = UDim2.new(1, -40, 0, 24)
StatusLabel.Position               = UDim2.new(0, 20, 0, 210)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text                   = "กำลังเริ่มต้น..."
StatusLabel.TextColor3             = Color3.fromRGB(120, 190, 255)
StatusLabel.TextScaled             = false
StatusLabel.TextSize               = 13
StatusLabel.Font                   = Enum.Font.Gotham
StatusLabel.TextXAlignment         = Enum.TextXAlignment.Center
StatusLabel.ZIndex                 = 5
StatusLabel.Parent                 = Card

-- ============================================================
--  PROGRESS BAR  (segmented style)
-- ============================================================
-- Outer track
local BarBG = Instance.new("Frame")
BarBG.Size             = UDim2.new(0, 400, 0, 12)
BarBG.Position         = UDim2.new(0.5, -200, 0, 248)
BarBG.BackgroundColor3 = Color3.fromRGB(10, 16, 42)
BarBG.BorderSizePixel  = 0
BarBG.ZIndex           = 5
BarBG.Parent           = Card
local BarBGCorner = Instance.new("UICorner")
BarBGCorner.CornerRadius = UDim.new(1, 0)
BarBGCorner.Parent = BarBG

local BarBGStroke = Instance.new("UIStroke")
BarBGStroke.Color       = Color3.fromRGB(0, 80, 160)
BarBGStroke.Thickness   = 1
BarBGStroke.Transparency = 0.5
BarBGStroke.Parent      = BarBG

-- Fill
local BarFill = Instance.new("Frame")
BarFill.Name             = "Fill"
BarFill.Size             = UDim2.new(0, 0, 1, 0)
BarFill.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
BarFill.BorderSizePixel  = 0
BarFill.ZIndex           = 6
BarFill.Parent           = BarBG
local BarFillCorner = Instance.new("UICorner")
BarFillCorner.CornerRadius = UDim.new(1, 0)
BarFillCorner.Parent = BarFill

local BarFillGrad = Instance.new("UIGradient")
BarFillGrad.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0,   Color3.fromRGB(0, 80, 200)),
  ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 180, 255)),
  ColorSequenceKeypoint.new(1,   Color3.fromRGB(160, 120, 255)),
})
BarFillGrad.Parent = BarFill

-- shimmer on fill
task.spawn(function()
  local o = 0
  while ScreenGui and ScreenGui.Parent do
    o = (o + 0.03) % 1
    BarFillGrad.Offset = Vector2.new(o, 0)
    task.wait(0.04)
  end
end)

-- Glow dot at tip
local BarGlow = Instance.new("Frame")
BarGlow.Size             = UDim2.new(0, 16, 0, 16)
BarGlow.AnchorPoint      = Vector2.new(0.5, 0.5)
BarGlow.Position         = UDim2.new(1, 0, 0.5, 0)
BarGlow.BackgroundColor3 = Color3.fromRGB(180, 220, 255)
BarGlow.BackgroundTransparency = 0.2
BarGlow.BorderSizePixel  = 0
BarGlow.ZIndex           = 7
BarGlow.Parent           = BarFill
local BarGlowCorner = Instance.new("UICorner")
BarGlowCorner.CornerRadius = UDim.new(1, 0)
BarGlowCorner.Parent = BarGlow

task.spawn(function()
  while ScreenGui and ScreenGui.Parent do
    TW:Create(BarGlow, TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      BackgroundTransparency = 0.75, Size = UDim2.new(0, 10, 0, 10)
    }):Play()
    task.wait(0.6)
    TW:Create(BarGlow, TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
      BackgroundTransparency = 0.1, Size = UDim2.new(0, 18, 0, 18)
    }):Play()
    task.wait(0.6)
  end
end)

-- ============================================================
--  PROGRESS % LABEL
-- ============================================================
local BarLabel = Instance.new("TextLabel")
BarLabel.Size                   = UDim2.new(1, 0, 0, 18)
BarLabel.Position               = UDim2.new(0, 0, 0, 270)
BarLabel.BackgroundTransparency = 1
BarLabel.Text                   = "0%"
BarLabel.TextColor3             = Color3.fromRGB(60, 140, 220)
BarLabel.TextScaled             = false
BarLabel.TextSize               = 11
BarLabel.Font                   = Enum.Font.GothamBold
BarLabel.TextXAlignment         = Enum.TextXAlignment.Center
BarLabel.ZIndex                 = 5
BarLabel.Parent                 = Card

-- ============================================================
--  KEY LABEL
-- ============================================================
local KeyBG = Instance.new("Frame")
KeyBG.Size             = UDim2.new(0, 320, 0, 26)
KeyBG.Position         = UDim2.new(0.5, -160, 0, 300)
KeyBG.BackgroundColor3 = Color3.fromRGB(6, 12, 36)
KeyBG.BorderSizePixel  = 0
KeyBG.ZIndex           = 5
KeyBG.Parent           = Card
local KeyBGCorner = Instance.new("UICorner")
KeyBGCorner.CornerRadius = UDim.new(0, 8)
KeyBGCorner.Parent = KeyBG
local KeyBGStroke = Instance.new("UIStroke")
KeyBGStroke.Color       = Color3.fromRGB(0, 80, 160)
KeyBGStroke.Thickness   = 1
KeyBGStroke.Transparency = 0.6
KeyBGStroke.Parent      = KeyBG

local KeyLabel = Instance.new("TextLabel")
KeyLabel.Size                   = UDim2.new(1, -16, 1, 0)
KeyLabel.Position               = UDim2.new(0, 8, 0, 0)
KeyLabel.BackgroundTransparency = 1
KeyLabel.Text                   = KEY ~= "" and ("🔑  " .. KEY:sub(1,5) .. "-****-****-****") or "🔑  No Key Provided"
KeyLabel.TextColor3             = Color3.fromRGB(50, 110, 180)
KeyLabel.TextScaled             = false
KeyLabel.TextSize               = 11
KeyLabel.Font                   = Enum.Font.Code
KeyLabel.TextXAlignment         = Enum.TextXAlignment.Center
KeyLabel.ZIndex                 = 6
KeyLabel.Parent                 = KeyBG

-- ============================================================
--  FOOTER LINE
-- ============================================================
local Footer = Instance.new("TextLabel")
Footer.Size                   = UDim2.new(1, -40, 0, 18)
Footer.Position               = UDim2.new(0, 20, 0, 360)
Footer.BackgroundTransparency = 1
Footer.Text                   = "nova-hub.gg  •  discord.gg/novahub"
Footer.TextColor3             = Color3.fromRGB(30, 60, 120)
Footer.TextScaled             = false
Footer.TextSize               = 10
Footer.Font                   = Enum.Font.Gotham
Footer.TextXAlignment         = Enum.TextXAlignment.Center
Footer.ZIndex                 = 5
Footer.Parent                 = Card

-- ============================================================
--  HELPERS
-- ============================================================
local function tweenProp(obj, info, goal)
  TW:Create(obj, info, goal):Play()
end

-- ============================================================
--  INTRO SEQUENCE
-- ============================================================
tweenProp(BG, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
  BackgroundTransparency = 0
})

task.wait(0.15)
tweenProp(Card, TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
  BackgroundTransparency = 0,
  Position = UDim2.new(0.5, -250, 0.5, -195)
})

task.wait(0.55)
tweenProp(Divider, TweenInfo.new(0.65, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
  Size     = UDim2.new(0.72, 0, 0, 1),
  Position = UDim2.new(0.14, 0, 0, 196),
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
  tweenProp(StatusLabel, TweenInfo.new(0.15, Enum.EasingStyle.Linear), { TextTransparency = 1 })
  task.wait(0.15)
  StatusLabel.Text       = msg
  StatusLabel.TextColor3 = col or Color3.fromRGB(120, 190, 255)
  tweenProp(StatusLabel, TweenInfo.new(0.25, Enum.EasingStyle.Linear), { TextTransparency = 0 })
end

-- ============================================================
--  CLOSE SCREEN
-- ============================================================
local function closeScreen(success)
  task.wait(0.6)
  tweenProp(Card, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, -250, 0.48, -195)
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
      Color    = col or Color3.fromRGB(0, 200, 255),
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
    setStatus("❌ เชื่อมต่อ Server ไม่ได้", Color3.fromRGB(255, 80, 80))
    setProgress(100)
    notify("❌ เชื่อมต่อ Server ไม่ได้", Color3.fromRGB(255, 80, 80))
    closeScreen(false); return false
  end

  setProgress(60, "กำลังตรวจสอบสิทธิ์...")
  task.wait(0.2)

  local ok2, result = pcall(HS.JSONDecode, HS, raw)
  if not ok2 then
    setStatus("❌ Server response error", Color3.fromRGB(255, 80, 80))
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
        setStatus("❌ Key หมดอายุแล้ว", Color3.fromRGB(255, 80, 80))
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
    StatusLabel.TextColor3 = Color3.fromRGB(80, 255, 180)
    notify("✅ Authorized | เหลือ: " .. timeLeft, Color3.fromRGB(80, 255, 180))
    task.wait(0.3)
    return true
  else
    setStatus("❌ " .. (result.message or "Unauthorized"), Color3.fromRGB(255, 80, 80))
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

setStatus("🚀 กำลังโหลด Script...", Color3.fromRGB(120, 200, 255))
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
