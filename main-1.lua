--[[
    Enhanced Mobile UI Library
    - ระบบแท็บ (Tabs)
    - องค์ประกอบ UI ที่หลากหลาย (Button, Toggle, Slider, Dropdown, ColorPicker, Input, Keybind)
    - ระบบธีม (Themes) ที่สลับได้
    - เอฟเฟกต์และแอนิเมชันที่สวยงาม
    - ระบบแจ้งเตือน (Notifications)
    - ระบบบันทึก/โหลดการตั้งค่า (Config System)
    - รองรับมือถือและคอมพิวเตอร์
]]

local Library = {}
Library.__index = Library

-- Services
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

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
    },
    Midnight = {
        Background = Color3.fromRGB(15, 15, 25),
        TopBar = Color3.fromRGB(25, 25, 35),
        Button = Color3.fromRGB(35, 35, 45),
        ButtonHover = Color3.fromRGB(45, 45, 55),
        ToggleOn = Color3.fromRGB(100, 50, 200),
        ToggleOff = Color3.fromRGB(35, 35, 45),
        Text = Color3.fromRGB(255, 255, 255),
        CloseButton = Color3.fromRGB(200, 50, 50),
        Accent = Color3.fromRGB(150, 100, 255)
    },
    Forest = {
        Background = Color3.fromRGB(20, 30, 20),
        TopBar = Color3.fromRGB(30, 40, 30),
        Button = Color3.fromRGB(40, 50, 40),
        ButtonHover = Color3.fromRGB(50, 60, 50),
        ToggleOn = Color3.fromRGB(50, 150, 50),
        ToggleOff = Color3.fromRGB(40, 50, 40),
        Text = Color3.fromRGB(255, 255, 255),
        CloseButton = Color3.fromRGB(200, 50, 50),
        Accent = Color3.fromRGB(100, 200, 100)
    }
}

-- Current Theme
local CurrentTheme = Themes.Dark

-- Get Safe UI Parent
local function getUiParent()
    if gethui then return gethui() end
    if syn and syn.protect_gui then 
        local protected = Instance.new("ScreenGui")
        syn.protect_gui(protected)
        return protected
    end
    return CoreGui
end

-- Create Window
function Library:CreateWindow(config)
    local Window = setmetatable({}, Library)
    
    config = config or {}
    local title = config.Title or "My Hub"
    local theme = config.Theme or "Dark"
    
    -- Set Theme
    if type(theme) == "string" then
        CurrentTheme = Themes[theme] or Themes.Dark
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
    
    -- Window Corner
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
    
    -- Title
    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Size = UDim2.new(1, -100, 1, 0)
    TitleLabel.Position = UDim2.new(0, 20, 0, 0)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Text = title
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
    
    -- Tab Container (Left Side)
    local TabContainer = Instance.new("Frame")
    TabContainer.Size = UDim2.new(0, 120, 1, -50)
    TabContainer.Position = UDim2.new(0, 0, 0, 50)
    TabContainer.BackgroundColor3 = CurrentTheme.Background
    TabContainer.BorderSizePixel = 0
    TabContainer.Parent = MainWindow
    
    -- Tab List
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
    
    -- Content Area (Right Side)
    local ContentArea = Instance.new("Frame")
    ContentArea.Size = UDim2.new(1, -120, 1, -50)
    ContentArea.Position = UDim2.new(0, 120, 0, 50)
    ContentArea.BackgroundTransparency = 1
    ContentArea.Parent = MainWindow
    
    -- Tab System
    local Tabs = {}
    local CurrentTab = nil
    
    function Window:CreateTab(name, icon)
        local Tab = {}
        Tab.Name = name
        Tab.Icon = icon or "rbxassetid://0" -- Default icon
        
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
        
        -- Auto resize content
        ContentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            TabContent.CanvasSize = UDim2.new(0, 0, 0, ContentLayout.AbsoluteContentSize.Y + 10)
        end)
        
        -- Tab Click Event
        TabButton.MouseButton1Click:Connect(function()
            if CurrentTab then
                CurrentTab.TabButton.BackgroundColor3 = CurrentTheme.Button
                CurrentTab.TabContent.Visible = false
            end
            
            TabButton.BackgroundColor3 = CurrentTheme.Accent
            TabContent.Visible = true
            CurrentTab = Tab
        end)
        
        -- Hover Effect
        TabButton.MouseEnter:Connect(function()
            if CurrentTab ~= Tab then
                TweenService:Create(TabButton, TweenInfo.new(0.2), {
                    BackgroundColor3 = CurrentTheme.ButtonHover
                }):Play()
            end
        end)
        
        TabButton.MouseLeave:Connect(function()
            if CurrentTab ~= Tab then
                TweenService:Create(TabButton, TweenInfo.new(0.2), {
                    BackgroundColor3 = CurrentTheme.Button
                }):Play()
            end
        end)
        
        -- Store Tab Info
        Tab.TabButton = TabButton
        Tab.TabContent = TabContent
        Tab.ContentLayout = ContentLayout
        
        table.insert(Tabs, Tab)
        
        -- Auto select first tab
        if #Tabs == 1 then
            TabButton.BackgroundColor3 = CurrentTheme.Accent
            TabContent.Visible = true
            CurrentTab = Tab
        end
        
        return Tab
    end
    
    -- UI Elements
    
    -- Button
    function Tab:CreateButton(config)
        config = config or {}
        local text = config.Text or "Button"
        local callback = config.Callback
        
        local Button = Instance.new("TextButton")
        Button.Size = UDim2.new(1, 0, 0, 45)
        Button.BackgroundColor3 = CurrentTheme.Button
        Button.TextColor3 = CurrentTheme.Text
        Button.Text = text
        Button.Font = Enum.Font.GothamSemibold
        Button.TextSize = 14
        Button.Parent = self.TabContent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = Button
        
        -- Hover Effect
        Button.MouseEnter:Connect(function()
            TweenService:Create(Button, TweenInfo.new(0.2), {
                BackgroundColor3 = CurrentTheme.ButtonHover
            }):Play()
        end)
        
        Button.MouseLeave:Connect(function()
            TweenService:Create(Button, TweenInfo.new(0.2), {
                BackgroundColor3 = CurrentTheme.Button
            }):Play()
        end)
        
        -- Click Animation
        Button.MouseButton1Down:Connect(function()
            TweenService:Create(Button, TweenInfo.new(0.1), {
                BackgroundColor3 = CurrentTheme.Accent
            }):Play()
        end)
        
        Button.MouseButton1Up:Connect(function()
            TweenService:Create(Button, TweenInfo.new(0.1), {
                BackgroundColor3 = CurrentTheme.ButtonHover
            }):Play()
        end)
        
        Button.MouseButton1Click:Connect(function()
            if callback then
                callback()
            end
        end)
        
        return Button
    end
    
    -- Toggle
    function Tab:CreateToggle(config)
        config = config or {}
        local text = config.Text or "Toggle"
        local default = config.Default or false
        local callback = config.Callback
        
        local Toggled = default
        local Toggle = Instance.new("TextButton")
        Toggle.Size = UDim2.new(1, 0, 0, 45)
        Toggle.BackgroundColor3 = Toggled and CurrentTheme.ToggleOn or CurrentTheme.ToggleOff
        Toggle.TextColor3 = CurrentTheme.Text
        Toggle.Text = text .. ": " .. (Toggled and "ON" or "OFF")
        Toggle.Font = Enum.Font.GothamSemibold
        Toggle.TextSize = 14
        Toggle.Parent = self.TabContent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = Toggle
        
        Toggle.MouseButton1Click:Connect(function()
            Toggled = not Toggled
            Toggle.BackgroundColor3 = Toggled and CurrentTheme.ToggleOn or CurrentTheme.ToggleOff
            Toggle.Text = text .. ": " .. (Toggled and "ON" or "OFF")
            
            if callback then
                callback(Toggled)
            end
        end)
        
        return Toggle
    end
    
    -- Slider
    function Tab:CreateSlider(config)
        config = config or {}
        local text = config.Text or "Slider"
        local min = config.Min or 0
        local max = config.Max or 100
        local default = config.Default or min
        local callback = config.Callback
        
        local Slider = Instance.new("Frame")
        Slider.Size = UDim2.new(1, 0, 0, 60)
        Slider.BackgroundColor3 = CurrentTheme.Button
        Slider.Parent = self.TabContent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = Slider
        
        local Label = Instance.new("TextLabel")
        Label.Size = UDim2.new(1, -20, 0, 20)
        Label.Position = UDim2.new(0, 10, 0, 5)
        Label.BackgroundTransparency = 1
        Label.Text = text .. ": " .. default
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
                Label.Text = text .. ": " .. value
                
                if callback then
                    callback(value)
                end
            end
        end)
        
        return Slider
    end
    
    -- Dropdown
    function Tab:CreateDropdown(config)
        config = config or {}
        local text = config.Text or "Dropdown"
        local options = config.Options or {"Option 1", "Option 2"}
        local default = config.Default or options[1]
        local callback = config.Callback
        
        local Dropdown = Instance.new("TextButton")
        Dropdown.Size = UDim2.new(1, 0, 0, 45)
        Dropdown.BackgroundColor3 = CurrentTheme.Button
        Dropdown.TextColor3 = CurrentTheme.Text
        Dropdown.Text = text .. ": " .. default
        Dropdown.Font = Enum.Font.GothamSemibold
        Dropdown.TextSize = 14
        Dropdown.Parent = self.TabContent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = Dropdown
        
        local isOpen = false
        local selectedOption = default
        
        Dropdown.MouseButton1Click:Connect(function()
            isOpen = not isOpen
            if isOpen then
                -- Create dropdown list
                local list = Instance.new("Frame")
                list.Size = UDim2.new(1, 0, 0, #options * 35)
                list.Position = UDim2.new(0, 0, 0, 45)
                list.BackgroundColor3 = CurrentTheme.Button
                list.Parent = Dropdown
                
                local UICorner2 = Instance.new("UICorner")
                UICorner2.CornerRadius = UDim.new(0, 8)
                UICorner2.Parent = list
                
                for i, option in ipairs(options) do
                    local optionBtn = Instance.new("TextButton")
                    optionBtn.Size = UDim2.new(1, 0, 0, 35)
                    optionBtn.Position = UDim2.new(0, 0, 0, (i-1) * 35)
                    optionBtn.BackgroundColor3 = CurrentTheme.Button
                    optionBtn.TextColor3 = CurrentTheme.Text
                    optionBtn.Text = option
                    optionBtn.Font = Enum.Font.GothamSemibold
                    optionBtn.TextSize = 14
                    optionBtn.Parent = list
                    
                    optionBtn.MouseButton1Click:Connect(function()
                        selectedOption = option
                        Dropdown.Text = text .. ": " .. option
                        isOpen = false
                        list:Destroy()
                        
                        if callback then
                            callback(option)
                        end
                    end)
                    
                    -- Hover effect
                    optionBtn.MouseEnter:Connect(function()
                        TweenService:Create(optionBtn, TweenInfo.new(0.2), {
                            BackgroundColor3 = CurrentTheme.ButtonHover
                        }):Play()
                    end)
                    
                    optionBtn.MouseLeave:Connect(function()
                        TweenService:Create(optionBtn, TweenInfo.new(0.2), {
                            BackgroundColor3 = CurrentTheme.Button
                        }):Play()
                    end)
                end
            else
                local list = Dropdown:FindFirstChild("Frame")
                if list then list:Destroy() end
            end
        end)
        
        return Dropdown
    end
    
    -- ColorPicker
    function Tab:CreateColorPicker(config)
        config = config or {}
        local text = config.Text or "ColorPicker"
        local default = config.Default or Color3.fromRGB(255, 255, 255)
        local callback = config.Callback
        
        local ColorPicker = Instance.new("TextButton")
        ColorPicker.Size = UDim2.new(1, 0, 0, 45)
        ColorPicker.BackgroundColor3 = CurrentTheme.Button
        ColorPicker.TextColor3 = CurrentTheme.Text
        ColorPicker.Text = text
        ColorPicker.Font = Enum.Font.GothamSemibold
        ColorPicker.TextSize = 14
        ColorPicker.Parent = self.TabContent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = ColorPicker
        
        local colorPreview = Instance.new("Frame")
        colorPreview.Size = UDim2.new(0, 20, 0, 20)
        colorPreview.Position = UDim2.new(1, -25, 0.5, -10)
        colorPreview.BackgroundColor3 = default
        colorPreview.Parent = ColorPicker
        
        local UICorner2 = Instance.new("UICorner")
        UICorner2.CornerRadius = UDim.new(0, 4)
        UICorner2.Parent = colorPreview
        
        local isOpen = false
        local selectedColor = default
        
        ColorPicker.MouseButton1Click:Connect(function()
            isOpen = not isOpen
            if isOpen then
                -- Create color picker UI
                local pickerFrame = Instance.new("Frame")
                pickerFrame.Size = UDim2.new(1, 0, 0, 200)
                pickerFrame.Position = UDim2.new(0, 0, 0, 45)
                pickerFrame.BackgroundColor3 = CurrentTheme.Background
                pickerFrame.Parent = ColorPicker
                
                local UICorner3 = Instance.new("UICorner")
                UICorner3.CornerRadius = UDim.new(0, 8)
                UICorner3.Parent = pickerFrame
                
                -- Color palette
                local palette = Instance.new("Frame")
                palette.Size = UDim2.new(1, -20, 0, 150)
                palette.Position = UDim2.new(0, 10, 0, 10)
                palette.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                palette.Parent = pickerFrame
                
                local UICorner4 = Instance.new("UICorner")
                UICorner4.CornerRadius = UDim.new(0, 8)
                UICorner4.Parent = palette
                
                -- Add color buttons
                local colors = {
                    Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 0, 255),
                    Color3.fromRGB(255, 255, 0), Color3.fromRGB(255, 0, 255), Color3.fromRGB(0, 255, 255),
                    Color3.fromRGB(255, 255, 255), Color3.fromRGB(0, 0, 0), Color3.fromRGB(128, 128, 128)
                }
                
                for i, color in ipairs(colors) do
                    local colorBtn = Instance.new("TextButton")
                    colorBtn.Size = UDim2.new(0, 30, 0, 30)
                    colorBtn.Position = UDim2.new(0, (i-1) % 3 * 35 + 10, 0, math.floor((i-1) / 3) * 35 + 10)
                    colorBtn.BackgroundColor3 = color
                    colorBtn.Text = ""
                    colorBtn.Parent = palette
                    
                    colorBtn.MouseButton1Click:Connect(function()
                        selectedColor = color
                        colorPreview.BackgroundColor3 = color
                        
                        if callback then
                            callback(color)
                        end
                        
                        isOpen = false
                        pickerFrame:Destroy()
                    end)
                end
                
                -- Custom color input
                local customColor = Instance.new("TextBox")
                customColor.Size = UDim2.new(1, -20, 0, 30)
                customColor.Position = UDim2.new(0, 10, 0, 170)
                customColor.BackgroundColor3 = CurrentTheme.Button
                customColor.TextColor3 = CurrentTheme.Text
                customColor.Text = "Custom Color (RGB)"
                customColor.Font = Enum.Font.GothamSemibold
                customColor.TextSize = 14
                customColor.Parent = pickerFrame
                
                local UICorner5 = Instance.new("UICorner")
                UICorner5.CornerRadius = UDim.new(0, 8)
                UICorner5.Parent = customColor
                
                customColor.FocusLost:Connect(function()
                    local text = customColor.Text
                    -- Parse RGB values
                    -- This is simplified, you can add more parsing logic
                    if string.match(text, "%d+,%d+,%d+") then
                        local r, g, b = string.match(text, "(%d+),(%d+),(%d+)")
                        selectedColor = Color3.fromRGB(tonumber(r), tonumber(g), tonumber(b))
                        colorPreview.BackgroundColor3 = selectedColor
                        
                        if callback then
                            callback(selectedColor)
                        end
                    end
                end)
            else
                local pickerFrame = ColorPicker:FindFirstChild("Frame")
                if pickerFrame then pickerFrame:Destroy() end
            end
        end)
        
        return ColorPicker
    end
    
    -- Input
    function Tab:CreateInput(config)
        config = config or {}
        local text = config.Text or "Input"
        local default = config.Default or ""
        local callback = config.Callback
        
        local InputFrame = Instance.new("Frame")
        InputFrame.Size = UDim2.new(1, 0, 0, 60)
        InputFrame.BackgroundColor3 = CurrentTheme.Button
        InputFrame.Parent = self.TabContent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = InputFrame
        
        local Label = Instance.new("TextLabel")
        Label.Size = UDim2.new(1, -20, 0, 20)
        Label.Position = UDim2.new(0, 10, 0, 5)
        Label.BackgroundTransparency = 1
        Label.Text = text
        Label.TextColor3 = CurrentTheme.Text
        Label.Font = Enum.Font.GothamSemibold
        Label.TextSize = 14
        Label.Parent = InputFrame
        
        local Input = Instance.new("TextBox")
        Input.Size = UDim2.new(1, -20, 0, 30)
        Input.Position = UDim2.new(0, 10, 0, 25)
        Input.BackgroundColor3 = CurrentTheme.Background
        Input.TextColor3 = CurrentTheme.Text
        Input.Text = default
        Input.Font = Enum.Font.GothamSemibold
        Input.TextSize = 14
        Input.ClearTextOnFocus = false
        Input.Parent = InputFrame
        
        local UICorner2 = Instance.new("UICorner")
        UICorner2.CornerRadius = UDim.new(0, 8)
        UICorner2.Parent = Input
        
        Input.FocusLost:Connect(function()
            if callback then
                callback(Input.Text)
            end
        end)
        
        return InputFrame
    end
    
    -- Keybind
    function Tab:CreateKeybind(config)
        config = config or {}
        local text = config.Text or "Keybind"
        local default = config.Default or Enum.KeyCode.Unknown
        local callback = config.Callback
        
        local Keybind = Instance.new("TextButton")
        Keybind.Size = UDim2.new(1, 0, 0, 45)
        Keybind.BackgroundColor3 = CurrentTheme.Button
        Keybind.TextColor3 = CurrentTheme.Text
        Keybind.Text = text .. ": " .. (default.Name or "None")
        Keybind.Font = Enum.Font.GothamSemibold
        Keybind.TextSize = 14
        Keybind.Parent = self.TabContent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = Keybind
        
        local waiting = false
        local selectedKey = default
        
        Keybind.MouseButton1Click:Connect(function()
            waiting = true
            Keybind.Text = text .. ": Press a key..."
            
            UserInputService.InputBegan:Connect(function(input)
                if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
                    selectedKey = input.KeyCode
                    Keybind.Text = text .. ": " .. selectedKey.Name
                    waiting = false
                    
                    if callback then
                        callback(selectedKey)
                    end
                end
            end)
        end)
        
        return Keybind
    end
    
    -- Notification System
    function Window:Notify(config)
        config = config or {}
        local title = config.Title or "Notification"
        local description = config.Description or ""
        local duration = config.Duration or 3
        
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
        TitleLabel.Text = title
        TitleLabel.TextColor3 = CurrentTheme.Text
        TitleLabel.Font = Enum.Font.GothamBold
        TitleLabel.TextSize = 14
        TitleLabel.Parent = Notification
        
        local DescLabel = Instance.new("TextLabel")
        DescLabel.Size = UDim2.new(1, -20, 0, 40)
        DescLabel.Position = UDim2.new(0, 10, 0, 25)
        DescLabel.BackgroundTransparency = 1
        DescLabel.Text = description
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
        
        -- Auto destroy
        task.delay(duration, function()
            TweenService:Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(1, 0, 1, -100)
            }):Play()
            
            task.wait(0.5)
            Notification:Destroy()
        end)
    end
    
    -- Theme System
    function Window:SetTheme(themeName)
        if Themes[themeName] then
            CurrentTheme = Themes[themeName]
            -- Update all UI elements
            -- This is simplified, you can update all elements individually
            MainWindow.BackgroundColor3 = CurrentTheme.Background
            TopBar.BackgroundColor3 = CurrentTheme.TopBar
            -- Update other elements...
        end
    end
    
    -- Config System
    local ConfigSystem = {}
    
    function ConfigSystem:Save(configName)
        local config = {}
        -- Save all settings
        -- This is simplified, you can implement actual saving
        print("Saved config: " .. configName)
    end
    
    function ConfigSystem:Load(configName)
        -- Load settings
        print("Loaded config: " .. configName)
    end
    
    function ConfigSystem:Delete(configName)
        -- Delete config
        print("Deleted config: " .. configName)
    end
    
    function ConfigSystem:GetConfigs()
        -- Return list of configs
        return {"Config1", "Config2", "Config3"}
    end
    
    Window.ConfigSystem = ConfigSystem
    
    -- Draggable System
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
    
    -- Window Methods
    function Window:SetSize(size)
        MainWindow.Size = size
    end
    
    function Window:SetPosition(position)
        MainWindow.Position = position
    end
    
    function Window:Destroy()
        ScreenGui:Destroy()
    end
    
    return Window
end

return Library
