--[[
    Enhanced Mobile UI Library - Fixed Version
]]

local Library = {}
Library.__index = Library

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

-- Theme System
local Themes = {
    Dark = {
        Background = Color3.fromRGB(20, 20, 20),
        TopBar = Color3.fromRGB(30, 30, 30),
        Button = Color3.fromRGB(40, 40, 40),
        ButtonHover = Color3.fromRGB(50, 50, 50),
        ToggleOn = Color3.fromRGB(0, 150, 100),
        ToggleOff = Color3.fromRGB(40, 40, 40),
        Text = Color3.fromRGB(255, 255, 255),
        CloseButton = Color3.fromRGB(200, 50, 50),
        Accent = Color3.fromRGB(0, 170, 255)
    },
    Light = {
        Background = Color3.fromRGB(240, 240, 240),
        TopBar = Color3.fromRGB(220, 220, 220),
        Button = Color3.fromRGB(200, 200, 200),
        ButtonHover = Color3.fromRGB(180, 180, 180),
        ToggleOn = Color3.fromRGB(0, 150, 100),
        ToggleOff = Color3.fromRGB(200, 200, 200),
        Text = Color3.fromRGB(30, 30, 30),
        CloseButton = Color3.fromRGB(200, 50, 50),
        Accent = Color3.fromRGB(0, 120, 200)
    }
}

local CurrentTheme = Themes.Dark

local function getUiParent()
    if gethui then return gethui() end
    if syn and syn.protect_gui then 
        local protected = Instance.new("ScreenGui")
        syn.protect_gui(protected)
        return protected
    end
    return CoreGui
end

-- ============================================
-- CREATE WINDOW
-- ============================================
function Library:CreateWindow(config)
    local Window = setmetatable({}, Library)
    
    -- ✅ แก้ไข: ตรวจสอบ config ให้แน่ใจว่าเป็น table
    if type(config) ~= "table" then
        config = {}
    end
    
    -- ✅ แก้ไข: ตรวจสอบ Title ให้เป็น string เสมอ
    local title = config.Title or "My Hub"
    if type(title) ~= "string" then
        title = tostring(title)
    end
    
    -- ✅ แก้ไข: ตรวจสอบ Theme
    local theme = config.Theme or "Dark"
    if type(theme) == "string" and Themes[theme] then
        CurrentTheme = Themes[theme]
    end
    
    -- Remove old UI
    local oldGui = CoreGui:FindFirstChild("EnhancedMobileUI")
    if oldGui then oldGui:Destroy() end
    
    -- Create ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "EnhancedMobileUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Parent = getUiParent()
    
    -- Main Window
    local MainWindow = Instance.new("Frame")
    MainWindow.Size = UDim2.new(0, 400, 0, 500)
    MainWindow.Position = UDim2.new(0.5, -200, 0.5, -250)
    MainWindow.BackgroundColor3 = CurrentTheme.Background
    MainWindow.BorderSizePixel = 0
    MainWindow.Active = true
    MainWindow.Parent = ScreenGui
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 12)
    UICorner.Parent = MainWindow
    
    -- Top Bar
    local TopBar = Instance.new("Frame")
    TopBar.Size = UDim2.new(1, 0, 0, 50)
    TopBar.BackgroundColor3 = CurrentTheme.TopBar
    TopBar.BorderSizePixel = 0
    TopBar.Parent = MainWindow
    
    local TopCorner = Instance.new("UICorner")
    TopCorner.CornerRadius = UDim.new(0, 12)
    TopCorner.Parent = TopBar
    
    -- ✅ แก้ไข: ใช้ tostring() ป้องกัน error
    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Size = UDim2.new(1, -100, 1, 0)
    TitleLabel.Position = UDim2.new(0, 20, 0, 0)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Text = tostring(title) -- ✅ ปลอดภัยแล้ว
    TitleLabel.TextColor3 = CurrentTheme.Text
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextSize = 18
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    TitleLabel.Parent = TopBar
    
    -- Close Button
    local CloseBtn = Instance.new("TextButton")
    CloseBtn.Size = UDim2.new(0, 40, 0, 40)
    CloseBtn.Position = UDim2.new(1, -45, 0.5, -20)
    CloseBtn.BackgroundColor3 = CurrentTheme.CloseButton
    CloseBtn.Text = "X"
    CloseBtn.TextColor3 = CurrentTheme.Text
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.TextSize = 16
    CloseBtn.Parent = TopBar
    
    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 8)
    CloseCorner.Parent = CloseBtn
    
    -- Tab Container
    local TabContainer = Instance.new("Frame")
    TabContainer.Size = UDim2.new(0, 120, 1, -50)
    TabContainer.Position = UDim2.new(0, 0, 0, 50)
    TabContainer.BackgroundColor3 = CurrentTheme.Background
    TabContainer.BorderSizePixel = 0
    TabContainer.Parent = MainWindow
    
    local TabList = Instance.new("ScrollingFrame")
    TabList.Size = UDim2.new(1, 0, 1, 0)
    TabList.BackgroundTransparency = 1
    TabList.ScrollBarThickness = 4
    TabList.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabList.Parent = TabContainer
    
    local TabLayout = Instance.new("UIListLayout")
    TabLayout.Padding = UDim.new(0, 5)
    TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabLayout.Parent = TabList
    
    -- Content Area
    local ContentArea = Instance.new("Frame")
    ContentArea.Size = UDim2.new(1, -120, 1, -50)
    ContentArea.Position = UDim2.new(0, 120, 0, 50)
    ContentArea.BackgroundTransparency = 1
    ContentArea.Parent = MainWindow
    
    -- ============================================
    -- TAB SYSTEM (แก้ไขหลัก: เอา methods ไปไว้ในนี้)
    -- ============================================
    local Tabs = {}
    local CurrentTab = nil
    
    function Window:CreateTab(name, icon)
        local Tab = {}
        
        -- ✅ ตรวจสอบ name ให้เป็น string
        if type(name) ~= "string" then
            name = tostring(name) or "Tab"
        end
        
        -- Tab Button
        local TabButton = Instance.new("TextButton")
        TabButton.Size = UDim2.new(1, -10, 0, 40)
        TabButton.Position = UDim2.new(0, 5, 0, 5)
        TabButton.BackgroundColor3 = CurrentTheme.Button
        TabButton.Text = name
        TabButton.TextColor3 = CurrentTheme.Text
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.TextSize = 14
        TabButton.Parent = TabList
        
        local TabCorner = Instance.new("UICorner")
        TabCorner.CornerRadius = UDim.new(0, 8)
        TabCorner.Parent = TabButton
        
        -- Tab Content
        local TabContent = Instance.new("ScrollingFrame")
        TabContent.Size = UDim2.new(1, -20, 1, -20)
        TabContent.Position = UDim2.new(0, 10, 0, 10)
        TabContent.BackgroundTransparency = 1
        TabContent.ScrollBarThickness = 4
        TabContent.Visible = false
        TabContent.Parent = ContentArea
        
        local ContentLayout = Instance.new("UIListLayout")
        ContentLayout.Padding = UDim.new(0, 8)
        ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
        ContentLayout.Parent = TabContent
        
        ContentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            TabContent.CanvasSize = UDim2.new(0, 0, 0, ContentLayout.AbsoluteContentSize.Y + 10)
        end)
        
        -- Tab Click Event
        TabButton.MouseButton1Click:Connect(function()
            if CurrentTab then
                CurrentTab.Button.BackgroundColor3 = CurrentTheme.Button
                CurrentTab.Content.Visible = false
            end
            TabButton.BackgroundColor3 = CurrentTheme.Accent
            TabContent.Visible = true
            CurrentTab = {Button = TabButton, Content = TabContent}
        end)
        
        -- ============================================
        -- UI ELEMENTS (ย้ายมาไว้ใน CreateTab แล้ว!)
        -- ============================================
        
        -- Button
        function Tab:CreateButton(btnConfig)
            btnConfig = type(btnConfig) == "table" and btnConfig or {}
            local text = btnConfig.Text or "Button"
            local callback = btnConfig.Callback
            
            local Button = Instance.new("TextButton")
            Button.Size = UDim2.new(1, 0, 0, 45)
            Button.BackgroundColor3 = CurrentTheme.Button
            Button.TextColor3 = CurrentTheme.Text
            Button.Text = tostring(text)
            Button.Font = Enum.Font.GothamSemibold
            Button.TextSize = 14
            Button.Parent = TabContent
            
            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 8)
            UICorner.Parent = Button
            
            Button.MouseButton1Click:Connect(function()
                if callback then callback() end
            end)
            
            return Button
        end
        
        -- Toggle
        function Tab:CreateToggle(toggleConfig)
            toggleConfig = type(toggleConfig) == "table" and toggleConfig or {}
            local text = toggleConfig.Text or "Toggle"
            local default = toggleConfig.Default or false
            local callback = toggleConfig.Callback
            
            local Toggled = default
            local Toggle = Instance.new("TextButton")
            Toggle.Size = UDim2.new(1, 0, 0, 45)
            Toggle.BackgroundColor3 = Toggled and CurrentTheme.ToggleOn or CurrentTheme.ToggleOff
            Toggle.TextColor3 = CurrentTheme.Text
            Toggle.Text = tostring(text) .. ": " .. (Toggled and "ON" or "OFF")
            Toggle.Font = Enum.Font.GothamSemibold
            Toggle.TextSize = 14
            Toggle.Parent = TabContent
            
            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 8)
            UICorner.Parent = Toggle
            
            Toggle.MouseButton1Click:Connect(function()
                Toggled = not Toggled
                Toggle.BackgroundColor3 = Toggled and CurrentTheme.ToggleOn or CurrentTheme.ToggleOff
                Toggle.Text = tostring(text) .. ": " .. (Toggled and "ON" or "OFF")
                if callback then callback(Toggled) end
            end)
            
            return Toggle
        end
        
        -- Slider
        function Tab:CreateSlider(sliderConfig)
            sliderConfig = type(sliderConfig) == "table" and sliderConfig or {}
            local text = sliderConfig.Text or "Slider"
            local min = sliderConfig.Min or 0
            local max = sliderConfig.Max or 100
            local default = sliderConfig.Default or min
            local callback = sliderConfig.Callback
            
            local Slider = Instance.new("Frame")
            Slider.Size = UDim2.new(1, 0, 0, 60)
            Slider.BackgroundColor3 = CurrentTheme.Button
            Slider.Parent = TabContent
            
            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 8)
            UICorner.Parent = Slider
            
            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(1, -20, 0, 20)
            Label.Position = UDim2.new(0, 10, 0, 5)
            Label.BackgroundTransparency = 1
            Label.Text = tostring(text) .. ": " .. default
            Label.TextColor3 = CurrentTheme.Text
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 14
            Label.Parent = Slider
            
            local SliderBar = Instance.new("Frame")
            SliderBar.Size = UDim2.new(1, -20, 0, 20)
            SliderBar.Position = UDim2.new(0, 10, 0, 30)
            SliderBar.BackgroundColor3 = CurrentTheme.Background
            SliderBar.Parent = Slider
            
            local UICorner2 = Instance.new("UICorner")
            UICorner2.CornerRadius = UDim.new(0, 4)
            UICorner2.Parent = SliderBar
            
            local Fill = Instance.new("Frame")
            Fill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
            Fill.BackgroundColor3 = CurrentTheme.Accent
            Fill.Parent = SliderBar
            
            local UICorner3 = Instance.new("UICorner")
            UICorner3.CornerRadius = UDim.new(0, 4)
            UICorner3.Parent = Fill
            
            local dragging = false
            
            SliderBar.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                end
            end)
            
            SliderBar.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = false
                end
            end)
            
            UserInputService.InputChanged:Connect(function(input)
                if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    local pos = input.Position.X - SliderBar.AbsolutePosition.X
                    local percent = math.clamp(pos / SliderBar.AbsoluteSize.X, 0, 1)
                    local value = math.floor(min + (max - min) * percent)
                    Fill.Size = UDim2.new(percent, 0, 1, 0)
                    Label.Text = tostring(text) .. ": " .. value
                    if callback then callback(value) end
                end
            end)
            
            return Slider
        end
        
        -- Dropdown
        function Tab:CreateDropdown(dropdownConfig)
            dropdownConfig = type(dropdownConfig) == "table" and dropdownConfig or {}
            local text = dropdownConfig.Text or "Dropdown"
            local options = dropdownConfig.Options or {"Option 1", "Option 2"}
            local default = dropdownConfig.Default or options[1]
            local callback = dropdownConfig.Callback
            
            local Dropdown = Instance.new("TextButton")
            Dropdown.Size = UDim2.new(1, 0, 0, 45)
            Dropdown.BackgroundColor3 = CurrentTheme.Button
            Dropdown.TextColor3 = CurrentTheme.Text
            Dropdown.Text = tostring(text) .. ": " .. tostring(default)
            Dropdown.Font = Enum.Font.GothamSemibold
            Dropdown.TextSize = 14
            Dropdown.Parent = TabContent
            
            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 8)
            UICorner.Parent = Dropdown
            
            local isOpen = false
            
            Dropdown.MouseButton1Click:Connect(function()
                isOpen = not isOpen
                if isOpen then
                    local list = Instance.new("Frame")
                    list.Size = UDim2.new(1, 0, 0, #options * 35)
                    list.Position = UDim2.new(0, 0, 0, 45)
                    list.BackgroundColor3 = CurrentTheme.Button
                    list.Parent = Dropdown
                    
                    for i, option in ipairs(options) do
                        local optionBtn = Instance.new("TextButton")
                        optionBtn.Size = UDim2.new(1, 0, 0, 35)
                        optionBtn.Position = UDim2.new(0, 0, 0, (i-1) * 35)
                        optionBtn.BackgroundColor3 = CurrentTheme.Button
                        optionBtn.TextColor3 = CurrentTheme.Text
                        optionBtn.Text = tostring(option)
                        optionBtn.Font = Enum.Font.GothamSemibold
                        optionBtn.TextSize = 14
                        optionBtn.Parent = list
                        
                        optionBtn.MouseButton1Click:Connect(function()
                            Dropdown.Text = tostring(text) .. ": " .. tostring(option)
                            isOpen = false
                            list:Destroy()
                            if callback then callback(option) end
                        end)
                    end
                else
                    local list = Dropdown:FindFirstChild("Frame")
                    if list then list:Destroy() end
                end
            end)
            
            return Dropdown
        end
        
        -- Label
        function Tab:CreateLabel(labelConfig)
            labelConfig = type(labelConfig) == "table" and labelConfig or {}
            local text = labelConfig.Text or "Label"
            
            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(1, 0, 0, 30)
            Label.BackgroundTransparency = 1
            Label.Text = tostring(text)
            Label.TextColor3 = CurrentTheme.Text
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 14
            Label.Parent = TabContent
            
            return Label
        end
        
        -- Store tab info
        table.insert(Tabs, {Button = TabButton, Content = TabContent})
        
        -- Auto select first tab
        if #Tabs == 1 then
            TabButton.BackgroundColor3 = CurrentTheme.Accent
            TabContent.Visible = true
            CurrentTab = {Button = TabButton, Content = TabContent}
        end
        
        return Tab
    end
    
    -- ============================================
    -- NOTIFICATION SYSTEM
    -- ============================================
    function Window:Notify(notifConfig)
        notifConfig = type(notifConfig) == "table" and notifConfig or {}
        local title = notifConfig.Title or "Notification"
        local description = notifConfig.Description or ""
        local duration = notifConfig.Duration or 3
        
        local Notification = Instance.new("Frame")
        Notification.Size = UDim2.new(0, 300, 0, 80)
        Notification.Position = UDim2.new(1, -320, 1, -100)
        Notification.BackgroundColor3 = CurrentTheme.TopBar
        Notification.Parent = ScreenGui
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = Notification
        
        local TitleLabel = Instance.new("TextLabel")
        TitleLabel.Size = UDim2.new(1, -20, 0, 20)
        TitleLabel.Position = UDim2.new(0, 10, 0, 5)
        TitleLabel.BackgroundTransparency = 1
        TitleLabel.Text = tostring(title)
        TitleLabel.TextColor3 = CurrentTheme.Text
        TitleLabel.Font = Enum.Font.GothamBold
        TitleLabel.TextSize = 14
        TitleLabel.Parent = Notification
        
        local DescLabel = Instance.new("TextLabel")
        DescLabel.Size = UDim2.new(1, -20, 0, 40)
        DescLabel.Position = UDim2.new(0, 10, 0, 25)
        DescLabel.BackgroundTransparency = 1
        DescLabel.Text = tostring(description)
        DescLabel.TextColor3 = CurrentTheme.Text
        DescLabel.Font = Enum.Font.GothamSemibold
        DescLabel.TextSize = 12
        DescLabel.TextWrapped = true
        DescLabel.Parent = Notification
        
        -- Animate in
        Notification.Position = UDim2.new(1, 0, 1, -100)
        TweenService:Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Position = UDim2.new(1, -320, 1, -100)
        }):Play()
        
        task.delay(duration, function()
            TweenService:Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(1, 0, 1, -100)
            }):Play()
            task.wait(0.5)
            Notification:Destroy()
        end)
    end
    
    -- ============================================
    -- THEME SYSTEM
    -- ============================================
    function Window:SetTheme(themeName)
        if Themes[themeName] then
            CurrentTheme = Themes[themeName]
            MainWindow.BackgroundColor3 = CurrentTheme.Background
            TopBar.BackgroundColor3 = CurrentTheme.TopBar
        end
    end
    
    -- ============================================
    -- DRAGGABLE SYSTEM
    -- ============================================
    local dragging = false
    local dragStart, startPos
    
    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = MainWindow.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    TopBar.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if dragging then
                local delta = input.Position - dragStart
                MainWindow.Position = UDim2.new(
                    startPos.X.Scale, 
                    startPos.X.Offset + delta.X, 
                    startPos.Y.Scale, 
                    startPos.Y.Offset + delta.Y
                )
            end
        end
    end)
    
    -- Close Button
    CloseBtn.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)
    
    return Window
end

return Library
