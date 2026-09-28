local connection = game.Changed:Connect(function(value)
end)
connection:Disconnect()

local connection2 = workspace.Changed:Connect(function(value2)
end)
connection2:Disconnect()

local Folder = Instance.new("Folder")
local connection3 = Folder.Changed:Connect(function(value3)
end)
connection3:Disconnect()
Folder:GetChildren()
Folder:Destroy()

local Folder2 = Instance.new("Folder", Folder)
local connection4 = Folder2.Changed:Connect(function(value4)
end)
connection4:Disconnect()
Folder2.Name = "2090576680"
pcall(function()
	Folder:WaitForChild("2090576680")
end)
Folder:Destroy()
Folder2:Destroy()

local HttpService = game:GetService("HttpService")
local connection5 = HttpService.Changed:Connect(function(value5)
end)
connection5:Disconnect()

local RunService = game:GetService("RunService")
local connection6 = RunService.Changed:Connect(function(value6)
end)
connection6:Disconnect()

local hui = gethui()
local knmm2Loading = hui:FindFirstChild("knmm2Loading")
if knmm2Loading then
	knmm2Loading:Destroy()
end

local TweenService = game:GetService("TweenService")
local ScreenGui2 = Instance.new("ScreenGui")
ScreenGui2.Name = "knmm2Loading"
ScreenGui2.IgnoreGuiInset = true
ScreenGui2.ResetOnSpawn = false
ScreenGui2.DisplayOrder = 99998
ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui2.Parent = hui

local Frame2 = Instance.new("Frame")
Frame2.Size = UDim2.fromScale(1, 1)
Frame2.BackgroundColor3 = Color3.new(0, 0, 0)
Frame2.BackgroundTransparency = 1
Frame2.BorderSizePixel = 0
Frame2.Parent = ScreenGui2

local Frame3 = Instance.new("Frame")
Frame3.AnchorPoint = Vector2.new(0.5, 0.5)
Frame3.Position = UDim2.fromScale(0.5, 0.5)
Frame3.Size = UDim2.fromOffset(280, 102)
Frame3.BackgroundColor3 = Color3.fromRGB(23, 23, 28)
Frame3.BackgroundTransparency = 1
Frame3.BorderSizePixel = 0
Frame3.Parent = ScreenGui2

local UICorner = Instance.new("UICorner", Frame3)
UICorner.CornerRadius = UDim.new(0, 18)

local UIGradient = Instance.new("UIGradient", Frame3)
UIGradient.Rotation = 90
UIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 36)), ColorSequenceKeypoint.new(1, Color3.fromRGB(16, 16, 20)) })

local UIStroke = Instance.new("UIStroke", Frame3)
UIStroke.Color = Color3.fromRGB(140, 140, 165)
UIStroke.Thickness = 1
UIStroke.Transparency = 1

local Frame4 = Instance.new("Frame")
Frame4.Position = UDim2.fromOffset(22, 18)
Frame4.Size = UDim2.fromOffset(44, 44)
Frame4.BackgroundColor3 = Color3.fromRGB(38, 38, 47)
Frame4.BackgroundTransparency = 1
Frame4.BorderSizePixel = 0
Frame4.Parent = Frame3

local UICorner2 = Instance.new("UICorner", Frame4)
UICorner2.CornerRadius = UDim.new(1, 0)

local UIStroke2 = Instance.new("UIStroke", Frame4)
UIStroke2.Color = Color3.fromRGB(140, 140, 165)
UIStroke2.Thickness = 1
UIStroke2.Transparency = 1

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
ImageLabel.Size = UDim2.fromOffset(23, 23)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Image = "rbxassetid://110926118391987"
ImageLabel.ImageColor3 = Color3.fromRGB(236, 236, 244)
ImageLabel.ImageTransparency = 1
ImageLabel.Parent = Frame4

local TextLabel = Instance.new("TextLabel")
TextLabel.Position = UDim2.fromOffset(81, 20)
TextLabel.Size = UDim2.new(1, -103, 0, 22)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextSize = 19
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextColor3 = Color3.fromRGB(242, 242, 248)
TextLabel.TextTransparency = 1
TextLabel.Text = "Loading knmm2"
TextLabel.Parent = Frame3

local TextLabel2 = Instance.new("TextLabel")
TextLabel2.Position = UDim2.fromOffset(81, 43)
TextLabel2.Size = UDim2.new(1, -103, 0, 19)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Font = Enum.Font.Gotham
TextLabel2.TextSize = 16
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel2.TextColor3 = Color3.fromRGB(139, 139, 153)
TextLabel2.TextTransparency = 1
TextLabel2.Text = "Starting up"
TextLabel2.Parent = Frame3

local Frame5 = Instance.new("Frame")
Frame5.Position = UDim2.fromOffset(22, 79)
Frame5.Size = UDim2.new(1, -44, 0, 5)
Frame5.BackgroundColor3 = Color3.fromRGB(38, 38, 47)
Frame5.BackgroundTransparency = 1
Frame5.BorderSizePixel = 0
Frame5.Parent = Frame3

local UICorner3 = Instance.new("UICorner", Frame5)
UICorner3.CornerRadius = UDim.new(1, 0)

local Frame6 = Instance.new("Frame")
Frame6.Size = UDim2.new(0, 0, 1, 0)
Frame6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame6.BackgroundTransparency = 1
Frame6.BorderSizePixel = 0
Frame6.Parent = Frame5

local UICorner4 = Instance.new("UICorner", Frame6)
UICorner4.CornerRadius = UDim.new(1, 0)

local UIGradient2 = Instance.new("UIGradient", Frame6)
UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(143, 143, 158)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)) })

local tween = TweenService:Create(Frame2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.5 })
tween:Play()

local tween2 = TweenService:Create(Frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
tween2:Play()

local tween3 = TweenService:Create(UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.58 })
tween3:Play()

local tween4 = TweenService:Create(Frame4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
tween4:Play()

local tween5 = TweenService:Create(UIStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.5 })
tween5:Play()

local tween6 = TweenService:Create(ImageLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0 })
tween6:Play()

local tween7 = TweenService:Create(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 })
tween7:Play()

local tween8 = TweenService:Create(TextLabel2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 })
tween8:Play()

local tween9 = TweenService:Create(Frame5, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
tween9:Play()

local tween10 = TweenService:Create(Frame6, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
tween10:Play()

task.spawn(function()
	hui:GetChildren()
	task.wait(0.05)
	hui:GetChildren()
	task.wait(0.05)
end)

task.delay(30, function()
end)

task.spawn(function()
	print("-- LOADING KNMM2 --")
	print("[                      ] 00%")
	task.wait(0.25)
	print("[#####                 ] 23%")
	task.wait(0.25)
	print("[###########           ] 50%")
	task.wait(0.25)
	print("[######################] 100%")
	task.wait(0.25)
	print("Loaded. ")
end)

_G.knmm2Cleanup = nil

local CoreGui = game:GetService("CoreGui")
local children = CoreGui:GetChildren()

for i, v in ipairs(children) do
	if v.Name:match("^Onyx.+Button$") then
		pcall(function()
			v:Destroy()
		end)
	end
end

local hui2 = gethui()
local children2 = hui2:GetChildren()

for i2, v2 in ipairs(children2) do
	if v2.Name:match("^WindUI/") then
		pcall(function()
			v2:Destroy()
		end)
	end
end

-- WRAP ALL INITIALIZATION IN ASYNC TASK
task.spawn(function()
	local tween11 = TweenService:Create(Frame6, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0.12, 0, 1, 0) })
	tween11:Play()
	TextLabel2.Text = "Fetching library"
	task.wait(0.4)

	local success, response = pcall(function()
		return game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")
	end)

	if not success or not response then
		print("Error: Failed to fetch WindUI library")
		ScreenGui2:Destroy()
		return
	end

	pcall(function()
		makefolder("knmm2")
		writefile("knmm2/windui.lua", response)
	end)

	local success2, response2 = pcall(function()
		return game:HttpGet("https://raw.githubusercontent.com/Footagesus/Icons/main/Main-v2.lua")
	end)

	if success2 and response2 then
		pcall(function()
			response2:gsub("return game:HttpGet%(url%)", function(arg, arg2)
			end)
		end)
	end

	local success3, result = pcall(function()
		return loadstring(response)()
	end)

	if not success3 or not result then
		print("Error: Failed to load WindUI")
		ScreenGui2:Destroy()
		return
	end

	pcall(function()
		local result2 = result:Gradient({ ["0"] = { Color = Color3.fromHex("#161619"), Transparency = 0.12 }, ["100"] = { Color = Color3.fromHex("#161619"), Transparency = 0.12 } }, { Rotation = 90 })
		local result3 = result:Gradient({ ["0"] = { Color = Color3.fromHex("#101014"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#2a2a32"), Transparency = 0 } }, { Rotation = 90 })

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

		result:SetTheme("knmm2")
	end)

	local tween12 = TweenService:Create(Frame6, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0.4, 0, 1, 0) })
	tween12:Play()
	TextLabel2.Text = "Building window"
	task.wait(0.4)

	local success4, Window = pcall(function()
		return result:CreateWindow({
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
	end)

	if not success4 or not Window then
		print("Error: Failed to create Window")
		ScreenGui2:Destroy()
		return
	end

	pcall(function()
		Window:Tag({ Title = "@knmm2", Color = Color3.fromHex("#ffffff"), Icon = "youtube", Radius = 6 })
		Window:Tag({ Title = "", Color = Color3.fromHex("#ffffff"), Icon = "message-square-more", Radius = 6 })
		Window:Tag({ Title = "Mobile & PC", Color = Color3.fromHex("#ffffff"), Icon = "smartphone", Radius = 6 })
	end)

	task.spawn(function()
		if Window and Window.UIElements and Window.UIElements.Main then
			local descendants = Window.UIElements.Main:GetDescendants()
			for i3, v3 in ipairs(descendants) do
			end
		end
	end)

	Window:SetBackgroundTransparency(0.4)

	task.spawn(function()
		if Window and Window.UIElements and Window.UIElements.Main then
			local Background = Window.UIElements.Main:FindFirstChild("Background")
			if Background then
				local children3 = Background:GetChildren()
				for i4, v4 in ipairs(children3) do
				end
				RunService.RenderStepped:Wait()
			end

			local Background2 = Window.UIElements.Main:FindFirstChild("Background")
			if Background2 then
				local children4 = Background2:GetChildren()
				for i5, v5 in ipairs(children4) do
				end
				RunService.RenderStepped:Wait()
			end
		end
	end)

	task.spawn(function()
		if Window and Window.UIElements and Window.UIElements.Main then
			local Topbar = Window.UIElements.Main:FindFirstChild("Topbar", true)
			if Topbar then
				local Left = Topbar:FindFirstChild("Left")
				if Left then
					local Title = Left:FindFirstChild("Title")
					if Title then
						local Title2 = Title:FindFirstChild("Title")
						if Title2 then
							Title2:FindFirstChild("knmm2TitleSheen")
						end
					end
				end
			end
		end
	end)

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

	_G.knmm2 = Window

	pcall(function()
		makefolder("WindUI/knmm2/hud")
	end)

	Window.Tab = function(arg3, arg4)
		return Window.Tab(arg3, arg4)
	end

	result.Notify = function(arg5, arg6)
		return nil
	end

	task.delay(4, function()
		return nil
	end)

	task.delay(20, function()
		return nil
	end)

	task.spawn(function()
		local WindUINotifications = CoreGui:FindFirstChild("WindUI/Notifications", true)
		if WindUINotifications then
			local Frame7 = WindUINotifications:FindFirstChildWhichIsA("Frame")
			if Frame7 then
				local children5 = Frame7:GetChildren()
				for i7, v7 in ipairs(children5) do
					task.spawn(function()
						local ImageLabel2 = v7:FindFirstChildWhichIsA("ImageLabel")
						if ImageLabel2 then
							ImageLabel2:FindFirstChild("OnyxToastRamp")
						end
					end)
				end
				Frame7.ChildAdded:Connect(function(child)
				end)
			end
		end
	end)

	task.spawn(function()
		if Window and Window.UIElements and Window.UIElements.Main then
			local Background3 = Window.UIElements.Main:FindFirstChild("Background")
			if Background3 then
				local children6 = Background3:GetChildren()
				for i8, v8 in ipairs(children6) do
				end
			end

			local Topbar2 = Window.UIElements.Main:FindFirstChild("Topbar", true)
			if Topbar2 then
				local descendants2 = Topbar2:GetDescendants()
				for i9, v9 in ipairs(descendants2) do
				end
			end

			RunService.RenderStepped:Wait()

			local Background4 = Window.UIElements.Main:FindFirstChild("Background")
			if Background4 then
				local children7 = Background4:GetChildren()
				for i10, v10 in ipairs(children7) do
				end
			end

			local Topbar3 = Window.UIElements.Main:FindFirstChild("Topbar", true)
			if Topbar3 then
				local descendants3 = Topbar3:GetDescendants()
				for i11, v11 in ipairs(descendants3) do
				end
			end

			RunService.RenderStepped:Wait()
		end
	end)

	local Config = Window.ConfigManager:CreateConfig("autosave")
	Config:SetAsCurrent()

	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local CollectionService = game:GetService("CollectionService")

	local ScreenGui3 = Instance.new("ScreenGui")
	ScreenGui3.Name = "knmm2ESP"
	ScreenGui3.IgnoreGuiInset = true
	ScreenGui3.ResetOnSpawn = false
	ScreenGui3.Parent = CoreGui

	local players = Players:GetPlayers()

	for i14, v14 in ipairs(players) do
		if v14.Character then
			local descendants4 = v14.Character:GetDescendants()
			for i15, v15 in ipairs(descendants4) do
				v15.Visible = false
				local changedSignal = v15:GetPropertyChangedSignal("Visible")
				changedSignal:Connect(function(arg7)
				end)
			end
			v14.Character.DescendantAdded:Connect(function(descendant)
			end)
		end
		v14.CharacterAdded:Connect(function(character)
		end)
	end

	Players.PlayerAdded:Connect(function(player)
	end)

	workspace.DescendantAdded:Connect(function(descendant2)
	end)

	workspace.DescendantRemoving:Connect(function(descendant3)
	end)

	local Remotes = ReplicatedStorage:FindFirstChild("Remotes")
	if Remotes then
		local Gameplay = Remotes:FindFirstChild("Gameplay")
		if Gameplay then
			local PlayerDataChanged = Gameplay:FindFirstChild("PlayerDataChanged")
			if PlayerDataChanged then
				PlayerDataChanged.OnClientEvent:Connect(function(arg8)
				end)
			end
		end
	end

	local TeleportService = game:GetService("TeleportService")
	local UserInputService = game:GetService("UserInputService")

	UserInputService.InputBegan:Connect(function(input, gameProcessed)
	end)

	task.spawn(function()
		task.wait(0.25)
		local mouseButtonsPressed = UserInputService:GetMouseButtonsPressed()
		for i16, v16 in ipairs(mouseButtonsPressed) do
		end
		result.CurrentInput = nil

		task.wait(0.25)
		local mouseButtonsPressed2 = UserInputService:GetMouseButtonsPressed()
		for i17, v17 in ipairs(mouseButtonsPressed2) do
		end
		result.CurrentInput = nil

		task.wait(0.25)
	end)

	Players.LocalPlayer.CharacterAdded:Connect(function(character2)
	end)

	local VirtualUser = game:GetService("VirtualUser")
	_G.__knmm2Build = "gatestyle-38"
	_G.__knmm2Gen = 1

	task.spawn(function()
		task.wait(15)
		task.wait(3)
	end)

	task.spawn(function()
		local success_http, response3 = pcall(function()
			return game:HttpGet("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=0&size=150x150&format=Png&isCircular=false")
		end)
		if success_http and response3 then
			response3:match("\"imageUrl\"%s*:%s*\"([^\"]+)\"")
		end
		task.wait(4)
	end)

	task.spawn(function()
		local RoundTimerPart = workspace:FindFirstChild("RoundTimerPart")
		if not RoundTimerPart then
			RoundTimerPart = workspace:WaitForChild("RoundTimerPart", 30)
		end
		if RoundTimerPart then
			RoundTimerPart:GetAttribute("Time")
			RoundTimerPart:GetAttribute("RoundLength")
		end
	end)

	Players.LocalPlayer.CharacterAdded:Connect(function(character3)
	end)

	RunService.Heartbeat:Connect(function(deltaTime)
	end)

	pcall(function()
		local ClientServices = ReplicatedStorage:FindFirstChild("ClientServices")
		if not ClientServices then
			ClientServices = ReplicatedStorage:WaitForChild("ClientServices", 5)
		end
		if ClientServices then
			ClientServices:WaitForChild("WeaponService", 5)
		end
	end)

	if Players.LocalPlayer.Character then
		local Humanoid = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if Humanoid then
			local Animator = Humanoid:FindFirstChildOfClass("Animator")
			if Animator then
				Animator.AnimationPlayed:Connect(function(arg9)
				end)
			end
		end
	end

	Players.LocalPlayer.CharacterAdded:Connect(function(character4)
	end)

	if Players.LocalPlayer.Character then
		local Humanoid2 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if Humanoid2 then
			Humanoid2.Died:Connect(function()
			end)
		end
	end

	Players.LocalPlayer.CharacterAdded:Connect(function(character5)
	end)

	Players.LocalPlayer:GetMouse()

	Window:Tab({ Title = "Combat", Border = true, Icon = "lucide:shield", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
	Window:Tab({
		Title = "Crosshair",
		Border = true,
		Icon = "lucide:crosshair",
		IconColor = Color3.fromHex("#6E6E7B"),
		IconShape = "Square"
	})
	Window:Tab({
		Title = "Skin Changer",
		Border = true,
		Icon = "lucide:sword",
		IconColor = Color3.fromHex("#6E6E7B"),
		IconShape = "Square"
	})

	if Window and Window.UIElements and Window.UIElements.Main then
		local descendants5 = Window.UIElements.Main:GetDescendants()
		for i19, v19 in ipairs(descendants5) do
		end
	end

	task.spawn(function()
		RunService.RenderStepped:Wait()
		if Window and Window.UIElements and Window.UIElements.Main then
			local descendants6 = Window.UIElements.Main:GetDescendants()
			for i20, v20 in ipairs(descendants6) do
			end
		end
		RunService.RenderStepped:Wait()
	end)

	Window:Tab({
		Title = "Buttons",
		Border = true,
		Icon = "lucide:gamepad-directional",
		IconColor = Color3.fromHex("#6E6E7B"),
		IconShape = "Square"
	})

	local Tab = Window:Tab({ Title = "ESP", Border = true, Icon = "solar:eye-bold", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
	local Tab2 = Window:Tab({
		Title = "Fling & Teleport",
		Border = true,
		Icon = "solar:bolt-bold",
		IconColor = Color3.fromHex("#6E6E7B"),
		IconShape = "Square"
	})
	Window:Tab({
		Title = "Autofarm",
		Border = true,
		Icon = "solar:dollar-minimalistic-bold",
		IconColor = Color3.fromHex("#6E6E7B"),
		IconShape = "Square"
	})
	Window:Tab({
		Title = "Player",
		Border = true,
		Icon = "solar:user-bold",
		IconColor = Color3.fromHex("#6E6E7B"),
		IconShape = "Square"
	})

	local Tab3 = Window:Tab({
		Title = "Visuals",
		Border = true,
		Icon = "lucide:sparkles",
		IconColor = Color3.fromHex("#6E6E7B"),
		IconShape = "Square"
	})

	pcall(function()
		result.Creator.Request({
			Headers = { Accept = "application/json", ["User-Agent"] = "knmm2/2" },
			Method = "GET",
			Url = "https://discord.com/api/v10/invites/XEBpqUNrMy?with_counts=true&with_expiration=true"
		})
	end)

	local success_discord, response4 = pcall(function()
		return game:HttpGet("https://discord.com/api/v10/invites/XEBpqUNrMy?with_counts=true&with_expiration=true")
	end)
	if success_discord and response4 then
		pcall(function()
			HttpService:JSONDecode(response4)
		end)
	end

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

	Tab3:Section({ Title = "Sound Changer" })
	Tab3:Toggle({
		Title = "Error Sound",
		Desc = "A cue when something fails or gets refused.",
		Flag = "Toggle_Sound_Errors",
		Type = "Toggle",
		Value = true,
		Callback = function(state, arg13)
		end
	})
	Tab3:Toggle({
		Title = "Gun Drop Sound",
		Desc = "A cue when the sheriff dies and the gun drops. Useful with the window closed.",
		Flag = "Toggle_Sound_Gun_Drop",
		Type = "Toggle",
		Value = true,
		Callback = function(state, arg15)
		end
	})
	Tab3:Toggle({
		Title = "Button Click Sound",
		Desc = "A click when you press an on-screen button.",
		Flag = "Toggle_Sound_Button_Click",
		Type = "Toggle",
		Value = true,
		Callback = function(state, arg17)
		end
	})
	Tab3:Toggle({
		Title = "Toggle Sound",
		Desc = "A click when you flip a switch in the menu.",
		Flag = "Toggle_Sound_Switches",
		Type = "Toggle",
		Value = true,
		Callback = function(state, arg19)
		end
	})

	Window:Tab({
		Title = "Keybinds",
		Border = true,
		Icon = "lucide:keyboard",
		IconColor = Color3.fromHex("#6E6E7B"),
		IconShape = "Square"
	})

	local Tab4 = Window:Tab({
		Title = "Settings & Configs",
		Border = true,
		Icon = "solar:settings-bold",
		IconColor = Color3.fromHex("#6E6E7B"),
		IconShape = "Square"
	})

	local tween13 = TweenService:Create(Frame6, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0.78, 0, 1, 0) })
	tween13:Play()
	TextLabel2.Text = "Building tabs"

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

	task.spawn(function()
		if Window and Window.UIElements and Window.UIElements.Main then
			local descendants7 = Window.UIElements.Main:GetDescendants()
			for i22, v22 in ipairs(descendants7) do
			end
			RunService.RenderStepped:Wait()
			local descendants8 = Window.UIElements.Main:GetDescendants()
			for i23, v23 in ipairs(descendants8) do
			end
			RunService.RenderStepped:Wait()
		end
	end)

	Tab:Section({ Title = "ESP — See Through Walls" })
	Tab:Toggle({
		Title = "ESP Outline",
		Desc = "Glowing outline on every player through walls.",
		Flag = "Toggle_ESP_Outline",
		Type = "Toggle",
		Value = false,
		Callback = function(arg22, arg23)
			local players2 = Players:GetPlayers()
			for i25, v25 in ipairs(players2) do
				local Backpack = v25:FindFirstChildOfClass("Backpack")
				if Backpack then
					Backpack:FindFirstChild("Knife")
				end

				local players3 = Players:GetPlayers()
				for i26, v26 in ipairs(players3) do
					local Backpack2 = v26:FindFirstChildOfClass("Backpack")
					if Backpack2 then
						Backpack2:FindFirstChild("Gun")
					end

					local players4 = Players:GetPlayers()
					for i27, v27 in ipairs(players4) do
						if v27.Character then
							local descendants9 = v27.Character:GetDescendants()
							for i28, v28 in ipairs(descendants9) do
							end
						end
					end
				end
			end
		end
	})

	Tab:Toggle({
		Title = "Full Body ESP",
		Desc = "Fills the whole body in the role colour.",
		Flag = "Toggle_Full_Body_ESP",
		Type = "Toggle",
		Value = false,
		Callback = function(arg24, arg25)
			local players5 = Players:GetPlayers()
			for i29, v29 in ipairs(players5) do
				local Backpack3 = v29:FindFirstChildOfClass("Backpack")
				if Backpack3 then
					Backpack3:FindFirstChild("Knife")
				end

				local players6 = Players:GetPlayers()
				for i30, v30 in ipairs(players6) do
					local Backpack4 = v30:FindFirstChildOfClass("Backpack")
					if Backpack4 then
						Backpack4:FindFirstChild("Gun")
					end

					local players7 = Players:GetPlayers()
					for i31, v31 in ipairs(players7) do
						if v31.Character then
							local descendants10 = v31.Character:GetDescendants()
							for i32, v32 in ipairs(descendants10) do
							end
						end
					end
				end
			end
		end
	})

	-- Hide loading screen when complete
	local tween14 = TweenService:Create(Frame2, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 })
	tween14:Play()
	tween14.Completed:Connect(function()
		pcall(function()
			ScreenGui2:Destroy()
		end)
	end)

	print("[knmm2] Initialization complete!")
end)
