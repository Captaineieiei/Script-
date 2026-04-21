--[[
	_   _       _   _    _ _____ 
	| \ | |     | | | |  | |_   _|
	|  \| | __ _| |_| |  | | | |  
	| . ` |/ _` | __| |  | | | |  
	| |\  | (_| | |_| |__| |_| |_ 
	|_| \_|\__,_|\__|\____/|_____|

    Rewrited from Wind UI (Footagesus)
    Github: https://github.com/Footagesus/WindUI

	Developed by: .chill.z. (Chillz)
	Owned Zzz

	This User Interface is open source and for public usage.
]]

-- Instances: 271 | Scripts: 0 | Modules: 3 | Tags: 0
local NovaHub = {};

-- NovaHub
NovaHub["1"] = Instance.new("ScreenGui");
NovaHub["1"]["Name"] = [[NovaHub]];
NovaHub["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
NovaHub["1"]["ResetOnSpawn"] = false;

local cloneref = cloneref or function(...) return ... end

if protect_gui then
	protect_gui(NovaHub["1"])
elseif gethui then
	NovaHub["1"].Parent = gethui()
elseif pcall(function() game.CoreGui:GetChildren() end) then
	NovaHub["1"].Parent = cloneref(game:GetService("CoreGui"))
else
	NovaHub["1"].Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

-- NovaHub.Window
NovaHub["2"] = Instance.new("Frame", NovaHub["1"]);
NovaHub["2"]["ZIndex"] = 0;
NovaHub["2"]["BorderSizePixel"] = 2;
NovaHub["2"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
NovaHub["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["2"]["Size"] = UDim2.new(0, 528, 0, 334);
NovaHub["2"]["Position"] = UDim2.new(0.5278, 0, 0.5, 0);
NovaHub["2"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["2"]["Name"] = [[Window]];


-- NovaHub.Window.UICorner
NovaHub["3"] = Instance.new("UICorner", NovaHub["2"]);
NovaHub["3"]["CornerRadius"] = UDim.new(0, 10);


-- NovaHub.Window.DropdownSelection
NovaHub["4"] = Instance.new("Frame", NovaHub["2"]);
NovaHub["4"]["Visible"] = false;
NovaHub["4"]["ZIndex"] = 4;
NovaHub["4"]["BorderSizePixel"] = 0;
NovaHub["4"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
NovaHub["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["4"]["ClipsDescendants"] = true;
NovaHub["4"]["Size"] = UDim2.new(0.7281, 0, 0.68367, 0);
NovaHub["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
NovaHub["4"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["4"]["Name"] = [[DropdownSelection]];


-- NovaHub.Window.DropdownSelection.UICorner
NovaHub["5"] = Instance.new("UICorner", NovaHub["4"]);
NovaHub["5"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Window.DropdownSelection.UIStroke
NovaHub["6"] = Instance.new("UIStroke", NovaHub["4"]);
NovaHub["6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["6"]["Thickness"] = 1.5;
NovaHub["6"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Window.DropdownSelection.TopBar
NovaHub["7"] = Instance.new("Frame", NovaHub["4"]);
NovaHub["7"]["BorderSizePixel"] = 0;
NovaHub["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["7"]["Size"] = UDim2.new(1, 0, 0, 50);
NovaHub["7"]["Position"] = UDim2.new(0, 0, 0, 0);
NovaHub["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["7"]["Name"] = [[TopBar]];
NovaHub["7"]["BackgroundTransparency"] = 1;


-- NovaHub.Window.DropdownSelection.TopBar.BoxFrame
NovaHub["8"] = Instance.new("Frame", NovaHub["7"]);
NovaHub["8"]["BorderSizePixel"] = 0;
NovaHub["8"]["AnchorPoint"] = Vector2.new(1, 0.5);
NovaHub["8"]["Size"] = UDim2.new(0, 120, 0, 25);
NovaHub["8"]["Position"] = UDim2.new(1, -50, 0.5, 0);
NovaHub["8"]["Name"] = [[BoxFrame]];
NovaHub["8"]["BackgroundTransparency"] = 1;


-- NovaHub.Window.DropdownSelection.TopBar.BoxFrame.DropShadow
NovaHub["9"] = Instance.new("ImageLabel", NovaHub["8"]);
NovaHub["9"]["ZIndex"] = 0;
NovaHub["9"]["BorderSizePixel"] = 0;
NovaHub["9"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
NovaHub["9"]["ScaleType"] = Enum.ScaleType.Slice;
NovaHub["9"]["ImageTransparency"] = 0.75;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["9"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["9"]["Image"] = [[rbxassetid://6014261993]];
NovaHub["9"]["Size"] = UDim2.new(1, 30, 1, 30);
NovaHub["9"]["BackgroundTransparency"] = 1;
NovaHub["9"]["Name"] = [[DropShadow]];
NovaHub["9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- NovaHub.Window.DropdownSelection.TopBar.BoxFrame.Frame
NovaHub["a"] = Instance.new("Frame", NovaHub["8"]);
NovaHub["a"]["BorderSizePixel"] = 0;
NovaHub["a"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["a"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- NovaHub.Window.DropdownSelection.TopBar.BoxFrame.Frame.UICorner
NovaHub["b"] = Instance.new("UICorner", NovaHub["a"]);
NovaHub["b"]["CornerRadius"] = UDim.new(0, 5);


-- NovaHub.Window.DropdownSelection.TopBar.BoxFrame.Frame.UIStroke
NovaHub["c"] = Instance.new("UIStroke", NovaHub["a"]);
NovaHub["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["c"]["Thickness"] = 1.5;
NovaHub["c"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Window.DropdownSelection.TopBar.BoxFrame.Frame.TextBox
NovaHub["d"] = Instance.new("TextBox", NovaHub["a"]);
NovaHub["d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["d"]["BorderSizePixel"] = 0;
NovaHub["d"]["TextWrapped"] = true;
NovaHub["d"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
NovaHub["d"]["TextSize"] = 14;
NovaHub["d"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["d"]["ClipsDescendants"] = true;
NovaHub["d"]["PlaceholderText"] = [[Input here...]];
NovaHub["d"]["Size"] = UDim2.new(1, -25, 1, 0);
NovaHub["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["d"]["Text"] = [[]];
NovaHub["d"]["BackgroundTransparency"] = 1;


-- NovaHub.Window.DropdownSelection.TopBar.BoxFrame.Frame.TextBox.UIPadding
NovaHub["e"] = Instance.new("UIPadding", NovaHub["d"]);
NovaHub["e"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["e"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["e"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["e"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Window.DropdownSelection.TopBar.BoxFrame.Frame.ImageButton
NovaHub["f"] = Instance.new("ImageButton", NovaHub["a"]);
NovaHub["f"]["BorderSizePixel"] = 0;
NovaHub["f"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["f"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["f"]["AnchorPoint"] = Vector2.new(1, 0.5);
NovaHub["f"]["Image"] = [[rbxassetid://86928976705683]];
NovaHub["f"]["Size"] = UDim2.new(0, 15, 0, 15);
NovaHub["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["f"]["Position"] = UDim2.new(1, -5, 0.5, 0);


-- NovaHub.Window.DropdownSelection.TopBar.Close
NovaHub["10"] = Instance.new("ImageButton", NovaHub["7"]);
NovaHub["10"]["BorderSizePixel"] = 0;
NovaHub["10"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["10"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["10"]["ZIndex"] = 0;
NovaHub["10"]["AnchorPoint"] = Vector2.new(1, 0.5);
NovaHub["10"]["Image"] = [[rbxassetid://132453323679056]];
NovaHub["10"]["Size"] = UDim2.new(0, 25, 0, 25);
NovaHub["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["10"]["Name"] = [[Close]];
NovaHub["10"]["Position"] = UDim2.new(1, -12, 0.5, 0);


-- NovaHub.Window.DropdownSelection.TopBar.Title
NovaHub["11"] = Instance.new("TextLabel", NovaHub["7"]);
NovaHub["11"]["TextWrapped"] = true;
NovaHub["11"]["Interactable"] = false;
NovaHub["11"]["ZIndex"] = 0;
NovaHub["11"]["BorderSizePixel"] = 0;
NovaHub["11"]["TextSize"] = 18;
NovaHub["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["11"]["TextScaled"] = true;
NovaHub["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["11"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["11"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["11"]["BackgroundTransparency"] = 1;
NovaHub["11"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["11"]["Size"] = UDim2.new(0.5, 0, 0, 18);
NovaHub["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["11"]["Text"] = [[Dropdown]];
NovaHub["11"]["Name"] = [[Title]];
NovaHub["11"]["Position"] = UDim2.new(0, 12, 0.5, 0);


-- NovaHub.Window.DropdownSelection.Dropdowns
NovaHub["12"] = Instance.new("Folder", NovaHub["4"]);
NovaHub["12"]["Name"] = [[Dropdowns]];


-- NovaHub.Window.TabButtons
NovaHub["13"] = Instance.new("Frame", NovaHub["2"]);
NovaHub["13"]["BorderSizePixel"] = 0;
NovaHub["13"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
NovaHub["13"]["ClipsDescendants"] = true;
NovaHub["13"]["Size"] = UDim2.new(0, 165, 1, -35);
NovaHub["13"]["Position"] = UDim2.new(0, 0, 0, 35);
NovaHub["13"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["13"]["Name"] = [[TabButtons]];
NovaHub["13"]["SelectionGroup"] = true;


-- NovaHub.Window.TabButtons.Lists
NovaHub["14"] = Instance.new("ScrollingFrame", NovaHub["13"]);
NovaHub["14"]["Active"] = true;
NovaHub["14"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
NovaHub["14"]["BorderSizePixel"] = 0;
NovaHub["14"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
NovaHub["14"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
NovaHub["14"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
NovaHub["14"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
NovaHub["14"]["Name"] = [[Lists]];
NovaHub["14"]["Selectable"] = false;
NovaHub["14"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
NovaHub["14"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
NovaHub["14"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["14"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["14"]["ScrollBarThickness"] = 4;
NovaHub["14"]["BackgroundTransparency"] = 1;


-- NovaHub.Window.TabButtons.Lists.UIListLayout
NovaHub["15"] = Instance.new("UIListLayout", NovaHub["14"]);
NovaHub["15"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Window.TabButtons.Lists.TabButton
NovaHub["16"] = Instance.new("Frame", NovaHub["14"]);
NovaHub["16"]["Visible"] = false;
NovaHub["16"]["BorderSizePixel"] = 0;
NovaHub["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["16"]["Size"] = UDim2.new(1, 0, 0, 36);
NovaHub["16"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
NovaHub["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["16"]["Name"] = [[TabButton]];
NovaHub["16"]["BackgroundTransparency"] = 1;


-- NovaHub.Window.TabButtons.Lists.TabButton.Bar
NovaHub["17"] = Instance.new("Frame", NovaHub["16"]);
NovaHub["17"]["BorderSizePixel"] = 0;
NovaHub["17"]["BackgroundColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["17"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["17"]["Size"] = UDim2.new(0, 5, 0, 25);
NovaHub["17"]["Position"] = UDim2.new(0, 8, 0, 18);
NovaHub["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["17"]["Name"] = [[Bar]];


-- NovaHub.Window.TabButtons.Lists.TabButton.Bar.UIGradient
NovaHub["18"] = Instance.new("UIGradient", NovaHub["17"]);
NovaHub["18"]["Enabled"] = false;
NovaHub["18"]["Rotation"] = 90;
NovaHub["18"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(110, 212, 255)),ColorSequenceKeypoint.new(0.978, Color3.fromRGB(0, 124, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 218, 255))};


-- NovaHub.Window.TabButtons.Lists.TabButton.Bar.UICorner
NovaHub["19"] = Instance.new("UICorner", NovaHub["17"]);
NovaHub["19"]["CornerRadius"] = UDim.new(0, 100);


-- NovaHub.Window.TabButtons.Lists.TabButton.ImageButton
NovaHub["1a"] = Instance.new("ImageButton", NovaHub["16"]);
NovaHub["1a"]["BorderSizePixel"] = 0;
NovaHub["1a"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["1a"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["1a"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["1a"]["Image"] = [[rbxassetid://113216930555884]];
NovaHub["1a"]["Size"] = UDim2.new(0, 31, 0, 30);
NovaHub["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["1a"]["Position"] = UDim2.new(0, 21, 0, 18);


-- NovaHub.Window.TabButtons.Lists.TabButton.ImageButton.UIAspectRatioConstraint
NovaHub["1b"] = Instance.new("UIAspectRatioConstraint", NovaHub["1a"]);



-- NovaHub.Window.TabButtons.Lists.TabButton.TextLabel
NovaHub["1c"] = Instance.new("TextLabel", NovaHub["16"]);
NovaHub["1c"]["TextWrapped"] = true;
NovaHub["1c"]["BorderSizePixel"] = 0;
NovaHub["1c"]["TextSize"] = 14;
NovaHub["1c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["1c"]["TextScaled"] = true;
NovaHub["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["1c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["1c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["1c"]["BackgroundTransparency"] = 1;
NovaHub["1c"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["1c"]["Size"] = UDim2.new(0, 88, 0, 16);
NovaHub["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["1c"]["Text"] = [[NovaHub]];
NovaHub["1c"]["Position"] = UDim2.new(0, 57, 0.5, 0);


-- NovaHub.Window.TabButtons.Lists.UIPadding
NovaHub["1d"] = Instance.new("UIPadding", NovaHub["14"]);
NovaHub["1d"]["PaddingTop"] = UDim.new(0, 8);


-- NovaHub.Window.TabButtons.Lists.Divider
NovaHub["1e"] = Instance.new("Frame", NovaHub["14"]);
NovaHub["1e"]["Visible"] = false;
NovaHub["1e"]["BorderSizePixel"] = 0;
NovaHub["1e"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["1e"]["Size"] = UDim2.new(1, 0, 0, 1);
NovaHub["1e"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["1e"]["Name"] = [[Divider]];


-- NovaHub.Window.TabButtons.Lists.TabButton
NovaHub["1f"] = Instance.new("ImageButton", NovaHub["14"]);
NovaHub["1f"]["Active"] = false;
NovaHub["1f"]["BorderSizePixel"] = 0;
NovaHub["1f"]["AutoButtonColor"] = false;
NovaHub["1f"]["Visible"] = false;
NovaHub["1f"]["BackgroundTransparency"] = 1;
NovaHub["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["1f"]["Selectable"] = false;
NovaHub["1f"]["Size"] = UDim2.new(1, 0, 0, 36);
NovaHub["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["1f"]["Name"] = [[TabButton]];


-- NovaHub.Window.TabButtons.Lists.TabButton.ImageButton
NovaHub["20"] = Instance.new("ImageButton", NovaHub["1f"]);
NovaHub["20"]["BorderSizePixel"] = 0;
NovaHub["20"]["ImageTransparency"] = 0.5;
NovaHub["20"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["20"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["20"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["20"]["Image"] = [[rbxassetid://113216930555884]];
NovaHub["20"]["Size"] = UDim2.new(0, 31, 0, 30);
NovaHub["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["20"]["Position"] = UDim2.new(0, 6, 0, 18);


-- NovaHub.Window.TabButtons.Lists.TabButton.ImageButton.UIAspectRatioConstraint
NovaHub["21"] = Instance.new("UIAspectRatioConstraint", NovaHub["20"]);



-- NovaHub.Window.TabButtons.Lists.TabButton.TextLabel
NovaHub["22"] = Instance.new("TextLabel", NovaHub["1f"]);
NovaHub["22"]["TextWrapped"] = true;
NovaHub["22"]["BorderSizePixel"] = 0;
NovaHub["22"]["TextSize"] = 14;
NovaHub["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["22"]["TextTransparency"] = 0.5;
NovaHub["22"]["TextScaled"] = true;
NovaHub["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["22"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["22"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["22"]["BackgroundTransparency"] = 1;
NovaHub["22"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["22"]["Size"] = UDim2.new(0, 103, 0, 16);
NovaHub["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["22"]["Text"] = [[NovaHub]];
NovaHub["22"]["Position"] = UDim2.new(0, 42, 0.5, 0);


-- NovaHub.Window.TabButtons.Lists.TabButton.Bar
NovaHub["23"] = Instance.new("Frame", NovaHub["1f"]);
NovaHub["23"]["BorderSizePixel"] = 0;
NovaHub["23"]["BackgroundColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["23"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["23"]["Size"] = UDim2.new(0, 5, 0, 0);
NovaHub["23"]["Position"] = UDim2.new(0, 8, 0, 18);
NovaHub["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["23"]["Name"] = [[Bar]];
NovaHub["23"]["BackgroundTransparency"] = 1;


-- NovaHub.Window.TabButtons.Lists.TabButton.Bar.UICorner
NovaHub["24"] = Instance.new("UICorner", NovaHub["23"]);
NovaHub["24"]["CornerRadius"] = UDim.new(0, 100);


-- NovaHub.Window.TabButtons.UICorner
NovaHub["25"] = Instance.new("UICorner", NovaHub["13"]);
NovaHub["25"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Window.TabButtons.AntiCornerTop
NovaHub["26"] = Instance.new("Frame", NovaHub["13"]);
NovaHub["26"]["BorderSizePixel"] = 0;
NovaHub["26"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
NovaHub["26"]["Size"] = UDim2.new(1, 0, 0, 5);
NovaHub["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["26"]["Name"] = [[AntiCornerTop]];


-- NovaHub.Window.TabButtons.AntiCornerRight
NovaHub["27"] = Instance.new("Frame", NovaHub["13"]);
NovaHub["27"]["BorderSizePixel"] = 0;
NovaHub["27"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
NovaHub["27"]["AnchorPoint"] = Vector2.new(0.5, 0);
NovaHub["27"]["Size"] = UDim2.new(0, 2, 1, 0);
NovaHub["27"]["Position"] = UDim2.new(1, 1, 0, 0);
NovaHub["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["27"]["Name"] = [[AntiCornerRight]];


-- NovaHub.Window.TabButtons.Border
NovaHub["28"] = Instance.new("Frame", NovaHub["13"]);
NovaHub["28"]["ZIndex"] = 2;
NovaHub["28"]["BorderSizePixel"] = 0;
NovaHub["28"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["28"]["AnchorPoint"] = Vector2.new(1, 0);
NovaHub["28"]["Size"] = UDim2.new(0, 2, 1, 0);
NovaHub["28"]["Position"] = UDim2.new(1, 0, 0, 0);
NovaHub["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["28"]["Name"] = [[Border]];


-- NovaHub.Window.TopFrame
NovaHub["29"] = Instance.new("Frame", NovaHub["2"]);
NovaHub["29"]["BorderSizePixel"] = 0;
NovaHub["29"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
NovaHub["29"]["ClipsDescendants"] = true;
NovaHub["29"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["29"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["29"]["Name"] = [[TopFrame]];


-- NovaHub.Window.TopFrame.Icon
NovaHub["2a"] = Instance.new("ImageButton", NovaHub["29"]);
NovaHub["2a"]["Active"] = false;
NovaHub["2a"]["Interactable"] = false;
NovaHub["2a"]["BorderSizePixel"] = 0;
NovaHub["2a"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["2a"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["2a"]["Image"] = [[rbxassetid://113216930555884]];
NovaHub["2a"]["Size"] = UDim2.new(0, 25, 0, 25);
NovaHub["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["2a"]["Name"] = [[Icon]];
NovaHub["2a"]["Position"] = UDim2.new(0, 10, 0.5, 0);


-- NovaHub.Window.TopFrame.Icon.UIAspectRatioConstraint
NovaHub["2b"] = Instance.new("UIAspectRatioConstraint", NovaHub["2a"]);



-- NovaHub.Window.TopFrame.TextLabel
NovaHub["2c"] = Instance.new("TextLabel", NovaHub["29"]);
NovaHub["2c"]["TextWrapped"] = true;
NovaHub["2c"]["Interactable"] = false;
NovaHub["2c"]["BorderSizePixel"] = 0;
NovaHub["2c"]["TextSize"] = 14;
NovaHub["2c"]["TextScaled"] = true;
NovaHub["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["2c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["2c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["2c"]["BackgroundTransparency"] = 1;
NovaHub["2c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["2c"]["Size"] = UDim2.new(1, 0, 0, 16);
NovaHub["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["2c"]["Text"] = [[NovaHub - v1.2.3]];
NovaHub["2c"]["Position"] = UDim2.new(0.5, 0, 0.5, -1);


-- NovaHub.Window.TopFrame.Close
NovaHub["2d"] = Instance.new("ImageButton", NovaHub["29"]);
NovaHub["2d"]["BorderSizePixel"] = 0;
NovaHub["2d"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["2d"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["2d"]["AnchorPoint"] = Vector2.new(1, 0.5);
NovaHub["2d"]["Image"] = [[rbxassetid://132453323679056]];
NovaHub["2d"]["Size"] = UDim2.new(0, 20, 0, 20);
NovaHub["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["2d"]["Name"] = [[Close]];
NovaHub["2d"]["Position"] = UDim2.new(1, -15, 0.5, 0);


-- NovaHub.Window.TopFrame.Maximize
NovaHub["2e"] = Instance.new("ImageButton", NovaHub["29"]);
NovaHub["2e"]["BorderSizePixel"] = 0;
NovaHub["2e"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["2e"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["2e"]["AnchorPoint"] = Vector2.new(1, 0.5);
NovaHub["2e"]["Image"] = [[rbxassetid://108285848026510]];
NovaHub["2e"]["Size"] = UDim2.new(0, 15, 0, 15);
NovaHub["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["2e"]["Name"] = [[Maximize]];
NovaHub["2e"]["Position"] = UDim2.new(1, -55, 0.5, 0);


-- NovaHub.Window.TopFrame.Hide
NovaHub["2f"] = Instance.new("ImageButton", NovaHub["29"]);
NovaHub["2f"]["BorderSizePixel"] = 0;
NovaHub["2f"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["2f"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["2f"]["AnchorPoint"] = Vector2.new(1, 0.5);
NovaHub["2f"]["Image"] = [[rbxassetid://128209591224511]];
NovaHub["2f"]["Size"] = UDim2.new(0, 20, 0, 20);
NovaHub["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["2f"]["Name"] = [[Hide]];
NovaHub["2f"]["Position"] = UDim2.new(1, -90, 0.5, 0);


-- NovaHub.Window.TopFrame.UICorner
NovaHub["30"] = Instance.new("UICorner", NovaHub["29"]);
NovaHub["30"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Window.TopFrame.Border
NovaHub["31"] = Instance.new("Frame", NovaHub["29"]);
NovaHub["31"]["ZIndex"] = 2;
NovaHub["31"]["BorderSizePixel"] = 0;
NovaHub["31"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["31"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["31"]["Size"] = UDim2.new(1, 0, 0, 2);
NovaHub["31"]["Position"] = UDim2.new(0, 0, 1, 0);
NovaHub["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["31"]["Name"] = [[Border]];


-- NovaHub.Window.UIStroke
NovaHub["32"] = Instance.new("UIStroke", NovaHub["2"]);
NovaHub["32"]["Transparency"] = 0.5;
NovaHub["32"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["32"]["Color"] = Color3.fromRGB(95, 95, 117);


-- NovaHub.Window.Tabs
NovaHub["33"] = Instance.new("Frame", NovaHub["2"]);
NovaHub["33"]["BorderSizePixel"] = 0;
NovaHub["33"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
NovaHub["33"]["Size"] = UDim2.new(1, -165, 1, -35);
NovaHub["33"]["Position"] = UDim2.new(0, 165, 0, 35);
NovaHub["33"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["33"]["Name"] = [[Tabs]];


-- NovaHub.Window.Tabs.UICorner
NovaHub["34"] = Instance.new("UICorner", NovaHub["33"]);
NovaHub["34"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Window.Tabs.AntiCornerLeft
NovaHub["35"] = Instance.new("Frame", NovaHub["33"]);
NovaHub["35"]["Visible"] = false;
NovaHub["35"]["BorderSizePixel"] = 0;
NovaHub["35"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
NovaHub["35"]["Size"] = UDim2.new(0, 5, 1, 0);
NovaHub["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["35"]["Name"] = [[AntiCornerLeft]];


-- NovaHub.Window.Tabs.AntiCornerTop
NovaHub["36"] = Instance.new("Frame", NovaHub["33"]);
NovaHub["36"]["BorderSizePixel"] = 0;
NovaHub["36"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
NovaHub["36"]["Size"] = UDim2.new(1, 0, 0, 5);
NovaHub["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["36"]["Name"] = [[AntiCornerTop]];


-- NovaHub.Window.Tabs.NoObjectFoundText
NovaHub["37"] = Instance.new("TextLabel", NovaHub["33"]);
NovaHub["37"]["TextWrapped"] = true;
NovaHub["37"]["Interactable"] = false;
NovaHub["37"]["BorderSizePixel"] = 0;
NovaHub["37"]["TextSize"] = 14;
NovaHub["37"]["TextScaled"] = true;
NovaHub["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["37"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["37"]["TextColor3"] = Color3.fromRGB(135, 140, 150);
NovaHub["37"]["BackgroundTransparency"] = 1;
NovaHub["37"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["37"]["Size"] = UDim2.new(1, 0, 0, 16);
NovaHub["37"]["Visible"] = false;
NovaHub["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["37"]["Text"] = [[This tab is empty :(]];
NovaHub["37"]["Name"] = [[NoObjectFoundText]];
NovaHub["37"]["Position"] = UDim2.new(0.5, 0, 0.45, 0);


-- NovaHub.Window.NotificationFrame
NovaHub["38"] = Instance.new("Frame", NovaHub["2"]);
NovaHub["38"]["BorderSizePixel"] = 0;
NovaHub["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["38"]["ClipsDescendants"] = true;
NovaHub["38"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["38"]["Name"] = [[NotificationFrame]];
NovaHub["38"]["BackgroundTransparency"] = 1;


-- NovaHub.Window.NotificationFrame.NotificationList
NovaHub["39"] = Instance.new("Frame", NovaHub["38"]);
NovaHub["39"]["ZIndex"] = 5;
NovaHub["39"]["BorderSizePixel"] = 0;
NovaHub["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["39"]["AnchorPoint"] = Vector2.new(0.5, 0);
NovaHub["39"]["ClipsDescendants"] = true;
NovaHub["39"]["Size"] = UDim2.new(0, 630, 1, -35);
NovaHub["39"]["Position"] = UDim2.new(1, 0, 0, 35);
NovaHub["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["39"]["Name"] = [[NotificationList]];
NovaHub["39"]["BackgroundTransparency"] = 1;


-- NovaHub.Window.NotificationFrame.NotificationList.UIListLayout
NovaHub["3a"] = Instance.new("UIListLayout", NovaHub["39"]);
NovaHub["3a"]["Padding"] = UDim.new(0, 12);
NovaHub["3a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Window.NotificationFrame.NotificationList.UIPadding
NovaHub["3b"] = Instance.new("UIPadding", NovaHub["39"]);
NovaHub["3b"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["3b"]["PaddingRight"] = UDim.new(0, 40);
NovaHub["3b"]["PaddingLeft"] = UDim.new(0, 40);


-- NovaHub.Window.DarkOverlay
NovaHub["3c"] = Instance.new("Frame", NovaHub["2"]);
NovaHub["3c"]["Visible"] = false;
NovaHub["3c"]["BorderSizePixel"] = 0;
NovaHub["3c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["3c"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["3c"]["Name"] = [[DarkOverlay]];
NovaHub["3c"]["BackgroundTransparency"] = 0.6;


-- NovaHub.Window.DarkOverlay.UICorner
NovaHub["3d"] = Instance.new("UICorner", NovaHub["3c"]);
NovaHub["3d"]["CornerRadius"] = UDim.new(0, 10);


-- NovaHub.Library
NovaHub["3e"] = Instance.new("ModuleScript", NovaHub["1"]);
NovaHub["3e"]["Name"] = [[Library]];


-- NovaHub.Library.IconModule
NovaHub["3f"] = Instance.new("ModuleScript", NovaHub["3e"]);
NovaHub["3f"]["Name"] = [[IconModule]];


-- NovaHub.Library.IconModule.Lucide
NovaHub["40"] = Instance.new("ModuleScript", NovaHub["3f"]);
NovaHub["40"]["Name"] = [[Lucide]];


-- NovaHub.Templates
NovaHub["41"] = Instance.new("Folder", NovaHub["1"]);
NovaHub["41"]["Name"] = [[Templates]];


-- NovaHub.Templates.Divider
NovaHub["42"] = Instance.new("Frame", NovaHub["41"]);
NovaHub["42"]["Visible"] = false;
NovaHub["42"]["BorderSizePixel"] = 0;
NovaHub["42"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["42"]["Size"] = UDim2.new(1, 0, 0, 1);
NovaHub["42"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["42"]["Name"] = [[Divider]];


-- NovaHub.Templates.Tab
NovaHub["43"] = Instance.new("ScrollingFrame", NovaHub["41"]);
NovaHub["43"]["Visible"] = false;
NovaHub["43"]["Active"] = true;
NovaHub["43"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
NovaHub["43"]["BorderSizePixel"] = 0;
NovaHub["43"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
NovaHub["43"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
NovaHub["43"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
NovaHub["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["43"]["Name"] = [[Tab]];
NovaHub["43"]["Selectable"] = false;
NovaHub["43"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
NovaHub["43"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
NovaHub["43"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["43"]["ScrollBarImageColor3"] = Color3.fromRGB(99, 106, 122);
NovaHub["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["43"]["ScrollBarThickness"] = 5;
NovaHub["43"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.Tab.UIListLayout
NovaHub["44"] = Instance.new("UIListLayout", NovaHub["43"]);
NovaHub["44"]["Padding"] = UDim.new(0, 15);
NovaHub["44"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.Tab.UIPadding
NovaHub["45"] = Instance.new("UIPadding", NovaHub["43"]);
NovaHub["45"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["45"]["PaddingRight"] = UDim.new(0, 14);
NovaHub["45"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["45"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.TabButton
NovaHub["46"] = Instance.new("ImageButton", NovaHub["41"]);
NovaHub["46"]["BorderSizePixel"] = 0;
NovaHub["46"]["AutoButtonColor"] = false;
NovaHub["46"]["Visible"] = false;
NovaHub["46"]["BackgroundTransparency"] = 1;
NovaHub["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["46"]["Selectable"] = false;
NovaHub["46"]["Size"] = UDim2.new(1, 0, 0, 36);
NovaHub["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["46"]["Name"] = [[TabButton]];


-- NovaHub.Templates.TabButton.ImageButton
NovaHub["47"] = Instance.new("ImageButton", NovaHub["46"]);
NovaHub["47"]["BorderSizePixel"] = 0;
NovaHub["47"]["ImageTransparency"] = 0.5;
NovaHub["47"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["47"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["47"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["47"]["Image"] = [[rbxassetid://113216930555884]];
NovaHub["47"]["Size"] = UDim2.new(0, 20, 0, 20);
NovaHub["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["47"]["Position"] = UDim2.new(0, 12, 0, 18);


-- NovaHub.Templates.TabButton.ImageButton.UIAspectRatioConstraint
NovaHub["48"] = Instance.new("UIAspectRatioConstraint", NovaHub["47"]);



-- NovaHub.Templates.TabButton.TextLabel
NovaHub["49"] = Instance.new("TextLabel", NovaHub["46"]);
NovaHub["49"]["TextWrapped"] = true;
NovaHub["49"]["BorderSizePixel"] = 0;
NovaHub["49"]["TextSize"] = 14;
NovaHub["49"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["49"]["TextTransparency"] = 0.5;
NovaHub["49"]["TextScaled"] = true;
NovaHub["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["49"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["49"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["49"]["BackgroundTransparency"] = 1;
NovaHub["49"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["49"]["Size"] = UDim2.new(0, 103, 0, 16);
NovaHub["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["49"]["Text"] = [[]];
NovaHub["49"]["Position"] = UDim2.new(0, 42, 0.5, 0);


-- NovaHub.Templates.TabButton.Bar
NovaHub["4a"] = Instance.new("Frame", NovaHub["46"]);
NovaHub["4a"]["BorderSizePixel"] = 0;
NovaHub["4a"]["BackgroundColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["4a"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["4a"]["Size"] = UDim2.new(0, 5, 0, 0);
NovaHub["4a"]["Position"] = UDim2.new(0, 8, 0, 18);
NovaHub["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["4a"]["Name"] = [[Bar]];
NovaHub["4a"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.TabButton.Bar.UICorner
NovaHub["4b"] = Instance.new("UICorner", NovaHub["4a"]);
NovaHub["4b"]["CornerRadius"] = UDim.new(0, 100);


-- NovaHub.Templates.Button
NovaHub["4c"] = Instance.new("ImageButton", NovaHub["41"]);
NovaHub["4c"]["BorderSizePixel"] = 0;
NovaHub["4c"]["AutoButtonColor"] = false;
NovaHub["4c"]["Visible"] = false;
NovaHub["4c"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["4c"]["Selectable"] = false;
NovaHub["4c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["4c"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["4c"]["Name"] = [[Button]];
NovaHub["4c"]["Position"] = UDim2.new(0, 0, 0.384, 0);


-- NovaHub.Templates.Button.UICorner
NovaHub["4d"] = Instance.new("UICorner", NovaHub["4c"]);
NovaHub["4d"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.Button.Frame
NovaHub["4e"] = Instance.new("Frame", NovaHub["4c"]);
NovaHub["4e"]["BorderSizePixel"] = 0;
NovaHub["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["4e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["4e"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["4e"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.Button.Frame.UIListLayout
NovaHub["4f"] = Instance.new("UIListLayout", NovaHub["4e"]);
NovaHub["4f"]["Padding"] = UDim.new(0, 5);
NovaHub["4f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.Button.Frame.UIPadding
NovaHub["50"] = Instance.new("UIPadding", NovaHub["4e"]);
NovaHub["50"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["50"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["50"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["50"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.Button.Frame.Title
NovaHub["51"] = Instance.new("TextLabel", NovaHub["4e"]);
NovaHub["51"]["TextWrapped"] = true;
NovaHub["51"]["Interactable"] = false;
NovaHub["51"]["BorderSizePixel"] = 0;
NovaHub["51"]["TextSize"] = 16;
NovaHub["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["51"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["51"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["51"]["BackgroundTransparency"] = 1;
NovaHub["51"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["51"]["Text"] = [[Button]];
NovaHub["51"]["Name"] = [[Title]];


-- NovaHub.Templates.Button.Frame.Title.ClickIcon
NovaHub["52"] = Instance.new("ImageButton", NovaHub["51"]);
NovaHub["52"]["BorderSizePixel"] = 0;
NovaHub["52"]["AutoButtonColor"] = false;
NovaHub["52"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["52"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["52"]["AnchorPoint"] = Vector2.new(1, 0.5);
NovaHub["52"]["Image"] = [[rbxassetid://91877599529856]];
NovaHub["52"]["Size"] = UDim2.new(0, 23, 0, 23);
NovaHub["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["52"]["Name"] = [[ClickIcon]];
NovaHub["52"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- NovaHub.Templates.Button.Frame.Description
NovaHub["53"] = Instance.new("TextLabel", NovaHub["4e"]);
NovaHub["53"]["TextWrapped"] = true;
NovaHub["53"]["Interactable"] = false;
NovaHub["53"]["BorderSizePixel"] = 0;
NovaHub["53"]["TextSize"] = 16;
NovaHub["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["53"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["53"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["53"]["BackgroundTransparency"] = 1;
NovaHub["53"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["53"]["Visible"] = false;
NovaHub["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["53"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
NovaHub["53"]["LayoutOrder"] = 1;
NovaHub["53"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["53"]["Name"] = [[Description]];


-- NovaHub.Templates.Button.Frame.UIGradient
NovaHub["54"] = Instance.new("UIGradient", NovaHub["4e"]);
NovaHub["54"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.Button.Frame.UIGradient
NovaHub["55"] = Instance.new("UIGradient", NovaHub["4e"]);
NovaHub["55"]["Enabled"] = false;
NovaHub["55"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.Button.Frame.UIGradient
NovaHub["56"] = Instance.new("UIGradient", NovaHub["4e"]);
NovaHub["56"]["Enabled"] = false;
NovaHub["56"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.Button.Frame.UICorner
NovaHub["57"] = Instance.new("UICorner", NovaHub["4e"]);
NovaHub["57"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.Button.UIStroke
NovaHub["58"] = Instance.new("UIStroke", NovaHub["4c"]);
NovaHub["58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["58"]["Thickness"] = 1.5;
NovaHub["58"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Paragraph
NovaHub["59"] = Instance.new("Frame", NovaHub["41"]);
NovaHub["59"]["Visible"] = false;
NovaHub["59"]["BorderSizePixel"] = 0;
NovaHub["59"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["59"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["59"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["59"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
NovaHub["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["59"]["Name"] = [[Paragraph]];


-- NovaHub.Templates.Paragraph.UICorner
NovaHub["5a"] = Instance.new("UICorner", NovaHub["59"]);
NovaHub["5a"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.Paragraph.UIStroke
NovaHub["5b"] = Instance.new("UIStroke", NovaHub["59"]);
NovaHub["5b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["5b"]["Thickness"] = 1.5;
NovaHub["5b"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Paragraph.Title
NovaHub["5c"] = Instance.new("TextLabel", NovaHub["59"]);
NovaHub["5c"]["TextWrapped"] = true;
NovaHub["5c"]["Interactable"] = false;
NovaHub["5c"]["BorderSizePixel"] = 0;
NovaHub["5c"]["TextSize"] = 16;
NovaHub["5c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["5c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
NovaHub["5c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["5c"]["BackgroundTransparency"] = 1;
NovaHub["5c"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["5c"]["Text"] = [[Title]];
NovaHub["5c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["5c"]["Name"] = [[Title]];


-- NovaHub.Templates.Paragraph.UIPadding
NovaHub["5d"] = Instance.new("UIPadding", NovaHub["59"]);
NovaHub["5d"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["5d"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["5d"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["5d"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.Paragraph.UIListLayout
NovaHub["5e"] = Instance.new("UIListLayout", NovaHub["59"]);
NovaHub["5e"]["Padding"] = UDim.new(0, 5);
NovaHub["5e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.Paragraph.Description
NovaHub["5f"] = Instance.new("TextLabel", NovaHub["59"]);
NovaHub["5f"]["TextWrapped"] = true;
NovaHub["5f"]["Interactable"] = false;
NovaHub["5f"]["BorderSizePixel"] = 0;
NovaHub["5f"]["TextSize"] = 16;
NovaHub["5f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["5f"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["5f"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["5f"]["BackgroundTransparency"] = 1;
NovaHub["5f"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["5f"]["Visible"] = false;
NovaHub["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["5f"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
NovaHub["5f"]["LayoutOrder"] = 1;
NovaHub["5f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["5f"]["Name"] = [[Description]];


-- NovaHub.Templates.Toggle
NovaHub["60"] = Instance.new("ImageButton", NovaHub["41"]);
NovaHub["60"]["BorderSizePixel"] = 0;
NovaHub["60"]["AutoButtonColor"] = false;
NovaHub["60"]["Visible"] = false;
NovaHub["60"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["60"]["Selectable"] = false;
NovaHub["60"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["60"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["60"]["Name"] = [[Toggle]];
NovaHub["60"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);


-- NovaHub.Templates.Toggle.UICorner
NovaHub["61"] = Instance.new("UICorner", NovaHub["60"]);
NovaHub["61"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.Toggle.UIStroke
NovaHub["62"] = Instance.new("UIStroke", NovaHub["60"]);
NovaHub["62"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["62"]["Thickness"] = 1.5;
NovaHub["62"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Toggle.UIPadding
NovaHub["63"] = Instance.new("UIPadding", NovaHub["60"]);
NovaHub["63"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["63"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["63"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["63"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.Toggle.UIListLayout
NovaHub["64"] = Instance.new("UIListLayout", NovaHub["60"]);
NovaHub["64"]["Padding"] = UDim.new(0, 5);
NovaHub["64"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.Toggle.Description
NovaHub["65"] = Instance.new("TextLabel", NovaHub["60"]);
NovaHub["65"]["TextWrapped"] = true;
NovaHub["65"]["Interactable"] = false;
NovaHub["65"]["BorderSizePixel"] = 0;
NovaHub["65"]["TextSize"] = 16;
NovaHub["65"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["65"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["65"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["65"]["BackgroundTransparency"] = 1;
NovaHub["65"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["65"]["Visible"] = false;
NovaHub["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["65"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
NovaHub["65"]["LayoutOrder"] = 1;
NovaHub["65"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["65"]["Name"] = [[Description]];


-- NovaHub.Templates.Toggle.Title
NovaHub["66"] = Instance.new("TextLabel", NovaHub["60"]);
NovaHub["66"]["TextWrapped"] = true;
NovaHub["66"]["BorderSizePixel"] = 0;
NovaHub["66"]["TextSize"] = 16;
NovaHub["66"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["66"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["66"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["66"]["BackgroundTransparency"] = 1;
NovaHub["66"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["66"]["Text"] = [[Toggle]];
NovaHub["66"]["Name"] = [[Title]];


-- NovaHub.Templates.Toggle.Title.Fill
NovaHub["67"] = Instance.new("ImageButton", NovaHub["66"]);
NovaHub["67"]["BorderSizePixel"] = 0;
NovaHub["67"]["AutoButtonColor"] = false;
NovaHub["67"]["BackgroundColor3"] = Color3.fromRGB(54, 57, 63);
NovaHub["67"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["67"]["AnchorPoint"] = Vector2.new(1, 0.5);
NovaHub["67"]["Size"] = UDim2.new(0, 45, 0, 25);
NovaHub["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["67"]["Name"] = [[Fill]];
NovaHub["67"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- NovaHub.Templates.Toggle.Title.Fill.UICorner
NovaHub["68"] = Instance.new("UICorner", NovaHub["67"]);
NovaHub["68"]["CornerRadius"] = UDim.new(100, 0);


-- NovaHub.Templates.Toggle.Title.Fill.Ball
NovaHub["69"] = Instance.new("ImageButton", NovaHub["67"]);
NovaHub["69"]["Active"] = false;
NovaHub["69"]["Interactable"] = false;
NovaHub["69"]["BorderSizePixel"] = 0;
NovaHub["69"]["AutoButtonColor"] = false;
NovaHub["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["69"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["69"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["69"]["Size"] = UDim2.new(0, 20, 0, 20);
NovaHub["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["69"]["Name"] = [[Ball]];
NovaHub["69"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- NovaHub.Templates.Toggle.Title.Fill.Ball.UICorner
NovaHub["6a"] = Instance.new("UICorner", NovaHub["69"]);
NovaHub["6a"]["CornerRadius"] = UDim.new(100, 0);


-- NovaHub.Templates.Toggle.Title.Fill.Ball.Icon
NovaHub["6b"] = Instance.new("ImageLabel", NovaHub["69"]);
NovaHub["6b"]["BorderSizePixel"] = 0;
NovaHub["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["6b"]["ImageColor3"] = Color3.fromRGB(54, 57, 63);
NovaHub["6b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["6b"]["Size"] = UDim2.new(1, -5, 1, -5);
NovaHub["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["6b"]["BackgroundTransparency"] = 1;
NovaHub["6b"]["Name"] = [[Icon]];
NovaHub["6b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- NovaHub.Templates.Toggle.Title.Fill.UIPadding
NovaHub["6c"] = Instance.new("UIPadding", NovaHub["67"]);
NovaHub["6c"]["PaddingTop"] = UDim.new(0, 2);
NovaHub["6c"]["PaddingRight"] = UDim.new(0, 2);
NovaHub["6c"]["PaddingLeft"] = UDim.new(0, 2);
NovaHub["6c"]["PaddingBottom"] = UDim.new(0, 2);


-- NovaHub.Templates.Notification
NovaHub["6d"] = Instance.new("Frame", NovaHub["41"]);
NovaHub["6d"]["Visible"] = false;
NovaHub["6d"]["BorderSizePixel"] = 0;
NovaHub["6d"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
NovaHub["6d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["6d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["6d"]["Size"] = UDim2.new(1, 0, 0, 65);
NovaHub["6d"]["Position"] = UDim2.new(0.8244, 0, 0.88221, 0);
NovaHub["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["6d"]["Name"] = [[Notification]];
NovaHub["6d"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.Notification.Items
NovaHub["6e"] = Instance.new("CanvasGroup", NovaHub["6d"]);
NovaHub["6e"]["ZIndex"] = 2;
NovaHub["6e"]["BorderSizePixel"] = 0;
NovaHub["6e"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
NovaHub["6e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["6e"]["Size"] = UDim2.new(0, 265, 0, 70);
NovaHub["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["6e"]["Name"] = [[Items]];


-- NovaHub.Templates.Notification.Items.Frame
NovaHub["6f"] = Instance.new("Frame", NovaHub["6e"]);
NovaHub["6f"]["BorderSizePixel"] = 0;
NovaHub["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["6f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["6f"]["Size"] = UDim2.new(0, 265, 0, 70);
NovaHub["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["6f"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.Notification.Items.Frame.UIListLayout
NovaHub["70"] = Instance.new("UIListLayout", NovaHub["6f"]);
NovaHub["70"]["Padding"] = UDim.new(0, 5);
NovaHub["70"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
NovaHub["70"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.Notification.Items.Frame.UIPadding
NovaHub["71"] = Instance.new("UIPadding", NovaHub["6f"]);
NovaHub["71"]["PaddingTop"] = UDim.new(0, 15);
NovaHub["71"]["PaddingLeft"] = UDim.new(0, 15);
NovaHub["71"]["PaddingBottom"] = UDim.new(0, 15);


-- NovaHub.Templates.Notification.Items.Frame.SubContent
NovaHub["72"] = Instance.new("TextLabel", NovaHub["6f"]);
NovaHub["72"]["TextWrapped"] = true;
NovaHub["72"]["BorderSizePixel"] = 0;
NovaHub["72"]["TextSize"] = 12;
NovaHub["72"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
NovaHub["72"]["TextColor3"] = Color3.fromRGB(181, 181, 181);
NovaHub["72"]["BackgroundTransparency"] = 1;
NovaHub["72"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["72"]["Size"] = UDim2.new(0, 218, 0, 10);
NovaHub["72"]["Visible"] = false;
NovaHub["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["72"]["Text"] = [[This is a notification]];
NovaHub["72"]["LayoutOrder"] = 1;
NovaHub["72"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["72"]["Name"] = [[SubContent]];
NovaHub["72"]["Position"] = UDim2.new(0, 0, 0, 19);


-- NovaHub.Templates.Notification.Items.Frame.SubContent.UIGradient
NovaHub["73"] = Instance.new("UIGradient", NovaHub["72"]);
NovaHub["73"]["Enabled"] = false;
NovaHub["73"]["Rotation"] = -90;
NovaHub["73"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- NovaHub.Templates.Notification.Items.Frame.Title
NovaHub["74"] = Instance.new("TextLabel", NovaHub["6f"]);
NovaHub["74"]["TextWrapped"] = true;
NovaHub["74"]["BorderSizePixel"] = 0;
NovaHub["74"]["TextSize"] = 16;
NovaHub["74"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["74"]["TextScaled"] = true;
NovaHub["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["74"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
NovaHub["74"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["74"]["BackgroundTransparency"] = 1;
NovaHub["74"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["74"]["Size"] = UDim2.new(0, 235, 0, 18);
NovaHub["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["74"]["Text"] = [[Title]];
NovaHub["74"]["Name"] = [[Title]];
NovaHub["74"]["Position"] = UDim2.new(0, 0, 0, 9);


-- NovaHub.Templates.Notification.Items.Frame.Title.Close
NovaHub["75"] = Instance.new("ImageButton", NovaHub["74"]);
NovaHub["75"]["BorderSizePixel"] = 0;
NovaHub["75"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["75"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["75"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["75"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["75"]["Image"] = [[rbxassetid://132453323679056]];
NovaHub["75"]["Size"] = UDim2.new(0.09706, 0, 1.33333, 0);
NovaHub["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["75"]["Name"] = [[Close]];
NovaHub["75"]["Position"] = UDim2.new(0.92, 0, 0.5, 0);


-- NovaHub.Templates.Notification.Items.Frame.Title.Close.UIAspectRatioConstraint
NovaHub["76"] = Instance.new("UIAspectRatioConstraint", NovaHub["75"]);



-- NovaHub.Templates.Notification.Items.Frame.Title.UIPadding
NovaHub["77"] = Instance.new("UIPadding", NovaHub["74"]);
NovaHub["77"]["PaddingLeft"] = UDim.new(0, 30);


-- NovaHub.Templates.Notification.Items.Frame.Title.Icon
NovaHub["78"] = Instance.new("ImageButton", NovaHub["74"]);
NovaHub["78"]["BorderSizePixel"] = 0;
NovaHub["78"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["78"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["78"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["78"]["Image"] = [[rbxassetid://92049322344253]];
NovaHub["78"]["Size"] = UDim2.new(0.09706, 0, 1.33333, 0);
NovaHub["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["78"]["Name"] = [[Icon]];
NovaHub["78"]["Position"] = UDim2.new(0, -30, 0.5, 0);


-- NovaHub.Templates.Notification.Items.Frame.Title.Icon.UIAspectRatioConstraint
NovaHub["79"] = Instance.new("UIAspectRatioConstraint", NovaHub["78"]);



-- NovaHub.Templates.Notification.Items.Frame.Content
NovaHub["7a"] = Instance.new("TextLabel", NovaHub["6f"]);
NovaHub["7a"]["TextWrapped"] = true;
NovaHub["7a"]["BorderSizePixel"] = 0;
NovaHub["7a"]["TextSize"] = 16;
NovaHub["7a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["7a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["7a"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["7a"]["BackgroundTransparency"] = 1;
NovaHub["7a"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["7a"]["Size"] = UDim2.new(0, 218, 0, 10);
NovaHub["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["7a"]["Text"] = [[Content]];
NovaHub["7a"]["LayoutOrder"] = 2;
NovaHub["7a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["7a"]["Name"] = [[Content]];
NovaHub["7a"]["Position"] = UDim2.new(0, 0, 0, 19);


-- NovaHub.Templates.Notification.Items.Frame.Content.UIGradient
NovaHub["7b"] = Instance.new("UIGradient", NovaHub["7a"]);
NovaHub["7b"]["Enabled"] = false;
NovaHub["7b"]["Rotation"] = -90;
NovaHub["7b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(3, 100, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 255, 226))};


-- NovaHub.Templates.Notification.Items.TimerBarFill
NovaHub["7c"] = Instance.new("Frame", NovaHub["6e"]);
NovaHub["7c"]["BorderSizePixel"] = 0;
NovaHub["7c"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["7c"]["AnchorPoint"] = Vector2.new(0, 1);
NovaHub["7c"]["Size"] = UDim2.new(1, 0, 0, 5);
NovaHub["7c"]["Position"] = UDim2.new(0, 0, 1, 0);
NovaHub["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["7c"]["Name"] = [[TimerBarFill]];
NovaHub["7c"]["BackgroundTransparency"] = 0.7;


-- NovaHub.Templates.Notification.Items.TimerBarFill.UICorner
NovaHub["7d"] = Instance.new("UICorner", NovaHub["7c"]);



-- NovaHub.Templates.Notification.Items.TimerBarFill.Bar
NovaHub["7e"] = Instance.new("Frame", NovaHub["7c"]);
NovaHub["7e"]["BorderSizePixel"] = 0;
NovaHub["7e"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["7e"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["7e"]["Name"] = [[Bar]];


-- NovaHub.Templates.Notification.Items.TimerBarFill.Bar.UICorner
NovaHub["7f"] = Instance.new("UICorner", NovaHub["7e"]);



-- NovaHub.Templates.Notification.Items.UIStroke
NovaHub["80"] = Instance.new("UIStroke", NovaHub["6e"]);
NovaHub["80"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["80"]["Thickness"] = 1.5;
NovaHub["80"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Notification.Items.UICorner
NovaHub["81"] = Instance.new("UICorner", NovaHub["6e"]);



-- NovaHub.Templates.Slider
NovaHub["82"] = Instance.new("Frame", NovaHub["41"]);
NovaHub["82"]["Visible"] = false;
NovaHub["82"]["BorderSizePixel"] = 0;
NovaHub["82"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["82"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["82"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["82"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
NovaHub["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["82"]["Name"] = [[Slider]];


-- NovaHub.Templates.Slider.UICorner
NovaHub["83"] = Instance.new("UICorner", NovaHub["82"]);
NovaHub["83"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.Slider.UIStroke
NovaHub["84"] = Instance.new("UIStroke", NovaHub["82"]);
NovaHub["84"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["84"]["Thickness"] = 1.5;
NovaHub["84"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Slider.Title
NovaHub["85"] = Instance.new("TextLabel", NovaHub["82"]);
NovaHub["85"]["TextWrapped"] = true;
NovaHub["85"]["Interactable"] = false;
NovaHub["85"]["BorderSizePixel"] = 0;
NovaHub["85"]["TextSize"] = 16;
NovaHub["85"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["85"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
NovaHub["85"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["85"]["BackgroundTransparency"] = 1;
NovaHub["85"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["85"]["Text"] = [[Slider]];
NovaHub["85"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["85"]["Name"] = [[Title]];


-- NovaHub.Templates.Slider.UIPadding
NovaHub["86"] = Instance.new("UIPadding", NovaHub["82"]);
NovaHub["86"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["86"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["86"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["86"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.Slider.UIListLayout
NovaHub["87"] = Instance.new("UIListLayout", NovaHub["82"]);
NovaHub["87"]["Padding"] = UDim.new(0, 5);
NovaHub["87"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.Slider.Description
NovaHub["88"] = Instance.new("TextLabel", NovaHub["82"]);
NovaHub["88"]["TextWrapped"] = true;
NovaHub["88"]["Interactable"] = false;
NovaHub["88"]["BorderSizePixel"] = 0;
NovaHub["88"]["TextSize"] = 16;
NovaHub["88"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["88"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["88"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["88"]["BackgroundTransparency"] = 1;
NovaHub["88"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["88"]["Visible"] = false;
NovaHub["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["88"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
NovaHub["88"]["LayoutOrder"] = 1;
NovaHub["88"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["88"]["Name"] = [[Description]];


-- NovaHub.Templates.Slider.SliderFrame
NovaHub["89"] = Instance.new("Frame", NovaHub["82"]);
NovaHub["89"]["ZIndex"] = 0;
NovaHub["89"]["BorderSizePixel"] = 0;
NovaHub["89"]["Size"] = UDim2.new(1, 0, 0, 25);
NovaHub["89"]["Name"] = [[SliderFrame]];
NovaHub["89"]["LayoutOrder"] = 2;
NovaHub["89"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.Slider.SliderFrame.Frame
NovaHub["8a"] = Instance.new("Frame", NovaHub["89"]);
NovaHub["8a"]["ZIndex"] = 0;
NovaHub["8a"]["BorderSizePixel"] = 0;
NovaHub["8a"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["8a"]["Size"] = UDim2.new(1, 0, 0, 20);
NovaHub["8a"]["Position"] = UDim2.new(0, 0, 0.5, 0);
NovaHub["8a"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.Slider.SliderFrame.Frame.DropShadow
NovaHub["8b"] = Instance.new("ImageLabel", NovaHub["8a"]);
NovaHub["8b"]["ZIndex"] = 0;
NovaHub["8b"]["BorderSizePixel"] = 0;
NovaHub["8b"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
NovaHub["8b"]["ScaleType"] = Enum.ScaleType.Slice;
NovaHub["8b"]["ImageTransparency"] = 0.75;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["8b"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["8b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["8b"]["Image"] = [[rbxassetid://6014261993]];
NovaHub["8b"]["Size"] = UDim2.new(1, 25, 1, 25);
NovaHub["8b"]["BackgroundTransparency"] = 1;
NovaHub["8b"]["Name"] = [[DropShadow]];
NovaHub["8b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider
NovaHub["8c"] = Instance.new("CanvasGroup", NovaHub["8a"]);
NovaHub["8c"]["BorderSizePixel"] = 0;
NovaHub["8c"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["8c"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["8c"]["Name"] = [[Slider]];


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.UICorner
NovaHub["8d"] = Instance.new("UICorner", NovaHub["8c"]);
NovaHub["8d"]["CornerRadius"] = UDim.new(0, 5);


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.UIStroke
NovaHub["8e"] = Instance.new("UIStroke", NovaHub["8c"]);
NovaHub["8e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["8e"]["Thickness"] = 1.5;
NovaHub["8e"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.UIPadding
NovaHub["8f"] = Instance.new("UIPadding", NovaHub["8c"]);
NovaHub["8f"]["PaddingTop"] = UDim.new(0, 2);
NovaHub["8f"]["PaddingRight"] = UDim.new(0, 2);
NovaHub["8f"]["PaddingLeft"] = UDim.new(0, 2);
NovaHub["8f"]["PaddingBottom"] = UDim.new(0, 2);


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.Trigger
NovaHub["90"] = Instance.new("TextButton", NovaHub["8c"]);
NovaHub["90"]["BorderSizePixel"] = 0;
NovaHub["90"]["TextSize"] = 14;
NovaHub["90"]["AutoButtonColor"] = false;
NovaHub["90"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["90"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
NovaHub["90"]["BackgroundTransparency"] = 1;
NovaHub["90"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["90"]["Text"] = [[]];
NovaHub["90"]["Name"] = [[Trigger]];


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.Fill
NovaHub["91"] = Instance.new("ImageButton", NovaHub["8c"]);
NovaHub["91"]["Active"] = false;
NovaHub["91"]["Interactable"] = false;
NovaHub["91"]["BorderSizePixel"] = 0;
NovaHub["91"]["AutoButtonColor"] = false;
NovaHub["91"]["BackgroundTransparency"] = 1;
NovaHub["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["91"]["Selectable"] = false;
NovaHub["91"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["91"]["Size"] = UDim2.new(0, 0, 1, 0);
NovaHub["91"]["ClipsDescendants"] = true;
NovaHub["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["91"]["Name"] = [[Fill]];
NovaHub["91"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.UICorner
NovaHub["92"] = Instance.new("UICorner", NovaHub["91"]);
NovaHub["92"]["CornerRadius"] = UDim.new(0, 4);


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.UIStroke
NovaHub["93"] = Instance.new("UIStroke", NovaHub["91"]);
NovaHub["93"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["93"]["Thickness"] = 1.5;
NovaHub["93"]["Color"] = Color3.fromRGB(11, 136, 214);


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient
NovaHub["94"] = Instance.new("ImageButton", NovaHub["91"]);
NovaHub["94"]["Active"] = false;
NovaHub["94"]["Interactable"] = false;
NovaHub["94"]["BorderSizePixel"] = 0;
NovaHub["94"]["AutoButtonColor"] = false;
NovaHub["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["94"]["Selectable"] = false;
NovaHub["94"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["94"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["94"]["Name"] = [[BackgroundGradient]];
NovaHub["94"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UICorner
NovaHub["95"] = Instance.new("UICorner", NovaHub["94"]);
NovaHub["95"]["CornerRadius"] = UDim.new(0, 4);


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UIGradient
NovaHub["96"] = Instance.new("UIGradient", NovaHub["94"]);
NovaHub["96"]["Enabled"] = false;
NovaHub["96"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UIGradient
NovaHub["97"] = Instance.new("UIGradient", NovaHub["94"]);
NovaHub["97"]["Enabled"] = false;
NovaHub["97"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UIGradient
NovaHub["98"] = Instance.new("UIGradient", NovaHub["94"]);
NovaHub["98"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.Slider.SliderFrame.Frame.ValueText
NovaHub["99"] = Instance.new("TextLabel", NovaHub["8a"]);
NovaHub["99"]["TextWrapped"] = true;
NovaHub["99"]["Interactable"] = false;
NovaHub["99"]["ZIndex"] = 2;
NovaHub["99"]["BorderSizePixel"] = 0;
NovaHub["99"]["TextSize"] = 14;
NovaHub["99"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["99"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["99"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
NovaHub["99"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["99"]["BackgroundTransparency"] = 1;
NovaHub["99"]["RichText"] = true;
NovaHub["99"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["99"]["Size"] = UDim2.new(1, -15, 1, 0);
NovaHub["99"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["99"]["Text"] = [[0]];
NovaHub["99"]["Name"] = [[ValueText]];
NovaHub["99"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- NovaHub.Templates.TextBox
NovaHub["9a"] = Instance.new("Frame", NovaHub["41"]);
NovaHub["9a"]["Visible"] = false;
NovaHub["9a"]["BorderSizePixel"] = 0;
NovaHub["9a"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["9a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["9a"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["9a"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
NovaHub["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["9a"]["Name"] = [[TextBox]];


-- NovaHub.Templates.TextBox.UICorner
NovaHub["9b"] = Instance.new("UICorner", NovaHub["9a"]);
NovaHub["9b"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.TextBox.UIStroke
NovaHub["9c"] = Instance.new("UIStroke", NovaHub["9a"]);
NovaHub["9c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["9c"]["Thickness"] = 1.5;
NovaHub["9c"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.TextBox.Title
NovaHub["9d"] = Instance.new("TextLabel", NovaHub["9a"]);
NovaHub["9d"]["TextWrapped"] = true;
NovaHub["9d"]["Interactable"] = false;
NovaHub["9d"]["BorderSizePixel"] = 0;
NovaHub["9d"]["TextSize"] = 16;
NovaHub["9d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["9d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["9d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
NovaHub["9d"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["9d"]["BackgroundTransparency"] = 1;
NovaHub["9d"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["9d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["9d"]["Text"] = [[Input Textbox]];
NovaHub["9d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["9d"]["Name"] = [[Title]];


-- NovaHub.Templates.TextBox.UIPadding
NovaHub["9e"] = Instance.new("UIPadding", NovaHub["9a"]);
NovaHub["9e"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["9e"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["9e"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["9e"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.TextBox.UIListLayout
NovaHub["9f"] = Instance.new("UIListLayout", NovaHub["9a"]);
NovaHub["9f"]["Padding"] = UDim.new(0, 10);
NovaHub["9f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.TextBox.Description
NovaHub["a0"] = Instance.new("TextLabel", NovaHub["9a"]);
NovaHub["a0"]["TextWrapped"] = true;
NovaHub["a0"]["Interactable"] = false;
NovaHub["a0"]["BorderSizePixel"] = 0;
NovaHub["a0"]["TextSize"] = 16;
NovaHub["a0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["a0"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["a0"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["a0"]["BackgroundTransparency"] = 1;
NovaHub["a0"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["a0"]["Visible"] = false;
NovaHub["a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["a0"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
NovaHub["a0"]["LayoutOrder"] = 1;
NovaHub["a0"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["a0"]["Name"] = [[Description]];


-- NovaHub.Templates.TextBox.BoxFrame
NovaHub["a1"] = Instance.new("Frame", NovaHub["9a"]);
NovaHub["a1"]["ZIndex"] = 0;
NovaHub["a1"]["BorderSizePixel"] = 0;
NovaHub["a1"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["a1"]["Size"] = UDim2.new(1, 0, 0, 25);
NovaHub["a1"]["Name"] = [[BoxFrame]];
NovaHub["a1"]["LayoutOrder"] = 2;
NovaHub["a1"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.TextBox.BoxFrame.DropShadow
NovaHub["a2"] = Instance.new("ImageLabel", NovaHub["a1"]);
NovaHub["a2"]["ZIndex"] = 0;
NovaHub["a2"]["BorderSizePixel"] = 0;
NovaHub["a2"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
NovaHub["a2"]["ScaleType"] = Enum.ScaleType.Slice;
NovaHub["a2"]["ImageTransparency"] = 0.75;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["a2"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["a2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["a2"]["Image"] = [[rbxassetid://6014261993]];
NovaHub["a2"]["Size"] = UDim2.new(1, 35, 1, 30);
NovaHub["a2"]["BackgroundTransparency"] = 1;
NovaHub["a2"]["Name"] = [[DropShadow]];
NovaHub["a2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- NovaHub.Templates.TextBox.BoxFrame.Frame
NovaHub["a3"] = Instance.new("Frame", NovaHub["a1"]);
NovaHub["a3"]["BorderSizePixel"] = 0;
NovaHub["a3"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["a3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["a3"]["Size"] = UDim2.new(1, 0, 0, 25);
NovaHub["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- NovaHub.Templates.TextBox.BoxFrame.Frame.UICorner
NovaHub["a4"] = Instance.new("UICorner", NovaHub["a3"]);
NovaHub["a4"]["CornerRadius"] = UDim.new(0, 5);


-- NovaHub.Templates.TextBox.BoxFrame.Frame.UIStroke
NovaHub["a5"] = Instance.new("UIStroke", NovaHub["a3"]);
NovaHub["a5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["a5"]["Thickness"] = 1.5;
NovaHub["a5"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.TextBox.BoxFrame.Frame.UIListLayout
NovaHub["a6"] = Instance.new("UIListLayout", NovaHub["a3"]);
NovaHub["a6"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
NovaHub["a6"]["Padding"] = UDim.new(0, 5);
NovaHub["a6"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
NovaHub["a6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.TextBox.BoxFrame.Frame.TextBox
NovaHub["a7"] = Instance.new("TextBox", NovaHub["a3"]);
NovaHub["a7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["a7"]["PlaceholderColor3"] = Color3.fromRGB(140, 140, 140);
NovaHub["a7"]["BorderSizePixel"] = 0;
NovaHub["a7"]["TextWrapped"] = true;
NovaHub["a7"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
NovaHub["a7"]["TextSize"] = 14;
NovaHub["a7"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["a7"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["a7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["a7"]["ClipsDescendants"] = true;
NovaHub["a7"]["PlaceholderText"] = [[Input here...]];
NovaHub["a7"]["Size"] = UDim2.new(1, 0, 0, 25);
NovaHub["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["a7"]["Text"] = [[]];
NovaHub["a7"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.TextBox.BoxFrame.Frame.TextBox.UIPadding
NovaHub["a8"] = Instance.new("UIPadding", NovaHub["a7"]);
NovaHub["a8"]["PaddingTop"] = UDim.new(0, 5);
NovaHub["a8"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["a8"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["a8"]["PaddingBottom"] = UDim.new(0, 5);


-- NovaHub.Templates.Dropdown
NovaHub["a9"] = Instance.new("ImageButton", NovaHub["41"]);
NovaHub["a9"]["BorderSizePixel"] = 0;
NovaHub["a9"]["AutoButtonColor"] = false;
NovaHub["a9"]["Visible"] = false;
NovaHub["a9"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["a9"]["Selectable"] = false;
NovaHub["a9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["a9"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["a9"]["Name"] = [[Dropdown]];
NovaHub["a9"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);


-- NovaHub.Templates.Dropdown.UICorner
NovaHub["aa"] = Instance.new("UICorner", NovaHub["a9"]);
NovaHub["aa"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.Dropdown.UIStroke
NovaHub["ab"] = Instance.new("UIStroke", NovaHub["a9"]);
NovaHub["ab"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["ab"]["Thickness"] = 1.5;
NovaHub["ab"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Dropdown.Title
NovaHub["ac"] = Instance.new("TextLabel", NovaHub["a9"]);
NovaHub["ac"]["TextWrapped"] = true;
NovaHub["ac"]["BorderSizePixel"] = 0;
NovaHub["ac"]["TextSize"] = 16;
NovaHub["ac"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["ac"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["ac"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["ac"]["BackgroundTransparency"] = 1;
NovaHub["ac"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["ac"]["Text"] = [[Dropdown]];
NovaHub["ac"]["Name"] = [[Title]];
NovaHub["ac"]["Position"] = UDim2.new(0.03135, 0, 0, 0);


-- NovaHub.Templates.Dropdown.Title.ClickIcon
NovaHub["ad"] = Instance.new("ImageButton", NovaHub["ac"]);
NovaHub["ad"]["BorderSizePixel"] = 0;
NovaHub["ad"]["AutoButtonColor"] = false;
NovaHub["ad"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["ad"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["ad"]["AnchorPoint"] = Vector2.new(1, 0.5);
NovaHub["ad"]["Image"] = [[rbxassetid://77563793724007]];
NovaHub["ad"]["Size"] = UDim2.new(0, 23, 0, 23);
NovaHub["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["ad"]["Name"] = [[ClickIcon]];
NovaHub["ad"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- NovaHub.Templates.Dropdown.Title.BoxFrame
NovaHub["ae"] = Instance.new("ImageButton", NovaHub["ac"]);
NovaHub["ae"]["Active"] = false;
NovaHub["ae"]["BorderSizePixel"] = 0;
NovaHub["ae"]["BackgroundTransparency"] = 1;
NovaHub["ae"]["Selectable"] = false;
NovaHub["ae"]["ZIndex"] = 0;
NovaHub["ae"]["AnchorPoint"] = Vector2.new(1, 0.5);
NovaHub["ae"]["AutomaticSize"] = Enum.AutomaticSize.X;
NovaHub["ae"]["Size"] = UDim2.new(0, 20, 0, 20);
NovaHub["ae"]["Name"] = [[BoxFrame]];
NovaHub["ae"]["Position"] = UDim2.new(1, -33, 0.5, 0);


-- NovaHub.Templates.Dropdown.Title.BoxFrame.DropShadow
NovaHub["af"] = Instance.new("ImageLabel", NovaHub["ae"]);
NovaHub["af"]["Interactable"] = false;
NovaHub["af"]["ZIndex"] = 0;
NovaHub["af"]["BorderSizePixel"] = 0;
NovaHub["af"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
NovaHub["af"]["ScaleType"] = Enum.ScaleType.Slice;
NovaHub["af"]["ImageTransparency"] = 0.75;
NovaHub["af"]["AutomaticSize"] = Enum.AutomaticSize.X;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["af"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["af"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["af"]["Image"] = [[rbxassetid://6014261993]];
NovaHub["af"]["Size"] = UDim2.new(1, 28, 1, 28);
NovaHub["af"]["Visible"] = false;
NovaHub["af"]["BackgroundTransparency"] = 1;
NovaHub["af"]["Name"] = [[DropShadow]];
NovaHub["af"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- NovaHub.Templates.Dropdown.Title.BoxFrame.Trigger
NovaHub["b0"] = Instance.new("ImageButton", NovaHub["ae"]);
NovaHub["b0"]["BorderSizePixel"] = 0;
NovaHub["b0"]["AutoButtonColor"] = false;
NovaHub["b0"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["b0"]["Selectable"] = false;
NovaHub["b0"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["b0"]["AutomaticSize"] = Enum.AutomaticSize.X;
NovaHub["b0"]["Size"] = UDim2.new(0, 20, 0, 20);
NovaHub["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["b0"]["Name"] = [[Trigger]];
NovaHub["b0"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- NovaHub.Templates.Dropdown.Title.BoxFrame.Trigger.UICorner
NovaHub["b1"] = Instance.new("UICorner", NovaHub["b0"]);
NovaHub["b1"]["CornerRadius"] = UDim.new(0, 5);


-- NovaHub.Templates.Dropdown.Title.BoxFrame.Trigger.UIStroke
NovaHub["b2"] = Instance.new("UIStroke", NovaHub["b0"]);
NovaHub["b2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["b2"]["Thickness"] = 1.5;
NovaHub["b2"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Dropdown.Title.BoxFrame.Trigger.UIListLayout
NovaHub["b3"] = Instance.new("UIListLayout", NovaHub["b0"]);
NovaHub["b3"]["Padding"] = UDim.new(0, 5);
NovaHub["b3"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
NovaHub["b3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.Dropdown.Title.BoxFrame.Trigger.Title
NovaHub["b4"] = Instance.new("TextLabel", NovaHub["b0"]);
NovaHub["b4"]["TextWrapped"] = true;
NovaHub["b4"]["Interactable"] = false;
NovaHub["b4"]["BorderSizePixel"] = 0;
NovaHub["b4"]["TextSize"] = 16;
NovaHub["b4"]["TextScaled"] = true;
NovaHub["b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["b4"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["b4"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["b4"]["BackgroundTransparency"] = 1;
NovaHub["b4"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["b4"]["Size"] = UDim2.new(0, 15, 0, 14);
NovaHub["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["b4"]["Text"] = [[]];
NovaHub["b4"]["AutomaticSize"] = Enum.AutomaticSize.X;
NovaHub["b4"]["Name"] = [[Title]];
NovaHub["b4"]["Position"] = UDim2.new(-0.00345, 0, 0.5, 0);


-- NovaHub.Templates.Dropdown.Title.BoxFrame.Trigger.UIPadding
NovaHub["b5"] = Instance.new("UIPadding", NovaHub["b0"]);
NovaHub["b5"]["PaddingRight"] = UDim.new(0, 5);
NovaHub["b5"]["PaddingLeft"] = UDim.new(0, 5);


-- NovaHub.Templates.Dropdown.UIPadding
NovaHub["b6"] = Instance.new("UIPadding", NovaHub["a9"]);
NovaHub["b6"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["b6"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["b6"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["b6"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.Dropdown.UIListLayout
NovaHub["b7"] = Instance.new("UIListLayout", NovaHub["a9"]);
NovaHub["b7"]["Padding"] = UDim.new(0, 5);
NovaHub["b7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.Dropdown.Description
NovaHub["b8"] = Instance.new("TextLabel", NovaHub["a9"]);
NovaHub["b8"]["TextWrapped"] = true;
NovaHub["b8"]["Interactable"] = false;
NovaHub["b8"]["BorderSizePixel"] = 0;
NovaHub["b8"]["TextSize"] = 16;
NovaHub["b8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["b8"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["b8"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["b8"]["BackgroundTransparency"] = 1;
NovaHub["b8"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["b8"]["Visible"] = false;
NovaHub["b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["b8"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
NovaHub["b8"]["LayoutOrder"] = 1;
NovaHub["b8"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["b8"]["Name"] = [[Description]];


-- NovaHub.Templates.Dropdown.UIGradient
NovaHub["b9"] = Instance.new("UIGradient", NovaHub["a9"]);
NovaHub["b9"]["Enabled"] = false;
NovaHub["b9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.Dropdown.UIGradient
NovaHub["ba"] = Instance.new("UIGradient", NovaHub["a9"]);
NovaHub["ba"]["Enabled"] = false;
NovaHub["ba"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.Dropdown.UIGradient
NovaHub["bb"] = Instance.new("UIGradient", NovaHub["a9"]);
NovaHub["bb"]["Enabled"] = false;
NovaHub["bb"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.DropdownList
NovaHub["bc"] = Instance.new("Folder", NovaHub["41"]);
NovaHub["bc"]["Name"] = [[DropdownList]];


-- NovaHub.Templates.DropdownList.DropdownItems
NovaHub["bd"] = Instance.new("ScrollingFrame", NovaHub["bc"]);
NovaHub["bd"]["Visible"] = false;
NovaHub["bd"]["Active"] = true;
NovaHub["bd"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
NovaHub["bd"]["BorderSizePixel"] = 0;
NovaHub["bd"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
NovaHub["bd"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
NovaHub["bd"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
NovaHub["bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["bd"]["Name"] = [[DropdownItems]];
NovaHub["bd"]["Selectable"] = false;
NovaHub["bd"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
NovaHub["bd"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
NovaHub["bd"]["Size"] = UDim2.new(1, 0, 1, -50);
NovaHub["bd"]["ScrollBarImageColor3"] = Color3.fromRGB(99, 106, 122);
NovaHub["bd"]["Position"] = UDim2.new(0, 0, 0, 50);
NovaHub["bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["bd"]["ScrollBarThickness"] = 5;
NovaHub["bd"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.DropdownList.DropdownItems.UIListLayout
NovaHub["be"] = Instance.new("UIListLayout", NovaHub["bd"]);
NovaHub["be"]["Padding"] = UDim.new(0, 15);
NovaHub["be"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.DropdownList.DropdownItems.UIPadding
NovaHub["bf"] = Instance.new("UIPadding", NovaHub["bd"]);
NovaHub["bf"]["PaddingTop"] = UDim.new(0, 2);
NovaHub["bf"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["bf"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["bf"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.DropdownList.DropdownItemsSearch
NovaHub["c0"] = Instance.new("ScrollingFrame", NovaHub["bc"]);
NovaHub["c0"]["Visible"] = false;
NovaHub["c0"]["Active"] = true;
NovaHub["c0"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
NovaHub["c0"]["BorderSizePixel"] = 0;
NovaHub["c0"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
NovaHub["c0"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
NovaHub["c0"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
NovaHub["c0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["c0"]["Name"] = [[DropdownItemsSearch]];
NovaHub["c0"]["Selectable"] = false;
NovaHub["c0"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
NovaHub["c0"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
NovaHub["c0"]["Size"] = UDim2.new(1, 0, 1, -50);
NovaHub["c0"]["ScrollBarImageColor3"] = Color3.fromRGB(99, 106, 122);
NovaHub["c0"]["Position"] = UDim2.new(0, 0, 0, 50);
NovaHub["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["c0"]["ScrollBarThickness"] = 5;
NovaHub["c0"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.DropdownList.DropdownItemsSearch.UIListLayout
NovaHub["c1"] = Instance.new("UIListLayout", NovaHub["c0"]);
NovaHub["c1"]["Padding"] = UDim.new(0, 15);
NovaHub["c1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.DropdownList.DropdownItemsSearch.UIPadding
NovaHub["c2"] = Instance.new("UIPadding", NovaHub["c0"]);
NovaHub["c2"]["PaddingTop"] = UDim.new(0, 2);
NovaHub["c2"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["c2"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["c2"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.DropdownButton
NovaHub["c3"] = Instance.new("ImageButton", NovaHub["41"]);
NovaHub["c3"]["BorderSizePixel"] = 0;
NovaHub["c3"]["AutoButtonColor"] = false;
NovaHub["c3"]["Visible"] = false;
NovaHub["c3"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["c3"]["Selectable"] = false;
NovaHub["c3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["c3"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["c3"]["Name"] = [[DropdownButton]];
NovaHub["c3"]["Position"] = UDim2.new(0, 0, 0.384, 0);


-- NovaHub.Templates.DropdownButton.UICorner
NovaHub["c4"] = Instance.new("UICorner", NovaHub["c3"]);
NovaHub["c4"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.DropdownButton.Frame
NovaHub["c5"] = Instance.new("Frame", NovaHub["c3"]);
NovaHub["c5"]["BorderSizePixel"] = 0;
NovaHub["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["c5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["c5"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["c5"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.DropdownButton.Frame.UIListLayout
NovaHub["c6"] = Instance.new("UIListLayout", NovaHub["c5"]);
NovaHub["c6"]["Padding"] = UDim.new(0, 5);
NovaHub["c6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.DropdownButton.Frame.UIPadding
NovaHub["c7"] = Instance.new("UIPadding", NovaHub["c5"]);
NovaHub["c7"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["c7"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["c7"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["c7"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.DropdownButton.Frame.Title
NovaHub["c8"] = Instance.new("TextLabel", NovaHub["c5"]);
NovaHub["c8"]["TextWrapped"] = true;
NovaHub["c8"]["Interactable"] = false;
NovaHub["c8"]["BorderSizePixel"] = 0;
NovaHub["c8"]["TextSize"] = 16;
NovaHub["c8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["c8"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["c8"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["c8"]["BackgroundTransparency"] = 1;
NovaHub["c8"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["c8"]["Text"] = [[Button]];
NovaHub["c8"]["Name"] = [[Title]];


-- NovaHub.Templates.DropdownButton.Frame.Description
NovaHub["c9"] = Instance.new("TextLabel", NovaHub["c5"]);
NovaHub["c9"]["TextWrapped"] = true;
NovaHub["c9"]["Interactable"] = false;
NovaHub["c9"]["BorderSizePixel"] = 0;
NovaHub["c9"]["TextSize"] = 16;
NovaHub["c9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["c9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["c9"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["c9"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["c9"]["BackgroundTransparency"] = 1;
NovaHub["c9"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["c9"]["Visible"] = false;
NovaHub["c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["c9"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
NovaHub["c9"]["LayoutOrder"] = 1;
NovaHub["c9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["c9"]["Name"] = [[Description]];


-- NovaHub.Templates.DropdownButton.Frame.UIGradient
NovaHub["ca"] = Instance.new("UIGradient", NovaHub["c5"]);
NovaHub["ca"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.DropdownButton.Frame.UIGradient
NovaHub["cb"] = Instance.new("UIGradient", NovaHub["c5"]);
NovaHub["cb"]["Enabled"] = false;
NovaHub["cb"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.DropdownButton.Frame.UIGradient
NovaHub["cc"] = Instance.new("UIGradient", NovaHub["c5"]);
NovaHub["cc"]["Enabled"] = false;
NovaHub["cc"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.DropdownButton.Frame.UICorner
NovaHub["cd"] = Instance.new("UICorner", NovaHub["c5"]);
NovaHub["cd"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.DropdownButton.UIStroke
NovaHub["ce"] = Instance.new("UIStroke", NovaHub["c3"]);
NovaHub["ce"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["ce"]["Thickness"] = 1.5;
NovaHub["ce"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Code
NovaHub["cf"] = Instance.new("Frame", NovaHub["41"]);
NovaHub["cf"]["Visible"] = false;
NovaHub["cf"]["BorderSizePixel"] = 0;
NovaHub["cf"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["cf"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["cf"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["cf"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
NovaHub["cf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["cf"]["Name"] = [[Code]];


-- NovaHub.Templates.Code.UICorner
NovaHub["d0"] = Instance.new("UICorner", NovaHub["cf"]);
NovaHub["d0"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.Code.UIStroke
NovaHub["d1"] = Instance.new("UIStroke", NovaHub["cf"]);
NovaHub["d1"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["d1"]["Thickness"] = 1.5;
NovaHub["d1"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Code.Title
NovaHub["d2"] = Instance.new("TextLabel", NovaHub["cf"]);
NovaHub["d2"]["TextWrapped"] = true;
NovaHub["d2"]["Interactable"] = false;
NovaHub["d2"]["BorderSizePixel"] = 0;
NovaHub["d2"]["TextSize"] = 16;
NovaHub["d2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["d2"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
NovaHub["d2"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["d2"]["BackgroundTransparency"] = 1;
NovaHub["d2"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["d2"]["Text"] = [[Title]];
NovaHub["d2"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["d2"]["Name"] = [[Title]];


-- NovaHub.Templates.Code.UIPadding
NovaHub["d3"] = Instance.new("UIPadding", NovaHub["cf"]);
NovaHub["d3"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["d3"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["d3"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["d3"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.Code.UIListLayout
NovaHub["d4"] = Instance.new("UIListLayout", NovaHub["cf"]);
NovaHub["d4"]["Padding"] = UDim.new(0, 5);
NovaHub["d4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.Code.Code
NovaHub["d5"] = Instance.new("TextBox", NovaHub["cf"]);
NovaHub["d5"]["Name"] = [[Code]];
NovaHub["d5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["d5"]["BorderSizePixel"] = 0;
NovaHub["d5"]["TextEditable"] = false;
NovaHub["d5"]["TextWrapped"] = true;
NovaHub["d5"]["TextSize"] = 16;
NovaHub["d5"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["d5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["d5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["d5"]["Selectable"] = false;
NovaHub["d5"]["MultiLine"] = true;
NovaHub["d5"]["ClearTextOnFocus"] = false;
NovaHub["d5"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["d5"]["Text"] = [[print("Hello World!")]];
NovaHub["d5"]["LayoutOrder"] = 1;
NovaHub["d5"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.Section
NovaHub["d6"] = Instance.new("Frame", NovaHub["41"]);
NovaHub["d6"]["Visible"] = false;
NovaHub["d6"]["BorderSizePixel"] = 0;
NovaHub["d6"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["d6"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["d6"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["d6"]["Position"] = UDim2.new(0, 0, 0.43728, 0);
NovaHub["d6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["d6"]["Name"] = [[Section]];
NovaHub["d6"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert SelectionImageObject, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- NovaHub.Templates.Section.Button
NovaHub["d7"] = Instance.new("ImageButton", NovaHub["d6"]);
NovaHub["d7"]["BorderSizePixel"] = 0;
NovaHub["d7"]["AutoButtonColor"] = false;
NovaHub["d7"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["d7"]["Selectable"] = false;
NovaHub["d7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["d7"]["Size"] = UDim2.new(1, 0, 0, 35);
NovaHub["d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["d7"]["Name"] = [[Button]];


-- NovaHub.Templates.Section.Button.UICorner
NovaHub["d8"] = Instance.new("UICorner", NovaHub["d7"]);
NovaHub["d8"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.Section.Button.UIStroke
NovaHub["d9"] = Instance.new("UIStroke", NovaHub["d7"]);
NovaHub["d9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["d9"]["Thickness"] = 1.5;
NovaHub["d9"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Section.Button.Title
NovaHub["da"] = Instance.new("TextLabel", NovaHub["d7"]);
NovaHub["da"]["TextWrapped"] = true;
NovaHub["da"]["Interactable"] = false;
NovaHub["da"]["BorderSizePixel"] = 0;
NovaHub["da"]["TextSize"] = 16;
NovaHub["da"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["da"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["da"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["da"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["da"]["BackgroundTransparency"] = 1;
NovaHub["da"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["da"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["da"]["Text"] = [[Section]];
NovaHub["da"]["Name"] = [[Title]];


-- NovaHub.Templates.Section.Button.Title.Arrow
NovaHub["db"] = Instance.new("ImageButton", NovaHub["da"]);
NovaHub["db"]["BorderSizePixel"] = 0;
NovaHub["db"]["AutoButtonColor"] = false;
NovaHub["db"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["db"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["db"]["AnchorPoint"] = Vector2.new(1, 0.5);
NovaHub["db"]["Image"] = [[rbxassetid://120292618616139]];
NovaHub["db"]["Size"] = UDim2.new(0, 23, 0, 23);
NovaHub["db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["db"]["Name"] = [[Arrow]];
NovaHub["db"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- NovaHub.Templates.Section.Button.UIPadding
NovaHub["dc"] = Instance.new("UIPadding", NovaHub["d7"]);
NovaHub["dc"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["dc"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["dc"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["dc"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.Section.Button.UIListLayout
NovaHub["dd"] = Instance.new("UIListLayout", NovaHub["d7"]);
NovaHub["dd"]["Padding"] = UDim.new(0, 5);
NovaHub["dd"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.Section.Button.Description
NovaHub["de"] = Instance.new("TextLabel", NovaHub["d7"]);
NovaHub["de"]["TextWrapped"] = true;
NovaHub["de"]["Interactable"] = false;
NovaHub["de"]["BorderSizePixel"] = 0;
NovaHub["de"]["TextSize"] = 16;
NovaHub["de"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["de"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["de"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
NovaHub["de"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["de"]["BackgroundTransparency"] = 1;
NovaHub["de"]["Size"] = UDim2.new(1, 0, 0, 15);
NovaHub["de"]["Visible"] = false;
NovaHub["de"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["de"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
NovaHub["de"]["LayoutOrder"] = 1;
NovaHub["de"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["de"]["Name"] = [[Description]];


-- NovaHub.Templates.Section.Button.UIGradient
NovaHub["df"] = Instance.new("UIGradient", NovaHub["d7"]);
NovaHub["df"]["Enabled"] = false;
NovaHub["df"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.Section.Button.UIGradient
NovaHub["e0"] = Instance.new("UIGradient", NovaHub["d7"]);
NovaHub["e0"]["Enabled"] = false;
NovaHub["e0"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 1)};
NovaHub["e0"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.Section.Button.UIGradient
NovaHub["e1"] = Instance.new("UIGradient", NovaHub["d7"]);
NovaHub["e1"]["Enabled"] = false;
NovaHub["e1"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(0, 158, 255)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(0, 5, 255)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(0, 235, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 158, 255))};


-- NovaHub.Templates.Section.Button.UIStroke
NovaHub["e2"] = Instance.new("UIStroke", NovaHub["d7"]);
NovaHub["e2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["e2"]["Thickness"] = 1.5;
NovaHub["e2"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.Section.Frame
NovaHub["e3"] = Instance.new("Frame", NovaHub["d6"]);
NovaHub["e3"]["Visible"] = false;
NovaHub["e3"]["BorderSizePixel"] = 0;
NovaHub["e3"]["BackgroundColor3"] = Color3.fromRGB(207, 222, 255);
NovaHub["e3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["e3"]["Size"] = UDim2.new(1, 0, 0, 30);
NovaHub["e3"]["Position"] = UDim2.new(0, 0, 0, 35);
NovaHub["e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["e3"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.Section.Frame.UIListLayout
NovaHub["e4"] = Instance.new("UIListLayout", NovaHub["e3"]);
NovaHub["e4"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
NovaHub["e4"]["Padding"] = UDim.new(0, 10);
NovaHub["e4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.Section.Frame.UIPadding
NovaHub["e5"] = Instance.new("UIPadding", NovaHub["e3"]);
NovaHub["e5"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["e5"]["PaddingRight"] = UDim.new(0, 8);
NovaHub["e5"]["PaddingLeft"] = UDim.new(0, 8);


-- NovaHub.Templates.Section.Frame.Divider
NovaHub["e6"] = Instance.new("Frame", NovaHub["e3"]);
NovaHub["e6"]["BorderSizePixel"] = 0;
NovaHub["e6"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["e6"]["Size"] = UDim2.new(1, 0, 0, 3);
NovaHub["e6"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["e6"]["Name"] = [[Divider]];


-- NovaHub.Templates.DialogElements
NovaHub["e7"] = Instance.new("Folder", NovaHub["41"]);
NovaHub["e7"]["Name"] = [[DialogElements]];


-- NovaHub.Templates.DialogElements.DarkOverlayDialog
NovaHub["e8"] = Instance.new("Frame", NovaHub["e7"]);
NovaHub["e8"]["Visible"] = false;
NovaHub["e8"]["BorderSizePixel"] = 0;
NovaHub["e8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["e8"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["e8"]["Name"] = [[DarkOverlayDialog]];
NovaHub["e8"]["BackgroundTransparency"] = 0.6;


-- NovaHub.Templates.DialogElements.DarkOverlayDialog.UICorner
NovaHub["e9"] = Instance.new("UICorner", NovaHub["e8"]);
NovaHub["e9"]["CornerRadius"] = UDim.new(0, 10);


-- NovaHub.Templates.DialogElements.Dialog
NovaHub["ea"] = Instance.new("Frame", NovaHub["e7"]);
NovaHub["ea"]["Visible"] = false;
NovaHub["ea"]["ZIndex"] = 4;
NovaHub["ea"]["BorderSizePixel"] = 0;
NovaHub["ea"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
NovaHub["ea"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["ea"]["ClipsDescendants"] = true;
NovaHub["ea"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["ea"]["Size"] = UDim2.new(0, 250, 0, 0);
NovaHub["ea"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
NovaHub["ea"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["ea"]["Name"] = [[Dialog]];


-- NovaHub.Templates.DialogElements.Dialog.UICorner
NovaHub["eb"] = Instance.new("UICorner", NovaHub["ea"]);
NovaHub["eb"]["CornerRadius"] = UDim.new(0, 6);


-- NovaHub.Templates.DialogElements.Dialog.UIStroke
NovaHub["ec"] = Instance.new("UIStroke", NovaHub["ea"]);
NovaHub["ec"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["ec"]["Thickness"] = 1.5;
NovaHub["ec"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.DialogElements.Dialog.Title
NovaHub["ed"] = Instance.new("Frame", NovaHub["ea"]);
NovaHub["ed"]["BorderSizePixel"] = 0;
NovaHub["ed"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["ed"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["ed"]["Size"] = UDim2.new(1, 0, 0, 25);
NovaHub["ed"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["ed"]["Name"] = [[Title]];
NovaHub["ed"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.DialogElements.Dialog.Title.TextLabel
NovaHub["ee"] = Instance.new("TextLabel", NovaHub["ed"]);
NovaHub["ee"]["Interactable"] = false;
NovaHub["ee"]["ZIndex"] = 0;
NovaHub["ee"]["BorderSizePixel"] = 0;
NovaHub["ee"]["TextSize"] = 20;
NovaHub["ee"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["ee"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["ee"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["ee"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["ee"]["BackgroundTransparency"] = 1;
NovaHub["ee"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["ee"]["Size"] = UDim2.new(0, 0, 0, 20);
NovaHub["ee"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["ee"]["Text"] = [[]];
NovaHub["ee"]["LayoutOrder"] = 1;
NovaHub["ee"]["AutomaticSize"] = Enum.AutomaticSize.XY;
NovaHub["ee"]["Position"] = UDim2.new(-0.05455, 12, 0.5, 0);


-- NovaHub.Templates.DialogElements.Dialog.Title.UIListLayout
NovaHub["ef"] = Instance.new("UIListLayout", NovaHub["ed"]);
NovaHub["ef"]["Padding"] = UDim.new(0, 10);
NovaHub["ef"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
NovaHub["ef"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
NovaHub["ef"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- NovaHub.Templates.DialogElements.Dialog.Title.UIPadding
NovaHub["f0"] = Instance.new("UIPadding", NovaHub["ed"]);
NovaHub["f0"]["PaddingTop"] = UDim.new(0, 5);
NovaHub["f0"]["PaddingRight"] = UDim.new(0, 15);
NovaHub["f0"]["PaddingLeft"] = UDim.new(0, 15);
NovaHub["f0"]["PaddingBottom"] = UDim.new(0, 5);


-- NovaHub.Templates.DialogElements.Dialog.Title.Icon
NovaHub["f1"] = Instance.new("ImageButton", NovaHub["ed"]);
NovaHub["f1"]["BorderSizePixel"] = 0;
NovaHub["f1"]["Visible"] = false;
NovaHub["f1"]["BackgroundTransparency"] = 1;
NovaHub["f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["f1"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["f1"]["Size"] = UDim2.new(0, 33, 0, 25);
NovaHub["f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["f1"]["Name"] = [[Icon]];
NovaHub["f1"]["Position"] = UDim2.new(0, 0, 0.2125, 0);


-- NovaHub.Templates.DialogElements.Dialog.Title.Icon.UIAspectRatioConstraint
NovaHub["f2"] = Instance.new("UIAspectRatioConstraint", NovaHub["f1"]);



-- NovaHub.Templates.DialogElements.Dialog.UIListLayout
NovaHub["f3"] = Instance.new("UIListLayout", NovaHub["ea"]);
NovaHub["f3"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
NovaHub["f3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.DialogElements.Dialog.Content
NovaHub["f4"] = Instance.new("Frame", NovaHub["ea"]);
NovaHub["f4"]["Visible"] = false;
NovaHub["f4"]["ZIndex"] = 2;
NovaHub["f4"]["BorderSizePixel"] = 0;
NovaHub["f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["f4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["f4"]["Size"] = UDim2.new(1, 0, 0, 0);
NovaHub["f4"]["Position"] = UDim2.new(0, 0, 0.21886, 0);
NovaHub["f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["f4"]["Name"] = [[Content]];
NovaHub["f4"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.DialogElements.Dialog.Content.UIListLayout
NovaHub["f5"] = Instance.new("UIListLayout", NovaHub["f4"]);
NovaHub["f5"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
NovaHub["f5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.DialogElements.Dialog.Content.UIPadding
NovaHub["f6"] = Instance.new("UIPadding", NovaHub["f4"]);
NovaHub["f6"]["PaddingTop"] = UDim.new(0, 5);
NovaHub["f6"]["PaddingRight"] = UDim.new(0, 15);
NovaHub["f6"]["PaddingLeft"] = UDim.new(0, 15);
NovaHub["f6"]["PaddingBottom"] = UDim.new(0, 5);


-- NovaHub.Templates.DialogElements.Dialog.Content.TextLabel
NovaHub["f7"] = Instance.new("TextLabel", NovaHub["f4"]);
NovaHub["f7"]["TextWrapped"] = true;
NovaHub["f7"]["Interactable"] = false;
NovaHub["f7"]["BorderSizePixel"] = 0;
NovaHub["f7"]["TextSize"] = 15;
NovaHub["f7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
NovaHub["f7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
NovaHub["f7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["f7"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["f7"]["TextColor3"] = Color3.fromRGB(145, 154, 173);
NovaHub["f7"]["BackgroundTransparency"] = 1;
NovaHub["f7"]["Size"] = UDim2.new(1, 0, 0, 0);
NovaHub["f7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["f7"]["Text"] = [[]];
NovaHub["f7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["f7"]["Position"] = UDim2.new(0, 0, 0.125, 0);


-- NovaHub.Templates.DialogElements.Dialog.UIPadding
NovaHub["f8"] = Instance.new("UIPadding", NovaHub["ea"]);
NovaHub["f8"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["f8"]["PaddingBottom"] = UDim.new(0, 10);


-- NovaHub.Templates.DialogElements.Dialog.Buttons
NovaHub["f9"] = Instance.new("Frame", NovaHub["ea"]);
NovaHub["f9"]["ZIndex"] = 3;
NovaHub["f9"]["BorderSizePixel"] = 0;
NovaHub["f9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["f9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
NovaHub["f9"]["Size"] = UDim2.new(1, 0, 0, 0);
NovaHub["f9"]["Position"] = UDim2.new(0, 0, 0.53017, 0);
NovaHub["f9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["f9"]["Name"] = [[Buttons]];
NovaHub["f9"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.DialogElements.Dialog.Buttons.UIListLayout
NovaHub["fa"] = Instance.new("UIListLayout", NovaHub["f9"]);
NovaHub["fa"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
NovaHub["fa"]["Padding"] = UDim.new(0, 10);
NovaHub["fa"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.DialogElements.Dialog.Buttons.UIPadding
NovaHub["fb"] = Instance.new("UIPadding", NovaHub["f9"]);
NovaHub["fb"]["PaddingTop"] = UDim.new(0, 5);
NovaHub["fb"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["fb"]["PaddingLeft"] = UDim.new(0, 10);


-- NovaHub.Templates.DialogElements.DialogButton
NovaHub["fc"] = Instance.new("Frame", NovaHub["e7"]);
NovaHub["fc"]["Visible"] = false;
NovaHub["fc"]["BorderSizePixel"] = 0;
NovaHub["fc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["fc"]["AnchorPoint"] = Vector2.new(0.5, 1);
NovaHub["fc"]["Size"] = UDim2.new(1, 0, 0, 30);
NovaHub["fc"]["Position"] = UDim2.new(0.5, 0, 0.327, 0);
NovaHub["fc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["fc"]["Name"] = [[DialogButton]];
NovaHub["fc"]["BackgroundTransparency"] = 1;


-- NovaHub.Templates.DialogElements.DialogButton.Button
NovaHub["fd"] = Instance.new("TextButton", NovaHub["fc"]);
NovaHub["fd"]["BorderSizePixel"] = 0;
NovaHub["fd"]["AutoButtonColor"] = false;
NovaHub["fd"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
NovaHub["fd"]["Selectable"] = false;
NovaHub["fd"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["fd"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["fd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["fd"]["Name"] = [[Button]];
NovaHub["fd"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- NovaHub.Templates.DialogElements.DialogButton.Button.UICorner
NovaHub["fe"] = Instance.new("UICorner", NovaHub["fd"]);
NovaHub["fe"]["CornerRadius"] = UDim.new(0, 5);


-- NovaHub.Templates.DialogElements.DialogButton.Button.UIStroke
NovaHub["ff"] = Instance.new("UIStroke", NovaHub["fd"]);
NovaHub["ff"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["ff"]["Thickness"] = 1.5;
NovaHub["ff"]["Color"] = Color3.fromRGB(61, 61, 75);


-- NovaHub.Templates.DialogElements.DialogButton.Button.UIListLayout
NovaHub["100"] = Instance.new("UIListLayout", NovaHub["fd"]);
NovaHub["100"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
NovaHub["100"]["Padding"] = UDim.new(0, 5);
NovaHub["100"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
NovaHub["100"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.Templates.DialogElements.DialogButton.Button.Label
NovaHub["101"] = Instance.new("TextLabel", NovaHub["fd"]);
NovaHub["101"]["TextWrapped"] = true;
NovaHub["101"]["Interactable"] = false;
NovaHub["101"]["BorderSizePixel"] = 0;
NovaHub["101"]["TextSize"] = 14;
NovaHub["101"]["TextScaled"] = true;
NovaHub["101"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["101"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
NovaHub["101"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["101"]["BackgroundTransparency"] = 1;
NovaHub["101"]["Size"] = UDim2.new(1, 0, 0.45, 0);
NovaHub["101"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["101"]["Text"] = [[]];
NovaHub["101"]["Name"] = [[Label]];
NovaHub["101"]["Position"] = UDim2.new(0, 45, 0.083, 0);


-- NovaHub.NotificationList
NovaHub["102"] = Instance.new("Frame", NovaHub["1"]);
NovaHub["102"]["ZIndex"] = 10;
NovaHub["102"]["BorderSizePixel"] = 0;
NovaHub["102"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["102"]["AnchorPoint"] = Vector2.new(0.5, 0);
NovaHub["102"]["Size"] = UDim2.new(0, 630, 1, 0);
NovaHub["102"]["Position"] = UDim2.new(1, 0, 0, 0);
NovaHub["102"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["102"]["Name"] = [[NotificationList]];
NovaHub["102"]["BackgroundTransparency"] = 1;


-- NovaHub.NotificationList.UIListLayout
NovaHub["103"] = Instance.new("UIListLayout", NovaHub["102"]);
NovaHub["103"]["Padding"] = UDim.new(0, 12);
NovaHub["103"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- NovaHub.NotificationList.UIPadding
NovaHub["104"] = Instance.new("UIPadding", NovaHub["102"]);
NovaHub["104"]["PaddingTop"] = UDim.new(0, 10);
NovaHub["104"]["PaddingRight"] = UDim.new(0, 40);
NovaHub["104"]["PaddingLeft"] = UDim.new(0, 40);


-- NovaHub.FloatIcon
NovaHub["105"] = Instance.new("Frame", NovaHub["1"]);
NovaHub["105"]["Visible"] = false;
NovaHub["105"]["ZIndex"] = 0;
NovaHub["105"]["BorderSizePixel"] = 2;
NovaHub["105"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
NovaHub["105"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["105"]["ClipsDescendants"] = true;
NovaHub["105"]["AutomaticSize"] = Enum.AutomaticSize.X;
NovaHub["105"]["Size"] = UDim2.new(0, 85, 0, 45);
NovaHub["105"]["Position"] = UDim2.new(0.5, 0, 0, 45);
NovaHub["105"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
NovaHub["105"]["Name"] = [[FloatIcon]];


-- NovaHub.FloatIcon.UICorner
NovaHub["106"] = Instance.new("UICorner", NovaHub["105"]);
NovaHub["106"]["CornerRadius"] = UDim.new(0, 10);


-- NovaHub.FloatIcon.UIStroke
NovaHub["107"] = Instance.new("UIStroke", NovaHub["105"]);
NovaHub["107"]["Transparency"] = 0.5;
NovaHub["107"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
NovaHub["107"]["Thickness"] = 1.5;
NovaHub["107"]["Color"] = Color3.fromRGB(95, 95, 117);


-- NovaHub.FloatIcon.UIPadding
NovaHub["108"] = Instance.new("UIPadding", NovaHub["105"]);
NovaHub["108"]["PaddingTop"] = UDim.new(0, 8);
NovaHub["108"]["PaddingRight"] = UDim.new(0, 10);
NovaHub["108"]["PaddingLeft"] = UDim.new(0, 10);
NovaHub["108"]["PaddingBottom"] = UDim.new(0, 8);


-- NovaHub.FloatIcon.UIListLayout
NovaHub["109"] = Instance.new("UIListLayout", NovaHub["105"]);
NovaHub["109"]["Padding"] = UDim.new(0, 8);
NovaHub["109"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
NovaHub["109"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
NovaHub["109"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- NovaHub.FloatIcon.Icon
NovaHub["10a"] = Instance.new("ImageButton", NovaHub["105"]);
NovaHub["10a"]["Active"] = false;
NovaHub["10a"]["Interactable"] = false;
NovaHub["10a"]["BorderSizePixel"] = 0;
NovaHub["10a"]["AutoButtonColor"] = false;
NovaHub["10a"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["10a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["10a"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["10a"]["Image"] = [[rbxassetid://113216930555884]];
NovaHub["10a"]["Size"] = UDim2.new(1, 0, 1, 0);
NovaHub["10a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["10a"]["Name"] = [[Icon]];
NovaHub["10a"]["Position"] = UDim2.new(0, 10, 0.5, 0);


-- NovaHub.FloatIcon.Icon.UIAspectRatioConstraint
NovaHub["10b"] = Instance.new("UIAspectRatioConstraint", NovaHub["10a"]);



-- NovaHub.FloatIcon.TextLabel
NovaHub["10c"] = Instance.new("TextLabel", NovaHub["105"]);
NovaHub["10c"]["Interactable"] = false;
NovaHub["10c"]["BorderSizePixel"] = 0;
NovaHub["10c"]["TextSize"] = 16;
NovaHub["10c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["10c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
NovaHub["10c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["10c"]["BackgroundTransparency"] = 1;
NovaHub["10c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
NovaHub["10c"]["Size"] = UDim2.new(0, 20, 0, 20);
NovaHub["10c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["10c"]["Text"] = [[NovaHub]];
NovaHub["10c"]["AutomaticSize"] = Enum.AutomaticSize.X;
NovaHub["10c"]["Position"] = UDim2.new(0.38615, 0, 0.53448, -1);


-- NovaHub.FloatIcon.Open
NovaHub["10d"] = Instance.new("ImageButton", NovaHub["105"]);
NovaHub["10d"]["BorderSizePixel"] = 0;
NovaHub["10d"]["AutoButtonColor"] = false;
NovaHub["10d"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
NovaHub["10d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
NovaHub["10d"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
NovaHub["10d"]["Selectable"] = false;
NovaHub["10d"]["AnchorPoint"] = Vector2.new(0, 0.5);
NovaHub["10d"]["Image"] = [[rbxassetid://122219713887461]];
NovaHub["10d"]["Size"] = UDim2.new(0, 20, 0, 20);
NovaHub["10d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
NovaHub["10d"]["Name"] = [[Open]];
NovaHub["10d"]["Position"] = UDim2.new(0, 128, 0.5, 0);


-- NovaHub.FloatIcon.Open.UIAspectRatioConstraint
NovaHub["10e"] = Instance.new("UIAspectRatioConstraint", NovaHub["10d"]);



-- NovaHub.FloatIcon.Open.UICorner
NovaHub["10f"] = Instance.new("UICorner", NovaHub["10d"]);



-- Require NovaHub wrapper
local NovaHub_REQUIRE = require;
local NovaHub_MODULES = {};
local function require(Module:ModuleScript)
	local ModuleState = NovaHub_MODULES[Module];
	if ModuleState then
		if not ModuleState.Required then
			ModuleState.Required = true;
			ModuleState.Value = ModuleState.Closure();
		end
		return ModuleState.Value;
	end;
	return NovaHub_REQUIRE(Module);
end

NovaHub_MODULES[NovaHub["3e"]] = {
	Closure = function()
		local script = NovaHub["3e"];local LIB = {}
		local IconModule = require(script.IconModule)

		local UIS = game:GetService("UserInputService")

		-- ============ THEME SYSTEM ============
		LIB.Themes = {
			-- ── Original Themes ──────────────────────────────────────────
			Dark = {
				Accent        = Color3.fromRGB(10,  135, 213),
				BG            = Color3.fromRGB(37,  40,  47),
				ElementBG     = Color3.fromRGB(42,  45,  52),
				ElementBGDark = Color3.fromRGB(32,  35,  41),
				Stroke        = Color3.fromRGB(60,  60,  74),
				StrokeDim     = Color3.fromRGB(47,  47,  58),
				ToggleOn      = Color3.fromRGB(192, 209, 199),
				ToggleOff     = Color3.fromRGB(53,  56,  62),
			},
			Crimson = {
				Accent        = Color3.fromRGB(220, 50,  50),
				BG            = Color3.fromRGB(36,  28,  28),
				ElementBG     = Color3.fromRGB(48,  36,  36),
				ElementBGDark = Color3.fromRGB(30,  24,  24),
				Stroke        = Color3.fromRGB(90,  50,  50),
				StrokeDim     = Color3.fromRGB(60,  38,  38),
				ToggleOn      = Color3.fromRGB(220, 150, 150),
				ToggleOff     = Color3.fromRGB(65,  45,  45),
			},
			Purple = {
				Accent        = Color3.fromRGB(150, 60,  230),
				BG            = Color3.fromRGB(33,  28,  45),
				ElementBG     = Color3.fromRGB(44,  36,  58),
				ElementBGDark = Color3.fromRGB(28,  23,  40),
				Stroke        = Color3.fromRGB(80,  55,  110),
				StrokeDim     = Color3.fromRGB(55,  40,  75),
				ToggleOn      = Color3.fromRGB(200, 155, 240),
				ToggleOff     = Color3.fromRGB(58,  46,  75),
			},
			Emerald = {
				Accent        = Color3.fromRGB(30,  200, 100),
				BG            = Color3.fromRGB(26,  38,  32),
				ElementBG     = Color3.fromRGB(34,  50,  42),
				ElementBGDark = Color3.fromRGB(22,  33,  27),
				Stroke        = Color3.fromRGB(40,  90,  60),
				StrokeDim     = Color3.fromRGB(30,  60,  42),
				ToggleOn      = Color3.fromRGB(140, 230, 175),
				ToggleOff     = Color3.fromRGB(38,  62,  48),
			},
			Sunset = {
				Accent        = Color3.fromRGB(255, 110, 30),
				BG            = Color3.fromRGB(40,  33,  26),
				ElementBG     = Color3.fromRGB(52,  42,  32),
				ElementBGDark = Color3.fromRGB(34,  27,  20),
				Stroke        = Color3.fromRGB(90,  65,  35),
				StrokeDim     = Color3.fromRGB(62,  45,  26),
				ToggleOn      = Color3.fromRGB(255, 185, 120),
				ToggleOff     = Color3.fromRGB(68,  50,  35),
			},
			Cyan = {
				Accent        = Color3.fromRGB(0,   210, 220),
				BG            = Color3.fromRGB(24,  37,  42),
				ElementBG     = Color3.fromRGB(32,  48,  55),
				ElementBGDark = Color3.fromRGB(20,  31,  36),
				Stroke        = Color3.fromRGB(30,  90,  100),
				StrokeDim     = Color3.fromRGB(22,  60,  68),
				ToggleOn      = Color3.fromRGB(140, 230, 235),
				ToggleOff     = Color3.fromRGB(32,  60,  66),
			},

			-- ── New Themes ────────────────────────────────────────────────

			-- 🌸 Sakura — soft pink cherry blossom
			Sakura = {
				Accent        = Color3.fromRGB(255, 105, 155),
				BG            = Color3.fromRGB(42,  30,  36),
				ElementBG     = Color3.fromRGB(56,  38,  46),
				ElementBGDark = Color3.fromRGB(34,  24,  29),
				Stroke        = Color3.fromRGB(120, 55,  80),
				StrokeDim     = Color3.fromRGB(80,  40,  58),
				ToggleOn      = Color3.fromRGB(255, 175, 200),
				ToggleOff     = Color3.fromRGB(70,  42,  55),
			},

			-- 🌌 Galaxy — deep space violet + star blue
			Galaxy = {
				Accent        = Color3.fromRGB(120, 80,  255),
				BG            = Color3.fromRGB(18,  16,  32),
				ElementBG     = Color3.fromRGB(26,  22,  46),
				ElementBGDark = Color3.fromRGB(14,  12,  26),
				Stroke        = Color3.fromRGB(60,  45,  120),
				StrokeDim     = Color3.fromRGB(38,  30,  80),
				ToggleOn      = Color3.fromRGB(170, 145, 255),
				ToggleOff     = Color3.fromRGB(38,  32,  68),
			},

			-- 🌊 Ocean — deep navy blue wave
			Ocean = {
				Accent        = Color3.fromRGB(30,  160, 255),
				BG            = Color3.fromRGB(16,  26,  46),
				ElementBG     = Color3.fromRGB(22,  36,  62),
				ElementBGDark = Color3.fromRGB(12,  20,  38),
				Stroke        = Color3.fromRGB(30,  70,  130),
				StrokeDim     = Color3.fromRGB(20,  48,  90),
				ToggleOn      = Color3.fromRGB(120, 200, 255),
				ToggleOff     = Color3.fromRGB(28,  52,  90),
			},

			-- 🍊 Amber — warm golden honey
			Amber = {
				Accent        = Color3.fromRGB(255, 180, 0),
				BG            = Color3.fromRGB(38,  32,  18),
				ElementBG     = Color3.fromRGB(52,  44,  24),
				ElementBGDark = Color3.fromRGB(30,  25,  14),
				Stroke        = Color3.fromRGB(110, 85,  20),
				StrokeDim     = Color3.fromRGB(75,  58,  14),
				ToggleOn      = Color3.fromRGB(255, 215, 100),
				ToggleOff     = Color3.fromRGB(68,  54,  22),
			},

			-- 🌿 Mint — cool fresh green
			Mint = {
				Accent        = Color3.fromRGB(60,  220, 170),
				BG            = Color3.fromRGB(20,  38,  34),
				ElementBG     = Color3.fromRGB(28,  50,  44),
				ElementBGDark = Color3.fromRGB(16,  30,  27),
				Stroke        = Color3.fromRGB(30,  100, 80),
				StrokeDim     = Color3.fromRGB(22,  68,  56),
				ToggleOn      = Color3.fromRGB(130, 240, 200),
				ToggleOff     = Color3.fromRGB(30,  62,  52),
			},

			-- 🔥 Lava — volcanic orange-red
			Lava = {
				Accent        = Color3.fromRGB(255, 60,  0),
				BG            = Color3.fromRGB(30,  18,  14),
				ElementBG     = Color3.fromRGB(44,  26,  18),
				ElementBGDark = Color3.fromRGB(24,  14,  10),
				Stroke        = Color3.fromRGB(120, 45,  20),
				StrokeDim     = Color3.fromRGB(80,  30,  14),
				ToggleOn      = Color3.fromRGB(255, 140, 80),
				ToggleOff     = Color3.fromRGB(70,  32,  18),
			},

			-- 🤍 Frost — clean icy white-grey
			Frost = {
				Accent        = Color3.fromRGB(180, 220, 255),
				BG            = Color3.fromRGB(28,  32,  40),
				ElementBG     = Color3.fromRGB(36,  42,  52),
				ElementBGDark = Color3.fromRGB(22,  26,  34),
				Stroke        = Color3.fromRGB(70,  90,  120),
				StrokeDim     = Color3.fromRGB(48,  62,  85),
				ToggleOn      = Color3.fromRGB(200, 225, 255),
				ToggleOff     = Color3.fromRGB(48,  58,  78),
			},

			-- 🌺 Rose Gold — trendy warm pink-gold
			RoseGold = {
				Accent        = Color3.fromRGB(220, 140, 110),
				BG            = Color3.fromRGB(36,  26,  24),
				ElementBG     = Color3.fromRGB(50,  36,  32),
				ElementBGDark = Color3.fromRGB(28,  20,  18),
				Stroke        = Color3.fromRGB(110, 65,  52),
				StrokeDim     = Color3.fromRGB(75,  44,  36),
				ToggleOn      = Color3.fromRGB(235, 185, 160),
				ToggleOff     = Color3.fromRGB(68,  44,  38),
			},

			-- 🍇 Grape — rich dark purple
			Grape = {
				Accent        = Color3.fromRGB(180, 60,  200),
				BG            = Color3.fromRGB(28,  18,  34),
				ElementBG     = Color3.fromRGB(40,  26,  48),
				ElementBGDark = Color3.fromRGB(22,  14,  27),
				Stroke        = Color3.fromRGB(90,  40,  110),
				StrokeDim     = Color3.fromRGB(60,  28,  74),
				ToggleOn      = Color3.fromRGB(215, 145, 235),
				ToggleOff     = Color3.fromRGB(56,  34,  68),
			},

			-- 🪸 Coral — vibrant tropical pink-orange
			Coral = {
				Accent        = Color3.fromRGB(255, 90,  90),
				BG            = Color3.fromRGB(40,  24,  24),
				ElementBG     = Color3.fromRGB(54,  32,  32),
				ElementBGDark = Color3.fromRGB(32,  18,  18),
				Stroke        = Color3.fromRGB(120, 50,  50),
				StrokeDim     = Color3.fromRGB(82,  35,  35),
				ToggleOn      = Color3.fromRGB(255, 170, 150),
				ToggleOff     = Color3.fromRGB(70,  38,  38),
			},

			-- 🌙 Midnight — ultra-dark near-black blue
			Midnight = {
				Accent        = Color3.fromRGB(80,  120, 220),
				BG            = Color3.fromRGB(12,  14,  20),
				ElementBG     = Color3.fromRGB(18,  21,  30),
				ElementBGDark = Color3.fromRGB(9,   11,  16),
				Stroke        = Color3.fromRGB(35,  50,  90),
				StrokeDim     = Color3.fromRGB(22,  32,  60),
				ToggleOn      = Color3.fromRGB(140, 170, 240),
				ToggleOff     = Color3.fromRGB(26,  35,  60),
			},

			-- 🌅 Peach — warm pastel sunrise
			Peach = {
				Accent        = Color3.fromRGB(255, 150, 80),
				BG            = Color3.fromRGB(42,  28,  22),
				ElementBG     = Color3.fromRGB(58,  38,  30),
				ElementBGDark = Color3.fromRGB(34,  22,  17),
				Stroke        = Color3.fromRGB(120, 68,  40),
				StrokeDim     = Color3.fromRGB(82,  46,  28),
				ToggleOn      = Color3.fromRGB(255, 195, 140),
				ToggleOff     = Color3.fromRGB(72,  46,  32),
			},

			-- 🌲 Forest — earthy dark woodland green
			Forest = {
				Accent        = Color3.fromRGB(60,  170, 80),
				BG            = Color3.fromRGB(18,  28,  20),
				ElementBG     = Color3.fromRGB(26,  40,  28),
				ElementBGDark = Color3.fromRGB(14,  22,  16),
				Stroke        = Color3.fromRGB(34,  80,  42),
				StrokeDim     = Color3.fromRGB(24,  55,  30),
				ToggleOn      = Color3.fromRGB(120, 210, 130),
				ToggleOff     = Color3.fromRGB(30,  56,  34),
			},

			-- 💎 Sapphire — rich jewel blue
			Sapphire = {
				Accent        = Color3.fromRGB(50,  100, 255),
				BG            = Color3.fromRGB(16,  20,  40),
				ElementBG     = Color3.fromRGB(22,  28,  56),
				ElementBGDark = Color3.fromRGB(12,  16,  32),
				Stroke        = Color3.fromRGB(38,  58,  130),
				StrokeDim     = Color3.fromRGB(26,  40,  90),
				ToggleOn      = Color3.fromRGB(130, 165, 255),
				ToggleOff     = Color3.fromRGB(28,  40,  88),
			},

			-- 🌸 Lavender — soft dreamy purple-pink
			Lavender = {
				Accent        = Color3.fromRGB(180, 130, 255),
				BG            = Color3.fromRGB(30,  24,  44),
				ElementBG     = Color3.fromRGB(42,  34,  60),
				ElementBGDark = Color3.fromRGB(24,  18,  36),
				Stroke        = Color3.fromRGB(80,  60,  130),
				StrokeDim     = Color3.fromRGB(55,  42,  90),
				ToggleOn      = Color3.fromRGB(210, 180, 255),
				ToggleOff     = Color3.fromRGB(54,  42,  82),
			},

			-- ☁️ Slate — cool professional dark grey
			Slate = {
				Accent        = Color3.fromRGB(130, 180, 200),
				BG            = Color3.fromRGB(22,  26,  30),
				ElementBG     = Color3.fromRGB(30,  36,  42),
				ElementBGDark = Color3.fromRGB(17,  20,  24),
				Stroke        = Color3.fromRGB(55,  70,  85),
				StrokeDim     = Color3.fromRGB(38,  48,  58),
				ToggleOn      = Color3.fromRGB(170, 205, 220),
				ToggleOff     = Color3.fromRGB(42,  54,  65),
			},

			-- 🍋 Lemon — sharp electric yellow-green
			Lemon = {
				Accent        = Color3.fromRGB(200, 240, 40),
				BG            = Color3.fromRGB(26,  32,  16),
				ElementBG     = Color3.fromRGB(36,  44,  22),
				ElementBGDark = Color3.fromRGB(20,  25,  12),
				Stroke        = Color3.fromRGB(80,  100, 28),
				StrokeDim     = Color3.fromRGB(55,  70,  18),
				ToggleOn      = Color3.fromRGB(220, 248, 120),
				ToggleOff     = Color3.fromRGB(50,  62,  24),
			},

			-- 🩶 Carbon — ultra-sleek near-black
			Carbon = {
				Accent        = Color3.fromRGB(200, 200, 210),
				BG            = Color3.fromRGB(15,  15,  17),
				ElementBG     = Color3.fromRGB(22,  22,  25),
				ElementBGDark = Color3.fromRGB(10,  10,  12),
				Stroke        = Color3.fromRGB(45,  45,  52),
				StrokeDim     = Color3.fromRGB(30,  30,  36),
				ToggleOn      = Color3.fromRGB(210, 212, 220),
				ToggleOff     = Color3.fromRGB(38,  38,  44),
			},

			-- 🌈 Aurora — northern lights teal-violet
			Aurora = {
				Accent        = Color3.fromRGB(80,  230, 200),
				BG            = Color3.fromRGB(16,  22,  32),
				ElementBG     = Color3.fromRGB(22,  32,  46),
				ElementBGDark = Color3.fromRGB(12,  17,  26),
				Stroke        = Color3.fromRGB(30,  90,  100),
				StrokeDim     = Color3.fromRGB(20,  60,  70),
				ToggleOn      = Color3.fromRGB(150, 240, 220),
				ToggleOff     = Color3.fromRGB(26,  56,  62),
			},

			-- 🍓 Berry — dark mixed berry purple-red
			Berry = {
				Accent        = Color3.fromRGB(200, 60,  130),
				BG            = Color3.fromRGB(32,  18,  28),
				ElementBG     = Color3.fromRGB(45,  25,  38),
				ElementBGDark = Color3.fromRGB(25,  14,  22),
				Stroke        = Color3.fromRGB(100, 38,  72),
				StrokeDim     = Color3.fromRGB(68,  26,  50),
				ToggleOn      = Color3.fromRGB(235, 140, 185),
				ToggleOff     = Color3.fromRGB(62,  30,  50),
			},
		}

		-- Active theme shorthand
		local T = LIB.Themes.Dark

		-- Registry: live instances to recolor on SetTheme
		local _themeReg = {
			windowBGs     = {},
			elementBGs    = {},
			elementBGDs   = {},
			strokes       = {},
			strokeDims    = {},
			toggleOnFills = {},
			toggleOffFills= {},
		}
		local function _TR(tbl, inst)
			if inst then table.insert(tbl, inst) end
		end

		function LIB:SetTheme(name)
			local theme = LIB.Themes[name]
			if not theme then return end
			T = theme
			local TweenService = game:GetService("TweenService")
			local ti = TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
			local function tw(inst, props)
				if inst and inst.Parent then
					pcall(function() TweenService:Create(inst, ti, props):Play() end)
				end
			end
			for _, inst in ipairs(_themeReg.windowBGs)      do tw(inst, {BackgroundColor3 = T.BG}) end
			for _, inst in ipairs(_themeReg.elementBGs)     do tw(inst, {BackgroundColor3 = T.ElementBG}) end
			for _, inst in ipairs(_themeReg.elementBGDs)    do tw(inst, {BackgroundColor3 = T.ElementBGDark}) end
			for _, inst in ipairs(_themeReg.strokes)        do tw(inst, {Color = T.Stroke}) end
			for _, inst in ipairs(_themeReg.strokeDims)     do tw(inst, {Color = T.StrokeDim}) end
			for _, inst in ipairs(_themeReg.toggleOnFills)  do tw(inst, {BackgroundColor3 = T.ToggleOn}) end
			for _, inst in ipairs(_themeReg.toggleOffFills) do tw(inst, {BackgroundColor3 = T.ToggleOff}) end
		end
		-- ======================================

		local Gui = script.Parent
		local Templates = script.Parent.Templates
		local oldWindow = script.Parent.Window
		local oldFloatingIcon = script.Parent.FloatIcon

		Templates.Parent = nil
		oldWindow.Parent = nil
		oldFloatingIcon.Parent = nil


		local TweenConfigs = {
			Global = {
				Duration = 0.25,
				EasingStyle = Enum.EasingStyle.Quart,
				EasingDirection = Enum.EasingDirection.Out
			},
			Notification = {
				Duration = 0.5,
				EasingStyle = Enum.EasingStyle.Back,
				EasingDirection = Enum.EasingDirection.Out
			},
			PopupOpen = {
				Duration = 0.4,
				EasingStyle = Enum.EasingStyle.Back,
				EasingDirection = Enum.EasingDirection.Out
			},
			PopupClose = {
				Duration = 0.4,
				EasingStyle = Enum.EasingStyle.Back,
				EasingDirection = Enum.EasingDirection.In
			},
		}
		local function Tween(inst, props, config)
			local twconfig = TweenInfo.new(config.Duration, config.EasingStyle or Enum.EasingStyle.Linear, config.EasingDirection or Enum.EasingDirection.Out)
			local tw = game:GetService("TweenService"):Create(inst, twconfig, props)
			tw:Play()
			return tw
		end

		local function Draggable(topbarobject, object)
			local funcs = {}

			local tsv = game:GetService("TweenService")
			local Dragging = nil
			local DragInput = nil
			local DragStart = nil
			local StartPosition = nil

			local allowDragging = true

			local function Update(input)
				local Delta = input.Position - DragStart
				local pos =
					UDim2.new(
						StartPosition.X.Scale,
						StartPosition.X.Offset + Delta.X,
						StartPosition.Y.Scale,
						StartPosition.Y.Offset + Delta.Y
					)
				tsv:Create(object, TweenInfo.new(0.2,Enum.EasingStyle.Quart), {Position = pos}):Play()
				--object.Position = pos
			end

			topbarobject.InputBegan:Connect(
				function(input)
					if allowDragging and input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						Dragging = true
						DragStart = input.Position
						StartPosition = object.Position

						input.Changed:Connect(
							function()
								if input.UserInputState == Enum.UserInputState.End then
									Dragging = false
								end
							end
						)
					end
				end
			)

			topbarobject.InputChanged:Connect(
				function(input)
					if
						allowDragging and
						input.UserInputType == Enum.UserInputType.MouseMovement or
						input.UserInputType == Enum.UserInputType.Touch
					then
						DragInput = input
					end
				end
			)

			UIS.InputChanged:Connect(
				function(input)
					if allowDragging and input == DragInput and Dragging then
						Update(input)
					end
				end
			)

			function funcs:SetAllowDragging(state)
				allowDragging = state
			end

			return funcs
		end

		local Windows = {}
		function LIB:CreateWindow(data)
			local Window = {
				Title = data.Title,
				Icon = data.Icon,
				Version = data.Author,
				Folder = data.Folder,
				Size = data.Size,
				ToggleKey = data.ToggleKey or Enum.KeyCode.RightShift,
				LiveSearchDropdown = data.LiveSearchDropdown or false,
                AutoSave = data.AutoSave or true,
                FileSaveName = data.FileSaveName or "Configo.json", -- wajib ada .json
			}
			local iconSize    = data.IconSize or 20  -- default tab icon size
			local tabIconRefs = {}                   -- track all tab icon ImageButtons
            local CONFIG = {}
            local CONFIGLOADED = false

            if Window.AutoSave == false and isfile(Window.FileSaveName) then
                delfile(Window.FileSaveName)
            end

            if isfile(Window.FileSaveName) then
                local success, result = pcall(function()
                    CONFIG = game:GetService("HttpService"):JSONDecode(readfile(Window.FileSaveName))
                end)
                if success then
                    CONFIGLOADED = true
                elseif not success then
                    warn("Attempted to load 'workspace/".. Window.FileSaveName .."', but an error occured.\nERROR: "..result)
                end
            end

            local function SAVECONFIG()
                if Window.AutoSave then
                    writefile(Window.FileSaveName, game:GetService("HttpService"):JSONEncode(CONFIG))
                end
            end


			local windowFolder = Instance.new("Folder")
			windowFolder.Parent = Gui
			Gui.Name = Window.Title

			local newFloatingIcon = oldFloatingIcon:Clone()
			newFloatingIcon.Parent = windowFolder
			newFloatingIcon.TextLabel.Text = Window.Title
			newFloatingIcon.Visible = false
			if not Window.Icon:find("rbxassetid") then
				newFloatingIcon.Icon.Image = IconModule.Icon(Window.Icon)[1] or Window.Icon or ""
				newFloatingIcon.Icon.ImageRectOffset = IconModule.Icon(Window.Icon)[2].ImageRectPosition or Vector2.new(0,0)
				newFloatingIcon.Icon.ImageRectSize = IconModule.Icon(Window.Icon)[2].ImageRectSize or Vector2.new(0,0)
			else
				newFloatingIcon.Icon.Image = Window.Icon
			end

			local newWindow = oldWindow:Clone()
			local mainFrame = newWindow
			local TopFrame = mainFrame.TopFrame
			local TabButtons = mainFrame.TabButtons
			local Tabs = mainFrame.Tabs

			newWindow.Name = Window.Title
			-- Register window-level elements for theme system
			_TR(_themeReg.windowBGs,  newWindow)
			_TR(_themeReg.windowBGs,  TabButtons)
			_TR(_themeReg.strokes,    newWindow.UIStroke)
			TopFrame.TextLabel.Text = Window.Title.." - "..Window.Version
			if not Window.Icon:find("rbxassetid") then
				TopFrame.Icon.Image = IconModule.Icon(Window.Icon)[1] or Window.Icon or ""
				TopFrame.Icon.ImageRectOffset = IconModule.Icon(Window.Icon)[2].ImageRectPosition or Vector2.new(0,0)
				TopFrame.Icon.ImageRectSize = IconModule.Icon(Window.Icon)[2].ImageRectSize or Vector2.new(0,0)
			else
				TopFrame.Icon.Image = Window.Icon
			end

			newWindow.Size = Window.Size
			newWindow.Visible = false
			newWindow.Parent = windowFolder

			table.insert(Windows, newWindow)

			-- Functionalities

			local selected
			local TabLists = {}
			local TabIndexList = {}
			local function AddTabToList(name: string, tab: ScrollingFrame, tabbtn: GuiButton, hasicon: boolean)
				local data = {
					Name = name,
					TabObject = tab,
					TabButton = tabbtn,
					HasIcon = hasicon
				}
				TabLists[name] = data
				table.insert(TabIndexList, TabLists[name])
			end

			-- dropdown, the hardest part lol
			local SelectedDropdown = nil
			local DropdownState = false
			local function DropdownPopup(state, name)
				-- disabled tween for popup cuz kills performance :<

				if name and DropdownState == false then
					SelectedDropdown = name
					for _,v in newWindow.DropdownSelection.Dropdowns:GetChildren() do
						if v:IsA("Folder") then
							v:FindFirstChild("DropdownItems").Visible = false
							v:FindFirstChild("DropdownItemsSearch").Visible = false
						end
					end
					newWindow.DropdownSelection.TopBar.Title.Text = name
					newWindow.DropdownSelection.Dropdowns:FindFirstChild(name):FindFirstChild("DropdownItems").Visible = true
					newWindow.DropdownSelection.Dropdowns:FindFirstChild(name):FindFirstChild("DropdownItemsSearch").Visible = false
				end
				if state == true then
					-- open
					newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
					newWindow.DarkOverlay.BackgroundTransparency = 1

					newWindow.DropdownSelection.Visible = true
					newWindow.DarkOverlay.Visible = true

					newWindow.DropdownSelection.Size = UDim2.new(0.728, 0,0.684, 0)
					--Tween(newWindow.DropdownSelection, {Size = UDim2.new(0.728, 0,0.684, 0)}, TweenConfigs.PopupOpen)
					Tween(newWindow.DarkOverlay, {BackgroundTransparency = 0.6}, TweenConfigs.PopupOpen)
					DropdownState = state
				elseif state == false then
					-- close
					newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
					--local tw1 = Tween(newWindow.DropdownSelection, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.PopupClose)
					local tw2 = Tween(newWindow.DarkOverlay, {BackgroundTransparency = 1}, TweenConfigs.PopupClose)

					tw2.Completed:Wait()

					newWindow.DropdownSelection.Visible = false
					newWindow.DarkOverlay.Visible = false

					DropdownState = state
				else
					if DropdownState then
						-- close
						newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
						--local tw1 = Tween(newWindow.DropdownSelection, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.PopupClose)
						local tw2 = Tween(newWindow.DarkOverlay, {BackgroundTransparency = 1}, TweenConfigs.PopupClose)

						tw2.Completed:Wait()

						newWindow.DropdownSelection.Visible = false
						newWindow.DarkOverlay.Visible = false

						DropdownState = false
					else
						-- open
						newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
						newWindow.DarkOverlay.BackgroundTransparency = 1

						newWindow.DropdownSelection.Visible = true
						newWindow.DarkOverlay.Visible = true

						newWindow.DropdownSelection.Size = UDim2.new(0.728, 0,0.684, 0)
						--Tween(newWindow.DropdownSelection, {Size = UDim2.new(0.728, 0,0.684, 0)}, TweenConfigs.PopupOpen)
						Tween(newWindow.DarkOverlay, {BackgroundTransparency = 0.6}, TweenConfigs.PopupOpen)

						DropdownState = true
					end
				end
			end

			local function SelectTab(tabName)
				for tablistname, tab in pairs(TabLists) do

					if tablistname ~= tabName then
						tab.TabObject.Visible = false
						-- Close
						Tween(tab.TabButton.TextLabel, {Position = UDim2.new(0, 42,0.5, 0), Size = UDim2.new(0, 103,0, 16), TextTransparency = 0.5}, TweenConfigs.Global)
						Tween(tab.TabButton.ImageButton, {Position = UDim2.new(0,12,0,18), ImageTransparency = 0.5, Size = UDim2.new(0, iconSize, 0, iconSize)}, TweenConfigs.Global)
						Tween(tab.TabButton.Bar, {Size = UDim2.new(0, 5,0, 0), BackgroundTransparency = 1}, TweenConfigs.Global)
					elseif tablistname == tabName then
						selected = tabName
						tab.TabObject.Visible = true
						-- open
						Tween(tab.TabButton.TextLabel, {Position = UDim2.new(0, 57,0.5, 0), Size = UDim2.new(0, 88,0, 16), TextTransparency = 0}, TweenConfigs.Global)
						Tween(tab.TabButton.ImageButton, {Position = UDim2.new(0,25,0,18), ImageTransparency = 0, Size = UDim2.new(0, iconSize + 10, 0, iconSize + 10)}, TweenConfigs.Global)
						Tween(tab.TabButton.Bar, {Size = UDim2.new(0, 5,0, 25), BackgroundTransparency = 0}, TweenConfigs.Global)

						local objectCount = 0
						for _, obj in ipairs(tab.TabObject:GetChildren()) do
							if obj:IsA("GuiObject") then
								objectCount = objectCount + 1
							end
						end
						if objectCount == 0 then
							Tabs.NoObjectFoundText.Visible = true
						else
							Tabs.NoObjectFoundText.Visible = false
						end
					end
				end
			end

			newWindow.DropdownSelection.TopBar.Close.MouseButton1Click:Connect(function() DropdownPopup(false) end)

			local textbox = newWindow.DropdownSelection.TopBar.BoxFrame.Frame.TextBox

			textbox:GetPropertyChangedSignal("Text"):Connect(function()
				if not Window.LiveSearchDropdown then return end
				local currentFolder = newWindow.DropdownSelection.Dropdowns:FindFirstChild(SelectedDropdown)
				if string.gsub(textbox.Text, " ", "") ~= "" then
					if not currentFolder then return end
					currentFolder:FindFirstChild("DropdownItems").Visible = false
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = true

					for _,button in currentFolder:FindFirstChild("DropdownItemsSearch"):GetChildren() do
						if button:IsA("GuiButton") then
							if string.find(button.Name:lower(), textbox.Text:lower()) then
								button.Visible = true
							else
								button.Visible = false
							end
						end

					end
				else
					currentFolder:FindFirstChild("DropdownItems").Visible = true
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = false
				end
			end)

			textbox.FocusLost:Connect(function()
				if Window.LiveSearchDropdown then return end
				local currentFolder = newWindow.DropdownSelection.Dropdowns:FindFirstChild(SelectedDropdown)
				if string.gsub(textbox.Text, " ", "") ~= "" then
					if not currentFolder then return end
					currentFolder:FindFirstChild("DropdownItems").Visible = false
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = true

					for _,button in currentFolder:FindFirstChild("DropdownItemsSearch"):GetChildren() do
						if button:IsA("GuiButton") then
							if string.find(button.Name:lower(), textbox.Text:lower()) then
								button.Visible = true
							else
								button.Visible = false
							end
						end

					end
				else
					currentFolder:FindFirstChild("DropdownItems").Visible = true
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = false
				end
			end)

			function Window:Tab(data)
				local Tab = {}
				local TabData = {
					Title = data.Title,
					Icon = data.Icon,
				}

                local NAMETAB = data.Title
                if not CONFIGLOADED or CONFIG[NAMETAB] == nil then
                    CONFIG[NAMETAB] = {}
                end

				local newTabButton = Templates.TabButton:Clone()
				newTabButton.Name = TabData.Title

				newTabButton.Parent = newWindow.TabButtons.Lists
				newTabButton.Visible = true

				newTabButton.TextLabel.Text = TabData.Title
				newTabButton.ImageButton.Image = (IconModule.Icon(TabData.Icon) and IconModule.Icon(TabData.Icon)[1]) or TabData.Icon or ""
				newTabButton.ImageButton.ImageRectOffset = (IconModule.Icon(TabData.Icon) and IconModule.Icon(TabData.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
				newTabButton.ImageButton.ImageRectSize = (IconModule.Icon(TabData.Icon) and IconModule.Icon(TabData.Icon)[2].ImageRectSize) or Vector2.new(0,0)
				newTabButton.ImageButton.Size = UDim2.new(0, iconSize, 0, iconSize)
				table.insert(tabIconRefs, newTabButton.ImageButton)



				local newTab = Templates.Tab:Clone()
				newTab.Name = TabData.Title

				newTab.Parent = newWindow.Tabs
				newTab.Visible = false

				AddTabToList(data.Title, newTab, newTabButton)

				--if not selected then selected = TabData.Title end

				if selected == TabData.Title then
					newTab.Visible = true

					-- Open

					-- Textlabel
					newTabButton.TextLabel.Position =  UDim2.new(0, 57,0.5, 0)
					newTabButton.TextLabel.Size = UDim2.new(0, 88,0, 16)
					newTabButton.TextLabel.TextTransparency = 0

					-- icon
					newTabButton.ImageButton.Position = UDim2.new(0,25,0,18)
					newTabButton.ImageButton.ImageTransparency = 0
					newTabButton.ImageButton.Size = UDim2.new(0, iconSize + 10, 0, iconSize + 10)

					-- Bar
					newTabButton.Bar.Size = UDim2.new(0, 5,0, 25)
					newTabButton.Bar.BackgroundTransparency = 0
				else
					-- Close

					-- Textlabel
					newTabButton.TextLabel.Position =  UDim2.new(0, 42,0.5, 0)
					newTabButton.TextLabel.Size = UDim2.new(0, 103,0, 16)
					newTabButton.TextLabel.TextTransparency = 0.5

					-- icon
					newTabButton.ImageButton.Position = UDim2.new(0,12,0,18)
					newTabButton.ImageButton.ImageTransparency = 0.5

					-- Bar
					newTabButton.Bar.Size = UDim2.new(0, 5,0, 0)
					newTabButton.Bar.BackgroundTransparency = 1
				end

				newTabButton.MouseButton1Click:Connect(function()
					SelectTab(TabData.Title)
				end)

				local function GetCurrentElementObjects()
					local objects = {}
					for _,v in pairs(newTab:GetChildren()) do
						if v:IsA("GuiObject") then
							table.insert(objects, v)
						end
					end
					return objects
				end

				local parentElement = newTab

				function Tab:Section(data)
					local Section = {
						Title = data.Title,
						State = data.Default or data.Opened or false,
						TextXAlignment = data.TextXAlignment or "Left",
					}

					local newSection = Templates.Section:Clone()
					newSection.Name = Section.Title
					newSection.Button.Title.Text = Section.Title
					newSection.Button.Title.TextXAlignment = Enum.TextXAlignment[Section.TextXAlignment]

					newSection.Visible = true
					newSection.Parent = newTab

					-- Apply initial open/close state
					if Section.State then
						newSection.Frame.Visible = true
						newSection.Button.Title.Arrow.Rotation = 90
					else
						newSection.Frame.Visible = false
						newSection.Button.Title.Arrow.Rotation = 0
					end

					newSection.Button.MouseButton1Click:Connect(function()
						if Section.State == true then
							-- close
							newSection.Frame.Visible = false
							Tween(newSection.Button.Title.Arrow, {Rotation = 0}, TweenConfigs.Global)
							Section.State = false
						elseif Section.State == false then
							-- open
							newSection.Frame.Visible = true
							Tween(newSection.Button.Title.Arrow, {Rotation = 90}, TweenConfigs.Global)
							Section.State = true
						end
					end)

					function Section:SetTitle(newTitle)
						Section.Title = newTitle
						newSection.Button.Title.Text = newTitle
					end

					function Section:Destroy()
						parentElement:Destroy()
					end

					parentElement = newSection.Frame

					return Section
				end

				function Tab:Button(data)
					local Button = {}

					local ButtonData = {
						Title = data.Title,
						Desc = data.Desc,
						Locked = data.Locked or false,
						Callback = data.Callback or function() end
					}

					local newButton = Templates.Button:Clone()
					newButton.Name = ButtonData.Title
					newButton.Parent = parentElement
					_TR(_themeReg.elementBGs,  newButton)
					_TR(_themeReg.strokes,     newButton.UIStroke)

					newButton.Frame.Title.Text = ButtonData.Title

					if ButtonData.Desc and ButtonData.Desc ~= "" then
						newButton.Frame.Description.Visible = true
						newButton.Frame.Description.Text = ButtonData.Desc
					end

					if ButtonData.Locked then
						-- greyed out
						newButton.UIStroke.Color = T.StrokeDim
						newButton.BackgroundColor3 = T.ElementBGDark

						newButton.Frame.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newButton.Frame.Title.ClickIcon.ImageColor3 = Color3.fromRGB(75, 77, 83)

						newButton.Frame.Description.TextColor3 = Color3.fromRGB(75, 77, 83)
					end

					newButton.Visible = true

					local function GetRandomGradient()
						local gradient = {}
						for _, g in ipairs(newButton.Frame:GetChildren()) do
							if g:IsA("UIGradient") then
								g.Enabled = false
								table.insert(gradient, g)
							end
						end
						local selectedGrad = gradient[math.random(1, #gradient)]
						selectedGrad.Enabled = true
						return selectedGrad
					end

					GetRandomGradient()

					newButton.MouseEnter:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.UIStroke, {Color = T.Accent}, TweenConfigs.Global)
						end
					end)

					newButton.MouseLeave:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
							newButton.BackgroundColor3 = T.ElementBG
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						end
					end)

					newButton.MouseButton1Down:Connect(function()
						if not ButtonData.Locked then
							GetRandomGradient()
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(newButton.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)
						end
					end)

					newButton.MouseButton1Up:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							local tw = Tween(newButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
						end
					end)

					newButton.MouseLeave:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							local tw = Tween(newButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
						end
					end)

					newButton.MouseButton1Click:Connect(function()
						if not ButtonData.Locked then
							ButtonData.Callback()
						end
					end)

					newTab.ChildAdded:Connect(function()
						if #GetCurrentElementObjects() > 0 then
							Tabs.NoObjectFoundText.Visible = false
						else
							Tabs.NoObjectFoundText.Visible = true
						end
					end)

					newTab.ChildRemoved:Connect(function()
						if #GetCurrentElementObjects() > 0 then
							Tabs.NoObjectFoundText.Visible = false
						else
							Tabs.NoObjectFoundText.Visible = true
						end
					end)

					function Button:SetTitle(newText)
						newButton.Frame.Title.Text = newText
					end

					function Button:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							newButton.Frame.Description.Text = newDesc
						end
					end

					function Button:Lock()
						ButtonData.Locked = true
						Tween(newButton, {BackgroundColor3 = T.ElementBGDark}, TweenConfigs.Global)
						Tween(newButton.UIStroke, {Color = T.StrokeDim}, TweenConfigs.Global)
						Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
					end

					function Button:Unlock()
						ButtonData.Locked = false
						Tween(newButton, {BackgroundColor3 = T.ElementBG}, TweenConfigs.Global)
						Tween(newButton.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
						Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
					end

					function Button:Destroy()
						newButton:Destroy()
					end

					return Button
				end

				function Tab:Code(data)
					local Code = {
						Title = data.Title,
						Code = data.Code
					}

					local newCode = Templates.Code:Clone()
					newCode.Name = Code.Title
					newCode.Parent = parentElement

					newCode.Title.Text = Code.Title
					newCode.Code.Text  = Code.Code
					newCode.Code.Visible = true
					newCode.Code.Font = Enum.Font.Code

					newCode.Visible = true

					function Code:SetTitle(newText)
						Code.Title = newText
						newCode.Title.Text = newText
					end

					function Code:SetCode(code)
						Code.Code = code
						newCode.Code.Text = code
					end

					function Code:Destroy()
						newCode:Destroy()
					end

					return Code
				end

				function Tab:Paragraph(data)
					local Paragraph = {
						Title = data.Title,
						Desc = data.Desc,
						RichText = data.RichText or false,
					}

					local newParagraph = Templates.Paragraph:Clone()
					newParagraph.Name = Paragraph.Title
					newParagraph.Parent = parentElement
					newParagraph.Title.Text = Paragraph.Title

					if Paragraph.Desc and Paragraph.Desc ~= "" then
						newParagraph.Description.Text = Paragraph.Desc
						newParagraph.Description.Visible = true
					else
						newParagraph.Description.Visible = false
					end

					newParagraph.Title.RichText = Paragraph.RichText
					newParagraph.Description.RichText = Paragraph.RichText

					newParagraph.Visible = true

					function Paragraph:SetTitle(title)
						Paragraph.Title = title
						newParagraph.Title.Text = title
					end

					function Paragraph:SetDesc(desc)
						Paragraph.Desc = desc
						newParagraph.Description.Text = desc
						if desc ~= "" then
							newParagraph.Visible = true
						else
							newParagraph.Visible = false
						end
					end

					function Paragraph:Destroy()
						newParagraph:Destroy()
					end

					return Paragraph
				end


				function Tab:Colorpicker()

				end

				function Tab:Toggle(data)
					local Toggle = {
						Title = data.Title,
						Desc = data.Desc,
						State = data.Default or data.Value or false,
						Locked = data.Locked or false,
						Icon = data.Icon,
						Callback = data.Callback or function() end
					}

                    local name = Toggle.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Toggle.State = CONFIG[NAMETAB][name]
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Toggle.State
                    end

					local newToggle = Templates.Toggle:Clone()
					newToggle.Name = Toggle.Title
					newToggle.Parent = parentElement
					_TR(_themeReg.elementBGs, newToggle)
					_TR(_themeReg.strokes,    newToggle.UIStroke)
					newToggle.Title.Text = Toggle.Title

					if Toggle.Icon then
						if string.find(Toggle.Icon, "rbxassetid") or string.match(Toggle.Icon, "%d") then
							newToggle.Title.Fill.Ball.Icon.Image = Toggle.Icon
						else
							newToggle.Title.Fill.Ball.Icon.Image = (IconModule.Icon(Toggle.Icon) and IconModule.Icon(Toggle.Icon)[1]) or Toggle.Icon or ""
							newToggle.Title.Fill.Ball.Icon.ImageRectOffset = (IconModule.Icon(Toggle.Icon) and IconModule.Icon(Toggle.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
							newToggle.Title.Fill.Ball.Icon.ImageRectSize = (IconModule.Icon(Toggle.Icon) and IconModule.Icon(Toggle.Icon)[2].ImageRectSize) or Vector2.new(0,0)
						end
					end

					if Toggle.Desc and Toggle.Desc ~= "" then
						newToggle.Description.Visible = true
						newToggle.Description.Text = Toggle.Desc
					end

					if Toggle.State == true then
						newToggle.Title.Fill.Ball.Position = UDim2.new(0.5, 0,0.5, 0)
						newToggle.Title.Fill.BackgroundColor3 = T.ToggleOn
						newToggle.Title.Fill.Ball.Icon.ImageTransparency = 0
						_TR(_themeReg.toggleOnFills,  newToggle.Title.Fill)
					else
						newToggle.Title.Fill.Ball.Position = UDim2.new(0, 0,0.5, 0)
						newToggle.Title.Fill.BackgroundColor3 = T.ToggleOff
						newToggle.Title.Fill.Ball.Icon.ImageTransparency = 1
						_TR(_themeReg.toggleOffFills, newToggle.Title.Fill)
					end

					if Toggle.Locked then
						-- greyed out
						newToggle.UIStroke.Color = T.StrokeDim
						newToggle.BackgroundColor3 = T.ElementBGDark

						newToggle.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						--newToggle.Title.ClickIcon.ImageColor3 = Color3.fromRGB(75, 77, 83)

						newToggle.Description.TextColor3 = Color3.fromRGB(75, 77, 83)

						newToggle.Title.Fill.BackgroundTransparency = 0.7
						newToggle.Title.Fill.Ball.BackgroundTransparency = 0.7
					end

					newToggle.Visible = true

					newToggle.Title.Fill.MouseEnter:Connect(function()
						if not Toggle.Locked then
							Tween(newToggle.UIStroke, {Color = T.Accent}, TweenConfigs.Global)
						end
					end)

					newToggle.Title.Fill.MouseLeave:Connect(function()
						if not Toggle.Locked then
							Tween(newToggle.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)

							newToggle.BackgroundColor3 = T.ElementBG
							Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						end
					end)

					local function AnimateSwitch(targetState)
						if targetState == true then
							Tween(newToggle.Title.Fill.Ball, {Position = UDim2.new(0.5, 0,0.5, 0)}, TweenConfigs.Global)
							Tween(newToggle.Title.Fill, {BackgroundColor3 = T.ToggleOn}, TweenConfigs.Global)

							Tween(newToggle.Title.Fill.Ball.Icon, {ImageTransparency = 0}, TweenConfigs.Global)
						elseif targetState == false then
							Tween(newToggle.Title.Fill.Ball, {Position = UDim2.new(0, 0,0.5, 0)}, TweenConfigs.Global)
							Tween(newToggle.Title.Fill, {BackgroundColor3 = T.ToggleOff}, TweenConfigs.Global)

							Tween(newToggle.Title.Fill.Ball.Icon, {ImageTransparency = 1}, TweenConfigs.Global)
						end
					end

					local function SetState(newState)
                        if newState == nil then
                            newState = not Toggle.State
                        end

                        AnimateSwitch(newState)

						-- Fix: update theme registry so SetTheme applies correct color
						if newState == true then
							for i, v in ipairs(_themeReg.toggleOffFills) do
								if v == newToggle.Title.Fill then
									table.remove(_themeReg.toggleOffFills, i)
									break
								end
							end
							_TR(_themeReg.toggleOnFills, newToggle.Title.Fill)
						else
							for i, v in ipairs(_themeReg.toggleOnFills) do
								if v == newToggle.Title.Fill then
									table.remove(_themeReg.toggleOnFills, i)
									break
								end
							end
							_TR(_themeReg.toggleOffFills, newToggle.Title.Fill)
						end

						Toggle.State = newState
						Toggle.Callback(Toggle.State)
                        CONFIG[NAMETAB][name] = Toggle.State
                        SAVECONFIG()
						-- no arg will switch the state
					end

					newToggle.Title.Fill.MouseButton1Click:Connect(function()
						if not Toggle.Locked then
							SetState()
						end
					end)

					function Toggle:SetTitle(newText)
						Toggle.Title = newText
						newToggle.Title.Text = newText
					end

					function Toggle:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							Toggle.Desc = newDesc
							newToggle.Description.Text = newDesc
						end
					end

					function Toggle:Set(newState)
						SetState(newState)
					end

					function Toggle:Lock()
						Toggle.Locked = true
						Tween(newToggle, {BackgroundColor3 = T.ElementBGDark}, TweenConfigs.Global)
						Tween(newToggle.UIStroke, {Color = T.StrokeDim}, TweenConfigs.Global)
						Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newToggle.Title.Fill, {BackgroundTransparency = 0.7}, TweenConfigs.Global)
						Tween(newToggle.Title.Fill.Ball, {BackgroundTransparency = 0.7}, TweenConfigs.Global)
					end

					function Toggle:Unlock()
						Toggle.Locked = false
						Tween(newToggle, {BackgroundColor3 = T.ElementBG}, TweenConfigs.Global)
						Tween(newToggle.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
						Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newToggle.Title.Fill, {BackgroundTransparency = 0}, TweenConfigs.Global)
						Tween(newToggle.Title.Fill.Ball, {BackgroundTransparency = 0}, TweenConfigs.Global)
					end

					function Toggle:Destroy()
						newToggle:Destroy()
					end

					Toggle.Callback(Toggle.State)

					return Toggle
				end

				function Tab:Slider(data)
					local Slider = {
						Title = data.Title,
						Desc = data.Desc,
						Step = data.Step or 1,
						Value = {
							Min = data.Value.Min or 0,
							Max = data.Value.Max or nil,
							Default = nil,
						},

						Locked = data.Locked,
						Callback = data.Callback or function() end
					}
					Slider.Value.Default = data.Value.Default or data.Default or data.Value.Min

					local increment = Slider.Step

					local newSlider = Templates.Slider:Clone()

                    local name = Slider.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Slider.Value.Default = CONFIG[NAMETAB][name]
                        print(Slider.Value.Default)
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Slider.Value.Default
                    end

					-- Source slider daur ulang awkoakwoawkaowkaowo

					local Mouse = game.Players.LocalPlayer:GetMouse()

					local newSlider = Templates.Slider:Clone()
					newSlider.Parent = parentElement
					newSlider.Name = Slider.Title
					_TR(_themeReg.elementBGs, newSlider)
					_TR(_themeReg.strokes,    newSlider.UIStroke)
					newSlider.Title.Text = Slider.Title
					if Slider.Desc and Slider.Desc ~= "" then
						newSlider.Description.Visible = true
						newSlider.Description.Text = Slider.Desc
					end
					newSlider.Visible = true

					local function GetRandomGradient()
						local gradient = {}
						for _, g in ipairs(newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient:GetChildren()) do
							if g:IsA("UIGradient") then
								g.Enabled = false
								table.insert(gradient, g)
							end
						end
						local selectedGrad = gradient[math.random(1, #gradient)]
						selectedGrad.Enabled = true
						return selectedGrad
					end

					newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.Size = UDim2.new(0, newSlider.SliderFrame.Frame.Slider.AbsoluteSize.X, 1, 0)
					newSlider.SliderFrame.Frame.Slider:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
						newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.Size = UDim2.new(0, newSlider.SliderFrame.Frame.Slider.AbsoluteSize.X, 1, 0)
					end)

					local lastprop = nil
					newSlider.SliderFrame.Frame.Slider.Fill:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
						if newSlider.SliderFrame.Frame.Slider.Fill.AbsoluteSize.X <= 3 then
							lastprop = newSlider.SliderFrame.Frame.Slider.Fill.AbsoluteSize.X

						end
						if lastprop and newSlider.SliderFrame.Frame.Slider.Fill.AbsoluteSize.X > lastprop then
							GetRandomGradient()
							lastprop = nil
						end
					end)

					GetRandomGradient()


					if Slider.Locked then
						-- greyed out
						newSlider.UIStroke.Color = T.StrokeDim
						newSlider.BackgroundColor3 = T.ElementBGDark

						newSlider.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newSlider.Description.TextColor3 = Color3.fromRGB(75, 77, 83)

						newSlider.SliderFrame.Frame.Slider.UIStroke.Color = T.StrokeDim
						newSlider.SliderFrame.Frame.Slider.BackgroundTransparency = 0.5
						newSlider.SliderFrame.Frame.Slider.Fill.UIStroke.Transparency = 0.5
						newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.BackgroundTransparency = 0.5
						newSlider.SliderFrame.Frame.ValueText.TextTransparency = 0.6
					end

					local Trigger = newSlider.SliderFrame.Frame.Slider.Trigger
					local Label = newSlider.SliderFrame.Frame.ValueText
					local Fill = newSlider.SliderFrame.Frame.Slider.Fill
					local Parent = newSlider

					local default = Slider.Value.Default
					local min = Slider.Value.Min
					local max = Slider.Value.Max
					local increment = increment or 1

					local perc = Slider.Value.Default
					local Percent
					local MouseDown = false

					local Hovering = false			



					local function convertValueToScale(value)
						return (value - min) / (max - min) * (1 - 0) + 0
					end


					Label.Text = tostring(default) or tostring(min)
					--Fill.Size = UDim2.fromScale(1, 1)
					Fill.Size = UDim2.fromScale(convertValueToScale(default), 1)

					-- this also update
					local function Slide()
						MouseDown = true
						if Slider.Locked then return end
						repeat
							task.wait()
							Percent = math.clamp((Mouse.X - Parent.AbsolutePosition.X) / Parent.AbsoluteSize.X, 0, 1)
							perc = min + (Percent * (max - min))

					--[[ New: precision based rounding
					local multiplier = 10 ^ increment
					perc = math.floor(perc * multiplier + 0.5) / multiplier
					perc = math.clamp(perc, min, max)

					-- Format output text
					if perc % 1 == 0 then
						Label.Text = tostring(perc) -- integer, no decimal
					else
						Label.Text = string.format("%."..increment.."f", perc) -- decimal format
					end]]

							-- increment based
							local roundedValue = math.round(perc / increment) * increment
							perc = math.clamp(roundedValue, min, max)

							Tween(Fill, {Size = UDim2.fromScale(convertValueToScale(perc), 1) }, TweenConfigs.Global)

							Label.Text = tostring(perc)
							Slider.Value = perc
							task.spawn(Slider.Callback, perc)
                            CONFIG[NAMETAB][name] = perc
						    SAVECONFIG()
						until MouseDown == false or Slider.Locked == true

						if not Hovering then
							Tween(newSlider.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
						end
					end


					local function Update(value)
						if not value or value > max or value < min then
							return
						end

						local roundedValue = math.round(value / increment) * increment
						perc = math.clamp(roundedValue, min, max)

						Tween(Fill, {Size = UDim2.fromScale(convertValueToScale(value), 1) }, TweenConfigs.Global)
						perc = value

						Label.Text = tostring(perc)
						Slider.Value = perc
						task.spawn(Slider.Callback, perc)
                        CONFIG[NAMETAB][name] = perc
						SAVECONFIG()
					end

					Trigger.MouseEnter:Connect(function()
						Hovering = true
						if not Slider.Locked then
							Tween(newSlider.UIStroke, {Color = T.Accent}, TweenConfigs.Global)
						end
					end)

					Trigger.MouseLeave:Connect(function()
						Hovering = false
						if not Slider.Locked and not MouseDown then
							Tween(newSlider.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
						end
					end)

					-- start sliding
					Trigger.MouseButton1Down:Connect(function()
						Slide()
					end)



					-- stop sliding
					game:GetService("UserInputService").InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							MouseDown = false
						end
					end)

					function Slider:SetTitle(newText)
						Slider.Title = newText
						newSlider.Title.Text = newText
					end

					function Slider:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							Slider.Desc = newDesc
							newSlider.Description.Text = newDesc
						end
					end


					function Slider:Set(value)
						Update(value)
					end


					function Slider:Lock()
						Slider.Locked = true
						Tween(newSlider, {BackgroundColor3 = T.ElementBGDark}, TweenConfigs.Global)
						Tween(newSlider.UIStroke, {Color = T.StrokeDim}, TweenConfigs.Global)
						Tween(newSlider.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newSlider.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newSlider.SliderFrame.Frame.Slider.UIStroke, {Color = T.StrokeDim}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider, {BackgroundTransparency = 0.5}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.UIStroke, {Transparency = 0.5}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient, {BackgroundTransparency = 0.5}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.ValueText, {TextTransparency = 0.6}, TweenConfigs.Global)
					end

					function Slider:Unlock()
						Slider.Locked = false

						Tween(newSlider, {BackgroundColor3 = T.ElementBG}, TweenConfigs.Global)
						Tween(newSlider.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
						Tween(newSlider.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newSlider.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newSlider.SliderFrame.Frame.Slider.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider, {BackgroundTransparency = 0}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.UIStroke, {Transparency = 0}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient, {BackgroundTransparency = 0}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.ValueText, {TextTransparency = 0}, TweenConfigs.Global)
					end

					function Slider:Destroy()
						newSlider:Destroy()
					end

					Slider.Callback(default)

					return Slider
				end

				function Tab:Input(data)
					local Input = {
						Title = data.Title,
						Desc = data.Desc,
						Placeholder = data.Placeholder or "",
						Default = data.Default or data.Value or "",
						Text = data.Default or data.Value or "",
						ClearTextOnFocus = data.ClearTextOnFocus or false,
						Locked = data.Locked or false,
						MultiLine = data.MultiLine or false,
						Callback = data.Callback or function() end
					}

                    local name = Input.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Input.Default = CONFIG[NAMETAB][name]
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Input.Default
                    end

					local newInput = Templates.TextBox:Clone()
					newInput.Name = Input.Title
					newInput.Parent = parentElement
					_TR(_themeReg.elementBGs,   newInput)
					_TR(_themeReg.strokes,      newInput.UIStroke)
					_TR(_themeReg.elementBGDs,  newInput.BoxFrame.Frame)
					_TR(_themeReg.strokes,      newInput.BoxFrame.Frame.UIStroke)
					newInput.Title.Text = Input.Title
					if Input.Desc and Input.Desc ~= "" then
						newInput.Description.Text = Input.Desc
						newInput.Description.Visible = true
					else
						newInput.Description.Visible = false
					end

					if Input.Locked then
						-- greyed out
						newInput.UIStroke.Color = T.StrokeDim
						newInput.BackgroundColor3 = T.ElementBGDark

						newInput.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newInput.Description.TextColor3 = Color3.fromRGB(75, 77, 83)

						newInput.BoxFrame.Frame.BackgroundColor3 = T.ElementBGDark
						newInput.BoxFrame.Frame.UIStroke.Color = T.StrokeDim
						newInput.BoxFrame.Frame.TextBox.TextColor3 = Color3.fromRGB(75, 77, 83)
						newInput.BoxFrame.Frame.TextBox.PlaceholderColor3 = Color3.fromRGB(75, 77, 83)

						newInput.BoxFrame.Frame.TextBox.Active = false
						newInput.BoxFrame.Frame.TextBox.Interactable = false
						newInput.BoxFrame.Frame.TextBox.TextEditable = false
					end

					newInput.BoxFrame.Frame.TextBox.Text = Input.Default
					newInput.BoxFrame.Frame.TextBox.PlaceholderText = Input.Placeholder
					newInput.BoxFrame.Frame.TextBox.MultiLine = Input.MultiLine

					if Input.MultiLine then
						newInput.BoxFrame.Frame.TextBox.AutomaticSize = Enum.AutomaticSize.Y
					else
						newInput.BoxFrame.Frame.TextBox.AutomaticSize = Enum.AutomaticSize.None
					end

					newInput.BoxFrame.Frame.TextBox.ClearTextOnFocus = Input.ClearTextOnFocus

					newInput.Visible = true

					newInput.BoxFrame.Frame.TextBox.MouseEnter:Connect(function()
						if not Input.Locked then
							Tween(newInput.UIStroke, {Color = T.Accent}, TweenConfigs.Global)
						end
					end)

					newInput.BoxFrame.Frame.TextBox.MouseLeave:Connect(function()
						if not Input.Locked then
							Tween(newInput.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
						end
					end)

					newInput.BoxFrame.Frame.TextBox.Focused:Connect(function()
						if not Input.Locked then
							Tween(newInput.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
							Tween(newInput.BoxFrame.Frame.UIStroke, {Color = T.Accent}, TweenConfigs.Global)
						end
					end)

					newInput.BoxFrame.Frame.TextBox.FocusLost:Connect(function()
						if not Input.Locked then
							Tween(newInput.BoxFrame.Frame.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
							Input.Text = newInput.BoxFrame.Frame.TextBox.Text
							Input.Callback(Input.Text)
                            CONFIG[NAMETAB][name] = Input.Text
						    SAVECONFIG()
						end
					end)

					function Input:Set(newText)
						newInput.BoxFrame.Frame.TextBox.Text = newText
						Input.Text = newText
						Input.Callback(newText)
                        CONFIG[NAMETAB][name] = newText
                        SAVECONFIG()
					end

					function Input:SetTitle(newText)
						newInput.Title.Text = newText
					end

					function Input:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							newInput.Description.Text = newDesc
						end
					end

					function Input:SetPlaceholder(newtext)
						if newtext then
							newInput.Description.Placeholder = newtext
						end
					end

					function Input:Lock()
						Input.Locked = true

						Tween(newInput.UIStroke, {Color = T.StrokeDim}, TweenConfigs.Global)
						Tween(newInput, {BackgroundColor3 = T.ElementBGDark}, TweenConfigs.Global)

						Tween(newInput.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newInput.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame, {BackgroundColor3 = T.ElementBGDark}, TweenConfigs.Global)
						Tween(newInput.BoxFrame.Frame.UIStroke, {Color = T.StrokeDim}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame.TextBox, {
							TextColor3 = Color3.fromRGB(75, 77, 83),
							PlaceholderColor3 = Color3.fromRGB(75, 77, 83)
						}, TweenConfigs.Global)

						newInput.BoxFrame.Frame.TextBox.Active = false
						newInput.BoxFrame.Frame.TextBox.Interactable = false
						newInput.BoxFrame.Frame.TextBox.TextEditable = false
					end

					function Input:Unlock()
						Input.Locked = false

						Tween(newInput.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
						Tween(newInput, {BackgroundColor3 = T.ElementBG}, TweenConfigs.Global)

						Tween(newInput.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newInput.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame, {BackgroundColor3 = T.ElementBG}, TweenConfigs.Global)
						Tween(newInput.BoxFrame.Frame.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame.TextBox, {
							TextColor3 = Color3.fromRGB(196, 203, 218),
							PlaceholderColor3 = Color3.fromRGB(139, 139, 139)
						}, TweenConfigs.Global)

						newInput.BoxFrame.Frame.TextBox.Active = true
						newInput.BoxFrame.Frame.TextBox.Interactable = true
						newInput.BoxFrame.Frame.TextBox.TextEditable = true
					end

					function Input:Destroy()
						newInput:Destroy()
					end

					Input.Callback(Input.Default)

					return Input
				end


				local function AddDropdownButton(name, folder)
					local newButton = Templates.DropdownButton:Clone()
					newButton.Parent = folder or nil
					newButton.Name = name
					newButton.Frame.Title.Text = name

					local function GetRandomGradient()
						local gradient = {}
						for _, g in ipairs(newButton.Frame:GetChildren()) do
							if g:IsA("UIGradient") then
								g.Enabled = false
								table.insert(gradient, g)
							end
						end
						local selectedGrad = gradient[math.random(1, #gradient)]
						selectedGrad.Enabled = true
						return selectedGrad
					end

					GetRandomGradient()

					return newButton
				end

				local function TableToString(tbl)
					return table.concat(tbl, ", ")
				end


				function Tab:Dropdown(data)
					local Dropdown = {
						Title = data.Title,
						Desc = data.Desc,

						Multi = data.Multi or false,
						Values = data.Values or {},
						Value = data.Value or data.Default,

						AllowNone = data.AllowNone or false, -- multidropdown only
						Locked = data.Locked or false,
						Callback = data.Callback or function() end
					}

					if not Dropdown.Multi and Dropdown.AllowNone then
						Dropdown.Values = {"None", unpack(Dropdown.Values)}
					end

                    local name = Dropdown.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Dropdown.Value = CONFIG[NAMETAB][name]
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Dropdown.Value
                    end

                    if (not Dropdown.Multi and Dropdown.AllowNone) and Dropdown.Value == "" then Dropdown.Value = "None" end

					local selected = nil

					local newDropdown = Templates.Dropdown:Clone()
					local dropdownFolder = Templates.DropdownList:Clone()
					dropdownFolder.Name = Dropdown.Title
					dropdownFolder.Parent = newWindow.DropdownSelection.Dropdowns

					newDropdown.Parent = parentElement
					newDropdown.Name = Dropdown.Title
					newDropdown.Title.Text = Dropdown.Title
					_TR(_themeReg.elementBGs, newDropdown)
					_TR(_themeReg.strokes,    newDropdown.UIStroke)

					if Dropdown.Desc and Dropdown.Desc ~= "" then
						newDropdown.Description.Visible = true
						newDropdown.Description.Text = Dropdown.Desc
					else
						newDropdown.Description.Visible = false
					end

					if Dropdown.Locked then
						-- greyed out
						newDropdown.UIStroke.Color = T.StrokeDim
						newDropdown.BackgroundColor3 = T.ElementBGDark

						newDropdown.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newDropdown.Description.TextColor3 = Color3.fromRGB(75, 77, 83)
						newDropdown.Title.ClickIcon.ImageColor3 = Color3.fromRGB(75, 77, 83)

						newDropdown.Title.BoxFrame.Trigger.BackgroundColor3 = T.ElementBGDark
						newDropdown.Title.BoxFrame.Trigger.UIStroke.Color = T.StrokeDim
						newDropdown.Title.BoxFrame.Trigger.Title.TextColor3 = Color3.fromRGB(75, 77, 83)

						newDropdown.Active = false
						newDropdown.Interactable = false
					end

					newDropdown.Visible = true

					local function SelectValue(multi, newvalue)
						if not multi then
							local targetButton = dropdownFolder.DropdownItems:FindFirstChild(newvalue)
							local targetbuttonSearch = dropdownFolder.DropdownItemsSearch:FindFirstChild(newvalue)

							selected = newvalue
							Dropdown.Value = selected
							newDropdown.Title.BoxFrame.Trigger.Title.Text = selected

							for _,otherButton in dropdownFolder.DropdownItems:GetChildren() do
								if otherButton:IsA("GuiButton") and otherButton.Name ~= newvalue then
									Tween(otherButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
									Tween(otherButton.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
								end
							end
							for _,otherButton in dropdownFolder.DropdownItemsSearch:GetChildren() do
								if otherButton:IsA("GuiButton") and otherButton.Name ~= newvalue then
									Tween(otherButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
									Tween(otherButton.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
								end
							end

							Tween(targetButton.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetButton.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetButton.UIStroke, {Color = T.Accent}, TweenConfigs.Global)
							Tween(targetButton.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)

							Tween(targetbuttonSearch.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetbuttonSearch.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetbuttonSearch.UIStroke, {Color = T.Accent}, TweenConfigs.Global)
							Tween(targetbuttonSearch.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)
                            if selected == "None" then return "" end
							return selected	
						elseif multi then
							for _, newSelected in newvalue do
								local targetButton = dropdownFolder.DropdownItems:FindFirstChild(newSelected)
								local targetbuttonSearch = dropdownFolder.DropdownItemsSearch:FindFirstChild(newSelected)

								local idx = table.find(selected, newSelected) if idx then
									-- unselect

									-- if allownone is false, this will block the selection if the predicted table is empty
									if not Dropdown.AllowNone and #Dropdown.Value == 1 then return end

									table.remove(selected, idx)

									Tween(targetButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(targetButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(targetButton.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
									Tween(targetButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)

									Tween(targetbuttonSearch.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
								else
									-- select
									table.insert(selected, newSelected)

									Tween(targetButton.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetButton.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetButton.UIStroke, {Color = T.Accent}, TweenConfigs.Global)
									Tween(targetButton.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)

									Tween(targetbuttonSearch.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.UIStroke, {Color = T.Accent}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)
								end
							end

							Dropdown.Value = selected
							newDropdown.Title.BoxFrame.Trigger.Title.Text = TableToString(selected)
							return selected
						end
					end

					local function AddButtons(buttonListUnfiltered, refresh)
						local seen = {}
						local buttonList = {}

						for i, value in buttonListUnfiltered do
							if typeof(value) == "string" then
								if not seen[value] then
									seen[value] = 1
									table.insert(buttonList, value)
								else
									seen[value] = seen[value] + 1
									table.insert(buttonList, value.." ("..seen[value]..")")
								end
							end
						end

						if refresh then
							Dropdown.Values = buttonList

							for _,oldButton in dropdownFolder.DropdownItems:GetChildren() do
								if oldButton:IsA("GuiButton") then
									oldButton:Destroy()
								end
							end
							for _,oldButton in dropdownFolder.DropdownItemsSearch:GetChildren() do
								if oldButton:IsA("GuiButton") then
									oldButton:Destroy()
								end
							end
						end


						if not Dropdown.Multi then
							if refresh then
								selected = nil
								newDropdown.Title.BoxFrame.Trigger.Title.Text = ""
							end

							for _, buttonName in buttonList do
								local newDropdownButton = AddDropdownButton(buttonName, dropdownFolder.DropdownItems)
								local newDropdownButtonSearch = AddDropdownButton(buttonName, dropdownFolder.DropdownItemsSearch)

								newDropdownButton.Visible = true
								newDropdownButtonSearch.Visible = true

								if selected == buttonName then
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.UIStroke.Color = T.Accent
									newDropdownButton.Frame.BackgroundTransparency = 0
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)

									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.UIStroke.Color = T.Accent
									newDropdownButtonSearch.Frame.BackgroundTransparency = 0
									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
								end


								newDropdownButton.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(false, buttonName)
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)

								-- search button

								newDropdownButtonSearch.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(false, buttonName)
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)
							end
						elseif Dropdown.Multi then

							if refresh then
								selected = {}
								newDropdown.Title.BoxFrame.Trigger.Title.Text = TableToString(selected)
							end

							for _, buttonName in buttonList do
								local newDropdownButton = AddDropdownButton(buttonName, dropdownFolder.DropdownItems)
								local newDropdownButtonSearch = AddDropdownButton(buttonName, dropdownFolder.DropdownItemsSearch)

								newDropdownButton.Visible = true
								newDropdownButtonSearch.Visible = true

								if table.find(selected, buttonName) then
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.UIStroke.Color = T.Accent
									newDropdownButton.Frame.BackgroundTransparency = 0
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)

									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.UIStroke.Color = T.Accent
									newDropdownButtonSearch.Frame.BackgroundTransparency = 0
									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
								end


								newDropdownButton.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(true, {buttonName})
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)

								-- search button

								newDropdownButtonSearch.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(true, {buttonName})
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)
							end
						end
					end

					if not Dropdown.Multi then
						-- non multi
						selected = Dropdown.Value or nil
						newDropdown.Title.BoxFrame.Trigger.Title.Text = selected

						AddButtons(Dropdown.Values)
					elseif Dropdown.Multi then
						-- multi
						newDropdown.Title.ClickIcon.Image = "rbxassetid://91415671397056"

						if type(Dropdown.Value) == "string" then
							Dropdown.Value = {Dropdown.Value}
						end
						selected = Dropdown.Value or {}
						newDropdown.Title.BoxFrame.Trigger.Title.Text = TableToString(selected)

						AddButtons(Dropdown.Values)
					end

					newDropdown.Title.BoxFrame.Trigger.MouseButton1Click:Connect(function()
						DropdownPopup(nil, Dropdown.Title)
					end)

					function Dropdown:SetTitle(newText)
						Dropdown.Title = newText
						newDropdown.Title.Text = newText
					end

					function Dropdown:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							Dropdown.Desc = newDesc
							newDropdown.Description.Text = newDesc
						end
					end

					function Dropdown:Refresh(newvals, preSelected)
						if preSelected ~= nil then selected = preSelected end
						AddButtons(newvals, true)
					end

					function Dropdown:Select(newval)
						Dropdown.Callback(SelectValue(Dropdown.Multi, newval))
                        CONFIG[NAMETAB][name] = newval
						SAVECONFIG()
					end

					function Dropdown:Lock()
						Dropdown.Locked = true
						Tween(newDropdown.UIStroke, {Color = T.StrokeDim}, TweenConfigs.Global)
						Tween(newDropdown, {BackgroundColor3 = T.ElementBGDark}, TweenConfigs.Global)

						Tween(newDropdown.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newDropdown.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newDropdown.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newDropdown.Title.BoxFrame.Trigger, {BackgroundColor3 = T.ElementBGDark}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.UIStroke, {Color = T.StrokeDim}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						newDropdown.Active = false
						newDropdown.Interactable = false
					end

					function Dropdown:Unlock()
						Dropdown.Locked = false
						Tween(newDropdown.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
						Tween(newDropdown, {BackgroundColor3 = T.ElementBG}, TweenConfigs.Global)

						Tween(newDropdown.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newDropdown.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newDropdown.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newDropdown.Title.BoxFrame.Trigger, {BackgroundColor3 = T.ElementBG}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.UIStroke, {Color = T.Stroke}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						newDropdown.Active = true
						newDropdown.Interactable = true
					end

					function Dropdown:Destroy()
						newDropdown:Destroy()
					end

                    if (not Dropdown.Multi and Dropdown.AllowNone) and Dropdown.Value == "None" then
                        Dropdown.Callback("")
                    else
                        Dropdown.Callback(Dropdown.Value)
                    end

					return Dropdown
				end

				function Tab:Keybind(data)
					local Keybind = {
						Title    = data.Title,
						Desc     = data.Desc,
						Value    = data.Value or data.Default or "None",
						Locked   = data.Locked or false,
						Callback = data.Callback or function() end,
					}

					local name = Keybind.Title
					if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
						Keybind.Value = CONFIG[NAMETAB][name]
					elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
						CONFIG[NAMETAB][name] = Keybind.Value
					end

					-- Container frame (styled same as other elements)
					local frame = Instance.new("Frame")
					frame.Name = Keybind.Title
					frame.BackgroundColor3 = T.ElementBG
					frame.BorderSizePixel  = 0
					frame.Size             = UDim2.new(1, 0, 0, 50)
					frame.AutomaticSize    = Enum.AutomaticSize.Y
					frame.Parent           = parentElement

					local uiCorner = Instance.new("UICorner", frame)
					uiCorner.CornerRadius = UDim.new(0, 6)

					local uiStroke = Instance.new("UIStroke", frame)
					uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					uiStroke.Thickness       = 1.5
					uiStroke.Color           = T.Stroke

					local uiPadding = Instance.new("UIPadding", frame)
					uiPadding.PaddingLeft   = UDim.new(0, 12)
					uiPadding.PaddingRight  = UDim.new(0, 12)
					uiPadding.PaddingTop    = UDim.new(0, 10)
					uiPadding.PaddingBottom = UDim.new(0, 10)

					-- Title
					local titleLabel = Instance.new("TextLabel", frame)
					titleLabel.Name               = "Title"
					titleLabel.BackgroundTransparency = 1
					titleLabel.Size               = UDim2.new(1, -110, 0, 20)
					titleLabel.Position           = UDim2.new(0, 0, 0, 0)
					titleLabel.Text               = Keybind.Title
					titleLabel.TextColor3         = Color3.fromRGB(196, 203, 218)
					titleLabel.TextSize           = 14
					titleLabel.FontFace           = Font.new("rbxassetid://11702779517", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
					titleLabel.TextXAlignment     = Enum.TextXAlignment.Left
					titleLabel.TextWrapped        = true

					-- Description
					local descLabel = Instance.new("TextLabel", frame)
					descLabel.Name               = "Description"
					descLabel.BackgroundTransparency = 1
					descLabel.Size               = UDim2.new(1, -110, 0, 16)
					descLabel.Position           = UDim2.new(0, 0, 0, 22)
					descLabel.Text               = Keybind.Desc or ""
					descLabel.TextColor3         = Color3.fromRGB(130, 137, 155)
					descLabel.TextSize           = 12
					descLabel.FontFace           = Font.new("rbxassetid://11702779517", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					descLabel.TextXAlignment     = Enum.TextXAlignment.Left
					descLabel.Visible            = Keybind.Desc ~= nil and Keybind.Desc ~= ""
					descLabel.TextWrapped        = true

					-- Key display button
					local keyBtn = Instance.new("TextButton", frame)
					keyBtn.Name              = "KeyButton"
					keyBtn.BackgroundColor3  = T.ElementBGDark
					keyBtn.BorderSizePixel   = 0
					keyBtn.AnchorPoint       = Vector2.new(1, 0.5)
					keyBtn.Size              = UDim2.new(0, 90, 0, 28)
					keyBtn.Position          = UDim2.new(1, 0, 0.5, 0)
					keyBtn.Text              = Keybind.Value
					keyBtn.TextColor3        = Color3.fromRGB(197, 204, 219)
					keyBtn.TextSize          = 13
					keyBtn.FontFace          = Font.new("rbxassetid://11702779517", Enum.FontWeight.Medium, Enum.FontStyle.Normal)

					local keyCorner = Instance.new("UICorner", keyBtn)
					keyCorner.CornerRadius = UDim.new(0, 5)

					local keyStroke = Instance.new("UIStroke", keyBtn)
					keyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					keyStroke.Thickness       = 1.5
					keyStroke.Color           = T.Stroke

					frame.Visible = true

					-- Locked state appearance
					if Keybind.Locked then
						uiStroke.Color          = T.StrokeDim
						frame.BackgroundColor3  = T.ElementBGDark
						titleLabel.TextColor3   = Color3.fromRGB(75, 77, 83)
						descLabel.TextColor3    = Color3.fromRGB(75, 77, 83)
						keyBtn.BackgroundColor3 = T.ElementBGDark
						keyBtn.TextColor3       = Color3.fromRGB(75, 77, 83)
					end

					local listening = false

					local function setKey(keyName)
						Keybind.Value          = keyName
						keyBtn.Text            = keyName
						CONFIG[NAMETAB][name]  = keyName
						SAVECONFIG()
						Keybind.Callback(keyName)
					end

					-- Click → listen for next key
					keyBtn.MouseButton1Click:Connect(function()
						if Keybind.Locked or listening then return end
						listening    = true
						keyBtn.Text  = "..."
						Tween(uiStroke, {Color = T.Accent}, TweenConfigs.Global)
						local conn
						conn = game:GetService("UserInputService").InputBegan:Connect(function(input, gp)
							if gp then return end
							if input.UserInputType == Enum.UserInputType.Keyboard then
								conn:Disconnect()
								listening = false
								setKey(input.KeyCode.Name)
								Tween(uiStroke, {Color = T.Stroke}, TweenConfigs.Global)
							end
						end)
					end)

					frame.MouseEnter:Connect(function()
						if not Keybind.Locked then
							Tween(uiStroke, {Color = T.Accent}, TweenConfigs.Global)
						end
					end)

					frame.MouseLeave:Connect(function()
						if not Keybind.Locked and not listening then
							Tween(uiStroke, {Color = T.Stroke}, TweenConfigs.Global)
						end
					end)

					-- API
					function Keybind:Set(keyName)
						setKey(keyName)
					end

					function Keybind:Lock()
						Keybind.Locked = true
						Tween(frame,      {BackgroundColor3 = T.ElementBGDark},  TweenConfigs.Global)
						Tween(uiStroke,   {Color = T.StrokeDim},             TweenConfigs.Global)
						Tween(titleLabel, {TextColor3 = Color3.fromRGB(75, 77, 83)},        TweenConfigs.Global)
						Tween(descLabel,  {TextColor3 = Color3.fromRGB(75, 77, 83)},        TweenConfigs.Global)
					end

					function Keybind:Unlock()
						Keybind.Locked = false
						Tween(frame,      {BackgroundColor3 = T.ElementBG},  TweenConfigs.Global)
						Tween(uiStroke,   {Color = T.Stroke},             TweenConfigs.Global)
						Tween(titleLabel, {TextColor3 = Color3.fromRGB(196, 203, 218)},     TweenConfigs.Global)
						Tween(descLabel,  {TextColor3 = Color3.fromRGB(130, 137, 155)},     TweenConfigs.Global)
					end

					function Keybind:Destroy()
						frame:Destroy()
					end

					Keybind.Callback(Keybind.Value)

					return Keybind
				end

				return Tab
			end


			function Window:SelectTab(index)
				local tabtarget = TabIndexList[index]
				if tabtarget then
					SelectTab(tabtarget.Name)
				end
			end

			function Window:Divider()
				local newDivier = Templates.Divider:Clone()
				newDivier.Parent = newWindow.TabButtons.Lists
				newDivier.Visible = true
			end

			function Window:SetToggleKey(newKey)
				if type(newKey) == "string" then
					Window.ToggleKey = Enum.KeyCode[newKey]
				else
					Window.ToggleKey = newKey
				end
			end

			function Window:EditOpenButton()

			end

			function Window:SetIconSize(size)
				iconSize = size
				for _, imgBtn in ipairs(tabIconRefs) do
					pcall(function()
						imgBtn.Size = UDim2.new(0, size, 0, size)
					end)
				end
			end

			function Window:Dialog(data)
				local Dialog = {
					Title = data.Title,
					Content = data.Content,
					Icon = data.Icon,
					Buttons = data.Buttons or {},

					Size = nil,
					PressDecreaseSize = UDim2.fromOffset(5,5)
				}

				local newDialog = Templates.DialogElements.Dialog:Clone()
				local newDialogDarkOverlay = Templates.DialogElements.DarkOverlayDialog:Clone()

				newDialog.Title.TextLabel.Text = Dialog.Title
				if Dialog and Dialog ~= "" then
					newDialog.Content.Visible = true
					newDialog.Content.TextLabel.Text = Dialog.Content
				end

				if Dialog.Icon then
					if string.find(Dialog.Icon, "rbxassetid") or string.match(Dialog.Icon, "%d") then
						newDialog.Title.Icon.Image = Dialog.Icon
					else
						newDialog.Title.Icon.Image = (IconModule.Icon(Dialog.Icon) and IconModule.Icon(Dialog.Icon)[1]) or Dialog.Icon or ""
						newDialog.Title.Icon.ImageRectOffset = (IconModule.Icon(Dialog.Icon) and IconModule.Icon(Dialog.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
						newDialog.Title.Icon.ImageRectSize = (IconModule.Icon(Dialog.Icon) and IconModule.Icon(Dialog.Icon)[2].ImageRectSize) or Vector2.new(0,0)
					end
					newDialog.Title.Icon.Visible = true
				end

				newDialog.Parent = newWindow
				newDialogDarkOverlay.Parent = newWindow

				Dialog.Size = UDim2.fromOffset(newDialog.AbsoluteSize.X, newDialog.AbsoluteSize.Y)
				--newDialog.Size = UDim2.fromOffset(0,0)
				newDialogDarkOverlay.Transparency = 1

				for _, button in Dialog.Buttons do
					local buttonData = {
						Title = button.Title or "Button",
						Callback = button.Callback or function() end
					}

					local newButton = Templates.DialogElements.DialogButton:Clone()
					local originalSize = newButton.Button.Size

					newButton.Button.Label.Text = buttonData.Title

					newButton.Button.MouseButton1Click:Connect(function()
						buttonData.Callback()

						local tw = Tween(newDialogDarkOverlay, {Transparency = 1}, TweenConfigs.Global)
						--local tw = Tween(newDialog, {Size = UDim2.fromOffset(0,0)}, TweenConfigs.PopupClose)
						newDialog:Destroy()
						tw.Completed:Wait()
						newDialogDarkOverlay:Destroy()

					end)

					newButton.Button.MouseButton1Down:Connect(function()
						Tween(newButton.Button, {Size = originalSize - Dialog.PressDecreaseSize}, TweenConfigs.Global)
					end)

					newButton.Button.MouseButton1Up:Connect(function()
						Tween(newButton.Button, {Size = originalSize}, TweenConfigs.Global)
					end)

					newButton.Button.MouseLeave:Connect(function()
						Tween(newButton.Button, {Size = originalSize}, TweenConfigs.Global)
					end)

					newButton.Parent = newDialog.Buttons
					newButton.Visible = true
				end

				--Tween(newDialog, {Size = Dialog.Size}, TweenConfigs.PopupOpen)
				Tween(newDialogDarkOverlay, {Transparency = 0.6}, TweenConfigs.Global)

				newDialog.Visible = true
				newDialogDarkOverlay.Visible = true



				return Dialog
			end

			-- window misc top bar
			local oldFloatingSize = newFloatingIcon.Size
			local oldWindowSize = Window.Size

			local oldWindowSizeMaximize = Window.Size
			local oldWindowPositionMaximize = newWindow.Position
			local maximizedWindow = false

			local windowDraggable = Draggable(newWindow.TopFrame, newWindow)
			Draggable(newFloatingIcon, newFloatingIcon)

			newWindow.Visible = true
			newWindow.Size = UDim2.fromOffset(0,0)

			local windowstate = newWindow.Visible
			local timeout = false
			local function ToggleWindow(state)
				if state == true then
					oldFloatingIcon = newFloatingIcon.Size

					newWindow.Size = UDim2.fromOffset(0,0)
					newWindow.Visible = true

					Tween(newFloatingIcon, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.Global)
					Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global)
						.Completed:Wait()
					newWindow.Tabs.Visible = true
					newWindow.TabButtons.Visible = true

					newFloatingIcon.Visible = false
				elseif state == false then
					oldWindowSize = newWindow.Size

					newFloatingIcon.Size = UDim2.fromOffset(0,0)
					newFloatingIcon.Visible = true

					newWindow.Tabs.Visible = false
					newWindow.TabButtons.Visible = false

					Tween(newFloatingIcon, {Size = oldFloatingSize}, TweenConfigs.Global)
					Tween(newWindow, {Size = UDim2.fromOffset(0,0)}, TweenConfigs.Global)
						.Completed:Wait()
					newWindow.Visible = false
				else
					if windowstate then
						oldWindowSize = newWindow.Size

						newFloatingIcon.Size = UDim2.fromOffset(0,0)
						newFloatingIcon.Visible = true

						newWindow.Tabs.Visible = false
						newWindow.TabButtons.Visible = false
						newWindow.DropShadow.Visible = false

						Tween(newFloatingIcon, {Size = oldFloatingSize}, TweenConfigs.Global)
						Tween(newWindow, {Size = UDim2.fromOffset(0,0)}, TweenConfigs.Global)
							.Completed:Wait()
						newWindow.Visible = false

						windowstate = false
					else
						oldFloatingIcon = newFloatingIcon.Size

						newWindow.Size = UDim2.fromOffset(0,0)
						newWindow.Visible = true

						newWindow.DropShadow.Visible = true

						Tween(newFloatingIcon, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.Global)
						Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global)
							.Completed:Wait()
						newWindow.Tabs.Visible = true
						newWindow.TabButtons.Visible = true

						newFloatingIcon.Visible = false

						windowstate = true
					end
				end
			end

			newWindow.TopFrame.Hide.MouseButton1Click:Connect(function()
				if not timeout then
					timeout = true
					ToggleWindow(false)
					task.delay(TweenConfigs.Global.Duration, function()
						timeout = false
					end)
				end
			end)

			newFloatingIcon.Open.MouseButton1Click:Connect(function()
				if not timeout then
					timeout = true
					ToggleWindow(true)
					task.delay(TweenConfigs.Global.Duration, function()
						timeout = false
					end)
				end
			end)

			newWindow.TopFrame.Close.MouseButton1Click:Connect(function()
				-- :Destroy() will in result of errors :(
				Window:Dialog({
					Icon = "triangle-alert",
					Title = "Close Window",
					Content = "Do you want to close this window? You will not able to open it again.",
					Buttons = {
						{
							Title = "Cancel"
						},
						{
							Title = "Close Window",
							Callback = function()
								windowFolder.Parent = nil
							end,
						}
					}
				})
			end)

			newWindow.TopFrame.Maximize.MouseButton1Click:Connect(function()
				if not maximizedWindow then
					-- maximizing
					windowDraggable:SetAllowDragging(false)
					oldWindowSizeMaximize = newWindow.Size
					oldWindowPositionMaximize = newWindow.Position
					Tween(newWindow, {Size = UDim2.new(1,0,1,0)}, TweenConfigs.Global)
					Tween(newWindow, {Position = UDim2.new(0.5,0,0.5,0)}, TweenConfigs.Global)

					Tween(newWindow.UICorner, {CornerRadius = UDim.new(0,0)}, TweenConfigs.Global)

					maximizedWindow = true
				else
					-- minimizing
					windowDraggable:SetAllowDragging(true)
					Tween(newWindow, {Size = oldWindowSizeMaximize}, TweenConfigs.Global)
					Tween(newWindow, {Position = oldWindowPositionMaximize}, TweenConfigs.Global)

					Tween(newWindow.UICorner, {CornerRadius = UDim.new(0,10)}, TweenConfigs.Global)

					maximizedWindow = false
				end
			end)

			Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global)

			-- Keybind to open newWindow
			UIS.InputBegan:Connect(function(input, gpe)
				if not timeout and not gpe and input.KeyCode == Window.ToggleKey then
					timeout = true
					ToggleWindow()
					task.delay(TweenConfigs.Global.Duration, function()
						timeout = false
					end)
				end
			end)

			return Window
		end

		function LIB:Notify(data)
			local Notification = {}

			local Notif = {
				Title = data.Title,
				Content = data.Content,
				Icon = data.Icon,
				Duration = data.Duration or 5
			}

			local new = Templates.Notification:Clone()

			if #Windows == 1 and Windows[1].Visible and Windows[1].Tabs.Visible then
				new.Parent = Windows[1].NotificationFrame.NotificationList
			else
				new.Parent = Gui.NotificationList
			end
			new.Items.Frame.Title.Text = Notif.Title
			new.Items.Frame.Content.Text = Notif.Content 

			new.Items.Frame.Title.Icon.Image = (IconModule.Icon(Notif.Icon) and IconModule.Icon(Notif.Icon)[1]) or Notif.Icon or ""
			new.Items.Frame.Title.Icon.ImageRectOffset = (IconModule.Icon(Notif.Icon) and IconModule.Icon(Notif.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
			new.Items.Frame.Title.Icon.ImageRectSize = (IconModule.Icon(Notif.Icon) and IconModule.Icon(Notif.Icon)[2].ImageRectSize) or Vector2.new(0,0)

			new.Items.Position = UDim2.new(0.75, 0, 0, 0)
			new.Visible = true

			local function Close()
				if new then
					local close = Tween(new.Items, {Position = UDim2.new(0.75,0,0,0)}, TweenConfigs.Notification)
					task.wait(TweenConfigs.Notification.Duration - (TweenConfigs.Notification.Duration / 2))
					if new then
						new:Destroy()
					end
					new = nil
				end
			end

			new.Items.Frame.Title.Close.MouseButton1Click:Connect(Close)

			local open = Tween(new.Items, {Position = UDim2.new(0,0,0,0)}, TweenConfigs.Notification)
			open.Completed:Connect(function()
				Tween(new.Items.TimerBarFill.Bar, {Size = UDim2.new(0,0,1,0)}, {Duration = Notif.Duration})
				task.delay(Notif.Duration, Close)
			end)

			function Notification:Close()
				Close()
			end

			return Notification
		end

		return LIB

	end;
};
NovaHub_MODULES[NovaHub["3f"]] = {
	Closure = function()
		local script = NovaHub["3f"];
		-- https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/lucide/dist/Icons.lua

		local Icons = {
			["lucide"] = require(script.Lucide),
		}


		local IconModule = {
			IconsType = "lucide"
		}

		function IconModule.SetIconsType(iconType)
			IconModule.IconsType = iconType
		end

		function IconModule.Icon(Icon, Type) -- Type: optional
			local iconType = Icons[Type or IconModule.IconsType]

			if iconType.Icons[Icon] then
				return { iconType.Spritesheets[tostring(iconType.Icons[Icon].Image)], iconType.Icons[Icon] }
			end
			return nil
		end

		return IconModule

	end;
};
NovaHub_MODULES[NovaHub["40"]] = {
	Closure = function()
		local script = NovaHub["40"];-- Generated by .ftgs 
		-- Github: https://github.com/Footagesus

		return { Spritesheets = {
			["1"] = "rbxassetid://131526378523863",
			["10"] = "rbxassetid://98656588890340",
			["11"] = "rbxassetid://122516128999742",
			["12"] = "rbxassetid://136045238860745",
			["13"] = "rbxassetid://138056954680929",
			["14"] = "rbxassetid://139241675471365",
			["15"] = "rbxassetid://120281540002144",
			["16"] = "rbxassetid://122481504913348",
			["2"] = "rbxassetid://125136326597802",
			["3"] = "rbxassetid://132619645919851",
			["4"] = "rbxassetid://124546836680911",
			["5"] = "rbxassetid://138714413596023",
			["6"] = "rbxassetid://95318701976229",
			["7"] = "rbxassetid://87465848394141",
			["8"] = "rbxassetid://77771201330939",
			["9"] = "rbxassetid://126006375824005",
		}, Icons = {
				["a-arrow-down"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["a-arrow-up"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["a-large-small"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["accessibility"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["activity"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["air-vent"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["airplay"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-clock-check"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-clock-minus"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-clock-off"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-clock-plus"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-clock"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-smoke"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["album"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-center-horizontal"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-center-vertical"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-center"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-end-horizontal"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-end-vertical"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-distribute-center"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-distribute-end"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-distribute-start"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-justify-center"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-justify-end"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-justify-start"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-space-around"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-space-between"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-justify"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-left"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-right"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-start-horizontal"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-start-vertical"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-distribute-center"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-distribute-end"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-distribute-start"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-justify-center"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-justify-end"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-justify-start"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-space-around"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-space-between"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["ambulance"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["ampersand"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["ampersands"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["amphora"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["anchor"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["angry"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["annoyed"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["antenna"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["anvil"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["aperture"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["app-window-mac"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["app-window"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["apple"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["archive-restore"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["archive-x"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["archive"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["armchair"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-down-dash"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-down"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-left-dash"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-left"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-right-dash"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-right"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-up-dash"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-up"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-0-1"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-1-0"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-a-z"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-from-line"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-left"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-narrow-wide"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-right"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-to-dot"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-to-line"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-up"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-wide-narrow"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-z-a"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-left-from-line"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-left-right"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-left-to-line"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-left"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-right-from-line"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-right-left"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-right-to-line"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-right"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-0-1"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-1-0"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-a-z"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-down"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-from-dot"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-from-line"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-left"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-narrow-wide"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-right"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-to-line"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-wide-narrow"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-z-a"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrows-up-from-line"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["asterisk"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["at-sign"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["atom"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["audio-lines"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["audio-waveform"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["award"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["axe"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["axis-3d"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["baby"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["backpack"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-alert"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-cent"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-check"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-dollar-sign"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-euro"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-help"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-indian-rupee"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-info"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-japanese-yen"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-minus"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-percent"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-plus"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-pound-sterling"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-russian-ruble"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-swiss-franc"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-x"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["baggage-claim"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["ban"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["banana"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bandage"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["banknote"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["barcode"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["baseline"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bath"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-charging"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-full"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-low"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-medium"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-plus"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-warning"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["beaker"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bean-off"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bean"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bed-double"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bed-single"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bed"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["beef"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["beer-off"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["beer"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-dot"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-electric"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-minus"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-off"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-plus"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-ring"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["between-horizontal-end"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["between-horizontal-start"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["between-vertical-end"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["between-vertical-start"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["biceps-flexed"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bike"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["binary"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["binoculars"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["biohazard"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bird"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bitcoin"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["blend"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["blinds"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["blocks"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bluetooth-connected"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bluetooth-off"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bluetooth-searching"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bluetooth"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bold"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bolt"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bomb"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bone"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-a"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-audio"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-check"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-copy"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-dashed"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-down"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-headphones"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-heart"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-image"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-key"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-lock"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-marked"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-minus"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-open-check"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-open-text"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-open"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-plus"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-text"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-type"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-up-2"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-up"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["book-user"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["book-x"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["book"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bookmark-check"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bookmark-minus"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bookmark-plus"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bookmark-x"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bookmark"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["boom-box"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bot-message-square"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bot-off"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bot"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["box"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["boxes"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["braces"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brackets"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brain-circuit"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brain-cog"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brain"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brick-wall"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["briefcase-business"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["briefcase-conveyor-belt"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["briefcase-medical"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["briefcase"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bring-to-front"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brush"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bug-off"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bug-play"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bug"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["building-2"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["building"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bus-front"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bus"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cable-car"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cable"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cake-slice"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cake"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calculator"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-1"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-arrow-down"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-arrow-up"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-check-2"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-check"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-clock"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-cog"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-days"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-fold"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-heart"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-minus-2"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-minus"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-off"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-plus-2"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-plus"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-range"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-search"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-sync"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-x-2"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-x"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["camera-off"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["camera"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["candy-cane"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["candy-off"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["candy"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cannabis"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["captions-off"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["captions"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["car-front"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["car-taxi-front"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["car"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["caravan"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["carrot"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["case-lower"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["case-sensitive"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["case-upper"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cassette-tape"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cast"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["castle"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cat"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cctv"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-area"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-bar-big"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-bar-decreasing"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-bar-increasing"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-bar-stacked"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-bar"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-candlestick"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-column-big"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-column-decreasing"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-column-increasing"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-column-stacked"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-column"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-gantt"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-line"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-network"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-no-axes-column-decreasing"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-no-axes-column-increasing"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-no-axes-column"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-no-axes-combined"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-no-axes-gantt"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chart-pie"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chart-scatter"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chart-spline"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["check-check"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["check"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chef-hat"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["cherry"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-down"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-first"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-last"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-left"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-right"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-up"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-down-up"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-down"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-left-right-ellipsis"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-left-right"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-left"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-right-left"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-right"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-up-down"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-up"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chrome"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["church"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["cigarette-off"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["cigarette"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-alert"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-down"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-left"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-out-down-left"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-out-down-right"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-out-up-left"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-out-up-right"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-right"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-up"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-check-big"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-check"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-chevron-down"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-chevron-left"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-chevron-right"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-chevron-up"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-dashed"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-divide"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-dollar-sign"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-dot-dashed"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-dot"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-ellipsis"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-equal"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-fading-arrow-up"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-fading-plus"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-gauge"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-help"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-minus"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-off"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-parking-off"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-parking"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-pause"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-percent"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-play"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-plus"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-power"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-slash-2"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-slash"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-stop"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-user-round"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-user"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-x"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circuit-board"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["citrus"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clapperboard"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-check"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-copy"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-list"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-minus"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-paste"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-pen-line"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-pen"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-plus"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-type"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-x"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-1"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-10"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-11"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-12"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-2"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-3"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-4"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-5"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-6"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-7"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-8"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-9"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-alert"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-arrow-down"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-arrow-up"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["cloud-alert"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["cloud-cog"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-download"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-drizzle"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-fog"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-hail"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-lightning"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-moon-rain"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-moon"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-off"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-rain-wind"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-rain"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-snow"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-sun-rain"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-sun"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-upload"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloudy"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["clover"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["club"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["code-xml"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["code"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["codepen"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["codesandbox"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["coffee"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cog"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["coins"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["columns-2"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["columns-3"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["columns-4"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["combine"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["command"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["compass"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["component"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["computer"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["concierge-bell"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cone"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["construction"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["contact-round"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["contact"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["container"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["contrast"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cookie"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cooking-pot"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy-check"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy-minus"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy-plus"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy-slash"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy-x"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copyleft"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copyright"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-down-left"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-down-right"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-left-down"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-left-up"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-right-down"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-right-up"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-up-left"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-up-right"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cpu"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["creative-commons"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["credit-card"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["croissant"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["crop"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cross"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["crosshair"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["crown"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cuboid"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cup-soda"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["currency"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cylinder"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dam"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["database-backup"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["database-zap"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["database"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["delete"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dessert"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diameter"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diamond-minus"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diamond-percent"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diamond-plus"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diamond"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-1"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-2"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-3"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-4"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-5"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-6"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dices"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diff"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["disc-2"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["disc-3"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["disc-album"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["disc"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["divide"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dna-off"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dna"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dock"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dog"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dollar-sign"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["donut"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["door-closed"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["door-open"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["dot"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["download"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["drafting-compass"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["drama"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["dribbble"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["drill"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["droplet-off"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["droplet"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["droplets"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["drum"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["drumstick"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["dumbbell"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ear-off"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ear"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["earth-lock"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["earth"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["eclipse"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["egg-fried"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["egg-off"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["egg"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ellipsis-vertical"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ellipsis"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["equal-approximately"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["equal-not"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["equal"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["eraser"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ethernet-port"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["euro"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["expand"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["external-link"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["eye-closed"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["eye-off"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["eye"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["facebook"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["factory"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["fan"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["fast-forward"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["feather"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["fence"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ferris-wheel"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["figma"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-archive"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-audio-2"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-audio"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-axis-3d"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-badge-2"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-badge"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-box"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-chart-column-increasing"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-chart-column"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-chart-line"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-chart-pie"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-check-2"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-check"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-clock"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-code-2"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-code"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-cog"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-diff"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-digit"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-down"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-heart"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-image"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-input"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-json-2"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-json"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-key-2"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-key"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-lock-2"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-lock"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-minus-2"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-minus"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-music"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-output"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-pen-line"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-pen"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-plus-2"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-plus"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-question"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-scan"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-search-2"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-search"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-sliders"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-spreadsheet"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-stack"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-symlink"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-terminal"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-text"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-type-2"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-type"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-up"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-user"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-video-2"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-video"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-volume-2"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-volume"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-warning"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-x-2"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["file-x"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["file"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["files"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["film"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["filter-x"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["filter"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fingerprint"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fire-extinguisher"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fish-off"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fish-symbol"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fish"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flag-off"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flag-triangle-left"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flag-triangle-right"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flag"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flame-kindling"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flame"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flashlight-off"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flashlight"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flask-conical-off"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flask-conical"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flask-round"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flip-horizontal-2"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flip-horizontal"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flip-vertical-2"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flip-vertical"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flower-2"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flower"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["focus"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fold-horizontal"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fold-vertical"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-archive"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-check"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-clock"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-closed"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-code"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-cog"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-dot"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-down"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-git-2"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-git"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-heart"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-input"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-kanban"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-key"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-lock"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-minus"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-open-dot"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-open"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-output"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-pen"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-plus"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-root"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-search-2"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-search"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-symlink"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-sync"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-tree"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-up"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-x"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folders"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["footprints"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["forklift"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["forward"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["frame"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["framer"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["frown"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fuel"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fullscreen"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gallery-horizontal-end"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gallery-horizontal"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gallery-thumbnails"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gallery-vertical-end"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gallery-vertical"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gamepad-2"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gamepad"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gauge"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gavel"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gem"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["ghost"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gift"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-branch-plus"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-branch"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-commit-horizontal"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-commit-vertical"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-compare-arrows"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-compare"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-fork"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-graph"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-merge"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request-arrow"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request-closed"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request-create-arrow"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request-create"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request-draft"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["github"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gitlab"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["glass-water"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["glasses"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["globe-lock"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["globe"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["goal"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grab"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["graduation-cap"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grape"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grid-2x2-check"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grid-2x2-plus"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grid-2x2-x"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grid-2x2"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grid-3x3"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grip-horizontal"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grip-vertical"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grip"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["group"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["guitar"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["ham"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hammer"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand-coins"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand-heart"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand-helping"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand-metal"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand-platter"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["handshake"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hard-drive-download"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hard-drive-upload"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hard-drive"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hard-hat"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hash"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["haze"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hdmi-port"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-1"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-2"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-3"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-4"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-5"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-6"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["headphone-off"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["headphones"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["headset"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heart-crack"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heart-handshake"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heart-off"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heart-pulse"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heart"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heater"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hexagon"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["highlighter"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["history"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hop-off"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hop"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hospital"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hotel"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hourglass"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["house-plug"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["house-plus"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["house-wifi"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["house"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["ice-cream-bowl"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["ice-cream-cone"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["id-card"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-down"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-minus"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-off"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-play"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-plus"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-up"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-upscale"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["images"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["import"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["inbox"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["indent-decrease"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["indent-increase"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["indian-rupee"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["infinity"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["info"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["inspection-panel"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["instagram"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["italic"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["iteration-ccw"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["iteration-cw"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["japanese-yen"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["joystick"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["kanban"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["key-round"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["key-square"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["key"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["keyboard-music"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["keyboard-off"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["keyboard"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp-ceiling"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp-desk"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp-floor"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp-wall-down"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp-wall-up"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["land-plot"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["landmark"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["languages"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["laptop-minimal-check"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["laptop-minimal"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["laptop"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lasso-select"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lasso"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["laugh"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layers-2"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layers"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-dashboard"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-grid"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-list"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-panel-left"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-panel-top"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-template"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["leaf"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["leafy-green"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lectern"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["letter-text"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["library-big"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["library"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["life-buoy"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["ligature"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lightbulb-off"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lightbulb"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["link-2-off"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["link-2"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["link"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["linkedin"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-check"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-checks"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-collapse"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-end"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-filter-plus"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-filter"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-minus"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-music"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-ordered"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-plus"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-restart"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-start"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-todo"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-tree"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-video"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-x"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["loader-circle"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["loader-pinwheel"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["loader"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["locate-fixed"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["locate-off"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["locate"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lock-keyhole-open"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lock-keyhole"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lock-open"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lock"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["log-in"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["log-out"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["logs"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lollipop"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["luggage"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["magnet"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-check"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-minus"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-open"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-plus"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-question"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-search"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-warning"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-x"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mailbox"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mails"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-check-inside"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-check"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-house"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-minus-inside"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-minus"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-off"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-plus-inside"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-plus"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-x-inside"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-x"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pinned"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-plus"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["martini"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["maximize-2"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["maximize"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["medal"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["megaphone-off"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["megaphone"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["meh"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["memory-stick"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["menu"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["merge"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["message-circle-code"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-dashed"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-heart"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-more"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-off"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-plus"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-question"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-reply"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-warning"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-x"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-code"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-dashed"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-diff"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-dot"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-heart"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-lock"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-more"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-off"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-plus"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-quote"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-reply"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-share"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-text"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-warning"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-x"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["messages-square"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mic-off"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mic-vocal"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mic"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["microchip"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["microscope"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["microwave"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["milestone"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["milk-off"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["milk"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["minimize-2"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["minimize"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["minus"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-check"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-cog"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-dot"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-down"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-off"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-pause"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-play"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-smartphone"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-speaker"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-stop"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-up"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-x"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["moon-star"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["moon"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mountain-snow"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mountain"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse-off"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse-pointer-2"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse-pointer-ban"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse-pointer-click"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse-pointer"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-3d"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-diagonal-2"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-diagonal"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-down-left"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-down-right"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-down"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-horizontal"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-left"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-right"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-up-left"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-up-right"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-up"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-vertical"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["music-2"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["music-3"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["music-4"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["music"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["navigation-2-off"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["navigation-2"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["navigation-off"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["navigation"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["network"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["newspaper"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["nfc"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notebook-pen"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notebook-tabs"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notebook-text"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notebook"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notepad-text-dashed"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notepad-text"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["nut-off"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["nut"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["octagon-alert"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["octagon-minus"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["octagon-pause"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["octagon-x"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["octagon"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["omega"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["option"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["orbit"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["origami"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-2"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-check"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-minus"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-open"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-plus"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-search"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-x"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paint-bucket"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paint-roller"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paintbrush-vertical"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paintbrush"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["palette"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-bottom-close"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-bottom-dashed"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-bottom-open"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-bottom"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-left-close"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-left-dashed"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-left-open"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-left"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-right-close"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-right-dashed"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-right-open"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-right"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-top-close"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-top-dashed"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-top-open"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-top"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panels-left-bottom"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panels-right-bottom"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panels-top-left"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paperclip"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["parentheses"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["parking-meter"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["party-popper"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pause"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paw-print"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pc-case"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pen-line"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pen-off"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pen-tool"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pen"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pencil-line"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pencil-off"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pencil-ruler"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pencil"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pentagon"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["percent"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["person-standing"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["philippine-peso"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-call"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-forwarded"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-incoming"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-missed"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-off"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-outgoing"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pi"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["piano"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pickaxe"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["picture-in-picture-2"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["picture-in-picture"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["piggy-bank"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pilcrow-left"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pilcrow-right"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pilcrow"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pill-bottle"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pill"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pin-off"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pin"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pipette"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pizza"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plane-landing"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plane-takeoff"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plane"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["play"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plug-2"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plug-zap"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plug"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plus"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pocket-knife"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pocket"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["podcast"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pointer-off"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pointer"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["popcorn"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["popsicle"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pound-sterling"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["power-off"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["power"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["presentation"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["printer-check"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["printer"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["projector"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["proportions"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["puzzle"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["pyramid"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["qr-code"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["quote"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rabbit"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radar"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radiation"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radical"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radio-receiver"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radio-tower"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radio"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radius"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rail-symbol"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rainbow"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rat"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["ratio"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-cent"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-euro"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-indian-rupee"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-japanese-yen"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-pound-sterling"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-russian-ruble"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-swiss-franc"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-text"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rectangle-ellipsis"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rectangle-horizontal"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rectangle-vertical"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["recycle"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["redo-2"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["redo-dot"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["redo"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["refresh-ccw-dot"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["refresh-ccw"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["refresh-cw-off"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["refresh-cw"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["refrigerator"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["regex"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["remove-formatting"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["repeat-1"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["repeat-2"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["repeat"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["replace-all"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["replace"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["reply-all"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["reply"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rewind"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["ribbon"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rocket"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rocking-chair"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["roller-coaster"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rotate-3d"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rotate-ccw-square"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rotate-ccw"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rotate-cw-square"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rotate-cw"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["route-off"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["route"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["router"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rows-2"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rows-3"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rows-4"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rss"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["ruler"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["russian-ruble"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["sailboat"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["salad"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["sandwich"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["satellite-dish"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["satellite"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["save-all"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["save-off"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["save"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scale-3d"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scale"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scaling"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-barcode"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-eye"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-face"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-heart"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-line"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-qr-code"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-search"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-text"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["school"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scissors-line-dashed"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scissors"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["screen-share-off"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["screen-share"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scroll-text"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scroll"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["search-check"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["search-code"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["search-slash"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["search-x"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["search"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["section"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["send-horizontal"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["send-to-back"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["send"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["separator-horizontal"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["separator-vertical"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["server-cog"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["server-crash"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["server-off"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["server"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["settings-2"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["settings"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shapes"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["share-2"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["share"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sheet"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shell"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-alert"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-ban"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-check"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-ellipsis"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-half"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-minus"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-off"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-plus"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-question"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-x"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["ship-wheel"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["ship"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shirt"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shopping-bag"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shopping-basket"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shopping-cart"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shovel"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shower-head"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shrink"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shrub"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shuffle"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sigma"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signal-high"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signal-low"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signal-medium"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signal-zero"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signal"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signature"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signpost-big"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signpost"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["siren"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["skip-back"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["skip-forward"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["skull"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["slack"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["slash"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["slice"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sliders-horizontal"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sliders-vertical"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["smartphone-charging"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["smartphone-nfc"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["smartphone"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["smile-plus"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["smile"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["snail"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["snowflake"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sofa"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["soup"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["space"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["spade"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sparkle"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sparkles"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["speaker"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["speech"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["spell-check-2"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["spell-check"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["spline"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["split"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["spray-can"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sprout"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-activity"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-down-left"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-down-right"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-down"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-left"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-out-down-left"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-out-down-right"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-out-up-left"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-out-up-right"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-right"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-up-left"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-up-right"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-up"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-asterisk"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-bottom-dashed-scissors"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-chart-gantt"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-check-big"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-check"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-chevron-down"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-chevron-left"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-chevron-right"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-chevron-up"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-code"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-dashed-bottom-code"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-dashed-bottom"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-dashed-kanban"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-dashed-mouse-pointer"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-dashed"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-divide"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-dot"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-equal"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-function"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-kanban"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-library"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-m"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-menu"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-minus"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-mouse-pointer"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-parking-off"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-parking"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-pen"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-percent"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-pi"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-pilcrow"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-play"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-plus"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-power"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-radical"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-scissors"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-sigma"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-slash"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-split-horizontal"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-split-vertical"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-square"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-stack"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-terminal"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-user-round"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-user"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-x"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["squircle"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["squirrel"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["stamp"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["star-half"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["star-off"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["star"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["step-back"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["step-forward"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["stethoscope"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sticker"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sticky-note"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["store"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["stretch-horizontal"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["stretch-vertical"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["strikethrough"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["subscript"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sun-dim"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sun-medium"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sun-moon"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sun-snow"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sun"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sunrise"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sunset"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["superscript"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["swatch-book"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["swiss-franc"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["switch-camera"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sword"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["swords"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["syringe"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-2"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-cells-merge"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-cells-split"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-columns-split"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-of-contents"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-properties"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-rows-split"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tablet-smartphone"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tablet"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tablets"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tag"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tags"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tally-1"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tally-2"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tally-3"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tally-4"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tally-5"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tangent"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["target"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["telescope"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tent-tree"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tent"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["terminal"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["test-tube-diagonal"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["test-tube"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["test-tubes"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text-cursor-input"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text-cursor"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text-quote"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text-search"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text-select"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["theater"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["thermometer-snowflake"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["thermometer-sun"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["thermometer"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["thumbs-down"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["thumbs-up"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-check"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-minus"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-percent"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-plus"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-slash"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-x"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tickets-plane"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tickets"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["timer-off"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["timer-reset"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["timer"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["toggle-left"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["toggle-right"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["toilet"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tornado"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["torus"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["touchpad-off"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["touchpad"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tower-control"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["toy-brick"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tractor"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["traffic-cone"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["train-front-tunnel"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["train-front"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["train-track"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tram-front"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trash-2"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trash"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tree-deciduous"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tree-palm"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tree-pine"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trees"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trello"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trending-down"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trending-up-down"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trending-up"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["triangle-alert"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["triangle-dashed"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["triangle-right"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["triangle"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trophy"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["truck"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["turtle"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tv-minimal-play"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tv-minimal"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tv"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["twitch"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["twitter"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["type-outline"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["type"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["umbrella-off"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["umbrella"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["underline"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["undo-2"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["undo-dot"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["undo"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["unfold-horizontal"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["unfold-vertical"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ungroup"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["university"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["unlink-2"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["unlink"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["unplug"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["upload"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["usb"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-check"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-cog"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-minus"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-pen"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-plus"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-check"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-cog"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-minus"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-pen"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-plus"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-search"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-x"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-search"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-x"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["users-round"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["users"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["utensils-crossed"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["utensils"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["utility-pole"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["variable"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["vault"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["vegan"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["venetian-mask"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["vibrate-off"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["vibrate"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["video-off"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["video"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["videotape"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["view"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["voicemail"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volleyball"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volume-1"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volume-2"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volume-off"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volume-x"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volume"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["vote"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wallet-cards"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wallet-minimal"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wallet"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wallpaper"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wand-sparkles"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wand"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["warehouse"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["washing-machine"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["watch"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["waves-ladder"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["waves"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["waypoints"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["webcam"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["webhook-off"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["webhook"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["weight"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wheat-off"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wheat"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["whole-word"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wifi-high"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wifi-low"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wifi-off"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wifi-zero"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wifi"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wind-arrow-down"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wind"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wine-off"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wine"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["workflow"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["worm"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wrap-text"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wrench"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["x"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["youtube"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["zap-off"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["zap"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["zoom-in"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["zoom-out"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
			}
		}
	end;
};

return require(NovaHub["3e"])
