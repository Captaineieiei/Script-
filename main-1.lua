--[[
    Pro Mobile & PC UI Library v3
    ==============================
    สิ่งที่เปลี่ยนจาก v2 (API ใหม่ ใช้ง่ายกว่าเดิมมาก):

    1. ทุก element คืนค่าเป็น "Element object" ที่มีเมธอด:
         Element:Set(value)      -- เปลี่ยนค่าโดย code (sync กับ UI ทันที)
         Element:Get()           -- ดึงค่าปัจจุบัน
         Element:SetVisible(bool)-- โชว์/ซ่อน element นั้น
         Element:Destroy()       -- ลบ element นั้นออก
    2. Flag system: ใส่ Flag = "ชื่อ" ใน config ของ element แล้วดึงค่าทุกตัว
       รวมกันได้ที่ Library.Flags["ชื่อ"] -> ใช้ทำ Save/Load Config ได้จริง
    3. Library:Notify({Title=, Content=, Duration=}) แจ้งเตือนแบบ toast
    4. Tab:CreateSection("หัวข้อ") แบ่งกลุ่ม UI ให้อ่านง่าย
    5. CreateWindow({ ToggleKeybind = Enum.KeyCode.RightControl }) กดปุ่มเดียวซ่อน/โชว์ทั้ง UI
    6. Window:Destroy() / Window:SetTitle() / Window:Toggle()
    7. ยังคงบั๊กฟิกซ์ทั้งหมดจาก v2 (AnchorPoint, AutomaticCanvasSize,
       bounding-box hit test แทน GetGuiObjectsAtPosition, ปุ่มปิดไม่ชนกับการลาก ฯลฯ)
]]

local Library = {}
Library.__index = Library
Library.Flags = {} -- เก็บค่าทุก element ที่มี Flag ไว้ที่นี่ เอาไป save/load ได้เลย

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

local Theme = {
    Background = Color3.fromRGB(18, 18, 23),
    Sidebar = Color3.fromRGB(23, 23, 28),
    Topbar = Color3.fromRGB(27, 27, 33),
    Element = Color3.fromRGB(38, 38, 44),
    ElementHover = Color3.fromRGB(48, 48, 55),
    Text = Color3.fromRGB(240, 240, 245),
    SubText = Color3.fromRGB(160, 160, 170),
    Accent = Color3.fromRGB(110, 140, 255),
    ToggleOn = Color3.fromRGB(95, 230, 150),
    ToggleOff = Color3.fromRGB(60, 60, 68),
    Stroke = Color3.fromRGB(45, 45, 52),
    Danger = Color3.fromRGB(220, 70, 70)
}

local function getUiParent()
    if gethui then return gethui() end
    if syn and syn.protect_gui then
        local protected = Instance.new("ScreenGui")
        syn.protect_gui(protected)
        return protected
    end
    return CoreGui
end

local function corner(inst, radius)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, radius or 8)
    c.Parent = inst
    return c
end

local function stroke(inst, color)
    local s = Instance.new("UIStroke")
    s.Color = color or Theme.Stroke
    s.Thickness = 1
    s.Transparency = 0.5
    s.Parent = inst
    return s
end

local function applyHoverEffect(btn, defaultColor, hoverColor)
    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.15), {BackgroundColor3 = hoverColor}):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.15), {BackgroundColor3 = defaultColor}):Play()
    end)
end

-- ตรวจว่าตำแหน่งที่แตะอยู่ในกรอบของ guiObject หรือไม่ (bounding box)
-- ใช้แทน UserInputService:GetGuiObjectsAtPosition() เพราะบาง executor ไม่รองรับ
local function isPointOverGui(pos, guiObject)
    if not guiObject or not guiObject.Parent then return false end
    if guiObject:IsA("GuiObject") and not guiObject.Visible then return false end
    local topLeft = guiObject.AbsolutePosition
    local size = guiObject.AbsoluteSize
    return pos.X >= topLeft.X and pos.X <= topLeft.X + size.X
       and pos.Y >= topLeft.Y and pos.Y <= topLeft.Y + size.Y
end

-- สร้าง "Element object" มาตรฐานให้ทุกตัวใช้ร่วมกัน
local function newElement(root, getter, setter, destroyer)
    return {
        Instance = root,
        Get = getter or function() return nil end,
        Set = setter or function() end,
        SetVisible = function(_, visible) root.Visible = visible end,
        Destroy = destroyer or function() root:Destroy() end,
    }
end

function Library:CreateWindow(config)
    config = type(config) == "table" and config or {}
    local Window = setmetatable({}, Library)

    local oldGui = CoreGui:FindFirstChild("ProMobileUI")
    if oldGui then oldGui:Destroy() end

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ProMobileUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Parent = getUiParent()

    -- ============ Notification layer ============
    local NotifyHolder = Instance.new("Frame")
    NotifyHolder.Name = "Notifications"
    NotifyHolder.AnchorPoint = Vector2.new(1, 0)
    NotifyHolder.Position = UDim2.new(1, -16, 0, 16)
    NotifyHolder.Size = UDim2.new(0, 260, 1, -32)
    NotifyHolder.BackgroundTransparency = 1
    NotifyHolder.Parent = ScreenGui
    local NotifyLayout = Instance.new("UIListLayout")
    NotifyLayout.Padding = UDim.new(0, 8)
    NotifyLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    NotifyLayout.Parent = NotifyHolder

    function Library:Notify(opts)
        if type(opts) == "string" then opts = {Content = opts} end
        opts = type(opts) == "table" and opts or {}
        local title = opts.Title or "Notice"
        local content = opts.Content or ""
        local duration = opts.Duration or 3

        local Toast = Instance.new("Frame")
        Toast.BackgroundColor3 = Theme.Element
        Toast.Size = UDim2.new(1, 0, 0, 0)
        Toast.AutomaticSize = Enum.AutomaticSize.Y
        Toast.BackgroundTransparency = 1
        Toast.Parent = NotifyHolder
        corner(Toast, 8)
        stroke(Toast)

        local Pad = Instance.new("UIPadding")
        Pad.PaddingTop = UDim.new(0, 10)
        Pad.PaddingBottom = UDim.new(0, 10)
        Pad.PaddingLeft = UDim.new(0, 12)
        Pad.PaddingRight = UDim.new(0, 12)
        Pad.Parent = Toast

        local Layout = Instance.new("UIListLayout")
        Layout.Padding = UDim.new(0, 2)
        Layout.Parent = Toast

        local TitleLbl = Instance.new("TextLabel")
        TitleLbl.BackgroundTransparency = 1
        TitleLbl.Size = UDim2.new(1, 0, 0, 18)
        TitleLbl.Font = Enum.Font.GothamBold
        TitleLbl.TextSize = 13
        TitleLbl.TextColor3 = Theme.Text
        TitleLbl.TextXAlignment = Enum.TextXAlignment.Left
        TitleLbl.TextTransparency = 1
        TitleLbl.Text = title
        TitleLbl.Parent = Toast

        local ContentLbl = Instance.new("TextLabel")
        ContentLbl.BackgroundTransparency = 1
        ContentLbl.Size = UDim2.new(1, 0, 0, 0)
        ContentLbl.AutomaticSize = Enum.AutomaticSize.Y
        ContentLbl.Font = Enum.Font.Gotham
        ContentLbl.TextSize = 12
        ContentLbl.TextColor3 = Theme.SubText
        ContentLbl.TextXAlignment = Enum.TextXAlignment.Left
        ContentLbl.TextWrapped = true
        ContentLbl.TextTransparency = 1
        ContentLbl.Text = content
        ContentLbl.Parent = Toast

        TweenService:Create(Toast, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
        TweenService:Create(TitleLbl, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
        TweenService:Create(ContentLbl, TweenInfo.new(0.2), {TextTransparency = 0}):Play()

        task.delay(duration, function()
            if Toast and Toast.Parent then
                TweenService:Create(Toast, TweenInfo.new(0.25), {BackgroundTransparency = 1}):Play()
                TweenService:Create(TitleLbl, TweenInfo.new(0.25), {TextTransparency = 1}):Play()
                TweenService:Create(ContentLbl, TweenInfo.new(0.25), {TextTransparency = 1}):Play()
                task.wait(0.25)
                Toast:Destroy()
            end
        end)
    end

    -- ============ Main window ============
    local Shadow = Instance.new("ImageLabel")
    Shadow.Name = "Shadow"
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    Shadow.Size = config.Size or UDim2.new(0, 400, 0, 380)
    Shadow.BackgroundTransparency = 1
    Shadow.Image = "rbxassetid://1316045217"
    Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.ImageTransparency = 1
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(10, 10, 118, 118)
    Shadow.Parent = ScreenGui

    local MainFrame = Instance.new("Frame")
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.Size = UDim2.new(0, 380, 0, 360)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.BackgroundColor3 = Theme.Background
    MainFrame.BackgroundTransparency = 1
    MainFrame.BorderSizePixel = 0
    MainFrame.Active = true
    MainFrame.Parent = Shadow
    corner(MainFrame, 10)
    local mainStroke = stroke(MainFrame)
    mainStroke.Transparency = 1

    local hasTopBarTitle = true
    local TopBar = Instance.new("Frame")
    TopBar.Size = UDim2.new(1, 0, 0, config.SubTitle and 48 or 40)
    TopBar.BackgroundColor3 = Theme.Topbar
    TopBar.BackgroundTransparency = 1
    TopBar.BorderSizePixel = 0
    TopBar.Active = true
    TopBar.Parent = MainFrame
    corner(TopBar, 10)

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Size = UDim2.new(1, -50, 0, 20)
    TitleLabel.Position = UDim2.new(0, 15, 0, config.SubTitle and 5 or 0)
    TitleLabel.AnchorPoint = Vector2.new(0, config.SubTitle and 0 or 0)
    if not config.SubTitle then
        TitleLabel.Size = UDim2.new(1, -50, 1, 0)
    end
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Text = config.Title or "Pro Hub"
    TitleLabel.TextColor3 = Theme.Text
    TitleLabel.TextTransparency = 1
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextSize = 15
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    TitleLabel.Parent = TopBar

    if config.SubTitle then
        local SubTitleLabel = Instance.new("TextLabel")
        SubTitleLabel.Size = UDim2.new(1, -50, 0, 16)
        SubTitleLabel.Position = UDim2.new(0, 15, 0, 25)
        SubTitleLabel.BackgroundTransparency = 1
        SubTitleLabel.Text = config.SubTitle
        SubTitleLabel.TextColor3 = Theme.SubText
        SubTitleLabel.TextTransparency = 1
        SubTitleLabel.Font = Enum.Font.Gotham
        SubTitleLabel.TextSize = 12
        SubTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
        SubTitleLabel.Parent = TopBar
        TweenService:Create(SubTitleLabel, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
    end

    local CloseBtn = Instance.new("TextButton")
    CloseBtn.Size = UDim2.new(0, 28, 0, 28)
    CloseBtn.AnchorPoint = Vector2.new(1, 0.5)
    CloseBtn.Position = UDim2.new(1, -10, 0.5, 0)
    CloseBtn.BackgroundColor3 = Theme.Danger
    CloseBtn.BackgroundTransparency = 1
    CloseBtn.AutoButtonColor = false
    CloseBtn.Text = "×"
    CloseBtn.TextColor3 = Theme.Text
    CloseBtn.TextTransparency = 1
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.TextSize = 18
    CloseBtn.ZIndex = 5
    CloseBtn.Parent = TopBar
    corner(CloseBtn, 7)
    applyHoverEffect(CloseBtn, Theme.Danger, Color3.fromRGB(240, 90, 90))
    CloseBtn.MouseButton1Click:Connect(function() Window:Destroy() end)

    local topBarH = config.SubTitle and 48 or 40
    local TabContainer = Instance.new("Frame")
    TabContainer.Size = UDim2.new(0, 120, 1, -topBarH)
    TabContainer.Position = UDim2.new(0, 0, 0, topBarH)
    TabContainer.BackgroundColor3 = Theme.Sidebar
    TabContainer.BackgroundTransparency = 1
    TabContainer.BorderSizePixel = 0
    TabContainer.Active = true
    TabContainer.Parent = MainFrame
    corner(TabContainer, 10)

    local TabList = Instance.new("ScrollingFrame")
    TabList.Size = UDim2.new(1, -10, 1, -10)
    TabList.Position = UDim2.new(0, 5, 0, 5)
    TabList.BackgroundTransparency = 1
    TabList.ScrollBarThickness = 2
    TabList.ScrollBarImageColor3 = Theme.Accent
    TabList.Active = true
    TabList.AutomaticCanvasSize = Enum.AutomaticSize.Y
    TabList.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabList.Parent = TabContainer
    local TabLayout = Instance.new("UIListLayout")
    TabLayout.Padding = UDim.new(0, 5)
    TabLayout.Parent = TabList

    local ContentArea = Instance.new("Frame")
    ContentArea.Size = UDim2.new(1, -120, 1, -topBarH)
    ContentArea.Position = UDim2.new(0, 120, 0, topBarH)
    ContentArea.BackgroundTransparency = 1
    ContentArea.Active = true
    ContentArea.Parent = MainFrame

    local Tabs = {}
    local CurrentTab = nil
    local closeActivePopup = function() end

    -- ===== เอฟเฟกต์เปิดหน้าต่าง (fade + scale) =====
    Shadow.Size = UDim2.new(Shadow.Size.X.Scale, Shadow.Size.X.Offset, Shadow.Size.Y.Scale, Shadow.Size.Y.Offset)
    MainFrame.Size = MainFrame.Size - UDim2.new(0, 20, 0, 20)
    TweenService:Create(MainFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0,
        Size = UDim2.new(0, 380, 0, 360)
    }):Play()
    TweenService:Create(mainStroke, TweenInfo.new(0.25), {Transparency = 0.5}):Play()
    TweenService:Create(Shadow, TweenInfo.new(0.3), {ImageTransparency = 0.5}):Play()
    TweenService:Create(TopBar, TweenInfo.new(0.25), {BackgroundTransparency = 0}):Play()
    TweenService:Create(TitleLabel, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
    TweenService:Create(CloseBtn, TweenInfo.new(0.25), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
    TweenService:Create(TabContainer, TweenInfo.new(0.25), {BackgroundTransparency = 0}):Play()

    -- ===== Toggle key (ซ่อน/โชว์ทั้ง UI ด้วยปุ่มเดียว) =====
    if config.ToggleKeybind then
        UserInputService.InputBegan:Connect(function(input, gpe)
            if gpe then return end
            if input.KeyCode == config.ToggleKeybind then
                ScreenGui.Enabled = not ScreenGui.Enabled
            end
        end)
    end

    function Window:Toggle()
        ScreenGui.Enabled = not ScreenGui.Enabled
    end

    function Window:SetTitle(newTitle)
        TitleLabel.Text = newTitle
    end

    function Window:Destroy()
        ScreenGui:Destroy()
    end

    function Window:CreateTab(name, icon)
        local Tab = {}
        local TabBtn = Instance.new("TextButton")
        TabBtn.Size = UDim2.new(1, 0, 0, 35)
        TabBtn.BackgroundColor3 = Theme.Element
        TabBtn.AutoButtonColor = false
        TabBtn.Text = "  " .. name
        TabBtn.TextColor3 = Theme.SubText
        TabBtn.Font = Enum.Font.GothamSemibold
        TabBtn.TextSize = 13
        TabBtn.TextXAlignment = Enum.TextXAlignment.Left
        TabBtn.Parent = TabList
        corner(TabBtn, 7)
        applyHoverEffect(TabBtn, Theme.Element, Theme.ElementHover)

        local TabContent = Instance.new("ScrollingFrame")
        TabContent.Size = UDim2.new(1, -20, 1, -20)
        TabContent.Position = UDim2.new(0, 10, 0, 10)
        TabContent.BackgroundTransparency = 1
        TabContent.ScrollBarThickness = 2
        TabContent.ScrollBarImageColor3 = Theme.Accent
        TabContent.Visible = false
        TabContent.Active = true
        TabContent.AutomaticCanvasSize = Enum.AutomaticSize.Y
        TabContent.CanvasSize = UDim2.new(0, 0, 0, 0)
        TabContent.Parent = ContentArea
        local ContentLayout = Instance.new("UIListLayout")
        ContentLayout.Padding = UDim.new(0, 8)
        ContentLayout.Parent = TabContent

        TabBtn.MouseButton1Click:Connect(function()
            if CurrentTab then
                TweenService:Create(CurrentTab.Btn, TweenInfo.new(0.15), {BackgroundColor3 = Theme.Element}):Play()
                CurrentTab.Btn.TextColor3 = Theme.SubText
                CurrentTab.Content.Visible = false
            end
            closeActivePopup()
            TweenService:Create(TabBtn, TweenInfo.new(0.15), {BackgroundColor3 = Theme.Accent}):Play()
            TabBtn.TextColor3 = Theme.Text
            TabContent.Visible = true
            CurrentTab = {Btn = TabBtn, Content = TabContent}
        end)

        -- helper ภายในแท็บ: ผูก Flag เข้ากับ Library.Flags อัตโนมัติ
        local function bindFlag(flag, value)
            if flag then Library.Flags[flag] = value end
        end

        -- ============================================
        -- UI ELEMENTS (ทุกตัวคืน Element object)
        -- ============================================

        function Tab:CreateSection(title)
            local Holder = Instance.new("Frame")
            Holder.Size = UDim2.new(1, 0, 0, 24)
            Holder.BackgroundTransparency = 1
            Holder.Parent = TabContent

            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(1, 0, 0, 16)
            Label.Position = UDim2.new(0, 0, 0, 8)
            Label.BackgroundTransparency = 1
            Label.Text = string.upper(title or "Section")
            Label.TextColor3 = Theme.Accent
            Label.Font = Enum.Font.GothamBold
            Label.TextSize = 11
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.Parent = Holder

            return newElement(Holder)
        end

        function Tab:CreateButton(c)
            c = type(c) == "table" and c or {}
            local Btn = Instance.new("TextButton")
            Btn.Size = UDim2.new(1, 0, 0, 40)
            Btn.BackgroundColor3 = Theme.Element
            Btn.Text = c.Text or "Button"
            Btn.TextColor3 = Theme.Text
            Btn.Font = Enum.Font.GothamSemibold
            Btn.TextSize = 14
            Btn.AutoButtonColor = false
            Btn.Parent = TabContent
            corner(Btn, 7)
            applyHoverEffect(Btn, Theme.Element, Theme.ElementHover)

            Btn.MouseButton1Click:Connect(function()
                if c.Callback then c.Callback() end
            end)

            return newElement(Btn, nil, function(_, newText) Btn.Text = newText end)
        end

        function Tab:CreateToggle(c)
            c = type(c) == "table" and c or {}
            local state = c.Default or false
            bindFlag(c.Flag, state)

            local Frame = Instance.new("Frame")
            Frame.Size = UDim2.new(1, 0, 0, 40)
            Frame.BackgroundColor3 = Theme.Element
            Frame.Active = true
            Frame.Parent = TabContent
            corner(Frame, 7)

            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(1, -60, 1, 0)
            Label.Position = UDim2.new(0, 12, 0, 0)
            Label.BackgroundTransparency = 1
            Label.Text = c.Text or "Toggle"
            Label.TextColor3 = Theme.Text
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 14
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.Parent = Frame

            local Switch = Instance.new("TextButton")
            Switch.Size = UDim2.new(0, 40, 0, 20)
            Switch.Position = UDim2.new(1, -52, 0.5, -10)
            Switch.BackgroundColor3 = state and Theme.ToggleOn or Theme.ToggleOff
            Switch.AutoButtonColor = false
            Switch.Text = ""
            Switch.Parent = Frame
            corner(Switch, 10)

            local Circle = Instance.new("Frame")
            Circle.Size = UDim2.new(0, 16, 0, 16)
            Circle.Position = state and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
            Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Circle.Parent = Switch
            corner(Circle, 8)

            local function applyState(newState, fireCallback)
                state = newState
                bindFlag(c.Flag, state)
                TweenService:Create(Switch, TweenInfo.new(0.15), {BackgroundColor3 = state and Theme.ToggleOn or Theme.ToggleOff}):Play()
                TweenService:Create(Circle, TweenInfo.new(0.15), {
                    Position = state and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
                }):Play()
                if fireCallback and c.Callback then c.Callback(state) end
            end

            Switch.MouseButton1Click:Connect(function() applyState(not state, true) end)

            return newElement(
                Frame,
                function() return state end,
                function(_, newState) applyState(newState, true) end
            )
        end

        function Tab:CreateSlider(c)
            c = type(c) == "table" and c or {}
            local min, max = c.Min or 0, c.Max or 100
            local val = math.clamp(c.Default or min, min, max)
            bindFlag(c.Flag, val)

            local Frame = Instance.new("Frame")
            Frame.Size = UDim2.new(1, 0, 0, 50)
            Frame.BackgroundColor3 = Theme.Element
            Frame.Active = true
            Frame.Parent = TabContent
            corner(Frame, 7)

            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(1, -20, 0, 20)
            Label.Position = UDim2.new(0, 10, 0, 5)
            Label.BackgroundTransparency = 1
            Label.Text = (c.Text or "Slider") .. ": " .. val
            Label.TextColor3 = Theme.Text
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 14
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.Parent = Frame

            local Bar = Instance.new("Frame")
            Bar.Size = UDim2.new(1, -20, 0, 8)
            Bar.Position = UDim2.new(0, 10, 0, 33)
            Bar.BackgroundColor3 = Theme.Background
            Bar.Active = true
            Bar.Parent = Frame
            corner(Bar, 4)

            local Fill = Instance.new("Frame")
            Fill.Size = UDim2.new((val - min) / (max - min), 0, 1, 0)
            Fill.BackgroundColor3 = Theme.Accent
            Fill.Parent = Bar
            corner(Fill, 4)

            local Handle = Instance.new("Frame")
            Handle.Size = UDim2.new(0, 14, 0, 14)
            Handle.AnchorPoint = Vector2.new(1, 0.5)
            Handle.Position = UDim2.new(1, 0, 0.5, 0)
            Handle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Handle.Parent = Fill
            corner(Handle, 7)

            local dragging = false
            local activeInput = nil

            local function updateFromPos(xPos, fireCallback)
                local pos = xPos - Bar.AbsolutePosition.X
                local percent = math.clamp(pos / Bar.AbsoluteSize.X, 0, 1)
                local value = math.floor(min + (max - min) * percent)
                Fill.Size = UDim2.new(percent, 0, 1, 0)
                Label.Text = (c.Text or "Slider") .. ": " .. value
                val = value
                bindFlag(c.Flag, val)
                if fireCallback and c.Callback then c.Callback(value) end
            end

            Bar.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                    activeInput = input
                    updateFromPos(input.Position.X, true)
                end
            end)
            Bar.InputEnded:Connect(function(input)
                if input == activeInput then
                    dragging = false
                    activeInput = nil
                end
            end)
            UserInputService.InputChanged:Connect(function(input)
                if dragging and input == activeInput then
                    updateFromPos(input.Position.X, true)
                end
            end)

            return newElement(
                Frame,
                function() return val end,
                function(_, newVal)
                    newVal = math.clamp(newVal, min, max)
                    local percent = (newVal - min) / (max - min)
                    updateFromPos(Bar.AbsolutePosition.X + percent * Bar.AbsoluteSize.X, true)
                end
            )
        end

        function Tab:CreateDropdown(c)
            c = type(c) == "table" and c or {}
            c.Options = (type(c.Options) == "table" and #c.Options > 0) and c.Options or {"Option 1"}
            local selected = c.Default or c.Options[1]
            bindFlag(c.Flag, selected)

            local Drop = Instance.new("TextButton")
            Drop.Size = UDim2.new(1, 0, 0, 40)
            Drop.BackgroundColor3 = Theme.Element
            Drop.AutoButtonColor = false
            Drop.Text = (c.Text or "Dropdown") .. ": " .. selected
            Drop.TextColor3 = Theme.Text
            Drop.Font = Enum.Font.GothamSemibold
            Drop.TextSize = 14
            Drop.Parent = TabContent
            corner(Drop, 7)
            applyHoverEffect(Drop, Theme.Element, Theme.ElementHover)

            local isOpen = false
            local list, outsideConn

            local function closeDropdown()
                if list then isOpen = false; list:Destroy(); list = nil end
                if outsideConn then outsideConn:Disconnect(); outsideConn = nil end
            end

            local function selectOption(opt, fireCallback)
                selected = opt
                Drop.Text = (c.Text or "Dropdown") .. ": " .. opt
                bindFlag(c.Flag, selected)
                closeDropdown()
                if fireCallback and c.Callback then c.Callback(opt) end
            end

            local function openDropdown()
                closeActivePopup()
                isOpen = true
                list = Instance.new("Frame")
                list.Size = UDim2.new(0, Drop.AbsoluteSize.X, 0, #c.Options * 35)
                list.Position = UDim2.new(0, Drop.AbsolutePosition.X, 0, Drop.AbsolutePosition.Y + 40)
                list.BackgroundColor3 = Theme.Element
                list.ZIndex = 10
                list.Active = true
                list.Parent = ScreenGui
                corner(list, 7)
                stroke(list)

                for i, opt in ipairs(c.Options) do
                    local optBtn = Instance.new("TextButton")
                    optBtn.Size = UDim2.new(1, 0, 0, 35)
                    optBtn.Position = UDim2.new(0, 0, 0, (i - 1) * 35)
                    optBtn.BackgroundColor3 = Theme.Element
                    optBtn.AutoButtonColor = false
                    optBtn.Text = opt
                    optBtn.TextColor3 = Theme.Text
                    optBtn.Font = Enum.Font.GothamSemibold
                    optBtn.TextSize = 13
                    optBtn.ZIndex = 11
                    optBtn.Parent = list
                    applyHoverEffect(optBtn, Theme.Element, Theme.ElementHover)
                    optBtn.MouseButton1Click:Connect(function() selectOption(opt, true) end)
                end

                closeActivePopup = closeDropdown
                outsideConn = UserInputService.InputBegan:Connect(function(input2)
                    if input2.UserInputType == Enum.UserInputType.MouseButton1 or input2.UserInputType == Enum.UserInputType.Touch then
                        local pos = input2.Position
                        if not isPointOverGui(pos, Drop) and not isPointOverGui(pos, list) then
                            closeDropdown()
                        end
                    end
                end)
            end

            Drop.MouseButton1Click:Connect(function()
                if isOpen then closeDropdown() else openDropdown() end
            end)

            return newElement(
                Drop,
                function() return selected end,
                function(_, newVal) selectOption(newVal, true) end
            )
        end

        function Tab:CreateColorPicker(c)
            c = type(c) == "table" and c or {}
            local selectedColor = c.Default or Color3.fromRGB(255, 255, 255)
            bindFlag(c.Flag, selectedColor)

            local Btn = Instance.new("TextButton")
            Btn.Size = UDim2.new(1, 0, 0, 40)
            Btn.BackgroundColor3 = Theme.Element
            Btn.AutoButtonColor = false
            Btn.Text = c.Text or "ColorPicker"
            Btn.TextColor3 = Theme.Text
            Btn.Font = Enum.Font.GothamSemibold
            Btn.TextSize = 14
            Btn.Parent = TabContent
            corner(Btn, 7)
            applyHoverEffect(Btn, Theme.Element, Theme.ElementHover)

            local colorPreview = Instance.new("Frame")
            colorPreview.Size = UDim2.new(0, 20, 0, 20)
            colorPreview.Position = UDim2.new(1, -30, 0.5, -10)
            colorPreview.BackgroundColor3 = selectedColor
            colorPreview.Parent = Btn
            corner(colorPreview, 5)

            local isOpen = false
            local picker, outsideConn

            local function closePicker()
                if picker then isOpen = false; picker:Destroy(); picker = nil end
                if outsideConn then outsideConn:Disconnect(); outsideConn = nil end
            end

            local function applyColor(col, fireCallback)
                selectedColor = col
                bindFlag(c.Flag, selectedColor)
                TweenService:Create(colorPreview, TweenInfo.new(0.15), {BackgroundColor3 = col}):Play()
                if fireCallback and c.Callback then c.Callback(col) end
            end

            Btn.MouseButton1Click:Connect(function()
                if isOpen then closePicker() return end
                closeActivePopup()
                isOpen = true
                picker = Instance.new("Frame")
                picker.Size = UDim2.new(0, Btn.AbsoluteSize.X, 0, 100)
                picker.Position = UDim2.new(0, Btn.AbsolutePosition.X, 0, Btn.AbsolutePosition.Y + 40)
                picker.BackgroundColor3 = Theme.Background
                picker.ZIndex = 10
                picker.Active = true
                picker.Parent = ScreenGui
                corner(picker, 7)
                stroke(picker)

                local colors = {
                    Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 0, 255),
                    Color3.fromRGB(255, 255, 0), Color3.fromRGB(0, 255, 255), Color3.fromRGB(255, 0, 255),
                    Color3.fromRGB(255, 255, 255), Color3.fromRGB(0, 0, 0), Color3.fromRGB(150, 150, 150)
                }
                for i, col in ipairs(colors) do
                    local colBtn = Instance.new("TextButton")
                    colBtn.Size = UDim2.new(0, 25, 0, 25)
                    colBtn.Position = UDim2.new(0, 10 + ((i - 1) % 5) * 30, 0, 10 + math.floor((i - 1) / 5) * 30)
                    colBtn.BackgroundColor3 = col
                    colBtn.AutoButtonColor = false
                    colBtn.Text = ""
                    colBtn.ZIndex = 11
                    colBtn.Parent = picker
                    corner(colBtn, 5)
                    colBtn.MouseButton1Click:Connect(function()
                        applyColor(col, true)
                        closePicker()
                    end)
                end

                closeActivePopup = closePicker
                outsideConn = UserInputService.InputBegan:Connect(function(input2)
                    if input2.UserInputType == Enum.UserInputType.MouseButton1 or input2.UserInputType == Enum.UserInputType.Touch then
                        local pos = input2.Position
                        if not isPointOverGui(pos, Btn) and not isPointOverGui(pos, picker) then
                            closePicker()
                        end
                    end
                end)
            end)

            return newElement(
                Btn,
                function() return selectedColor end,
                function(_, newColor) applyColor(newColor, true) end
            )
        end

        function Tab:CreateInput(c)
            c = type(c) == "table" and c or {}
            bindFlag(c.Flag, c.Default or "")

            local Box = Instance.new("TextBox")
            Box.Size = UDim2.new(1, 0, 0, 40)
            Box.BackgroundColor3 = Theme.Element
            Box.Text = c.Default or ""
            Box.PlaceholderText = c.Text or "Input here..."
            Box.TextColor3 = Theme.Text
            Box.PlaceholderColor3 = Theme.SubText
            Box.Font = Enum.Font.GothamSemibold
            Box.TextSize = 14
            Box.ClearTextOnFocus = false
            Box.Parent = TabContent
            corner(Box, 7)

            Box.FocusLost:Connect(function()
                Library.Flags[c.Flag or ""] = Box.Text
                if c.Callback then c.Callback(Box.Text) end
            end)

            return newElement(
                Box,
                function() return Box.Text end,
                function(_, newText) Box.Text = newText; if c.Callback then c.Callback(newText) end end
            )
        end

        function Tab:CreateKeybind(c)
            c = type(c) == "table" and c or {}
            local selectedKey = c.Default
            bindFlag(c.Flag, selectedKey)

            local Btn = Instance.new("TextButton")
            Btn.Size = UDim2.new(1, 0, 0, 40)
            Btn.BackgroundColor3 = Theme.Element
            Btn.AutoButtonColor = false
            Btn.Text = (c.Text or "Keybind") .. ": " .. (selectedKey and selectedKey.Name or "None")
            Btn.TextColor3 = Theme.Text
            Btn.Font = Enum.Font.GothamSemibold
            Btn.TextSize = 14
            Btn.Parent = TabContent
            corner(Btn, 7)
            applyHoverEffect(Btn, Theme.Element, Theme.ElementHover)

            local waiting = false
            local bindConn

            Btn.MouseButton1Click:Connect(function()
                if waiting then return end
                if bindConn then bindConn:Disconnect(); bindConn = nil end
                waiting = true
                Btn.Text = (c.Text or "Keybind") .. ": Press..."
                bindConn = UserInputService.InputBegan:Connect(function(input)
                    if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
                        selectedKey = input.KeyCode
                        bindFlag(c.Flag, selectedKey)
                        Btn.Text = (c.Text or "Keybind") .. ": " .. selectedKey.Name
                        waiting = false
                        if bindConn then bindConn:Disconnect(); bindConn = nil end
                        if c.Callback then c.Callback(selectedKey) end
                    end
                end)
            end)

            return newElement(
                Btn,
                function() return selectedKey end,
                function(_, newKey)
                    selectedKey = newKey
                    bindFlag(c.Flag, selectedKey)
                    Btn.Text = (c.Text or "Keybind") .. ": " .. (newKey and newKey.Name or "None")
                end
            )
        end

        function Tab:CreateLabel(c)
            c = type(c) == "table" and c or {}
            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(1, 0, 0, 24)
            Label.AutomaticSize = Enum.AutomaticSize.Y
            Label.BackgroundTransparency = 1
            Label.Text = c.Text or "Label"
            Label.TextColor3 = Theme.SubText
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 13
            Label.TextWrapped = true
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.Parent = TabContent

            return newElement(
                Label,
                function() return Label.Text end,
                function(_, newText) Label.Text = newText end
            )
        end

        table.insert(Tabs, {Btn = TabBtn, Content = TabContent})
        if #Tabs == 1 then
            TabBtn.BackgroundColor3 = Theme.Accent
            TabBtn.TextColor3 = Theme.Text
            TabContent.Visible = true
            CurrentTab = {Btn = TabBtn, Content = TabContent}
        end

        return Tab
    end

    -- ============================================
    -- DRAGGABLE SYSTEM
    -- ============================================
    local dragging = false
    local dragStart, startPos
    local activeTouch = nil

    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            if isPointOverGui(input.Position, CloseBtn) then return end
            dragging = true
            dragStart = input.Position
            startPos = Shadow.Position
            if input.UserInputType == Enum.UserInputType.Touch then
                activeTouch = input
            end
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            if input.UserInputType == Enum.UserInputType.MouseMovement or input == activeTouch then
                local delta = input.Position - dragStart
                Shadow.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            end
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
            if input == activeTouch then activeTouch = nil end
        end
    end)

    return Window
end

return Library
