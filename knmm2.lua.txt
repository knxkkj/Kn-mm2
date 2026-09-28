 1:1,16:22866
local connection = game.Changed:Connect(function(value)
end)
 1:1,16:22866
connection:Disconnect()
 1:1,16:22881
local connection2 = workspace.Changed:Connect(function(value2)
end)
 1:1,16:22881
connection2:Disconnect()
 1:1
local Folder = Instance.new("Folder")
 1:1,16:22899
local connection3 = Folder.Changed:Connect(function(value3)
end)
 1:1,16:22899
connection3:Disconnect()
 1:1
Folder:GetChildren()
 1:1
Folder:Destroy()
 1:1
local Folder2 = Instance.new("Folder", Folder)
 1:1,16:22914
local connection4 = Folder2.Changed:Connect(function(value4)
end)
 1:1,16:22914
connection4:Disconnect()
 1:1
Folder2.Name = "2090576680"
 1:1
Folder:WaitForChild("2090576680")
 1:1
Folder:Destroy()
 1:1
Folder2:Destroy()
 1:1
local HttpService = game:GetService("HttpService")
 1:1,16:22941
local connection5 = HttpService.Changed:Connect(function(value5)
end)
 1:1,16:22941
connection5:Disconnect()
 1:1
local RunService = game:GetService("RunService")
 1:1,16:22959
local connection6 = RunService.Changed:Connect(function(value6)
end)
 1:1,16:22959
connection6:Disconnect()
 1:1,25:23395,28:23406
 1:1,25:23395
local hui = gethui()
 1:1,25:23395
local knmm2Loading = hui:FindFirstChild("knmm2Loading")
 1:1,25:23395
knmm2Loading:Destroy()
 1:1,25:23395
local TweenService = game:GetService("TweenService")
 1:1,25:23395
local ScreenGui2 = Instance.new("ScreenGui")
 1:1,25:23395
ScreenGui2.Name = "knmm2Loading"
 1:1,25:23395
ScreenGui2.IgnoreGuiInset = true
 1:1,25:23395
ScreenGui2.ResetOnSpawn = false
 1:1,25:23395
ScreenGui2.DisplayOrder = 99998
 1:1,25:23395
ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 1:1,25:23395
ScreenGui2.Parent = hui
 1:1,25:23395
local Frame2 = Instance.new("Frame")
 1:1,25:23395
Frame2.Size = UDim2.fromScale(1, 1)
 1:1,25:23395
Frame2.BackgroundColor3 = Color3.new(0, 0, 0)
 1:1,25:23395
Frame2.BackgroundTransparency = 1
 1:1,25:23395
Frame2.BorderSizePixel = 0
 1:1,25:23395
Frame2.Parent = ScreenGui2
 1:1,25:23395
local Frame3 = Instance.new("Frame")
 1:1,25:23395
Frame3.AnchorPoint = Vector2.new(0.5, 0.5)
 1:1,25:23395
Frame3.Position = UDim2.fromScale(0.5, 0.5)
 1:1,25:23395
Frame3.Size = UDim2.fromOffset(280, 102)
 1:1,25:23395
Frame3.BackgroundColor3 = Color3.fromRGB(23, 23, 28)
 1:1,25:23395
Frame3.BackgroundTransparency = 1
 1:1,25:23395
Frame3.BorderSizePixel = 0
 1:1,25:23395
Frame3.Parent = ScreenGui2
 1:1,25:23395
local UICorner = Instance.new("UICorner", Frame3)
 1:1,25:23395
UICorner.CornerRadius = UDim.new(0, 18)
 1:1,25:23395
local UIGradient = Instance.new("UIGradient", Frame3)
 1:1,25:23395
UIGradient.Rotation = 90
 1:1,25:23395
UIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 36)), ColorSequenceKeypoint.new(1, Color3.fromRGB(16, 16, 20)) })
 1:1,25:23395
local UIStroke = Instance.new("UIStroke", Frame3)
 1:1,25:23395
UIStroke.Color = Color3.fromRGB(140, 140, 165)
 1:1,25:23395
UIStroke.Thickness = 1
 1:1,25:23395
UIStroke.Transparency = 1
 1:1,25:23395
local Frame4 = Instance.new("Frame")
 1:1,25:23395
Frame4.Position = UDim2.fromOffset(22, 18)
 1:1,25:23395
Frame4.Size = UDim2.fromOffset(44, 44)
 1:1,25:23395
Frame4.BackgroundColor3 = Color3.fromRGB(38, 38, 47)
 1:1,25:23395
Frame4.BackgroundTransparency = 1
 1:1,25:23395
Frame4.BorderSizePixel = 0
 1:1,25:23395
Frame4.Parent = Frame3
 1:1,25:23395
local UICorner2 = Instance.new("UICorner", Frame4)
 1:1,25:23395
UICorner2.CornerRadius = UDim.new(1, 0)
 1:1,25:23395
local UIStroke2 = Instance.new("UIStroke", Frame4)
 1:1,25:23395
UIStroke2.Color = Color3.fromRGB(140, 140, 165)
 1:1,25:23395
UIStroke2.Thickness = 1
 1:1,25:23395
UIStroke2.Transparency = 1
 1:1,25:23395
local ImageLabel = Instance.new("ImageLabel")
 1:1,25:23395
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
 1:1,25:23395
ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
 1:1,25:23395
ImageLabel.Size = UDim2.fromOffset(23, 23)
 1:1,25:23395
ImageLabel.BackgroundTransparency = 1
 1:1,25:23395
ImageLabel.Image = "rbxassetid://110926118391987"
 1:1,25:23395
ImageLabel.ImageColor3 = Color3.fromRGB(236, 236, 244)
 1:1,25:23395
ImageLabel.ImageTransparency = 1
 1:1,25:23395
ImageLabel.Parent = Frame4
 1:1,25:23395
local TextLabel = Instance.new("TextLabel")
 1:1,25:23395
TextLabel.Position = UDim2.fromOffset(81, 20)
 1:1,25:23395
TextLabel.Size = UDim2.new(1, -103, 0, 22)
 1:1,25:23395
TextLabel.BackgroundTransparency = 1
 1:1,25:23395
TextLabel.Font = Enum.Font.GothamBold
 1:1,25:23395
TextLabel.TextSize = 19
 1:1,25:23395
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
 1:1,25:23395
TextLabel.TextColor3 = Color3.fromRGB(242, 242, 248)
 1:1,25:23395
TextLabel.TextTransparency = 1
 1:1,25:23395
TextLabel.Text = "Loading knmm2"
 1:1,25:23395
TextLabel.Parent = Frame3
 1:1,25:23395
local TextLabel2 = Instance.new("TextLabel")
 1:1,25:23395
TextLabel2.Position = UDim2.fromOffset(81, 43)
 1:1,25:23395
TextLabel2.Size = UDim2.new(1, -103, 0, 19)
 1:1,25:23395
TextLabel2.BackgroundTransparency = 1
 1:1,25:23395
TextLabel2.Font = Enum.Font.Gotham
 1:1,25:23395
TextLabel2.TextSize = 16
 1:1,25:23395
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
 1:1,25:23395
TextLabel2.TextColor3 = Color3.fromRGB(139, 139, 153)
 1:1,25:23395
TextLabel2.TextTransparency = 1
 1:1,25:23395
TextLabel2.Text = "Starting up"
 1:1,25:23395
TextLabel2.Parent = Frame3
 1:1,25:23395
local Frame5 = Instance.new("Frame")
 1:1,25:23395
Frame5.Position = UDim2.fromOffset(22, 79)
 1:1,25:23395
Frame5.Size = UDim2.new(1, -44, 0, 5)
 1:1,25:23395
Frame5.BackgroundColor3 = Color3.fromRGB(38, 38, 47)
 1:1,25:23395
Frame5.BackgroundTransparency = 1
 1:1,25:23395
Frame5.BorderSizePixel = 0
 1:1,25:23395
Frame5.Parent = Frame3
 1:1,25:23395
local UICorner3 = Instance.new("UICorner", Frame5)
 1:1,25:23395
UICorner3.CornerRadius = UDim.new(1, 0)
 1:1,25:23395
local Frame6 = Instance.new("Frame")
 1:1,25:23395
Frame6.Size = UDim2.new(0, 0, 1, 0)
 1:1,25:23395
Frame6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 1:1,25:23395
Frame6.BackgroundTransparency = 1
 1:1,25:23395
Frame6.BorderSizePixel = 0
 1:1,25:23395
Frame6.Parent = Frame5
 1:1,25:23395
local UICorner4 = Instance.new("UICorner", Frame6)
 1:1,25:23395
UICorner4.CornerRadius = UDim.new(1, 0)
 1:1,25:23395
local UIGradient2 = Instance.new("UIGradient", Frame6)
 1:1,25:23395
UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(143, 143, 158)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)) })
 1:1,25:23395
local tween = TweenService:Create(Frame2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.5 })
 1:1,25:23395
tween:Play()
 1:1,25:23395
local tween2 = TweenService:Create(Frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
 1:1,25:23395
tween2:Play()
 1:1,25:23395
local tween3 = TweenService:Create(UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.58 })
 1:1,25:23395
tween3:Play()
 1:1,25:23395
local tween4 = TweenService:Create(Frame4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
 1:1,25:23395
tween4:Play()
 1:1,25:23395
local tween5 = TweenService:Create(UIStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.5 })
 1:1,25:23395
tween5:Play()
 1:1,25:23395
local tween6 = TweenService:Create(ImageLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0 })
 1:1,25:23395
tween6:Play()
 1:1,25:23395
local tween7 = TweenService:Create(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 })
 1:1,25:23395
tween7:Play()
 1:1,25:23395
local tween8 = TweenService:Create(TextLabel2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 })
 1:1,25:23395
tween8:Play()
 1:1,25:23395
local tween9 = TweenService:Create(Frame5, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
 1:1,25:23395
tween9:Play()
 1:1,25:23395
local tween10 = TweenService:Create(Frame6, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
 1:1,25:23395
tween10:Play()
 1:1,25:23395
task.spawn(function(...)
	 29:24053,30:24056
	hui:GetChildren()
	 29:24053
	task.wait(0.05)
	 29:24053,30:24073
	hui:GetChildren()
	 29:24053
	task.wait(0.05)
	 
end)
 1:1,25:23395
task.delay(30, function(...)
end)
 1:1,25:23395
task.spawn(function(...)
	 31:24109
	print("-- LOADING KNMM2 --")
	 31:24109
	print("[                      ] 00%")
	 31:24109
	task.wait(0.25)
	 31:24109
	print("[#####                 ] 23%")
	 31:24109
	task.wait(0.25)
	 31:24109
	print("[###########           ] 50%")
	 31:24109
	task.wait(0.25)
	 31:24109
	print("[######################] 100%")
	 31:24109
	task.wait(0.25)
	 31:24109
	print("Loaded. ")
end)
 1:1,25:23395
_G.knmm2Cleanup = nil
 1:1,25:23395,32:24170
local CoreGui = game:GetService("CoreGui")
 1:1,25:23395,32:24170
local children = CoreGui:GetChildren()
 
for i, v in ipairs(children) do
	 1:1,25:23395,32:24170
	v.Name:match("^Onyx.+Button$")
	 1:1,25:23395,32:24170
	v:Destroy()
end
 1:1,25:23395,33:24199
local hui2 = gethui()
 1:1,25:23395,33:24199
local children2 = hui2:GetChildren()
 
for i2, v2 in ipairs(children2) do
	 1:1,25:23395,33:24199
	v2.Name:match("^WindUI/")
	 1:1,25:23395,33:24199
	v2:Destroy()
end
 1:1,25:23395,34:24228,35:24235
local tween11 = TweenService:Create(Frame6, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0.12, 0, 1, 0) })
 1:1,25:23395,34:24228,35:24235
tween11:Play()
 1:1,25:23395,34:24228,35:24235
TextLabel2.Text = "Fetching library"
 1:1,25:23395
 1:1,25:23395
local response = game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")
 1:1,25:23395,36:24304,37:24307
 1:1,25:23395,36:24304,37:24307
makefolder("knmm2")
 1:1,25:23395,36:24304
writefile("knmm2/windui.lua", response)
 1:1,25:23395
 1:1,25:23395,38:24336
local response2 = game:HttpGet("https://raw.githubusercontent.com/Footagesus/Icons/main/Main-v2.lua")
 1:1,25:23395,38:24336
response2:gsub("return game:HttpGet%(url%)", function(arg, arg2)
end)
 1:1,25:23395
 1:1,25:23395
local result = loadstring(response)()
 1:1,25:23395
local result2 = result:Gradient({ ["0"] = { Color = Color3.fromHex("#161619"), Transparency = 0.12 }, ["100"] = { Color = Color3.fromHex("#161619"), Transparency = 0.12 } }, { Rotation = 90 })
 1:1,25:23395
local result3 = result:Gradient({ ["0"] = { Color = Color3.fromHex("#101014"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#2a2a32"), Transparency = 0 } }, { Rotation = 90 })
 1:1,25:23395
result:AddTheme({
	Name = "knmm2",
	Text = Color3.fromHex("#ffffff"),
	Accent = result3,
	Background = result2,
	Button = Color3.fromHex("#3f3f46"),
	Checkbox = Color3.fromHex("#ffffff"),
	Dialog = Color3.fromHex("#141418"),
	ElementBackground = Color3.fromHex("#18181b"),
	ElementBackgroundTransparency = 0.3,
	Icon = Color3.fromHex("#d4d4d8"),
	LabelBackground = Color3.fromHex("#000000"),
	LabelBackgroundTransparency = 0.8,
	Outline = Color3.fromHex("#ffffff"),
	PanelBackground = Color3.fromHex("#ffffff"),
	PanelBackgroundTransparency = 0.94,
	Placeholder = Color3.fromHex("#a1a1aa"),
	Primary = Color3.fromHex("#ffffff"),
	Slider = Color3.fromHex("#ffffff"),
	SliderIcon = Color3.fromHex("#71717a"),
	Toggle = Color3.fromHex("#ffffff")
})
 1:1,25:23395
result:SetTheme("knmm2")
 1:1,25:23395,34:24566,35:24567
local tween12 = TweenService:Create(Frame6, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0.4, 0, 1, 0) })
 1:1,25:23395,34:24566,35:24567
tween12:Play()
 1:1,25:23395,34:24566,35:24567
TextLabel2.Text = "Building window"
 1:1,25:23395
local Window = result:CreateWindow({
	Title = "knmm2 - Premium",
	Acrylic = false,
	Author = "Murder Mystery 2",
	Background = "https://raw.githubusercontent.com/onyx-scripts/main/main/onyxscripts.png",
	BackgroundImageTransparency = 0.35,
	Folder = "knmm2",
	HideSearchBar = false,
	Icon = "solar:planet-bold",
	IconRadius = 1,
	IconSize = 27,
	MaxSize = Vector2.new(850, 560),
	Radius = 18,
	Resizable = true,
	ShadowTransparency = 0.3,
	SideBarWidth = 185,
	Size = UDim2.fromOffset(560, 350),
	Theme = "knmm2",
	Topbar = { ButtonsType = "Default", Height = 56 },
	Transparent = true,
	User = { Anonymous = false, Enabled = false }
})
 1:1,25:23395
Window:Tag({ Title = "@knmm2", Color = Color3.fromHex("#ffffff"), Icon = "youtube", Radius = 6 })
 1:1,25:23395
Window:Tag({ Title = "", Color = Color3.fromHex("#ffffff"), Icon = "message-square-more", Radius = 6 })
 1:1,25:23395
Window:Tag({ Title = "Mobile & PC", Color = Color3.fromHex("#ffffff"), Icon = "smartphone", Radius = 6 })
 1:1,25:23395
task.spawn(function(...)
	 40:24768,41:24831
	local descendants = Window.UIElements.Main:GetDescendants()
	 
	for i3, v3 in ipairs(descendants) do
	end
	 
end)
 1:1,25:23395
Window:SetBackgroundTransparency(0.4)
 1:1,25:23395
task.spawn(function(...)
	 42:24866
	local Background = Window.UIElements.Main:FindFirstChild("Background")
	 42:24866
	local children3 = Background:GetChildren()
	 
	for i4, v4 in ipairs(children3) do
	end
	 42:24866
	RunService.RenderStepped:Wait()
	 42:24866
	local Background2 = Window.UIElements.Main:FindFirstChild("Background")
	 42:24866
	local children4 = Background2:GetChildren()
	 
	for i5, v5 in ipairs(children4) do
	end
	 42:24866
	RunService.RenderStepped:Wait()
	 
end)
 1:1,25:23395
task.spawn(function(...)
	 43:24915,44:24932
	local Topbar = Window.UIElements.Main:FindFirstChild("Topbar", true)
	 43:24915,44:24932
	local Left = Topbar:FindFirstChild("Left")
	 43:24915,44:24932
	local Title = Left:FindFirstChild("Title")
	 43:24915,44:24932
	local Title2 = Title:FindFirstChild("Title")
	 43:24915
	Title2:FindFirstChild("knmm2TitleSheen")
end)
 1:1,25:23395
Window:EditOpenButton({
	Title = "knmm2",
	Color = ColorSequence.new(Color3.fromHex("#2a2a32"), Color3.fromHex("#c9c9d4")),
	CornerRadius = UDim.new(0, 16),
	Draggable = true,
	Enabled = true,
	Icon = "solar:planet-bold",
	OnlyMobile = false,
	StrokeThickness = 2
})
 1:1,25:23395
_G.knmm2 = Window
 1:1,25:23395,45:25089
 1:1,25:23395,45:25089
makefolder("WindUI/knmm2/hud")
 1:1,25:23395
Window.Tab = function(arg3, arg4)
	 46:25180
	Window.Tab(arg3, arg4)
end
 1:1,25:23395
result.Notify = function(arg5, arg6)
end
 1:1,25:23395
task.delay(4, function(...)
end)
 1:1,25:23395
task.delay(20, function(...)
end)
 1:1,25:23395
task.spawn(function(...)
	 48:25236
	local WindUINotifications = CoreGui:FindFirstChild("WindUI/Notifications", true)
	 48:25236
	local Frame7 = WindUINotifications:FindFirstChildWhichIsA("Frame")
	 48:25236
	local children5 = Frame7:GetChildren()
	 
	for i7, v7 in ipairs(children5) do
		 48:25236,49:25261
		task.spawn(function(...)
			 50:25274
			local ImageLabel2 = v7:FindFirstChildWhichIsA("ImageLabel")
			 50:25274
			ImageLabel2:FindFirstChild("OnyxToastRamp")
		end)
	end
	 48:25236
	Frame7.ChildAdded:Connect(function(child)
		 
	end)
end)
 1:1,25:23395
task.spawn(function(...)
	 51:25395
	local Background3 = Window.UIElements.Main:FindFirstChild("Background")
	 51:25395
	local children6 = Background3:GetChildren()
	 
	for i8, v8 in ipairs(children6) do
	end
	 51:25395
	local Topbar2 = Window.UIElements.Main:FindFirstChild("Topbar", true)
	 51:25395
	local descendants2 = Topbar2:GetDescendants()
	 
	for i9, v9 in ipairs(descendants2) do
	end
	 51:25395
	RunService.RenderStepped:Wait()
	 51:25395
	local Background4 = Window.UIElements.Main:FindFirstChild("Background")
	 51:25395
	local children7 = Background4:GetChildren()
	 
	for i10, v10 in ipairs(children7) do
	end
	 51:25395
	local Topbar3 = Window.UIElements.Main:FindFirstChild("Topbar", true)
	 51:25395
	local descendants3 = Topbar3:GetDescendants()
	 
	for i11, v11 in ipairs(descendants3) do
	end
	 51:25395
	RunService.RenderStepped:Wait()
	 
end)
 1:1,25:23395,52:25502
 1:1,25:23395,53:25525
 1:1,25:23395,54:25538
local Config = Window.ConfigManager:CreateConfig("autosave")
 1:1,25:23395,54:25538
Config:SetAsCurrent()
 1:1,25:23395
local Players = game:GetService("Players")
 1:1,25:23395
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 1:1,25:23395
local CollectionService = game:GetService("CollectionService")
 1:1,25:23395,55:25693
local ScreenGui3 = Instance.new("ScreenGui")
 1:1,25:23395,55:25693
ScreenGui3.Name = "knmm2ESP"
 1:1,25:23395,55:25693
ScreenGui3.IgnoreGuiInset = true
 1:1,25:23395,55:25693
ScreenGui3.ResetOnSpawn = false
 1:1,25:23395,55:25693
ScreenGui3.Parent = CoreGui
 1:1,25:23395,56:25782
local players = Players:GetPlayers()
 
for i14, v14 in ipairs(players) do
	 1:1,25:23395,56:25782,57:25797
	local descendants4 = v14.Character:GetDescendants()
	 
	for i15, v15 in ipairs(descendants4) do
		 1:1,25:23395,56:25782,57:25797,58:25806
		v15.Visible = false
		 1:1,25:23395,56:25782,57:25797,58:25806
		local changedSignal = v15:GetPropertyChangedSignal("Visible")
		 1:1,25:23395,56:25782,57:25797,58:25806
		changedSignal:Connect(function(arg7)
		end)
	end
	 1:1,25:23395,56:25782,57:25797
	v14.Character.DescendantAdded:Connect(function(descendant)
	end)
	 1:1,25:23395,56:25782
	v14.CharacterAdded:Connect(function(character)
	end)
end
 1:1,25:23395,56:25782
Players.PlayerAdded:Connect(function(player)
end)
 1:1,25:23395,59:25919
workspace.DescendantAdded:Connect(function(descendant2)
end)
 1:1,25:23395,59:25919
workspace.DescendantRemoving:Connect(function(descendant3)
end)
 1:1,25:23395,60:26052
local Remotes = ReplicatedStorage:FindFirstChild("Remotes")
 1:1,25:23395,60:26052
local Gameplay = Remotes:FindFirstChild("Gameplay")
 1:1,25:23395,60:26052
local PlayerDataChanged = Gameplay:FindFirstChild("PlayerDataChanged")
 1:1,25:23395,60:26052
PlayerDataChanged.OnClientEvent:Connect(function(arg8)
end)
 1:1,25:23395
local TeleportService = game:GetService("TeleportService")
 1:1,25:23395
local UserInputService = game:GetService("UserInputService")
 1:1,25:23395,61:26191
UserInputService.InputBegan:Connect(function(input, gameProcessed)
end)
 1:1,25:23395
task.spawn(function(...)
	 62:26220
	task.wait(0.25)
	 62:26220,63:26235,64:26252
	local mouseButtonsPressed = UserInputService:GetMouseButtonsPressed()
	 
	for i16, v16 in ipairs(mouseButtonsPressed) do
	end
	 62:26220
	result.CurrentInput = nil
	 62:26220
	task.wait(0.25)
	 62:26220,63:26269,64:26270
	local mouseButtonsPressed2 = UserInputService:GetMouseButtonsPressed()
	 
	for i17, v17 in ipairs(mouseButtonsPressed2) do
	end
	 62:26220
	result.CurrentInput = nil
	 62:26220
	task.wait(0.25)
	 
end)
 1:1,25:23395
Players.LocalPlayer.CharacterAdded:Connect(function(character2)
end)
 1:1,25:23395
local VirtualUser = game:GetService("VirtualUser")
 1:1,25:23395
_G.__knmm2Build = "gatestyle-38"
 1:1,25:23395
_G.__knmm2Gen = 1
 1:1,25:23395
task.spawn(function(...)
	 65:26725
	task.wait(15)
	 65:26725
	task.wait(3)
	 
end)
 1:1,25:23395
task.spawn(function(...)
	 68:26813,69:26816,70:26833
	local response3 = game:HttpGet("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=0&size=150x150&format=Png&isCircular=false")
	 68:26813,69:26816
	response3:match("\"imageUrl\"%s*:%s*\"([^\"]+)\"")
	 68:26813
	task.wait(4)
	 
end)
 1:1,25:23395
task.spawn(function(...)
	 72:27119
	local RoundTimerPart = workspace:WaitForChild("RoundTimerPart", 30)
	 72:27119
	RoundTimerPart:GetAttribute("Time")
	 72:27119
	RoundTimerPart:GetAttribute("RoundLength")
	 
end)
 1:1,25:23395
Players.LocalPlayer.CharacterAdded:Connect(function(character3)
end)
 1:1,25:23395,73:27242
RunService.Heartbeat:Connect(function(deltaTime)
end)
 1:1,25:23395,74:27277,75:27284
local ClientServices = ReplicatedStorage:WaitForChild("ClientServices")
 1:1,25:23395,74:27277,75:27284
ClientServices:WaitForChild("WeaponService")
 1:1,25:23395,76:27313
local Humanoid = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
 1:1,25:23395,76:27313
local Animator = Humanoid:FindFirstChildOfClass("Animator")
 1:1,25:23395,76:27313
Animator.AnimationPlayed:Connect(function(arg9)
end)
 1:1,25:23395
Players.LocalPlayer.CharacterAdded:Connect(function(character4)
end)
 1:1,25:23395,77:27390
local Humanoid2 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
 1:1,25:23395,77:27390
Humanoid2.Died:Connect(function()
end)
 1:1,25:23395
Players.LocalPlayer.CharacterAdded:Connect(function(character5)
end)
 1:1,25:23395
Players.LocalPlayer:GetMouse()
 1:1,25:23395,46:28599
Window:Tab({ Title = "Combat", Border = true, Icon = "lucide:shield", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
 1:1,25:23395,46:28626
Window:Tab({
	Title = "Crosshair",
	Border = true,
	Icon = "lucide:crosshair",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
 1:1,25:23395,46:28653
Window:Tab({
	Title = "Skin Changer",
	Border = true,
	Icon = "lucide:sword",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
 1:1,25:23395,79:28666
local descendants5 = Window.UIElements.Main:GetDescendants()
 
for i19, v19 in ipairs(descendants5) do
end
 1:1,25:23395
task.spawn(function(...)
	 80:28693
	RunService.RenderStepped:Wait()
	 80:28693,79:28700
	local descendants6 = Window.UIElements.Main:GetDescendants()
	 
	for i20, v20 in ipairs(descendants6) do
	end
	 80:28693
	RunService.RenderStepped:Wait()
	 
end)
 1:1,25:23395,46:28726
Window:Tab({
	Title = "Buttons",
	Border = true,
	Icon = "lucide:gamepad-directional",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
 1:1,25:23395,46:28753
local Tab = Window:Tab({ Title = "ESP", Border = true, Icon = "solar:eye-bold", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
 1:1,25:23395,46:28780
local Tab2 = Window:Tab({
	Title = "Fling & Teleport",
	Border = true,
	Icon = "solar:bolt-bold",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
 1:1,25:23395,46:28807
Window:Tab({
	Title = "Autofarm",
	Border = true,
	Icon = "solar:dollar-minimalistic-bold",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
 1:1,25:23395,46:28834
Window:Tab({
	Title = "Player",
	Border = true,
	Icon = "solar:user-bold",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
 1:1,25:23395,46:28861
local Tab3 = Window:Tab({
	Title = "Visuals",
	Border = true,
	Icon = "lucide:sparkles",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
 1:1,25:23395,81:28868,82:28871,83:28896
result.Creator.Request({
	Headers = { Accept = "application/json", ["User-Agent"] = "knmm2/2" },
	Method = "GET",
	Url = "https://discord.com/api/v10/invites/XEBpqUNrMy?with_counts=true&with_expiration=true"
})
 1:1,25:23395,81:28868,82:28871,84:28923
local response4 = game:HttpGet("https://discord.com/api/v10/invites/XEBpqUNrMy?with_counts=true&with_expiration=true")
 1:1,25:23395,81:28868,82:28871,85:28934
HttpService:JSONDecode(response4)
 1:1,25:23395,81:28868
Tab3:Paragraph({
	Title = "knmm2 Scripts",
	Desc = "\n\nJoin our discord to report bugs, give suggestions or ask a question! If you can't, just ask in our YouTube description.",
	Buttons = {
		{
			Title = "Join Server",
			Callback = function(state, arg11)
				setclipboard("")
			end
		}
	},
	Image = "message-square-more",
	ImageSize = 48
})
 1:1,25:23395
Tab3:Section({ Title = "Sound Changer" })
 1:1,25:23395
Tab3:Toggle({
	Title = "Error Sound",
	Desc = "A cue when something fails or gets refused.",
	Flag = "Toggle_Sound_Errors",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg13)
	end
})
 1:1,25:23395
Tab3:Toggle({
	Title = "Gun Drop Sound",
	Desc = "A cue when the sheriff dies and the gun drops. Useful with the window closed.",
	Flag = "Toggle_Sound_Gun_Drop",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg15)
	end
})
 1:1,25:23395
Tab3:Toggle({
	Title = "Button Click Sound",
	Desc = "A click when you press an on-screen button.",
	Flag = "Toggle_Sound_Button_Click",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg17)
	end
})
 1:1,25:23395
Tab3:Toggle({
	Title = "Toggle Sound",
	Desc = "A click when you flip a switch in the menu.",
	Flag = "Toggle_Sound_Switches",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg19)
	end
})
 1:1,25:23395,46:29245
Window:Tab({
	Title = "Keybinds",
	Border = true,
	Icon = "lucide:keyboard",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
 1:1,25:23395,46:29272
local Tab4 = Window:Tab({
	Title = "Settings & Configs",
	Border = true,
	Icon = "solar:settings-bold",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
 1:1,25:23395,34:29283,35:29284
local tween13 = TweenService:Create(Frame6, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0.78, 0, 1, 0) })
 1:1,25:23395,34:29283,35:29284
tween13:Play()
 1:1,25:23395,34:29283,35:29284
TextLabel2.Text = "Building tabs"
 1:1,25:23395,81:29289
Tab4:Paragraph({
	Title = "knmm2 Scripts",
	Desc = "\n\nJoin our discord to report bugs, give suggestions or ask a question! If you can't, just ask in our YouTube description.",
	Buttons = {
		{
			Title = "Join Server",
			Callback = function(state, arg21)
				setclipboard("")
			end
		}
	},
	Image = "message-square-more",
	ImageSize = 48
})
 1:1,25:23395
task.spawn(function(...)
	 94:29385,95:29392
	local descendants7 = Window.UIElements.Main:GetDescendants()
	 
	for i22, v22 in ipairs(descendants7) do
	end
	 94:29385
	RunService.RenderStepped:Wait()
	 94:29385,95:29413
	local descendants8 = Window.UIElements.Main:GetDescendants()
	 
	for i23, v23 in ipairs(descendants8) do
	end
	 94:29385
	RunService.RenderStepped:Wait()
	 
end)
 1:1,25:23395
Tab:Section({ Title = "ESP — See Through Walls" })
 1:1,25:23395
Tab:Toggle({
	Title = "ESP Outline",
	Desc = "Glowing outline on every player through walls.",
	Flag = "Toggle_ESP_Outline",
	Type = "Toggle",
	Value = false,
	Callback = function(arg22, arg23)
		 96:29465,98:29467,100:29478
		local players2 = Players:GetPlayers()
		 
		for i25, v25 in ipairs(players2) do
			 96:29465,98:29467,100:29478
			local Backpack = v25:FindFirstChildOfClass("Backpack")
			 96:29465,98:29467,100:29478
			Backpack:FindFirstChild("Knife")
			 96:29465,98:29467,101:29493
			local players3 = Players:GetPlayers()
			 
			for i26, v26 in ipairs(players3) do
				 96:29465,98:29467,101:29493
				local Backpack2 = v26:FindFirstChildOfClass("Backpack")
				 96:29465,98:29467,101:29493
				Backpack2:FindFirstChild("Gun")
				 96:29465,98:29467
				local players4 = Players:GetPlayers()
				 
				for i27, v27 in ipairs(players4) do
					 96:29465,98:29467,102:29518
					local descendants9 = v27.Character:GetDescendants()
					 
					for i28, v28 in ipairs(descendants9) do
					end
				end
			end
		end
		 
	end
})
 1:1,25:23395
Tab:Toggle({
	Title = "Full Body ESP",
	Desc = "Fills the whole body in the role colour.",
	Flag = "Toggle_Full_Body_ESP",
	Type = "Toggle",
	Value = false,
	Callback = function(arg24, arg25)
		 103:29563,98:29565,100:29570
		local players5 = Players:GetPlayers()
		 
		for i29, v29 in ipairs(players5) do
			 103:29563,98:29565,100:29570
			local Backpack3 = v29:FindFirstChildOfClass("Backpack")
			 103:29563,98:29565,100:29570
			Backpack3:FindFirstChild("Knife")
			 103:29563,98:29565,101:29571
			local players6 = Players:GetPlayers()
			 
			for i30, v30 in ipairs(players6) do
				 103:29563,98:29565,101:29571
				local Backpack4 = v30:FindFirstChildOfClass("Backpack")
				 103:29563,98:29565,101:29571
				Backpack4:FindFirstChild("Gun")
				 103:29563,98:29565
				local players7 = Players:GetPlayers()
				 
				for i31, v31 in ipairs(players7) do
					 103:29563,98:29565,102:29572
					local descendants10 = v31.Character:GetDescendants()
					 
					for i32, v32 in ipairs(descendants10) do
					end
				end
			end
		end
		 
	end
})
 1:1,25:23395
Tab:Toggle({
	Title = "Display Name ESP",
	Desc = "Their display name above their head, in the role colour.",
	Flag = "Toggle_Display_Name_ESP",
	Type = "Toggle",
	Value = false,
	Callback = function(arg26, arg27)
		 104:29603,98:29605,100:29608
		local players8 = Players:GetPlayers()
		 
		for i33, v33 in ipairs(players8) do
			 104:29603,98:29605,100:29608
			local Backpack5 = v33:FindFirstChildOfClass("Backpack")
			 104:29603,98:29605,100:29608
			Backpack5:FindFirstChild("Knife")
			 104:29603,98:29605,101:29609
			local players9 = Players:GetPlayers()
			 
			for i34, v34 in ipairs(players9) do
				 104:29603,98:29605,101:29609
				local Backpack6 = v34:FindFirstChildOfClass("Backpack")
				 104:29603,98:29605,101:29609
				Backpack6:FindFirstChild("Gun")
				 104:29603,98:29605
				local players10 = Players:GetPlayers()
				 
				for i35, v35 in ipairs(players10) do
					 104:29603,98:29605,102:29610
					local descendants11 = v35.Character:GetDescendants()
					 
					for i36, v36 in ipairs(descendants11) do
					end
				end
			end
		end
		 
	end
})
 1:1,25:23395
Tab:Toggle({
	Title = "Dropped Gun ESP",
	Desc = "Shows the gun on the floor after the sheriff dies.",
	Flag = "Toggle_Dropped_Gun_ESP",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg29)
		if state then
			local descendants12 = workspace:GetDescendants()
			for i37, v37 in ipairs(descendants12) do
			end
		end
	end
})
 1:1,25:23395
Tab:Toggle({
	Title = "Trap ESP",
	Desc = "Shows traps other players hid around the map.",
	Flag = "Toggle_Trap_ESP",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg31)
		if state then
			local descendants13 = workspace:GetDescendants()
			for i38, v38 in ipairs(descendants13) do
			end
		end
	end
})
 1:1,25:23395
Tab:Section({ Title = "Tracers & Distance" })
 1:1,25:23395
Tab:Toggle({
	Title = "Tracers",
	Desc = "Draws a line from the bottom of your screen to every player, in their role colour.",
	Flag = "Toggle_ESP_Tracers",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg33)
		if state then
			local connection7 = RunService.RenderStepped:Connect(function(deltaTime2)
			end)
		else
			connection7:Disconnect()
		end
	end
})
 1:1,25:23395
Tab:Toggle({
	Title = "Distance",
	Desc = "How many studs away each player is, written under their feet.",
	Flag = "Toggle_ESP_Distance",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg35)
		if state then
			local connection8 = RunService.RenderStepped:Connect(function(deltaTime3)
			end)
		else
			connection8:Disconnect()
		end
	end
})
 1:1,25:23395
Tab:Toggle({
	Title = "Off-Screen Arrows",
	Desc = "Arrows around your crosshair pointing at the players you cannot see - including the ones behind you.",
	Flag = "Toggle_ESP_Arrows",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg37)
		if state then
			local connection9 = RunService.RenderStepped:Connect(function(deltaTime4)
			end)
		else
			connection9:Disconnect()
		end
	end
})
 1:1,25:23395
Tab:Section({ Title = "ESP Colours" })
 1:1,25:23395
Tab:Colorpicker({
	Title = "Innocent",
	Desc = "Outline colour for everyone else",
	Default = Color3.fromRGB(0, 255, 8),
	Flag = "Colorpicker_Innocent",
	Callback = function(arg38, arg39)
		 117:29964,98:29969,100:29972
		local players11 = Players:GetPlayers()
		 
		for i39, v39 in ipairs(players11) do
			 117:29964,98:29969,100:29972
			local Backpack7 = v39:FindFirstChildOfClass("Backpack")
			 117:29964,98:29969,100:29972
			Backpack7:FindFirstChild("Knife")
			 117:29964,98:29969,101:29973
			local players12 = Players:GetPlayers()
			 
			for i40, v40 in ipairs(players12) do
				 117:29964,98:29969,101:29973
				local Backpack8 = v40:FindFirstChildOfClass("Backpack")
				 117:29964,98:29969,101:29973
				Backpack8:FindFirstChild("Gun")
				 117:29964,98:29969
				local players13 = Players:GetPlayers()
				 
				for i41, v41 in ipairs(players13) do
					 117:29964,98:29969,102:29974
					local descendants14 = v41.Character:GetDescendants()
					 
					for i42, v42 in ipairs(descendants14) do
					end
				end
			end
		end
		 
	end
})
 1:1,25:23395
Tab:Colorpicker({
	Title = "Sheriff",
	Desc = "Outline colour for the sheriff",
	Default = Color3.fromRGB(0, 153, 255),
	Flag = "Colorpicker_Sheriff",
	Callback = function(arg40, arg41)
		 118:30003,98:30008,100:30011
		local players14 = Players:GetPlayers()
		 
		for i43, v43 in ipairs(players14) do
			 118:30003,98:30008,100:30011
			local Backpack9 = v43:FindFirstChildOfClass("Backpack")
			 118:30003,98:30008,100:30011
			Backpack9:FindFirstChild("Knife")
			 118:30003,98:30008,101:30012
			local players15 = Players:GetPlayers()
			 
			for i44, v44 in ipairs(players15) do
				 118:30003,98:30008,101:30012
				local Backpack10 = v44:FindFirstChildOfClass("Backpack")
				 118:30003,98:30008,101:30012
				Backpack10:FindFirstChild("Gun")
				 118:30003,98:30008
				local players16 = Players:GetPlayers()
				 
				for i45, v45 in ipairs(players16) do
					 118:30003,98:30008,102:30013
					local descendants15 = v45.Character:GetDescendants()
					 
					for i46, v46 in ipairs(descendants15) do
					end
				end
			end
		end
		 
	end
})
 1:1,25:23395
Tab:Colorpicker({
	Title = "Murderer",
	Desc = "Outline colour for the murderer",
	Default = Color3.fromRGB(255, 0, 4),
	Flag = "Colorpicker_Murderer",
	Callback = function(arg42, arg43)
		 119:30042,98:30047,100:30050
		local players17 = Players:GetPlayers()
		 
		for i47, v47 in ipairs(players17) do
			 119:30042,98:30047,100:30050
			local Backpack11 = v47:FindFirstChildOfClass("Backpack")
			 119:30042,98:30047,100:30050
			Backpack11:FindFirstChild("Knife")
			 119:30042,98:30047,101:30051
			local players18 = Players:GetPlayers()
			 
			for i48, v48 in ipairs(players18) do
				 119:30042,98:30047,101:30051
				local Backpack12 = v48:FindFirstChildOfClass("Backpack")
				 119:30042,98:30047,101:30051
				Backpack12:FindFirstChild("Gun")
				 119:30042,98:30047
				local players19 = Players:GetPlayers()
				 
				for i49, v49 in ipairs(players19) do
					 119:30042,98:30047,102:30052
					local descendants16 = v49.Character:GetDescendants()
					 
					for i50, v50 in ipairs(descendants16) do
					end
				end
			end
		end
		 
	end
})
 1:1,25:23395
Tab:Colorpicker({
	Title = "Dropped Gun",
	Desc = "Highlight colour for the dropped gun",
	Default = Color3.fromRGB(0, 153, 255),
	Flag = "Colorpicker_Dropped_Gun_Blue",
	Callback = function(state, arg45)
	end
})
 1:1,25:23395
Tab:Colorpicker({
	Title = "Traps",
	Desc = "Highlight colour for traps",
	Default = Color3.fromHex("#A855F7"),
	Flag = "Colorpicker_Traps",
	Callback = function(state, arg47)
	end
})
 1:1,25:23395,122:30133
local descendants17 = Window.UIElements.Main:GetDescendants()
 
for i51, v51 in ipairs(descendants17) do
end
 1:1,25:23395
Tab2:Section({ Title = "Quick Actions" })
 1:1,25:23395
Tab2:Button({
	Title = "Fling Murderer",
	Desc = "Yeet whoever has the knife",
	Icon = "lucide:flame",
	Callback = function(state, arg49)
		if state then
			local players20 = Players:GetPlayers()
			for i52, v52 in ipairs(players20) do
				local Backpack13 = v52:FindFirstChildOfClass("Backpack")
				Backpack13:FindFirstChild("Knife")
				v52.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v52.Character:FindFirstChildOfClass("Humanoid")
				v52.Character:FindFirstChild("Head")
				local Accessory = v52.Character:FindFirstChildOfClass("Accessory")
				Accessory:FindFirstChild("Handle")
			end
		else
			local players21 = Players:GetPlayers()
			for i53, v53 in ipairs(players21) do
				local Backpack14 = v53:FindFirstChildOfClass("Backpack")
				Backpack14:FindFirstChild("Knife")
				v53.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v53.Character:FindFirstChildOfClass("Humanoid")
				v53.Character:FindFirstChild("Head")
				local Accessory2 = v53.Character:FindFirstChildOfClass("Accessory")
				Accessory2:FindFirstChild("Handle")
			end
		end
	end
})
 1:1,25:23395
Tab2:Button({
	Title = "Fling Sheriff",
	Desc = "Yeet whoever has the gun",
	Icon = "lucide:flame",
	Callback = function(state, arg51)
		if state then
			local players22 = Players:GetPlayers()
			for i54, v54 in ipairs(players22) do
				local Backpack15 = v54:FindFirstChildOfClass("Backpack")
				Backpack15:FindFirstChild("Gun")
				v54.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v54.Character:FindFirstChildOfClass("Humanoid")
				v54.Character:FindFirstChild("Head")
				local Accessory3 = v54.Character:FindFirstChildOfClass("Accessory")
				Accessory3:FindFirstChild("Handle")
			end
		else
			local players23 = Players:GetPlayers()
			for i55, v55 in ipairs(players23) do
				local Backpack16 = v55:FindFirstChildOfClass("Backpack")
				Backpack16:FindFirstChild("Gun")
				v55.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v55.Character:FindFirstChildOfClass("Humanoid")
				v55.Character:FindFirstChild("Head")
				local Accessory4 = v55.Character:FindFirstChildOfClass("Accessory")
				Accessory4:FindFirstChild("Handle")
			end
		end
	end
})
 1:1,25:23395
Tab2:Button({
	Title = "Fling All",
	Desc = "Yeet everyone in the server, one after another. Press again to stop",
	Icon = "lucide:flame",
	Callback = function(state, arg53)
		if state then
			local players24 = Players:GetPlayers()
			for i56, v56 in ipairs(players24) do
			end
			task.spawn(function(...)
				v56.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v56.Character:FindFirstChildOfClass("Humanoid")
				v56.Character:FindFirstChild("Head")
				local Accessory5 = v56.Character:FindFirstChildOfClass("Accessory")
				Accessory5:FindFirstChild("Handle")
			end)
		else
			local players25 = Players:GetPlayers()
			for i57, v57 in ipairs(players25) do
			end
			task.spawn(function(...)
				v57.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v57.Character:FindFirstChildOfClass("Humanoid")
				v57.Character:FindFirstChild("Head")
				local Accessory6 = v57.Character:FindFirstChildOfClass("Accessory")
				Accessory6:FindFirstChild("Handle")
			end)
		end
	end
})
 1:1,25:23395,129:30388
local descendants18 = Window.UIElements.Main:GetDescendants()
 
for i58, v58 in ipairs(descendants18) do
end
 1:1,25:23395,129:30413
local descendants19 = Window.UIElements.Main:GetDescendants()
 
for i59, v59 in ipairs(descendants19) do
end
 1:1,25:23395,129:30422
local descendants20 = Window.UIElements.Main:GetDescendants()
 
for i60, v60 in ipairs(descendants20) do
end
 1:1,25:23395
Tab2:Button({
	Title = "Teleport to Murderer",
	Desc = "Instantly go to whoever has the knife",
	Icon = "lucide:crosshair",
	Callback = function(state, arg55)
		if state then
			local players26 = Players:GetPlayers()
			for i61, v61 in ipairs(players26) do
				local Backpack17 = v61:FindFirstChildOfClass("Backpack")
				Backpack17:FindFirstChild("Knife")
				v61.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (v61.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
			end
		else
			local players27 = Players:GetPlayers()
			for i62, v62 in ipairs(players27) do
				local Backpack18 = v62:FindFirstChildOfClass("Backpack")
				Backpack18:FindFirstChild("Knife")
				v62.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (v62.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
			end
		end
	end
})
 1:1,25:23395
Tab2:Button({
	Title = "Teleport to Sheriff",
	Desc = "Instantly go to whoever has the gun",
	Icon = "lucide:shield",
	Callback = function(state, arg57)
		if state then
			local players28 = Players:GetPlayers()
			for i63, v63 in ipairs(players28) do
				local Backpack19 = v63:FindFirstChildOfClass("Backpack")
				Backpack19:FindFirstChild("Gun")
				v63.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (v63.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
			end
		else
			local players29 = Players:GetPlayers()
			for i64, v64 in ipairs(players29) do
				local Backpack20 = v64:FindFirstChildOfClass("Backpack")
				Backpack20:FindFirstChild("Gun")
				v64.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (v64.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
			end
		end
	end
})
 1:1,25:23395
Tab2:Section({ Title = "Target Player" })
 1:1,25:23395,133:30573
local players30 = Players:GetPlayers()
 
for i65, v65 in ipairs(players30) do
end
 1:1,25:23395
Tab2:Dropdown({
	Title = "Target",
	Desc = "Pick a player for the buttons below",
	Multi = false,
	Values = { v65.Name },
	Callback = function(state, arg59)
	end
})
 1:1,25:23395
Players.PlayerAdded:Connect(function(player2)
end)
 1:1,25:23395
Players.PlayerRemoving:Connect(function(player3)
end)
