--[[
    My Mobile UI Library
    สร้างเพื่อรองรับตัวรันมือถือ (Executor)
]]

local Library = {}
Library.__index = Library

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

-- หาที่วาง UI ที่ปลอดภัยที่สุด (ป้องกันการโดนลบ)
local function getUiParent()
    if gethui then return gethui() end
    if syn and syn.protect_gui then 
        local protected = Instance.new("ScreenGui")
        syn.protect_gui(protected)
        return protected
    end
    return CoreGui
end

-- ฟังก์ชันสร้างหน้าต่างหลัก (Window)
function Library:CreateWindow(title)
    local Window = setmetatable({}, Library)
    
    -- ลบ UI เดิมออกก่อน (กันปุ่มซ้อนกัน)
    local oldGui = CoreGui:FindFirstChild("MyMobileUI")
    if oldGui then oldGui:Destroy() end

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "MyMobileUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Parent = getUiParent()

    -- Main Frame (ขนาดพอเหมาะกับมือถือ)
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 320, 0, 450)
    MainFrame.Position = UDim2.new(0.5, -160, 0.5, -225)
    MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    MainFrame.BorderSizePixel = 0
    MainFrame.Active = true
    MainFrame.Parent = ScreenGui
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = MainFrame

    -- แถบหัว (TopBar) สำหรับลาก
    local TopBar = Instance.new("Frame")
    TopBar.Size = UDim2.new(1, 0, 0, 45)
    TopBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    TopBar.BorderSizePixel = 0
    TopBar.Parent = MainFrame
    
    local TopCorner = Instance.new("UICorner")
    TopCorner.CornerRadius = UDim.new(0, 10)
    TopCorner.Parent = TopBar

    -- ปุ่มปิด UI (X)
    local CloseBtn = Instance.new("TextButton")
    CloseBtn.Size = UDim2.new(0, 30, 0, 30)
    CloseBtn.Position = UDim2.new(1, -37, 0.5, -15)
    CloseBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    CloseBtn.Text = "X"
    CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.TextSize = 14
    CloseBtn.Parent = TopBar
    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 6)
    CloseCorner.Parent = CloseBtn
    
    CloseBtn.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, -40, 1, 0)
    Title.Position = UDim2.new(0, 15, 0, 0)
    Title.BackgroundTransparency = 1
    Title.Text = title or "Mobile UI"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 16
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = TopBar

    -- พื้นที่เลื่อน (ScrollingFrame) เผื่อปุ่มเยอะ
    local ScrollArea = Instance.new("ScrollingFrame")
    ScrollArea.Size = UDim2.new(1, -20, 1, -60)
    ScrollArea.Position = UDim2.new(0, 10, 0, 55)
    ScrollArea.BackgroundTransparency = 1
    ScrollArea.ScrollBarThickness = 4
    ScrollArea.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollArea.Parent = MainFrame

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Padding = UDim.new(0, 8)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Parent = ScrollArea

    -- อัปเดต CanvasSize อัตโนมัติ
    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        ScrollArea.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
    end)

    -- ระบบลากเมาส์และลากด้วยนิ้ว (Mobile Friendly)
    local dragging, dragInput, dragStart, startPos
    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = MainFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    TopBar.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    Window.ScrollArea = ScrollArea
    return Window
end

-- ฟังก์ชันสร้างปุ่ม (Button)
function Library:CreateButton(text, callback)
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1, 0, 0, 45) -- สูงใหญ่พอให้นิ้วแตะ
    Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Text = text or "Button"
    Button.Font = Enum.Font.GothamSemibold
    Button.TextSize = 14
    Button.Parent = self.ScrollArea
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 8)
    UICorner.Parent = Button

    -- แอนิเมชันตอนกด (Tween)
    Button.MouseButton1Down:Connect(function()
        TweenService:Create(Button, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(0, 170, 255)}):Play()
    end)
    Button.MouseButton1Up:Connect(function()
        TweenService:Create(Button, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
    end)
    Button.MouseLeave:Connect(function()
        TweenService:Create(Button, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
    end)

    Button.MouseButton1Click:Connect(function()
        if callback then callback() end
    end)
    return Button
end

-- ฟังก์ชันสร้างสวิตช์ (Toggle)
function Library:CreateToggle(text, callback)
    local Toggled = false
    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Size = UDim2.new(1, 0, 0, 45)
    ToggleBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleBtn.Text = text .. ": OFF"
    ToggleBtn.Font = Enum.Font.GothamSemibold
    ToggleBtn.TextSize = 14
    ToggleBtn.Parent = self.ScrollArea

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 8)
    UICorner.Parent = ToggleBtn

    ToggleBtn.MouseButton1Click:Connect(function()
        Toggled = not Toggled
        if Toggled then
            ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 100) -- สีเขียวเปิด
            ToggleBtn.Text = text .. ": ON"
        else
            ToggleBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- สีเทาปิด
            ToggleBtn.Text = text .. ": OFF"
        end
        if callback then callback(Toggled) end
    end)
    return ToggleBtn
end

return Library
