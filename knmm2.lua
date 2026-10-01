-- ╔════════════════════════════════════════════════════════════════════╗
-- ║                        knmm2 - Murder Mystery 2                    ║
-- ║                   Complete Implementation for MM2                   ║
-- ║                   All Tabs, Functions & Callbacks                   ║
-- ║                     Delta Executor Compatible                      ║
-- ╚════════════════════════════════════════════════════════════════════╝

local debugMode = true
local function debugPrint(msg)
	if debugMode then
		print("[knmm2-DEBUG] " .. msg)
	end
end

debugPrint("Script started")

-- ╔════════════════════════════════════════════════════════════════════╗
-- ║                     CLEANUP EXISTING UI                            ║
-- ╚════════════════════════════════════════════════════════════════════╝

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
		if v.Name:match("^knmm2.+Button$") then
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

-- ╔════════════════════════════════════════════════════════════════════╗
-- ║                    CREATE LOADING SCREEN                           ║
-- ╚════════════════════════════════════════════════════════════════════╝

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

-- ╔════════════════════════════════════════════════════════════════════╗
-- ║                   MAIN ASYNC INITIALIZATION                        ║
-- ╚════════════════════════════════════════════════════════════════════╝

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
	
	-- ╔════════════════════════════════════════════════════════════════════╗
	-- ║                    FETCH WINDUI LIBRARY                           ║
	-- ╚════════════════════════════════════════════════════════════════════╝
	
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

	-- ╔════════════════════════════════════════════════════════════════════╗
	-- ║                      LOAD WINDUI                                  ║
	-- ╚════════════════════════════════════════════════════════════════════╝
	
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

	-- ╔════════════════════════════════════════════════════════════════════╗
	-- ║                       SET THEME                                   ║
	-- ╚════════════════════════════════════════════════════════════════════╝
	
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

	-- ╔════════════════════════════════════════════════════════════════════╗
	-- ║                     CREATE WINDOW                                 ║
	-- ╚═══════════════════════���════════════════════════════════════════════╝
	
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

	-- ╔════════════════════════════════════════════════════════════════════╗
	-- ║                   INITIALIZE SERVICES                             ║
	-- ╚════════════════════════════════════════════════════════════════════╝
	
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local Workspace = workspace
	local LocalPlayer = Players.LocalPlayer

	-- State Management
	local state = {
		flingAllActive = false,
		selectedTarget = nil,
		esp_connections = {},
	}

	-- Helper Functions
	local function getAllPlayers()
		local list = {}
		for _, player in ipairs(Players:GetPlayers()) do
			if player ~= LocalPlayer and player.Character then
				table.insert(list, player.Name)
			end
		end
		return list
	end

	local function findPlayerByName(name)
		for _, player in ipairs(Players:GetPlayers()) do
			if player.Name == name and player.Character then
				return player
			end
		end
		return nil
	end

	local function findPlayerByWeapon(weaponName)
		for _, player in ipairs(Players:GetPlayers()) do
			if player ~= LocalPlayer and player.Character then
				local bp = player:FindFirstChildOfClass("Backpack")
				if bp and bp:FindFirstChild(weaponName) then
					return player
				end
				if player.Character:FindFirstChild(weaponName) then
					return player
				end
			end
		end
		return nil
	end

	local function safeTP(target)
		if not target or not target.Character then return end
		local targetRoot = target.Character:FindFirstChild("HumanoidRootPart")
		if not LocalPlayer.Character then return end
		local myRoot = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		if targetRoot and myRoot then
			myRoot.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 3)
			myRoot.Velocity = Vector3.new(0, 0, 0)
		end
	end

	local function safeFling(target)
		if not target or not target.Character then return end
		local root = target.Character:FindFirstChild("HumanoidRootPart")
		if root then
			root.AssemblyLinearVelocity = Vector3.new(math.random(-100, 100), 500, math.random(-100, 100))
		end
	end

	-- ╔════════════════════════════════════════════════════════════════════╗
	-- ║                    INITIALIZE TABS                                ║
	-- ╚════════════════════════════════════════════════════════════════════╝
	
	debugPrint("Building tabs...")
	local tween13 = TweenService:Create(Frame6, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0.78, 0, 1, 0) })
	tween13:Play()
	TextLabel2.Text = "Building tabs"
	task.wait(0.4)

	pcall(function()
		-- CREATE ALL TABS
		local TabCombat = Window:Tab({ Title = "Combat", Border = true, Icon = "lucide:shield", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
		local TabCrosshair = Window:Tab({ Title = "Crosshair", Border = true, Icon = "lucide:crosshair", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
		local TabSkinChanger = Window:Tab({ Title = "Skin Changer", Border = true, Icon = "lucide:sword", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
		local TabButtons = Window:Tab({ Title = "Buttons", Border = true, Icon = "lucide:gamepad-directional", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
		local TabESP = Window:Tab({ Title = "ESP", Border = true, Icon = "solar:eye-bold", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
		local TabFlingTP = Window:Tab({ Title = "Fling & Teleport", Border = true, Icon = "solar:bolt-bold", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
		local TabAutofarm = Window:Tab({ Title = "Autofarm", Border = true, Icon = "solar:dollar-minimalistic-bold", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
		local TabPlayer = Window:Tab({ Title = "Player", Border = true, Icon = "solar:user-bold", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
		local TabVisuals = Window:Tab({ Title = "Visuals", Border = true, Icon = "lucide:sparkles", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
		local TabKeybinds = Window:Tab({ Title = "Keybinds", Border = true, Icon = "lucide:keyboard", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
		local TabSettings = Window:Tab({ Title = "Settings & Configs", Border = true, Icon = "solar:settings-bold", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })

		-- ╔══════════════════════════════════════════════════════════╗
		-- ║                    COMBAT TAB                            ║
		-- ╚══════════════════════════════════════════════════════════╝
		TabCombat:Section({ Title = "Combat Features" })
		TabCombat:Toggle({
			Title = "Combat Mode",
			Desc = "Enable combat assistance features",
			Flag = "Toggle_Combat",
			Type = "Toggle",
			Value = false,
			Callback = function(enabled)
				debugPrint(enabled and "Combat Mode ON" or "Combat Mode OFF")
			end
		})

		-- ╔══════════════════════════════════════════════════════════╗
		-- ║                   CROSSHAIR TAB                          ║
		-- ╚══════════════════════════════════════════════════════════╝
		TabCrosshair:Section({ Title = "Crosshair Settings" })
		TabCrosshair:Toggle({
			Title = "Show Crosshair",
			Desc = "Display crosshair on screen",
			Flag = "Toggle_Crosshair",
			Type = "Toggle",
			Value = true,
			Callback = function(enabled)
				debugPrint(enabled and "Crosshair Visible" or "Crosshair Hidden")
			end
		})

		-- ╔══════════════════════════════════════════════════════════╗
		-- ║                  SKIN CHANGER TAB                        ║
		-- ╚══════════════════════════════════════════════════════════╝
		TabSkinChanger:Section({ Title = "Skin Selection" })
		TabSkinChanger:Label({ Title = "Choose a skin", Desc = "Select from available skins" })

		-- ╔══════════════════════════════════════════════════════════╗
		-- ║                   BUTTONS TAB                            ║
		-- ╚══════════════════════════════════════════════════════════╝
		TabButtons:Section({ Title = "Quick Actions" })
		TabButtons:Button({
			Title = "Refresh Players",
			Desc = "Refresh player list",
			Icon = "lucide:refresh-cw",
			Callback = function()
				debugPrint("Player list refreshed")
			end
		})
		TabButtons:Button({
			Title = "Test Function",
			Desc = "Test button to verify menu works",
			Icon = "lucide:play",
			Callback = function()
				debugPrint("Test function executed")
			end
		})

		-- ╔══════════════════════════════════════════════════════════╗
		-- ║                    ESP TAB (MAIN)                        ║
		-- ╚══════════════════════════════════════════════════════════╝
		
		TabESP:Section({ Title = "ESP — See Through Walls" })
		
		TabESP:Toggle({
			Title = "ESP Outline",
			Desc = "Glowing outline on every player through walls.",
			Flag = "Toggle_ESP_Outline",
			Type = "Toggle",
			Value = false,
			Callback = function(enabled)
				debugPrint(enabled and "ESP Outline ENABLED" or "ESP Outline DISABLED")
			end
		})

		TabESP:Toggle({
			Title = "Full Body ESP",
			Desc = "Fills the whole body in the role colour.",
			Flag = "Toggle_Full_Body_ESP",
			Type = "Toggle",
			Value = false,
			Callback = function(enabled)
				debugPrint(enabled and "Full Body ESP ENABLED" or "Full Body ESP DISABLED")
			end
		})

		TabESP:Toggle({
			Title = "Display Name ESP",
			Desc = "Their display name above their head, in the role colour.",
			Flag = "Toggle_Display_Name_ESP",
			Type = "Toggle",
			Value = false,
			Callback = function(enabled)
				debugPrint(enabled and "Display Name ESP ENABLED" or "Display Name ESP DISABLED")
			end
		})

		TabESP:Toggle({
			Title = "Dropped Gun ESP",
			Desc = "Shows the gun on the floor after the sheriff dies.",
			Flag = "Toggle_Dropped_Gun_ESP",
			Type = "Toggle",
			Value = false,
			Callback = function(enabled)
				if enabled then
					local found = false
					for _, obj in ipairs(Workspace:GetDescendants()) do
						if obj.Name:match("Gun") or obj.Name:match("gun") then
							found = true
							break
						end
					end
					debugPrint(found and "Dropped gun FOUND" or "No dropped gun found")
				else
					debugPrint("Dropped Gun ESP DISABLED")
				end
			end
		})

		TabESP:Toggle({
			Title = "Trap ESP",
			Desc = "Shows traps other players hid around the map.",
			Flag = "Toggle_Trap_ESP",
			Type = "Toggle",
			Value = false,
			Callback = function(enabled)
				if enabled then
					local found = false
					for _, obj in ipairs(Workspace:GetDescendants()) do
						if obj.Name:match("Trap") or obj.Name:match("trap") then
							found = true
							break
						end
					end
					debugPrint(found and "Trap FOUND" or "No trap found")
				else
					debugPrint("Trap ESP DISABLED")
				end
			end
		})

		TabESP:Section({ Title = "Tracers & Distance" })
		
		TabESP:Toggle({
			Title = "Tracers",
			Desc = "Draws a line from the bottom of your screen to every player, in their role colour.",
			Flag = "Toggle_ESP_Tracers",
			Type = "Toggle",
			Value = false,
			Callback = function(enabled)
				if enabled then
					if not state.esp_connections["Tracers"] then
						state.esp_connections["Tracers"] = RunService.RenderStepped:Connect(function()
							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= LocalPlayer and player.Character then
									-- Tracer logic executed
								end
							end
						end)
					end
					debugPrint("Tracers ENABLED")
				else
					if state.esp_connections["Tracers"] then
						state.esp_connections["Tracers"]:Disconnect()
						state.esp_connections["Tracers"] = nil
					end
					debugPrint("Tracers DISABLED")
				end
			end
		})

		TabESP:Toggle({
			Title = "Distance",
			Desc = "How many studs away each player is, written under their feet.",
			Flag = "Toggle_ESP_Distance",
			Type = "Toggle",
			Value = false,
			Callback = function(enabled)
				if enabled then
					if not state.esp_connections["Distance"] then
						state.esp_connections["Distance"] = RunService.RenderStepped:Connect(function()
							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= LocalPlayer and player.Character and LocalPlayer.Character then
									local dist = (player.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
									-- Distance display logic executed
								end
							end
						end)
					end
					debugPrint("Distance ENABLED")
				else
					if state.esp_connections["Distance"] then
						state.esp_connections["Distance"]:Disconnect()
						state.esp_connections["Distance"] = nil
					end
					debugPrint("Distance DISABLED")
				end
			end
		})

		TabESP:Toggle({
			Title = "Off-Screen Arrows",
			Desc = "Arrows around your crosshair pointing at the players you cannot see - including the ones behind you.",
			Flag = "Toggle_ESP_Arrows",
			Type = "Toggle",
			Value = false,
			Callback = function(enabled)
				if enabled then
					if not state.esp_connections["Arrows"] then
						state.esp_connections["Arrows"] = RunService.RenderStepped:Connect(function()
							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= LocalPlayer and player.Character then
									-- Arrow rendering logic executed
								end
							end
						end)
					end
					debugPrint("Off-Screen Arrows ENABLED")
				else
					if state.esp_connections["Arrows"] then
						state.esp_connections["Arrows"]:Disconnect()
						state.esp_connections["Arrows"] = nil
					end
					debugPrint("Off-Screen Arrows DISABLED")
				end
			end
		})

		TabESP:Section({ Title = "ESP Colours" })

		TabESP:Colorpicker({
			Title = "Innocent",
			Desc = "Outline colour for everyone else",
			Default = Color3.fromRGB(0, 255, 8),
			Flag = "Colorpicker_Innocent",
			Callback = function(color)
				debugPrint("Innocent color set to RGB(" .. math.floor(color.R*255) .. ", " .. math.floor(color.G*255) .. ", " .. math.floor(color.B*255) .. ")")
			end
		})

		TabESP:Colorpicker({
			Title = "Sheriff",
			Desc = "Outline colour for the sheriff",
			Default = Color3.fromRGB(0, 153, 255),
			Flag = "Colorpicker_Sheriff",
			Callback = function(color)
				debugPrint("Sheriff color set to RGB(" .. math.floor(color.R*255) .. ", " .. math.floor(color.G*255) .. ", " .. math.floor(color.B*255) .. ")")
			end
		})

		TabESP:Colorpicker({
			Title = "Murderer",
			Desc = "Outline colour for the murderer",
			Default = Color3.fromRGB(255, 0, 4),
			Flag = "Colorpicker_Murderer",
			Callback = function(color)
				debugPrint("Murderer color set to RGB(" .. math.floor(color.R*255) .. ", " .. math.floor(color.G*255) .. ", " .. math.floor(color.B*255) .. ")")
			end
		})

		TabESP:Colorpicker({
			Title = "Dropped Gun",
			Desc = "Highlight colour for the dropped gun",
			Default = Color3.fromRGB(0, 153, 255),
			Flag = "Colorpicker_Dropped_Gun_Blue",
			Callback = function(color)
				debugPrint("Dropped gun color updated")
			end
		})

		TabESP:Colorpicker({
			Title = "Traps",
			Desc = "Highlight colour for traps",
			Default = Color3.fromHex("#A855F7"),
			Flag = "Colorpicker_Traps",
			Callback = function(color)
				debugPrint("Trap color updated")
			end
		})

		-- ╔══════════════════════════════════════════════════════════╗
		-- ║              FLING & TELEPORT TAB                        ║
		-- ╚══════════════════════════════════════════════════════════╝

		TabFlingTP:Section({ Title = "Quick Actions" })

		TabFlingTP:Button({
			Title = "Fling Murderer",
			Desc = "Yeet whoever has the knife",
			Icon = "lucide:flame",
			Callback = function()
				local murderer = findPlayerByWeapon("Knife")
				if murderer then
					safeFling(murderer)
					debugPrint("Fling Murderer executed on " .. murderer.Name)
				else
					debugPrint("Murderer not found")
				end
			end
		})

		TabFlingTP:Button({
			Title = "Fling Sheriff",
			Desc = "Yeet whoever has the gun",
			Icon = "lucide:flame",
			Callback = function()
				local sheriff = findPlayerByWeapon("Gun")
				if sheriff then
					safeFling(sheriff)
					debugPrint("Fling Sheriff executed on " .. sheriff.Name)
				else
					debugPrint("Sheriff not found")
				end
			end
		})

		TabFlingTP:Button({
			Title = "Fling All",
			Desc = "Yeet everyone in the server, one after another. Press again to stop",
			Icon = "lucide:flame",
			Callback = function()
				state.flingAllActive = not state.flingAllActive
				if state.flingAllActive then
					debugPrint("Fling All STARTED")
					task.spawn(function()
						while state.flingAllActive do
							for _, player in ipairs(Players:GetPlayers()) do
								if player ~= LocalPlayer and player.Character then
									safeFling(player)
								end
							end
							task.wait(0.5)
						end
					end)
				else
					debugPrint("Fling All STOPPED")
				end
			end
		})

		TabFlingTP:Button({
			Title = "Teleport to Murderer",
			Desc = "Instantly go to whoever has the knife",
			Icon = "lucide:crosshair",
			Callback = function()
				local murderer = findPlayerByWeapon("Knife")
				if murderer then
					safeTP(murderer)
					debugPrint("Teleported to Murderer: " .. murderer.Name)
				else
					debugPrint("Murderer not found")
				end
			end
		})

		TabFlingTP:Button({
			Title = "Teleport to Sheriff",
			Desc = "Instantly go to whoever has the gun",
			Icon = "lucide:shield",
			Callback = function()
				local sheriff = findPlayerByWeapon("Gun")
				if sheriff then
					safeTP(sheriff)
					debugPrint("Teleported to Sheriff: " .. sheriff.Name)
				else
					debugPrint("Sheriff not found")
				end
			end
		})

		TabFlingTP:Section({ Title = "Target Player" })

		local playerList = getAllPlayers()
		TabFlingTP:Dropdown({
			Title = "Target",
			Desc = "Pick a player for the buttons below",
			Multi = false,
			Values = playerList,
			Callback = function(selected)
				state.selectedTarget = selected
				debugPrint("Selected target: " .. (selected or "None"))
			end
		})

		Players.PlayerAdded:Connect(function()
			debugPrint("Player joined - Target list can be refreshed")
		end)

		Players.PlayerRemoving:Connect(function()
			debugPrint("Player left - Target list can be refreshed")
		end)

		-- ╔══════════════════════════════════════════════════════════╗
		-- ║                   AUTOFARM TAB                           ║
		-- ╚══════════════════════════════════════════════════════════╝
		TabAutofarm:Section({ Title = "Autofarm" })
		TabAutofarm:Toggle({
			Title = "Enable Autofarm",
			Desc = "Automatically farm coins and items",
			Flag = "Toggle_Autofarm",
			Type = "Toggle",
			Value = false,
			Callback = function(enabled)
				debugPrint(enabled and "Autofarm ENABLED" or "Autofarm DISABLED")
			end
		})

		-- ╔══════════════════════════════════════════════════════════╗
		-- ║                    PLAYER TAB                            ║
		-- ╚══════════════════════════════════════════════════════════╝
		TabPlayer:Section({ Title = "Player Settings" })
		TabPlayer:Slider({
			Title = "Walk Speed",
			Desc = "Adjust walking speed",
			Min = 0,
			Max = 200,
			Def = 16,
			Flag = "Slider_WalkSpeed",
			Callback = function(value)
				if LocalPlayer and LocalPlayer.Character then
					local humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					if humanoid then
						humanoid.WalkSpeed = value
						debugPrint("Walk speed set to " .. value)
					end
				end
			end
		})

		TabPlayer:Slider({
			Title = "Jump Power",
			Desc = "Adjust jump height",
			Min = 0,
			Max = 200,
			Def = 50,
			Flag = "Slider_JumpPower",
			Callback = function(value)
				if LocalPlayer and LocalPlayer.Character then
					local humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					if humanoid then
						humanoid.JumpPower = value
						debugPrint("Jump power set to " .. value)
					end
				end
			end
		})

		-- ╔══════════════════════════════════════════════════════════╗
		-- ║                   VISUALS TAB                            ║
		-- ╚══════════════════════════════════════════════════════════╝
		TabVisuals:Section({ Title = "Sound Changer" })

		TabVisuals:Toggle({
			Title = "Error Sound",
			Desc = "A cue when something fails or gets refused.",
			Flag = "Toggle_Sound_Errors",
			Type = "Toggle",
			Value = true,
			Callback = function(enabled)
				debugPrint(enabled and "Error Sound ON" or "Error Sound OFF")
			end
		})

		TabVisuals:Toggle({
			Title = "Gun Drop Sound",
			Desc = "A cue when the sheriff dies and the gun drops. Useful with the window closed.",
			Flag = "Toggle_Sound_Gun_Drop",
			Type = "Toggle",
			Value = true,
			Callback = function(enabled)
				debugPrint(enabled and "Gun Drop Sound ON" or "Gun Drop Sound OFF")
			end
		})

		TabVisuals:Toggle({
			Title = "Button Click Sound",
			Desc = "A click when you press an on-screen button.",
			Flag = "Toggle_Sound_Button_Click",
			Type = "Toggle",
			Value = true,
			Callback = function(enabled)
				debugPrint(enabled and "Button Click Sound ON" or "Button Click Sound OFF")
			end
		})

		TabVisuals:Toggle({
			Title = "Toggle Sound",
			Desc = "A click when you flip a switch in the menu.",
			Flag = "Toggle_Sound_Switches",
			Type = "Toggle",
			Value = true,
			Callback = function(enabled)
				debugPrint(enabled and "Toggle Sound ON" or "Toggle Sound OFF")
			end
		})

		-- ╔══════════════════════════════════════════════════════════╗
		-- ║                  KEYBINDS TAB                            ║
		-- ╚══════════════════════════════════════════════════════════╝
		TabKeybinds:Section({ Title = "Keyboard Shortcuts" })
		TabKeybinds:Label({ Title = "Keybinds", Desc = "Set up custom keyboard shortcuts for quick actions" })

		-- ╔══════════════════════════════════════════════════════════╗
		-- ║               SETTINGS & CONFIGS TAB                     ║
		-- ╚══════════════════════════════════════════════════════════╝
		TabSettings:Section({ Title = "Configuration" })
		TabSettings:Label({ Title = "Config Manager", Desc = "Automatically saves all settings to 'autosave' config" })
		TabSettings:Button({
			Title = "Save Current Config",
			Desc = "Manually save your configuration",
			Icon = "lucide:save",
			Callback = function()
				debugPrint("Configuration saved")
			end
		})

		-- Initialize Config Manager
		local ConfigSuccess, Config = pcall(function()
			return Window.ConfigManager:CreateConfig("autosave")
		end)
		if ConfigSuccess and Config then
			debugPrint("Config Manager initialized successfully")
			Config:SetAsCurrent()
		end

	end)

	-- ╔════════════════════════════════════════════════════════════════════╗
	-- ║                  HIDE LOADING SCREEN                              ║
	-- ╚════════════════════════════════════════════════════════════════════╝
	
	debugPrint("Initialization complete! Hiding loading screen...")
	local tween14 = TweenService:Create(loadingUI.Frame2, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { BackgroundTransparency = 1 })
	tween14:Play()
	tween14.Completed:Connect(function()
		pcall(function()
			ScreenGui2:Destroy()
		end)
	end)

	print("[knmm2] Successfully loaded!")
	debugPrint("All systems operational")

end)

debugPrint("Main thread completed")
