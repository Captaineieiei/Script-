--[[
    Pro Mobile & PC UI Library (Fixed Full Version)
    - Modern Design
    - Tabs System
    - 8 UI Elements
    - Notification System
    - Mobile & PC Friendly (Fixed Camera Rotate Issue)
]]

local Library = {}
Library.__index = Library

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

local Theme = {
    Background = Color3.fromRGB(20, 20, 25),
    Sidebar = Color3.fromRGB(25, 25, 30),
    Topbar = Color3.fromRGB(30, 30, 35),
    Element = Color3.fromRGB(40, 40, 45),
    ElementHover = Color3.fromRGB(50, 50, 55),
    Text = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(180, 180, 180),
    Accent = Color3.fromRGB(100, 150, 255),
    ToggleOn = Color3.fromRGB(100, 255, 150),
    ToggleOff = Color3.fromRGB(60, 60, 65)
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
    
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 450, 0, 300)
    MainFrame.Position = UDim2.new(0.5, -225, 0.5, -150)
    MainFrame.BackgroundColor3 = Theme.Background
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = ScreenGui
    
    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 10)
    MainCorner.Parent = MainFrame
    
    local TopBar = Instance.new("Frame")
    TopBar.Size = UDim2.new(1, 0, 0, 40)
    TopBar.BackgroundColor3 = Theme.Topbar
    TopBar.BorderSizePixel = 0
    TopBar.Active = true -- ✅ บล็อคการหันจอเวลาแตะ
    TopBar.Parent = MainFrame
    
    local TopCorner = Instance.new("UICorner")
    TopCorner.CornerRadius = UDim.new(0, 10)
    TopCorner.Parent = TopBar
    
    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Size = UDim2.new(1, -50, 1, 0)
    TitleLabel.Position = UDim2.new(0, 15, 0, 0)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Text = config.Title or "Pro Hub"
    TitleLabel.TextColor3 = Theme.Text
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextSize = 15
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    TitleLabel.Parent = TopBar
    
    local CloseBtn = Instance.new("TextButton")
    CloseBtn.Size = UDim2.new(0, 30, 0, 30)
    CloseBtn.Position = UDim2.new(1, -35, 0.5, -15)
    CloseBtn.BackgroundColor3 = Theme.Element
    CloseBtn.Text = "X"
    CloseBtn.TextColor3 = Theme.Text
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.TextSize = 14
    CloseBtn.Parent = TopBar
    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 6)
    CloseCorner.Parent = CloseBtn
    CloseBtn.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)
    
    local TabContainer = Instance.new("Frame")
    TabContainer.Size = UDim2.new(0, 130, 1, -40)
    TabContainer.Position = UDim2.new(0, 0, 0, 40)
    TabContainer.BackgroundColor3 = Theme.Sidebar
    TabContainer.BorderSizePixel = 0
    TabContainer.Parent = MainFrame
    local SideCorner = Instance.new("UICorner")
    SideCorner.CornerRadius = UDim.new(0, 10)
    SideCorner.Parent = TabContainer
    
    local TabList = Instance.new("ScrollingFrame")
    TabList.Size = UDim2.new(1, -10, 1, -10)
    TabList.Position = UDim2.new(0, 5, 0, 5)
    TabList.BackgroundTransparency = 1
    TabList.ScrollBarThickness = 2
    TabList.Parent = TabContainer
    local TabLayout = Instance.new("UIListLayout")
    TabLayout.Padding = UDim.new(0, 5)
    TabLayout.Parent = TabList
    
    local ContentArea = Instance.new("Frame")
    ContentArea.Size = UDim2.new(1, -130, 1, -40)
    ContentArea.Position = UDim2.new(0, 130, 0, 40)
    ContentArea.BackgroundTransparency = 1
    ContentArea.Parent = MainFrame
    
    local Tabs = {}
    local CurrentTab = nil
    
    function Window:CreateTab(name)
        local Tab = {}
        local TabBtn = Instance.new("TextButton")
        TabBtn.Size = UDim2.new(1, 0, 0, 35)
        TabBtn.BackgroundColor3 = Theme.Element
        TabBtn.Text = name
        TabBtn.TextColor3 = Theme.SubText
        TabBtn.Font = Enum.Font.GothamSemibold
        TabBtn.TextSize = 13
        TabBtn.Parent = TabList
        local BtnCorner = Instance.new("UICorner")
        BtnCorner.CornerRadius = UDim.new(0, 6)
        BtnCorner.Parent = TabBtn
        
        local TabContent = Instance.new("ScrollingFrame")
        TabContent.Size = UDim2.new(1, -20, 1, -20)
        TabContent.Position = UDim2.new(0, 10, 0, 10)
        TabContent.BackgroundTransparency = 1
        TabContent.ScrollBarThickness = 2
        TabContent.Visible = false
        TabContent.Parent = ContentArea
        local ContentLayout = Instance.new("UIListLayout")
        ContentLayout.Padding = UDim.new(0, 8)
        ContentLayout.Parent = TabContent
        
        TabBtn.MouseButton1Click:Connect(function()
            if CurrentTab then
                CurrentTab.Btn.BackgroundColor3 = Theme.Element
                CurrentTab.Btn.TextColor3 = Theme.SubText
                CurrentTab.Content.Visible = false
            end
            TabBtn.BackgroundColor3 = Theme.Accent
            TabBtn.TextColor3 = Theme.Text
            TabContent.Visible = true
            CurrentTab = {Btn = TabBtn, Content = TabContent}
        end)
        
        -- ============================================
        -- UI ELEMENTS
        -- ============================================
        
        function Tab:CreateButton(c)
            c = type(c) == "table" and c or {}
            local Btn = Instance.new("TextButton")
            Btn.Size = UDim2.new(1, 0, 0, 40)
            Btn.BackgroundColor3 = Theme.Element
            Btn.Text = c.Text or "Button"
            Btn.TextColor3 = Theme.Text
            Btn.Font = Enum.Font.GothamSemibold
            Btn.TextSize = 14
            Btn.Parent = TabContent
            local Cor = Instance.new("UICorner")
            Cor.CornerRadius = UDim.new(0, 6)
            Cor.Parent = Btn
            
            Btn.MouseButton1Click:Connect(function() 
                if c.Callback then c.Callback() end 
            end)
            return Btn
        end
        
        function Tab:CreateToggle(c)
            c = type(c) == "table" and c or {}
            local state = c.Default or false
            local Tog = Instance.new("TextButton")
            Tog.Size = UDim2.new(1, 0, 0, 40)
            Tog.BackgroundColor3 = state and Theme.ToggleOn or Theme.Element
            Tog.Text = (c.Text or "Toggle") .. ": " .. (state and "ON" or "OFF")
            Tog.TextColor3 = Theme.Text
            Tog.Font = Enum.Font.GothamSemibold
            Tog.TextSize = 14
            Tog.Parent = TabContent
            local Cor = Instance.new("UICorner")
            Cor.CornerRadius = UDim.new(0, 6)
            Cor.Parent = Tog
            
            Tog.MouseButton1Click:Connect(function()
                state = not state
                Tog.BackgroundColor3 = state and Theme.ToggleOn or Theme.Element
                Tog.Text = (c.Text or "Toggle") .. ": " .. (state and "ON" or "OFF")
                if c.Callback then c.Callback(state) end
            end)
            return Tog
        end
        
        function Tab:CreateSlider(c)
            c = type(c) == "table" and c or {}
            local min, max, val = c.Min or 0, c.Max or 100, c.Default or 0
            local Frame = Instance.new("Frame")
            Frame.Size = UDim2.new(1, 0, 0, 50)
            Frame.BackgroundColor3 = Theme.Element
            Frame.Parent = TabContent
            local Cor = Instance.new("UICorner")
            Cor.CornerRadius = UDim.new(0, 6)
            Cor.Parent = Frame
            
            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(1, -20, 0, 20)
            Label.Position = UDim2.new(0, 10, 0, 5)
            Label.BackgroundTransparency = 1
            Label.Text = (c.Text or "Slider") .. ": " .. val
            Label.TextColor3 = Theme.Text
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 14
            Label.Parent = Frame
            
            local Bar = Instance.new("Frame")
            Bar.Size = UDim2.new(1, -20, 0, 15)
            Bar.Position = UDim2.new(0, 10, 0, 30)
            Bar.BackgroundColor3 = Theme.Background
            Bar.Parent = Frame
            local BarCor = Instance.new("UICorner")
            BarCor.CornerRadius = UDim.new(0, 4)
            BarCor.Parent = Bar
            
            local Fill = Instance.new("Frame")
            Fill.Size = UDim2.new((val-min)/(max-min), 0, 1, 0)
            Fill.BackgroundColor3 = Theme.Accent
            Fill.Parent = Bar
            local FillCor = Instance.new("UICorner")
            FillCor.CornerRadius = UDim.new(0, 4)
            FillCor.Parent = Fill
            
            local dragging = false
            Bar.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                end
            end)
            Bar.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = false
                end
            end)
            UserInputService.InputChanged:Connect(function(input)
                if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    local pos = input.Position.X - Bar.AbsolutePosition.X
                    local percent = math.clamp(pos / Bar.AbsoluteSize.X, 0, 1)
                    local value = math.floor(min + (max - min) * percent)
                    Fill.Size = UDim2.new(percent, 0, 1, 0)
                    Label.Text = (c.Text or "Slider") .. ": " .. value
                    if c.Callback then c.Callback(value) end
                end
            end)
            return Frame
        end
        
        function Tab:CreateDropdown(c)
            c = type(c) == "table" and c or {}
            local Drop = Instance.new("TextButton")
            Drop.Size = UDim2.new(1, 0, 0, 40)
            Drop.BackgroundColor3 = Theme.Element
            Drop.Text = (c.Text or "Dropdown") .. ": " .. (c.Default or c.Options[1])
            Drop.TextColor3 = Theme.Text
            Drop.Font = Enum.Font.GothamSemibold
            Drop.TextSize = 14
            Drop.Parent = TabContent
            local Cor = Instance.new("UICorner")
            Cor.CornerRadius = UDim.new(0, 6)
            Cor.Parent = Drop
            
            local isOpen = false
            local selected = c.Default or c.Options[1]
            
            Drop.MouseButton1Click:Connect(function()
                isOpen = not isOpen
                if isOpen then
                    local list = Instance.new("Frame")
                    list.Size = UDim2.new(1, 0, 0, #c.Options * 35)
                    list.Position = UDim2.new(0, 0, 0, 45)
                    list.BackgroundColor3 = Theme.Element
                    list.Parent = Drop
                    local listCor = Instance.new("UICorner")
                    listCor.CornerRadius = UDim.new(0, 6)
                    listCor.Parent = list
                    
                    for i, opt in ipairs(c.Options) do
                        local optBtn = Instance.new("TextButton")
                        optBtn.Size = UDim2.new(1, 0, 0, 35)
                        optBtn.Position = UDim2.new(0, 0, 0, (i-1)*35)
                        optBtn.BackgroundColor3 = Theme.Element
                        optBtn.Text = opt
                        optBtn.TextColor3 = Theme.Text
                        optBtn.Font = Enum.Font.GothamSemibold
                        optBtn.TextSize = 13
                        optBtn.Parent = list
                        
                        optBtn.MouseButton1Click:Connect(function()
                            selected = opt
                            Drop.Text = (c.Text or "Dropdown") .. ": " .. opt
                            isOpen = false
                            list:Destroy()
                            if c.Callback then c.Callback(opt) end
                        end)
                    end
                else
                    local list = Drop:FindFirstChild("Frame")
                    if list then list:Destroy() end
                end
            end)
            return Drop
        end
        
        function Tab:CreateColorPicker(c)
            c = type(c) == "table" and c or {}
            local Btn = Instance.new("TextButton")
            Btn.Size = UDim2.new(1, 0, 0, 40)
            Btn.BackgroundColor3 = Theme.Element
            Btn.Text = c.Text or "ColorPicker"
            Btn.TextColor3 = Theme.Text
            Btn.Font = Enum.Font.GothamSemibold
            Btn.TextSize = 14
            Btn.Parent = TabContent
            local Cor = Instance.new("UICorner")
            Cor.CornerRadius = UDim.new(0, 6)
            Cor.Parent = Btn
            
            local colorPreview = Instance.new("Frame")
            colorPreview.Size = UDim2.new(0, 20, 0, 20)
            colorPreview.Position = UDim2.new(1, -30, 0.5, -10)
            colorPreview.BackgroundColor3 = c.Default or Color3.fromRGB(255,255,255)
            colorPreview.Parent = Btn
            local prevCor = Instance.new("UICorner")
            prevCor.CornerRadius = UDim.new(0, 4)
            prevCor.Parent = colorPreview
            
            local isOpen = false
            local selectedColor = c.Default or Color3.fromRGB(255,255,255)
            
            Btn.MouseButton1Click:Connect(function()
                isOpen = not isOpen
                if isOpen then
                    local picker = Instance.new("Frame")
                    picker.Size = UDim2.new(1, 0, 0, 100)
                    picker.Position = UDim2.new(0, 0, 0, 45)
                    picker.BackgroundColor3 = Theme.Background
                    picker.Parent = Btn
                    local picCor = Instance.new("UICorner")
                    picCor.CornerRadius = UDim.new(0, 6)
                    picCor.Parent = picker
                    
                    local colors = {
                        Color3.fromRGB(255,0,0), Color3.fromRGB(0,255,0), Color3.fromRGB(0,0,255),
                        Color3.fromRGB(255,255,0), Color3.fromRGB(0,255,255), Color3.fromRGB(255,0,255),
                        Color3.fromRGB(255,255,255), Color3.fromRGB(0,0,0), Color3.fromRGB(150,150,150)
                    }
                    
                    for i, col in ipairs(colors) do
                        local colBtn = Instance.new("TextButton")
                        colBtn.Size = UDim2.new(0, 25, 0, 25)
                        colBtn.Position = UDim2.new(0, 10 + ((i-1)%5)*30, 0, 10 + math.floor((i-1)/5)*30)
                        colBtn.BackgroundColor3 = col
                        colBtn.Text = ""
                        colBtn.Parent = picker
                        
                        colBtn.MouseButton1Click:Connect(function()
                            selectedColor = col
                            colorPreview.BackgroundColor3 = col
                            isOpen = false
                            picker:Destroy()
                            if c.Callback then c.Callback(col) end
                        end)
                    end
                else
                    local picker = Btn:FindFirstChild("Frame")
                    if picker then picker:Destroy() end
                end
            end)
            return Btn
        end
        
        function Tab:CreateInput(c)
            c = type(c) == "table" and c or {}
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
            local Cor = Instance.new("UICorner")
            Cor.CornerRadius = UDim.new(0, 6)
            Cor.Parent = Box
            
            Box.FocusLost:Connect(function() 
                if c.Callback then c.Callback(Box.Text) end 
            end)
            return Box
        end
        
        function Tab:CreateKeybind(c)
            c = type(c) == "table" and c or {}
            local Btn = Instance.new("TextButton")
            Btn.Size = UDim2.new(1, 0, 0, 40)
            Btn.BackgroundColor3 = Theme.Element
            Btn.Text = (c.Text or "Keybind") .. ": " .. (c.Default and c.Default.Name or "None")
            Btn.TextColor3 = Theme.Text
            Btn.Font = Enum.Font.GothamSemibold
            Btn.TextSize = 14
            Btn.Parent = TabContent
            local Cor = Instance.new("UICorner")
            Cor.CornerRadius = UDim.new(0, 6)
            Cor.Parent = Btn
            
            local waiting = false
            local selectedKey = c.Default
            
            Btn.MouseButton1Click:Connect(function()
                waiting = true
                Btn.Text = (c.Text or "Keybind") .. ": Press..."
                local conn
                conn = UserInputService.InputBegan:Connect(function(input)
                    if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
                        selectedKey = input.KeyCode
                        Btn.Text = (c.Text or "Keybind") .. ": " .. selectedKey.Name
                        waiting = false
                        conn:Disconnect()
                        if c.Callback then c.Callback(selectedKey) end
                    end
                end)
            end)
            return Btn
        end
        
        function Tab:CreateLabel(c)
            c = type(c) == "table" and c or {}
            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(1, 0, 0, 30)
            Label.BackgroundTransparency = 1
            Label.Text = c.Text or "Label"
            Label.TextColor3 = Theme.SubText
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 13
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.Parent = TabContent
            return Label
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
    -- DRAGGABLE SYSTEM (แก้บัคหันจอ)
    -- ============================================
    local dragging = false
    local dragInput, dragStart, startPos
    local dragGui = nil

    local function update(input)
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = MainFrame.Position
            
            if input.UserInputType == Enum.UserInputType.Touch then
                dragGui = input
            end

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                    dragGui = nil
                end
            end)
        end
    end)

    TopBar.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if input == dragGui then
                update(input)
            end
        end
    end)
    
    return Window
end

return Library
