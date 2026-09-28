-- INITIALIZATION DEBUG
local debugMode = true
local function debugPrint(msg)
	if debugMode then
		print("[knmm2-DEBUG] " .. msg)
	end
end

debugPrint("Script started")

-- CLEANUP EXISTING UI
local function cleanupExistingUI()
	debugPrint("Cleaning up existing UI")
	
	local hui = gethui()
	local knmm2Loading = hui:FindFirstChild("knmm2Loading")
	if knmm2Loading then
		pcall(function() knmm2Loading:Destroy() end)
	end
	
	local CoreGui = game:GetService("CoreGui")
	local children = CoreGui:GetChildren()
	for i, v in ipairs(children) do
		if v.Name:match("^Onyx.+Button$") then
			pcall(function() v:Destroy() end)
		end
	end
	
	local hui2 = gethui()
	local children2 = hui2:GetChildren()
	for i2, v2 in ipairs(children2) do
		if v2.Name:match("^WindUI/") then
			pcall(function() v2:Destroy() end)
		end
	end
	
	debugPrint("Cleanup complete")
end

-- CREATE LOADING SCREEN
local function createLoadingScreen()
	debugPrint("Creating loading screen")
	
	local hui = gethui()
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

	-- Animate in
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

	debugPrint("Loading screen created")
	
	return {
		ScreenGui = ScreenGui2,
		Frame2 = Frame2,
		Frame3 = Frame3,
		Frame6 = Frame6,
		TextLabel2 = TextLabel2,
		TweenService = TweenService
	}
end

-- MAIN ASYNC INITIALIZATION
debugPrint("Starting async initialization")

cleanupExistingUI()
local loadingUI = createLoadingScreen()

_G.knmm2Cleanup = nil

task.spawn(function()
	debugPrint("Async task started")
	
	local ScreenGui2 = loadingUI.ScreenGui
	local Frame6 = loadingUI.Frame6
	local TextLabel2 = loadingUI.TextLabel2
	local TweenService = loadingUI.TweenService
	
	-- FETCH WINDUI LIBRARY
	debugPrint("Fetching WindUI library...")
	local tween11 = TweenService:Create(Frame6, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0.12, 0, 1, 0) })
	tween11:Play()
	TextLabel2.Text = "Fetching library"
	task.wait(0.4)

	local success_fetch, response = pcall(function()
		return game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")
	end)

	if not success_fetch or not response or type(response) ~= "string" then
		debugPrint("FATAL: Failed to fetch WindUI library")
		print("[knmm2] Error: Could not fetch WindUI. Check network connection.")
		ScreenGui2:Destroy()
		return
	end
	
	debugPrint("WindUI fetched successfully (" .. tostring(#response) .. " bytes)")

	pcall(function()
		makefolder("knmm2")
		writefile("knmm2/windui.lua", response)
	end)

	-- LOAD WINDUI
	debugPrint("Loading WindUI...")
	local success_load, result = pcall(function()
		return loadstring(response)()
	end)

	if not success_load or not result then
		debugPrint("FATAL: Failed to load WindUI")
		print("[knmm2] Error: Could not execute WindUI library.")
		ScreenGui2:Destroy()
		return
	end
	
	debugPrint("WindUI loaded successfully")

	-- SET THEME
	debugPrint("Setting theme...")
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

	-- CREATE WINDOW
	debugPrint("Creating Window...")
	local tween12 = TweenService:Create(Frame6, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0.4, 0, 1, 0) })
	tween12:Play()
	TextLabel2.Text = "Building window"
	task.wait(0.4)

	local success_window, Window = pcall(function()
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

	if not success_window or not Window then
		debugPrint("FATAL: Failed to create Window")
		print("[knmm2] Error: Could not create main window.")
		ScreenGui2:Destroy()
		return
	end
	
	debugPrint("Window created successfully")

	_G.knmm2 = Window

	pcall(function()
		Window:Tag({ Title = "@knmm2", Color = Color3.fromHex("#ffffff"), Icon = "youtube", Radius = 6 })
		Window:Tag({ Title = "", Color = Color3.fromHex("#ffffff"), Icon = "message-square-more", Radius = 6 })
		Window:Tag({ Title = "Mobile & PC", Color = Color3.fromHex("#ffffff"), Icon = "smartphone", Radius = 6 })
	end)

	Window:SetBackgroundTransparency(0.4)

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

	-- INITIALIZE TABS
	debugPrint("Building tabs...")
	local tween13 = TweenService:Create(Frame6, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0.78, 0, 1, 0) })
	tween13:Play()
	TextLabel2.Text = "Building tabs"

	pcall(function()
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

		Window:Tab({
			Title = "Buttons",
			Border = true,
			Icon = "lucide:gamepad-directional",
			IconColor = Color3.fromHex("#6E6E7B"),
			IconShape = "Square"
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

		-- ADD CONTENT
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
			Desc = "A cue when the sheriff dies and the gun drops.",
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

		Tab:Section({ Title = "ESP — See Through Walls" })
		Tab:Toggle({
			Title = "ESP Outline",
			Desc = "Glowing outline on every player through walls.",
			Flag = "Toggle_ESP_Outline",
			Type = "Toggle",
			Value = false,
			Callback = function(arg22, arg23)
			end
		})

		local ConfigSuccess, Config = pcall(function()
			return Window.ConfigManager:CreateConfig("autosave")
		end)
		if ConfigSuccess and Config then
			Config:SetAsCurrent()
		end
	end)

	-- HIDE LOADING SCREEN
	debugPrint("Initialization complete! Hiding loading screen...")
	local tween14 = TweenService:Create(loadingUI.Frame2, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 })
	tween14:Play()
	tween14.Completed:Connect(function()
		pcall(function()
			ScreenGui2:Destroy()
		end)
	end)

	print("[knmm2] Successfully loaded!")
end)

debugPrint("Main thread completed")
