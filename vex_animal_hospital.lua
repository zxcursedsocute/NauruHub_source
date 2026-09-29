local lib
lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/cvjhvc/vexsaken/refs/heads/main/Boreal%20Ui"))()

lib:AddTheme({
	Name = "ClinicTriad",
	Accent = Color3.fromHex("#E89A4A"),
	Background = lib:Gradient({
		["0"] = { Color = Color3.fromHex("#0E2942"), Transparency = 0 },
		["18"] = { Color = Color3.fromHex("#16466B"), Transparency = 0 },
		["35"] = { Color = Color3.fromHex("#226A69"), Transparency = 0 },
		["50"] = { Color = Color3.fromHex("#3D7A4D"), Transparency = 0 },
		["65"] = { Color = Color3.fromHex("#647A3E"), Transparency = 0 },
		["82"] = { Color = Color3.fromHex("#A66A35"), Transparency = 0 },
		["100"] = { Color = Color3.fromHex("#D27A3D"), Transparency = 0 },
	}, { Rotation = 90 }),
	Outline = Color3.fromHex("#6F8877"),
	Text = Color3.fromHex("#F7EBDD"),
	Placeholder = Color3.fromHex("#A99D8E"),
	Button = Color3.fromHex("#1B3035"),
	Icon = Color3.fromHex("#F0A15C"),
})

lib:SetTheme("ClinicTriad")
lib:SetNotificationSound("rbxassetid://6983350215")
local v, value1, value2

do
	local function fn(arg, arg2)
		local n = #arg
		local numberValue1 = #arg2
		local textValue1 = ""

		for i = 1, n do
			local numberValue2 = (i - 1) / math.max(n - 1, 1) * (numberValue1 - 1)
			local numberValue3 = math.min(math.floor(numberValue2), numberValue1 - 2)
			local numberValue4 = numberValue2 - numberValue3
			local value3 = arg2[numberValue3 + 1]
			local value4 = arg2[numberValue3 + 2]
			local numberValue5 = math.floor((value3.R + (value4.R - value3.R) * numberValue4) * 255)
			local numberValue6 = math.floor((value3.G + (value4.G - value3.G) * numberValue4) * 255)
			local numberValue7 = math.floor((value3.B + (value4.B - value3.B) * numberValue4) * 255)
			local textValue2 = arg:sub(i, i)
			textValue1 ..= string.format("<font color=\"rgb(%d,%d,%d)\">%s</font>", numberValue5, numberValue6, numberValue7, textValue2)
		end

		return textValue1
	end

	local tbl = {}
	local color = Color3.fromHex("#3B82F6")
	local color2 = Color3.fromHex("#F97316")
	local color3 = Color3.fromHex
	tbl[1] = color
	tbl[2] = color2

	do
		local values = table.pack(color3("#22C55E"))
		table.move(values, 1, values.n, 3, tbl)
	end

	local value5 = lib:CreateWindow({
		Title = fn("Animal Hospital", tbl),
		Icon = "https://cdn.phototourl.com/free/2026-08-22-a14dd61c-ab61-42ba-ad94-2c18ee926648.webp",
		Author = "Join our discord server now!",
		Folder = "AnimalHospital",
		Size = UDim2.fromOffset(620, 440),
		Transparent = true,
		Theme = "ClinicTriad",
		Resizable = true,
		SideBarWidth = 190,
		HidePanelBackground = false,
		HideSearchBar = true,
		ModernLayout = true,
		NewElements = true,
		BottomDragBarEnabled = true,
		Watermark = {
			Enabled = true,
			Text = "Animal Hospital | v1.0.2",
			Opacity = 0.45,
			Position = "bottom-right",
			Size = 14,
			Padding = 12,
			Offset = Vector2.new(0, 0),
		},
	})

	local editOpenButton = value5.EditOpenButton
	local tableValue1 = { Title = "Open Menu", Icon = "swords", CornerRadius = UDim.new(0, 6), StrokeThickness = 2 }
	local colorSequence = ColorSequence.new
	local tableValue2 = {}
	local value6 = ColorSequenceKeypoint.new(0, Color3.fromHex("#3B82F6"))
	local value7 = ColorSequenceKeypoint.new(0.5, Color3.fromHex("#F97316"))
	local new = ColorSequenceKeypoint.new
	local color4 = Color3.fromHex
	tableValue2[1] = value6
	tableValue2[2] = value7

	do
		local values = table.pack(new(1, color4("#22C55E")))
		table.move(values, 1, values.n, 3, tableValue2)
	end

	tableValue1.Color = colorSequence(tableValue2)
	tableValue1.Draggable = true
	editOpenButton(value5, tableValue1)

	lib:Notify({
		Title = "Discord",
		Content = "Do you wanna join our discord server?",
		Duration = 20,
		Buttons = {
			{
				Title = "Yes",
				Icon = "check",
				Callback = function()
					setclipboard("https://discord.gg/DXHHswuYPb")
					lib:Notify({ Title = "Discord", Content = "Invite link copied to clipboard!", Duration = 3 })
				end,
			},
			{
				Title = "No",
				Icon = "x",
				Variant = "Secondary",
				CloseOnClick = true,
				Callback = function()
				end,
			},
		},
	})

	value5:SideBarButton({
		Title = "Join our Server!",
		Icon = "message-circle",
		Variant = "Secondary",
		Callback = function()
			setclipboard("https://discord.gg/DXHHswuYPb")
			lib:Notify({ Title = "Discord", Content = "Invite link copied to clipboard!", Duration = 3 })
		end,
	})

	value5:SideBarDivider({})

	value5:Image({
		Image = "https://cdn.phototourl.com/free/2026-08-22-a86bbc17-28d9-4fd4-98a6-4fe9e326b99a.webp",
		Size = UDim2.new(1, -7, 0, 100),
		Radius = 10,
		LayoutOrder = -1,
		Title = "Animal Hospital",
		Desc = "By Luna",
	})

	v = value5:Tab({ Title = "Home", Icon = "house", Border = true, ShowTabTitle = true })
	value1 = value5:Tab({ Title = "Visual", Icon = "eye", Border = true, ShowTabTitle = true })
	value2 = value5:Tab({ Title = "Credits", Icon = "settings", Border = true, ShowTabTitle = true })
end

local Players
Players = game:GetService("Players")
local localPlayer
localPlayer = Players.LocalPlayer
local RunService
RunService = game:GetService("RunService")
local tbl

tbl = {
	["???"] = true,
	Barney = true,
	Ratthew = true,
	Sam = true,
	Liz = true,
	Lisbeth = true,
	["Ron from Accounting"] = true,
}

local value8

do
	local value9 = v:MultiSection({
		Title = "Animal Hospital",
		Icon = "hospital",
		TextXAlignment = "Center",
		Box = true,
		BoxBorder = true,
		Opened = true,
	})

	value8 = value9:Tab({ Title = "Auto", Icon = "bot", Selected = true })
	local value10 = value9:Tab({ Title = "Teleport", Icon = "map-pin" })
	local value11 = value9:Tab({ Title = "Others", Icon = "star" })

	value10:Button({
		Title = "Teleport to Coffee",
		Callback = function()
			local coffeeMachine = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("CoffeeMachine") or workspace:FindFirstChild("CoffeeMachine2")

			if coffeeMachine then
				local isBasePart = coffeeMachine:IsA("BasePart") and coffeeMachine or coffeeMachine:FindFirstChildWhichIsA("BasePart", true) or coffeeMachine.PrimaryPart and coffeeMachine.PrimaryPart

				if isBasePart then
					local character = localPlayer.Character
					character = character and character:FindFirstChild("HumanoidRootPart")

					if character then
						character.CFrame = CFrame.new(isBasePart.Position + Vector3.new(0, 3, 0))
					end
				end
			end
		end,
	})

	value10:Button({
		Title = "Teleport to Taser",
		Callback = function()
			local taserStation = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("TaserStation")

			if taserStation then
				local main = taserStation:FindFirstChild("Main") or taserStation:FindFirstChildWhichIsA("BasePart", true)

				if main then
					local position = main:IsA("BasePart") and main.Position or main:GetPivot().Position
					local character = localPlayer.Character
					character = character and character:FindFirstChild("HumanoidRootPart")

					if character then
						character.CFrame = CFrame.new(position + Vector3.new(0, 3, 0))
					end
				end
			end
		end,
	})

	value10:Button({
		Title = "Teleport to Wheelchair",
		Callback = function()
			local wheelChairStation = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("WheelChairStation")

			if wheelChairStation then
				local isBasePart = wheelChairStation:IsA("BasePart") and wheelChairStation or wheelChairStation:FindFirstChildWhichIsA("BasePart", true) or wheelChairStation.PrimaryPart and wheelChairStation.PrimaryPart

				if isBasePart then
					local character = localPlayer.Character
					character = character and character:FindFirstChild("HumanoidRootPart")

					if character then
						character.CFrame = CFrame.new(isBasePart.Position + Vector3.new(0, 3, 0))
					end
				end
			end
		end,
	})

	value10:Button({
		Title = "Teleport to Extinguisher",
		Callback = function()
			local ok, result = pcall(function()
				return workspace.Misc.Model.Model.spins.Texture.ExtinguisherStation
			end)

			if not ok or not result then
				result = workspace:FindFirstChild("ExtinguisherStation", true)
			end

			if result then
				local isBasePart = result:IsA("BasePart") and result or result:FindFirstChildWhichIsA("BasePart", true) or result.PrimaryPart and result.PrimaryPart

				if isBasePart then
					local character = localPlayer.Character
					character = character and character:FindFirstChild("HumanoidRootPart")

					if character then
						character.CFrame = CFrame.new(isBasePart.Position + Vector3.new(0, 3, 0))
					end
				end
			end
		end,
	})

	value10:Button({
		Title = "Teleport to Trash",
		Callback = function()
			local trash = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Trash") or workspace:FindFirstChild("Trash", true)

			if trash then
				local isBasePart = trash:IsA("BasePart") and trash or trash:FindFirstChildWhichIsA("BasePart", true) or trash.PrimaryPart and trash.PrimaryPart

				if isBasePart then
					local character = localPlayer.Character
					character = character and character:FindFirstChild("HumanoidRootPart")

					if character then
						character.CFrame = CFrame.new(isBasePart.Position + Vector3.new(0, 3, 0))
					end
				end
			end
		end,
	})

	value10:Divider({})

	value10:Button({
		Title = "Teleport to Check-in Counter",
		Callback = function()
			local character = localPlayer.Character
			character = character and character:FindFirstChild("HumanoidRootPart")

			if character then
				character.CFrame = CFrame.new(-103.7515869140625, 3.4125308990478516, -0.39818489551544189, 0.99996191263198853, -2.4120199171306922e-08, -0.0087275281548500061, 2.3617193534164471e-08, 1, -5.7737317149531009e-08, 0.0087275281548500061, 5.7529000230260863e-08, 0.99996191263198853)
			end
		end,
	})

	value10:Button({
		Title = "Teleport to Shop",
		Callback = function()
			local character = localPlayer.Character
			character = character and character:FindFirstChild("HumanoidRootPart")

			if character then
				character.CFrame = CFrame.new(-169.92019653320312, 3.4556982517242432, -13.685589790344238, 0.069757387042045593, 2.7820803438771691e-08, 0.99756395816802979, -2.9201206785955947e-08, 1, -2.5846766504855623e-08, -0.99756395816802979, -2.7327070384330909e-08, 0.069757387042045593)
			end
		end,
	})

	value10:Divider({ Title = "Rooms", TitleAlignment = "Center" })

	for i = 1, 8 do
		value10:Button({
			Title = "Teleport to Room " .. i,
			Callback = function()
				local rooms = workspace:FindFirstChild("Rooms")
				if not rooms then
					return
				end
				local emergency

				if i == 6 then
					emergency = rooms:FindFirstChild("Emergency")
					emergency = emergency and emergency:FindFirstChild("Room6")
					emergency = emergency and emergency:FindFirstChild("Minigame")
					emergency = emergency and emergency:FindFirstChild("xrayMonitor")
				elseif i == 7 or i == 8 then
					emergency = rooms:FindFirstChild("Emergency")
					emergency = emergency and emergency:FindFirstChild("Room" .. i)
					emergency = emergency and emergency:FindFirstChild("Minigame")
					emergency = emergency and emergency:FindFirstChild("Bed")
				else
					emergency = rooms:FindFirstChild("Medical")
					emergency = emergency and emergency:FindFirstChild("Room" .. i)
					emergency = emergency and emergency:FindFirstChild("Minigame")
					emergency = emergency and emergency:FindFirstChild("Bed")
				end

				if emergency then
					local isBasePart = emergency:IsA("BasePart") and emergency or emergency:FindFirstChildWhichIsA("BasePart", true)

					if isBasePart then
						local character = localPlayer.Character
						local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

						if humanoidRootPart then
							humanoidRootPart.CFrame = CFrame.new(isBasePart.Position + Vector3.new(0, 3, 0))
						end
					end
				end
			end,
		})
	end

	value10:Divider({ Title = "Items", TitleAlignment = "Center" })

	for _, value12 in ipairs({
		"Eye Drops",
		"IV Drops",
		"Medkit",
		"Thermo",
		"Ointment",
		"Bandages",
		"Maple Syrup",
		"Cough Syrup",
		"Medicine",
		"Herbs",
		"Organ",
		"Scalpel",
		"Transplant",
	}) do
		value10:Button({
			Title = "Teleport to " .. value12,
			Callback = function()
				for _, descendant in ipairs(workspace:GetDescendants()) do
					if descendant:IsA("ProximityPrompt") then
						local parent = descendant.Parent
						local model = parent and parent:FindFirstAncestorOfClass("Model")

						if parent and parent.Name == value12 or model and model.Name == value12 then
							model = model or parent
							local isBasePart = model:IsA("BasePart") and model or model:FindFirstChildWhichIsA("BasePart", true) or model:IsA("Model") and model.PrimaryPart

							if isBasePart then
								local character = localPlayer.Character
								character = character and character:FindFirstChild("HumanoidRootPart")

								if character then
									character.CFrame = CFrame.new(isBasePart.Position + Vector3.new(0, 3, 0))
								end

								return
							end
						end
					end
				end
			end,
		})
	end

	local cameraMode = localPlayer.CameraMode

	value11:Toggle({
		Title = "3D Person View",
		Desc = "Makes you be able to zoom out and see your character",
		Value = false,
		Callback = function(arg)
			if arg then
				cameraMode = localPlayer.CameraMode
				localPlayer.CameraMode = Enum.CameraMode.Classic
			else
				localPlayer.CameraMode = cameraMode
			end
		end,
	})

	value11:Button({
		Title = "Unlock 2nd Coffee Machine (Visual)",
		Desc = "Unlocks the 2nd coffee machine that barney gives",
		Callback = function()
			local misc = game:GetService("ReplicatedStorage"):FindFirstChild("Misc")

			if not misc then
				lib:Notify({
					Title = "Coffee Machine",
					Content = "Misc folder not found in ReplicatedStorage",
					Duration = 3,
				})

				return
			end

			local coffeeMachine2 = misc:FindFirstChild("CoffeeMachine2")
			if not coffeeMachine2 then
				lib:Notify({ Title = "Coffee machine", Content = "2nd Coffee machine already unlocked", Duration = 3 })
				return
			end
			coffeeMachine2.Parent = workspace
			lib:Notify({ Title = "Coffee Machine", Content = "2nd coffee machine unlocked!", Duration = 3 })
		end,
	})

	value11:Button({
		Title = "Delete All Doors",
		Desc = "Removes all doors so you can phase through them",
		Callback = function()
			if workspace:FindFirstChild("Doors") then
				workspace.Doors:Destroy()
			end
		end,
	})

	local connection = nil
	local tableValue3 = {}
	local tableValue4 = {}

	value11:Toggle({
		Title = "Instant Prompt",
		Desc = "Makes the prompts instant so you wont have to hold them",
		Value = false,
		Callback = function(arg)
			local function fn(arg2)
				if not arg2:IsA("ProximityPrompt") then
					return
				end

				if not tableValue4[arg2] then
					tableValue4[arg2] = arg2.HoldDuration
				end

				arg2.HoldDuration = 0

				if not tableValue3[arg2] then
					tableValue3[arg2] = arg2:GetPropertyChangedSignal("HoldDuration"):Connect(function()
						if arg2.HoldDuration ~= 0 then
							arg2.HoldDuration = 0
						end
					end)
				end
			end

			if arg then
				for _, descendant in ipairs(workspace:GetDescendants()) do
					fn(descendant)
				end

				connection = workspace.DescendantAdded:Connect(function(descendant)
					if descendant:IsA("ProximityPrompt") then
						fn(descendant)
					else
						task.defer(function()
							if descendant and descendant.Parent then
								for _, descendant2 in ipairs(descendant:GetDescendants()) do
									fn(descendant2)
								end
							end
						end)
					end
				end)
			else
				if connection then
					connection:Disconnect()
					connection = nil
				end

				for _, value13 in pairs(tableValue3) do
					value13:Disconnect()
				end

				tableValue3 = {}

				for k, value14 in pairs(tableValue4) do
					if k and k.Parent then
						k.HoldDuration = value14
					end
				end

				tableValue4 = {}
			end
		end,
	})

	local connection2 = nil
	local tableValue5 = {}

	local function fn(arg)
		return arg:IsA("ProximityPrompt") and arg.Name == "PP2" and arg.Parent and arg.Parent.Name == "Monitor"
	end

	value11:Toggle({
		Title = "Skip Monitor Step",
		Desc = "Instantly skip to the next step of the monitor",
		Value = false,
		Callback = function(arg)
			local function fn2(arg2)
				if not fn(arg2) then
					return
				end
				arg2.Enabled = true

				if not tableValue5[arg2] then
					tableValue5[arg2] = arg2:GetPropertyChangedSignal("Enabled"):Connect(function()
						if not arg2.Enabled then
							arg2.Enabled = true
						end
					end)
				end
			end

			local function fn3(arg2)
				if not fn(arg2) then
					return
				end
				arg2.Enabled = false

				if tableValue5[arg2] then
					tableValue5[arg2]:Disconnect()
					tableValue5[arg2] = nil
				end
			end

			if arg then
				for _, descendant in ipairs(workspace:GetDescendants()) do
					fn2(descendant)
				end

				connection2 = workspace.DescendantAdded:Connect(function(descendant)
					task.defer(function()
						if descendant and descendant.Parent then
							fn2(descendant)
						end
					end)
				end)
			else
				if connection2 then
					connection2:Disconnect()
					connection2 = nil
				end

				for _, value15 in pairs(tableValue5) do
					value15:Disconnect()
				end

				tableValue5 = {}

				for _, descendant in ipairs(workspace:GetDescendants()) do
					fn3(descendant)
				end
			end
		end,
	})

	local flag = false

	value11:Toggle({
		Title = "Auto Room 7 Minigame",
		Desc = "Automatically clicks the pop-ups buttons",
		Value = false,
		Callback = function(arg)
			flag = arg
		end,
	})

	task.spawn(function()
		while task.wait(0.05) do
			if flag then
				local playerGui = localPlayer:FindFirstChild("PlayerGui")

				if playerGui then
					local minigame = playerGui:FindFirstChild("Minigame")

					if minigame then
						local frame = minigame:FindFirstChild("Frame")

						if frame then
							for _, descendant in ipairs(frame:GetDescendants()) do
								if descendant.Name == "Template" and descendant:IsA("GuiButton") and descendant.BackgroundTransparency == 0 and descendant.Visible then
									firesignal(descendant.MouseButton1Down)
									task.wait(0.05)
									firesignal(descendant.MouseButton1Up)
								end
							end
						end
					end
				end
			end
		end
	end)

	value11:Divider({ Title = "Sanity Settings", TitleAlignment = "Center" })
	local isEnabled1 = false
	local isEnabled2 = false
	local attribute = localPlayer:GetAttribute("Sanity") or 100
	local n = 100

	localPlayer:GetAttributeChangedSignal("Sanity"):Connect(function()
		local attribute2 = localPlayer:GetAttribute("Sanity")
		if not attribute2 then
			return
		end

		if isEnabled2 then
			if attribute2 ~= 100 then
				localPlayer:SetAttribute("Sanity", 100)
			end
		elseif isEnabled1 then
			if attribute2 < attribute then
				localPlayer:SetAttribute("Sanity", attribute)
			else
				attribute = attribute2
			end
		else
			attribute = attribute2
		end
	end)

	task.spawn(function()
		local ok, result = pcall(function()
			return require(game:GetService("ReplicatedStorage"):WaitForChild("Lib"))
		end)

		if ok and result and result.Inject then
			pcall(function()
				result.Inject("PlayerLostSanity", function()
					if isEnabled1 or isEnabled2 then
						return
					end
				end)
			end)
		end
	end)

	value11:Toggle({
		Title = "Anti Sanity Loss",
		Desc = "Makes it so you wont lose sanity",
		Value = false,
		Callback = function(arg)
			isEnabled1 = arg

			if arg then
				attribute = localPlayer:GetAttribute("Sanity") or 100
			end
		end,
	})

	value11:Toggle({
		Title = "Infinite Sanity",
		Desc = "Sets your sanity to 100",
		Value = false,
		Callback = function(arg)
			isEnabled2 = arg

			if arg then
				n = localPlayer:GetAttribute("Sanity") or 100
				localPlayer:SetAttribute("Sanity", 100)
			else
				localPlayer:SetAttribute("Sanity", n)
			end
		end,
	})
end

local flag
flag = false
local isEnabled3
isEnabled3 = false
local isEnabled4
isEnabled4 = false
local fn

fn = function()
	local misc = workspace:FindFirstChild("Misc")
	if not misc then
		return false
	end
	local checkIn = misc:FindFirstChild("CheckIn")

	if checkIn then
		local form = checkIn:FindFirstChild("Form")
		form = form and form:FindFirstChild("PP")
		if form and form.Enabled then
			return true
		end
	end

	local checkIn2 = misc:FindFirstChild("CheckIn2")

	if checkIn2 then
		local form = checkIn2:FindFirstChild("Form")
		form = form and form:FindFirstChild("PP")
		if form and form.Enabled then
			return true
		end
	end

	return false
end

local tableValue6

tableValue6 = {
	"Eye Drops",
	"IV Drops",
	"Medkit",
	"Thermo",
	"Ointment",
	"Bandages",
	"Maple Syrup",
	"Cough Syrup",
	"Medicine",
	"Herbs",
	"Organ",
	"Scalpel",
	"Transplant",
}

value8:Toggle({
	Title = "Auto Treat Room 1-5",
	Desc = "Automatically helps the patient",
	Value = false,
	Callback = function(arg)
		flag = arg

		if not flag then
			isEnabled3 = false
		end
	end,
})

local isEnabled5
isEnabled5 = false

value8:Toggle({
	Title = "Auto Treat Room 8",
	Desc = "Automatically handles Room 8",
	Value = false,
	Callback = function(arg)
		isEnabled5 = arg
	end,
})

local isEnabled6
isEnabled6 = false
local isEnabled7
isEnabled7 = false

value8:Toggle({
	Title = "Auto Treat Room 7",
	Desc = "Automatically handles Room 7",
	Value = false,
	Callback = function(arg)
		isEnabled7 = arg
	end,
})

local isEnabled8
isEnabled8 = false
local isEnabled9
isEnabled9 = false

value8:Toggle({
	Title = "Auto Treat Room 6",
	Desc = "Automatically handles room 6",
	Value = false,
	Callback = function(arg)
		isEnabled9 = arg
	end,
})

local isEnabled10

do
	local function fn2(arg)
		if not arg then
			return nil
		end

		if arg:IsA("Model") then
			return arg:GetPivot()
		end

		if arg:IsA("BasePart") then
			return arg.CFrame
		end
		return nil
	end

	local function fn3(arg)
		if fireproximityprompt then
			fireproximityprompt(arg)
		else
			arg:InputHoldBegin()
			task.wait(arg.HoldDuration)
			arg:InputHoldEnd()
		end
	end

	local function fn4(arg)
		if fireclickdetector then
			fireclickdetector(arg)
		else
			arg:GetPropertyChangedSignal("Parent"):Wait()
		end
	end

	local function fn5(arg)
		if not arg then
			return
		end
		local character = localPlayer.Character

		if character and character:FindFirstChild("HumanoidRootPart") then
			local humanoidRootPart = character.HumanoidRootPart
			humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
			humanoidRootPart.AssemblyAngularVelocity = Vector3.zero
			local cframe = typeof(arg) == "Vector3" and CFrame.new(arg) or arg
			humanoidRootPart.CFrame = CFrame.new(cframe.Position - cframe.LookVector * 2 + Vector3.new(0, 2.5, 0))
		end
	end

	local function fn6()
		local minigame = workspace:WaitForChild("Rooms"):WaitForChild("Emergency"):WaitForChild("Room6"):WaitForChild("Minigame")
		local value16 = ipairs
		local npCs = workspace:WaitForChild("NPCs")
		local value17 = nil

		for _, child in value16(npCs:GetChildren()) do
			local attribute = child:GetAttribute("DesignatedRoom")

			if (attribute == "6" or attribute == "Room6") and child:FindFirstChild("HumanoidRootPart") then
				if (child.HumanoidRootPart.Position - Vector3.new(-181.62, 3.01, 53.96)).Magnitude < 10 then
					value17 = child
					break
				else
					value17 = nil
				end
			else
				value17 = nil
			end
		end

		if not value17 then
			return
		end

		if AutoWrongTreatEnabled and isAnomalyModel(value17) then
			local character = localPlayer.Character
			character = character and character:FindFirstChild("HumanoidRootPart")
			local cFrame = character and character.CFrame
			ahProcessWrongTreatment(value17, "6", cFrame)

			if cFrame then
				fn5(cFrame)
			end

			return
		end

		local xrayMonitor = minigame:WaitForChild("xrayMonitor")
		fn5(fn2(xrayMonitor))
		local prompt1 = xrayMonitor:WaitForChild("PP")
		local n = 0

		while isEnabled9 and not prompt1.Enabled and n < 10 do
			task.wait(0.1)
			n += 0.1
		end

		while isEnabled9 and prompt1.Enabled do
			fn3(prompt1)
			task.wait(0.2)
		end

		local colors = minigame:WaitForChild("Colors")
		local tableValue7 = {}
		local tableValue8 = {}

		for _, child in ipairs(colors:GetChildren()) do
			local button = child:FindFirstChild("Button")

			if button and button:IsA("BasePart") then
				local color = button.Color
				local isEnabled11 = false

				local connection = button:GetPropertyChangedSignal("Color"):Connect(function()
					if button.Color ~= color then
						if not isEnabled11 then
							isEnabled11 = true
							table.insert(tableValue7, child)
						end
					else
						isEnabled11 = false
					end
				end)

				table.insert(tableValue8, connection)
			end
		end

		while isEnabled9 and #tableValue7 < 4 do
			task.wait(0.05)
		end

		for _, value18 in ipairs(tableValue8) do
			value18:Disconnect()
		end

		if not isEnabled9 then
			return
		end
		task.wait(1.5)

		for _, value19 in ipairs(tableValue7) do
			if isEnabled9 then
				local button = value19:FindFirstChild("Button")
				local clickDetector = button and button:FindFirstChildWhichIsA("ClickDetector") or value19:FindFirstChildWhichIsA("ClickDetector", true)

				if button and clickDetector then
					fn5(fn2(button))
					task.wait(0.3)
					fn4(clickDetector)
					task.wait(0.4)
				end

				continue
			end

			break
		end

		local header = xrayMonitor:WaitForChild("Screen"):WaitForChild("UI"):WaitForChild("Action"):WaitForChild("header")

		while isEnabled9 do
			if not header.Text:lower():find("completed") then
				task.wait(0.2)
				continue
			end
			break
		end

		if not isEnabled9 then
			return
		end
		local monitor = minigame:WaitForChild("Monitor")
		fn5(fn2(monitor))
		local prompt2 = monitor:WaitForChild("PP2")

		while isEnabled9 and prompt2.Enabled do
			fn3(prompt2)
			task.wait(0.2)
		end

		local printedXRay = minigame:WaitForChild("PrintedXRay")
		fn5(fn2(printedXRay))
		local prompt3 = printedXRay:WaitForChild("PP")

		while isEnabled9 and printedXRay.Parent == minigame do
			fn3(prompt3)
			task.wait(0.2)
		end

		local character = localPlayer.Character
		character = character and character:FindFirstChild("HumanoidRootPart")
		local cFrame = nil

		if character then
			cFrame = character.CFrame
		end

		local inv = nil
		local numberValue8 = 0

		while numberValue8 < 15 do
			pcall(function()
				inv = minigame.TV.Screen.UI.Report.inv
			end)

			if not inv then
				task.wait(0.2)
				numberValue8 += 0.2
				continue
			end

			break
		end

		if not inv then
			if cFrame then
				fn5(cFrame)
			end

			return
		end

		local function fn7()
			local tableValue9 = {}

			for _, child in ipairs(inv:GetChildren()) do
				if not child:IsA("UIGridLayout") and not child:IsA("UIListLayout") and not child:IsA("Folder") and child.Name ~= "" then
					local isEnabled12 = false

					for _, child2 in ipairs(child:GetChildren()) do
						if child2:IsA("GuiObject") then
							local value20 = string.lower(child2.Name)

							if value20 == "check" or value20 == "tick" or value20 == "checkmark" then
								if child2.Visible then
									if child2:IsA("ImageLabel") then
										isEnabled12 = isEnabled12 or child2.ImageTransparency < 1
									else
										isEnabled12 = true
									end
								end
							end
						end
					end

					if not isEnabled12 then
						table.insert(tableValue9, child.Name)
					end
				end
			end

			return tableValue9
		end

		local function fn8(arg)
			local backpack = localPlayer:FindFirstChild("Backpack")
			if backpack and backpack:FindFirstChild(arg) then
				return true
			end
			local character2 = localPlayer.Character
			if character2 and character2:FindFirstChild(arg) then
				return true
			end
			return false
		end

		local function fn9(arg)
			if fn8(arg) then
				return true
			end
			local value21 = string.lower(arg)

			for _, descendant in ipairs(workspace:GetDescendants()) do
				if descendant:IsA("ProximityPrompt") then
					local value22 = string.lower(descendant.ActionText or "")

					if string.lower(descendant.ObjectText or "") == value21 or value22 == value21 or value22 == "take " .. value21 or value22 == "pick up " .. value21 then
						if not descendant.Parent then
							continue
						end
						local parent = descendant.Parent
						local isBasePart = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart")
						if not isBasePart then
							continue
						end
						local requiresLineOfSight = descendant.RequiresLineOfSight
						local maxActivationDistance = descendant.MaxActivationDistance
						local holdDuration = descendant.HoldDuration
						local canCollide = isBasePart.CanCollide
						descendant.RequiresLineOfSight = false
						descendant.MaxActivationDistance = math.huge

						pcall(function()
							descendant.HoldDuration = 0
						end)

						isBasePart.CanCollide = false
						fn5(isBasePart.CFrame)
						task.wait(0.2)
						local numberValue9 = 0

						while numberValue9 < 5 and not fn8(arg) do
							fn3(descendant)
							task.wait(0.2)
							numberValue9 += 1
						end

						if descendant and descendant.Parent then
							descendant.RequiresLineOfSight = requiresLineOfSight
							descendant.MaxActivationDistance = maxActivationDistance

							pcall(function()
								descendant.HoldDuration = holdDuration
							end)
						end

						if isBasePart and isBasePart.Parent then
							isBasePart.CanCollide = canCollide
						end

						return fn8(arg)
					end
				end
			end

			return false
		end

		local function fn10(arg)
			local character2 = localPlayer.Character
			if character2 and character2:FindFirstChild(arg) then
				return true
			end
			local backpack = localPlayer:FindFirstChild("Backpack")
			if not backpack then
				return false
			end
			local value23 = backpack:FindFirstChild(arg)
			if not value23 then
				return false
			end
			character2 = character2 and character2:FindFirstChildOfClass("Humanoid")

			if character2 then
				character2:EquipTool(value23)
				task.wait(0.15)
			end

			local character3 = localPlayer.Character
			return character3 and character3:FindFirstChild(arg) ~= nil
		end

		local numberValue10 = 0

		while isEnabled9 and numberValue10 < 15 and #fn7() == 0 do
			task.wait(0.2)
			numberValue10 += 0.2
		end

		if not isEnabled9 then
			if cFrame then
				fn5(cFrame)
			end

			return
		end

		local numberValue11 = os.clock() + 90

		while true do
			if isEnabled9 and #fn7() > 0 then
				if not (numberValue11 < os.clock()) then
					if not (not value17 or not value17.Parent) then
						local value24 = fn7()

						if #value24 ~= 0 then
							local value25 = value24[1]

							if not fn9(value25) then
								task.wait(0.5)
								continue
							else
								fn10(value25)
								local humanoidRootPart = value17:FindFirstChild("HumanoidRootPart")

								if humanoidRootPart then
									fn5(humanoidRootPart.CFrame)
									task.wait(0.2)
									local prompt4 = value17:FindFirstChild("PP") or value17:FindFirstChildWhichIsA("ProximityPrompt", true)
									local isEnabled13 = not prompt4

									if isEnabled13 then
										pcall(function()
											prompt4 = workspace.Rooms.Emergency.Room6.Minigame.Bed.InBed.PP
										end)
									end

									if isEnabled13 then
										task.wait(0.3)
									else
										local requiresLineOfSight = prompt4.RequiresLineOfSight
										local maxActivationDistance = prompt4.MaxActivationDistance
										local holdDuration = prompt4.HoldDuration
										prompt4.RequiresLineOfSight = false
										prompt4.MaxActivationDistance = math.huge

										pcall(function()
											prompt4.HoldDuration = 0
										end)

										local numberValue12 = os.clock() + 15

										while true do
											if isEnabled9 and os.clock() < numberValue12 then
												if not (not prompt4.Parent or not prompt4.Enabled) then
													if fn8(value25) then
														fn3(prompt4)
														task.wait(0.15)
														continue
													end
												end
											end

											break
										end

										if prompt4 and prompt4.Parent then
											prompt4.RequiresLineOfSight = requiresLineOfSight
											prompt4.MaxActivationDistance = maxActivationDistance

											pcall(function()
												prompt4.HoldDuration = holdDuration
											end)
										end

										task.wait(0.1)
									end

									continue
								end
							end
						end
					end
				end
			end

			break
		end

		if cFrame then
			fn5(cFrame)
		end
	end

	isEnabled10 = false

	task.spawn(function()
		while true do
			local isEnabled14 = isEnabled9 and not isEnabled10 and not isEnabled3 and not isEnabled4

			if isEnabled14 then
				isEnabled14 = not (AutoCheckInEnabled and fn())
			end

			if isEnabled14 then
				isEnabled10 = true
				isEnabled3 = true
				pcall(fn6)
				isEnabled10 = false
				isEnabled3 = false
			end

			task.wait(1)
		end
	end)
end

local isEnabled15
isEnabled15 = false

value8:Toggle({
	Title = "Wrong Treatment When Skinwalker",
	Desc = "Gives the wrong treatment on the skinwalker so they die",
	Value = false,
	Callback = function(arg)
		isEnabled15 = arg
	end,
})

value8:Divider({ Title = "Check-In Settings", TitleAlignment = "Center" })
local isEnabled16
isEnabled16 = false

value8:Toggle({
	Title = "Auto Check-In",
	Desc = "Automatically handles the check-in counter process",
	Value = false,
	Callback = function(arg)
		isEnabled16 = arg
	end,
})

local isEnabled17
isEnabled17 = false
local tableValue10
tableValue10 = { Anomalies = true }

value8:Toggle({
	Title = "Auto Close Shutters",
	Desc = "Automatically closes the shutters when the selected target appears",
	Value = false,
	Callback = function(arg)
		isEnabled17 = arg
	end,
})

value8:Dropdown({
	Title = "Close Shutters For",
	Desc = "Choose which targets trigger the shutters",
	Values = { "Anomalies", "Sam", "Barney" },
	Multi = true,
	Value = { "Anomalies" },
	Callback = function(arg)
		tableValue10 = {}

		for k, value26 in pairs(arg) do
			if type(k) == "string" and value26 == true then
				tableValue10[k] = true
			elseif type(value26) == "string" then
				tableValue10[value26] = true
			end
		end
	end,
})

local fn2, fn3, fn4

do
	local currentCamera = workspace.CurrentCamera

	local function fn5()
		return localPlayer.Character
	end

	local function fn6()
		local value27 = fn5()
		return value27 and value27:FindFirstChild("HumanoidRootPart")
	end

	local function fn7()
		local value28 = fn5()
		return value28 and value28:FindFirstChild("Head")
	end

	local function fn8(arg, arg2, arg3)
		local value29 = arg:FindFirstChild(arg2)
		if value29 then
			return value29
		end
		arg3 = arg3 and tick() + arg3

		while true do
			local value30 = arg:FindFirstChild(arg2)

			if value30 then
				return value30
			else
				if arg3 and tick() > arg3 then
					break
				end
				task.wait(0.1)
			end
		end

		return nil
	end

	fn2 = function(arg)
		if not arg or not arg.Parent then
			return false
		end
		local value31 = fn5()
		local value32 = fn6()
		fn7()
		if not value31 or not value32 then
			return false
		end
		local parent = arg.Parent
		local isBasePart = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart")
		if not isBasePart then
			return false
		end
		local requiresLineOfSight = arg.RequiresLineOfSight
		local maxActivationDistance = arg.MaxActivationDistance
		local holdDuration = arg.HoldDuration
		local canCollide = isBasePart.CanCollide

		pcall(function()
			arg.RequiresLineOfSight = false
		end)

		pcall(function()
			arg.MaxActivationDistance = math.huge
		end)

		pcall(function()
			arg.HoldDuration = 0
		end)

		isBasePart.CanCollide = false
		local position = isBasePart.Position
		local attachment = parent:FindFirstChildOfClass("Attachment")

		if attachment then
			position = attachment.WorldPosition
		end

		local n = position + Vector3.new(0, 0, 2)
		local cframe = CFrame.lookAt(n, position)
		local part = Instance.new("Part")
		part.Name = "AutoCheckInPlatform"
		part.Size = Vector3.new(5, 1, 5)
		part.Anchored = true
		part.Transparency = 1
		part.CanCollide = true
		part.CanQuery = false
		part.CanTouch = false
		part.CFrame = CFrame.new(n - Vector3.new(0, 2.5, 0))
		part.Parent = workspace
		value32.AssemblyLinearVelocity = Vector3.zero
		value32.AssemblyAngularVelocity = Vector3.zero
		local anchored = value32.Anchored
		value32.Anchored = true
		value31:PivotTo(cframe)
		task.wait(0.08)
		value31:PivotTo(cframe)
		value32.AssemblyLinearVelocity = Vector3.zero
		value32.AssemblyAngularVelocity = Vector3.zero
		task.wait(0.05)
		value32.Anchored = anchored
		local value33 = fn6()
		local value34 = fn7()

		if value33 and value34 then
			currentCamera.CFrame = CFrame.lookAt(value34.Position, position)
		end

		task.wait(0.08)
		local isEnabled18 = false

		pcall(function()
			if fireproximityprompt then
				fireproximityprompt(arg)
				isEnabled18 = true
			end
		end)

		task.wait(0.15)

		if arg and arg.Parent then
			pcall(function()
				arg.RequiresLineOfSight = requiresLineOfSight
			end)

			pcall(function()
				arg.MaxActivationDistance = maxActivationDistance
			end)

			pcall(function()
				arg.HoldDuration = holdDuration
			end)
		end

		if isBasePart and isBasePart.Parent then
			pcall(function()
				isBasePart.CanCollide = canCollide
			end)
		end

		if part then
			part:Destroy()
		end

		return isEnabled18
	end

	local function fn9(arg)
		if not arg then
			return false
		end
		local n = 0

		while arg.Parent and not arg.Enabled do
			if not isEnabled16 then
				return false
			end

			if isEnabled3 then
				return false
			end
			task.wait(0.1)
			n += 0.1
			if n > 30 then
				return false
			end
		end

		if not arg.Parent then
			return false
		end
		local numberValue13 = 0

		while arg.Parent and arg.Enabled do
			if not isEnabled16 then
				return false
			end

			if isEnabled3 then
				return false
			end
			fn2(arg)
			task.wait(0.25)
			if not arg.Parent then
				return true
			end

			if not arg.Enabled then
				return true
			end
			task.wait(0.15)
			numberValue13 += 1
			if numberValue13 > 60 then
				return false
			end
		end

		return not arg.Enabled
	end

	local function fn10(arg)
		if not arg or not arg.Parent then
			return false
		end
		local prompt5 = arg:FindFirstChild("PP")
		local n = 0

		while arg.Parent and not prompt5 do
			if not isEnabled16 then
				return false
			end

			if isEnabled3 then
				return false
			end
			task.wait(0.1)
			n += 0.1
			if n > 30 then
				return false
			end
			prompt5 = arg:FindFirstChild("PP")
		end

		if not prompt5 then
			return false
		end
		local numberValue14 = 0

		while true do
			if prompt5.Parent and (not prompt5.Enabled or prompt5.ActionText ~= "Talk") then
				if not isEnabled16 then
					return false
				end

				if isEnabled3 then
					return false
				end
				task.wait(0.1)
				numberValue14 += 0.1
				if not (numberValue14 > 30) then
					continue
				end
				return false
			end

			break
		end

		if not prompt5.Parent then
			return false
		end
		local numberValue15 = 0

		while prompt5.Parent and prompt5.Enabled do
			if not isEnabled16 then
				return false
			end

			if isEnabled3 then
				return false
			end

			if prompt5.ActionText ~= "Talk" then
				local numberValue16 = 0

				while prompt5.Parent and (not prompt5.Enabled or prompt5.ActionText ~= "Talk") do
					if not isEnabled16 then
						return false
					end

					if isEnabled3 then
						return false
					end
					task.wait(0.1)
					numberValue16 += 0.1
					if numberValue16 > 30 then
						return false
					end
				end

				if not prompt5.Parent then
					return false
				end
			end

			fn2(prompt5)
			task.wait(0.25)
			if not prompt5.Parent then
				return true
			end

			if not prompt5.Enabled then
				return true
			end
			task.wait(0.15)
			numberValue15 += 1
			if numberValue15 > 60 then
				return false
			end
		end

		return not prompt5.Enabled
	end

	fn3 = function(arg)
		if not arg then
			return false
		end

		if not arg:IsA("Model") then
			return false
		end

		if arg:GetAttribute("Skinwalker") == true then
			return true
		end

		if arg:GetAttribute("SkinwalkerEasy") == true then
			return true
		end

		if arg:GetAttribute("PenaltyWhenLettingIn") == true then
			return true
		end

		if arg:GetAttribute("HasCameraEffect") == true then
			return true
		end
		local attribute = arg:GetAttribute("Camera Effect")
		if attribute and attribute ~= "" and attribute ~= "None" then
			return true
		end
		local attribute2 = arg:GetAttribute("Photo Effect")
		if attribute2 and attribute2 ~= "" and attribute2 ~= "None" then
			return true
		end
		return false
	end

	fn4 = function()
		local part = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Shutters") and workspace.Misc.Shutters:FindFirstChild("Part")
		if part then
			return part.Position.Y < 8.2
		end
		return false
	end

	local obj = setmetatable({}, { __mode = "k" })
	local isEnabled19 = false

	local function fn11()
		local n = 0

		while isEnabled19 do
			task.wait(0.1)
			n += 0.1
			if not (n > 60) then
				continue
			end
			return false
		end

		isEnabled19 = true
		return true
	end

	local function fn12()
		isEnabled19 = false
	end

	local function fn13(arg)
		return arg and arg:GetAttribute("AsignedCheckIn")
	end

	local function fn14(arg, arg2, arg3)
		local form = fn8(arg, "Form", 30)
		if not form then
			return false
		end
		local prompt6 = form:WaitForChild("PP", 10)
		if not prompt6 then
			return false
		end

		if isEnabled3 then
			return false
		end
		isEnabled4 = true
		if not fn9(prompt6, "Form") then
			return false
		end

		if not isEnabled16 then
			return false
		end

		if isEnabled3 then
			isEnabled4 = false
			return false
		end
		local camera = fn8(arg, "Camera", 30)
		if not camera then
			return false
		end
		local prompt7 = camera:WaitForChild("PP", 10)
		if not prompt7 then
			return false
		end

		if not fn9(prompt7, "Camera") then
			return false
		end

		if not isEnabled16 then
			return false
		end

		if isEnabled3 then
			isEnabled4 = false
			return false
		end

		if not fn11() then
			return false
		end
		local computer = fn8(arg2, "Computer", 30)
		if not computer then
			fn12()
			return false
		end
		local prompt8 = computer:WaitForChild("PP", 10)
		if not prompt8 then
			fn12()
			return false
		end

		if not fn9(prompt8, "Computer") then
			fn12()
			return false
		end

		if not isEnabled16 then
			fn12()
			return false
		end

		if isEnabled3 then
			isEnabled4 = false
			fn12()
			return false
		end

		local printer = fn8(arg2, "Printer", 30)
		if not printer then
			fn12()
			return false
		end
		local prompt9 = printer:WaitForChild("PP", 10)
		if not prompt9 then
			fn12()
			return false
		end

		if not fn9(prompt9, "Printer") then
			fn12()
			return false
		end

		if not isEnabled16 then
			fn12()
			return false
		end

		if isEnabled3 then
			isEnabled4 = false
			fn12()
			return false
		end

		fn12()
		local printedBadge = fn8(arg, "PrintedBadge", 30)
		if not printedBadge then
			return false
		end
		local prompt10 = printedBadge:WaitForChild("PP", 10)
		if not prompt10 then
			return false
		end

		if not fn9(prompt10, "PrintedBadge") then
			return false
		end

		if not isEnabled16 then
			return false
		end
		local patientBadge = nil
		local n = 0

		while true do
			if not patientBadge and n < 30 then
				if isEnabled16 then
					patientBadge = arg:FindFirstChild("PatientBadge") or arg:FindFirstChild("VisitorBadge")

					if not patientBadge then
						task.wait(0.1)
						n += 0.1
					end

					continue
				end
			end

			break
		end

		if not patientBadge then
			return false
		end
		local tag = patientBadge:WaitForChild("Tag", 10)
		if not tag then
			return false
		end
		local ui = tag:WaitForChild("UI", 10)
		if not ui then
			return false
		end
		local label = ui:WaitForChild("Label", 10)
		if not label then
			return false
		end
		local numberValue17 = 0

		while true do
			if (not label.Text or label.Text == "") and numberValue17 < 10 then
				if isEnabled16 then
					task.wait(0.1)
					numberValue17 += 0.1
					continue
				end
			end

			break
		end

		if not label.Text or label.Text == "" then
			return false
		end

		if not isEnabled16 then
			return false
		end
		local text = label.Text

		local function fn15()
			for _, child in ipairs(arg3:GetChildren()) do
				if child.Name == text and not obj[child] then
					return child
				end
			end

			return nil
		end

		local value35 = fn15()

		if not value35 then
			local isEnabled20 = false

			local connection = arg3.ChildAdded:Connect(function(child)
				if child.Name == text and not obj[child] then
					value35 = child
					isEnabled20 = true
				end
			end)

			local numberValue18 = 0

			while true do
				if not isEnabled20 and numberValue18 < 10 then
					value35 = fn15()

					if value35 then
						isEnabled20 = true
						break
					else
						task.wait(0.1)
						numberValue18 += 0.1
						continue
					end
				end

				break
			end

			connection:Disconnect()
		end

		if not value35 then
			return false
		end

		local function fn16(arg4)
			if tableValue10.Sam and arg4.Name == "Sam" then
				return true
			end

			if tableValue10.Barney and arg4.Name == "Barney" then
				return true
			end

			if tableValue10.Anomalies and fn3(arg4) then
				return true
			end
			return false
		end

		if isEnabled17 and fn16(value35) then
			local numberValue19 = 0

			while true do
				if isEnabled16 and isEnabled17 and not fn4() then
					task.wait(0.3)
					numberValue19 += 0.3
					if not (numberValue19 > 30) then
						continue
					end
				end

				break
			end

			task.wait(1)
			return false
		end

		obj[value35] = true
		local value36 = fn10(value35)
		obj[value35] = nil
		return value36
	end

	local function fn15(arg)
		task.spawn(function()
			local misc = workspace:WaitForChild("Misc", 30)
			if not misc then
				return
			end
			local npCs = workspace:WaitForChild("NPCs", 30)
			if not npCs then
				return
			end
			local checkIn = fn8(misc, "CheckIn", 30)
			if not checkIn then
				return
			end

			while true do
				if arg == 2 then
					if not misc:FindFirstChild("CheckIn2") then
						task.wait(1)
						continue
					end
				end

				if not isEnabled16 then
					if arg == 1 then
						isEnabled4 = false
					end

					task.wait(0.5)
					continue
				end

				while isEnabled3 do
					if not isEnabled16 then
						break
					end
					task.wait(0.2)
				end

				if not isEnabled16 then
					continue
				end
				local checkIn2

				if arg == 1 then
					checkIn2 = checkIn
				else
					checkIn2 = misc:FindFirstChild("CheckIn2")
					if not checkIn2 then
						task.wait(1)
						continue
					end
				end

				local form = checkIn2:FindFirstChild("Form")
				local prompt11 = form and form:FindFirstChild("PP")
				if not prompt11 or not prompt11.Enabled then
					task.wait(0.3)
					continue
				end

				if arg == 2 then
					local isEnabled21 = false

					for _, child in ipairs(npCs:GetChildren()) do
						if fn13(child) == 2 then
							isEnabled21 = true
							break
						end
					end

					if not isEnabled21 then
						task.wait(0.3)
						continue
					end
				end

				local ok, result = pcall(fn14, checkIn2, checkIn, npCs)
				isEnabled4 = false

				if not ok or not result then
					task.wait(0.5)
				end

				task.wait(0.3)
			end
		end)
	end

	fn15(1)
	fn15(2)
end

local isEnabled22
isEnabled22 = false
value8:Divider({ Title = "Main Characters Settings", TitleAlignment = "Center" })

value8:Toggle({
	Title = "Help Barney",
	Desc = "Automatically helps Barney quest",
	Value = false,
	Callback = function(arg)
		isEnabled22 = arg
	end,
})

local isEnabled23
isEnabled23 = false

value8:Toggle({
	Title = "Help Liz",
	Desc = "Automatically helps Liz quest",
	Value = false,
	Callback = function(arg)
		isEnabled23 = arg
	end,
})

local isEnabled24
isEnabled24 = false
value8:Divider({ Title = "Coffee Settings", TitleAlignment = "Center" })
local isEnabled25
isEnabled25 = false
local n
n = 2
local numberValue20
numberValue20 = 50
local isEnabled26
isEnabled26 = false
local isEnabled27, numberValue21, numberValue22, numberValue23, numberValue24, isEnabled28, isEnabled29, isEnabled30, isEnabled31, isEnabled32
local isEnabled33, isEnabled34, isEnabled35, obj, fn5, fn6, fn7, fn8

do
	local tableValue11 = { ["Normal Coffee Machine"] = true }

	value8:Toggle({
		Title = "Auto Drink Coffee",
		Desc = "Automatically drinks coffee when sanity is low",
		Value = false,
		Callback = function(arg)
			isEnabled25 = arg
		end,
	})

	value8:Dropdown({
		Title = "Coffee Machine",
		Desc = "Select which machine(s) to use for auto drink coffee",
		Values = { "Normal Coffee Machine", "2nd Coffee Machine" },
		Multi = true,
		Value = { "Normal Coffee Machine" },
		Callback = function(arg)
			tableValue11 = {}

			for k, value37 in pairs(arg) do
				if type(k) == "string" and value37 == true then
					tableValue11[k] = true
				elseif type(value37) == "string" then
					tableValue11[value37] = true
				end
			end
		end,
	})

	value8:Slider({
		Title = "Sips Per Drink",
		Desc = "How many sips to take each time coffee is used",
		Step = 1,
		Value = { Min = 1, Max = 3, Default = 2 },
		Callback = function(arg)
			n = arg
		end,
	})

	value8:Slider({
		Title = "Sanity Threshold",
		Desc = "Drink coffee when sanity drops below this value",
		Step = 1,
		Value = { Min = 1, Max = 100, Default = 50 },
		Callback = function(arg)
			numberValue20 = arg
		end,
	})

	value8:Divider({ Title = "Utilities Settings", TitleAlignment = "Center" })
	isEnabled27 = false
	numberValue21 = 0
	numberValue22 = 0
	numberValue23 = 10
	numberValue24 = 12
	isEnabled28 = false

	value8:Toggle({
		Title = "Auto Take Taser",
		Desc = "Automatically grabs the taser and teleports you back when its available",
		Value = false,
		Callback = function(arg)
			isEnabled27 = arg
		end,
	})

	isEnabled29 = false

	value8:Toggle({
		Title = "Auto Taser Anomaly",
		Desc = "Pair with Auto Take Taser for better experience",
		Value = false,
		Callback = function(arg)
			isEnabled29 = arg
		end,
	})

	local isEnabled36 = false

	value8:Toggle({
		Title = "Gun Aimbot Anomaly",
		Desc = "Automatically aims at anomalies for you",
		Value = false,
		Callback = function(arg)
			isEnabled36 = arg
		end,
	})

	task.spawn(function()
		local ok, result = pcall(function()
			return require(localPlayer.PlayerScripts.Util.GunsLocal)
		end)

		if ok and result and result.ShootEffect then
			local shootEffect = result.ShootEffect

			result.ShootEffect = function(arg, arg2)
				if isEnabled36 then
					local value38 = getNearestAnomaly()

					if value38 then
						arg2 = value38.Position
					end
				end

				return shootEffect(arg, arg2)
			end
		end
	end)

	local isEnabled37 = false

	value8:Toggle({
		Title = "Unlimited Extinguisher",
		Desc = "Good for removing slime and fires",
		Value = false,
		Callback = function(arg)
			isEnabled37 = arg
		end,
	})

	task.spawn(function()
		pcall(function()
			local value39

			local function fn9(arg, ...)
				local value40 = getnamecallmethod()
				if isEnabled37 and value40 == "FireServer" and arg and arg.Name == "RE/FireExtinguisherStarted" then
					return
				end
				return value39(arg, ...)
			end

			value39 = hookmetamethod
			value39 = value39(game, "__namecall", fn9)
		end)
	end)

	value8:Divider({ Title = "Camera Settings", TitleAlignment = "Center" })
	isEnabled30 = false

	value8:Toggle({
		Title = "Auto Fix Cam's",
		Desc = "Automatically fixes broken security cameras",
		Value = false,
		Callback = function(arg)
			isEnabled30 = arg
		end,
	})

	value8:Divider({ Title = "Anomalies Settings", TitleAlignment = "Center" })
	isEnabled31 = false

	value8:Toggle({
		Title = "Treat Mass of Eyes",
		Desc = "Gets eye drops and treats the mass of eyes",
		Value = false,
		Callback = function(arg)
			isEnabled31 = arg
		end,
	})

	isEnabled32 = false

	value8:Toggle({
		Title = "Give Bedmonster Syrup",
		Desc = "Gets Maple Syrup then delivers it to the BedMonster",
		Value = false,
		Callback = function(arg)
			isEnabled32 = arg
		end,
	})

	local isEnabled38 = false

	value8:Toggle({
		Title = "Kill Ghost Using Scanner",
		Desc = "You must have scanner for this, it equips the scanner then fires it on ghosts",
		Value = false,
		Callback = function(arg)
			if arg then
				if not (localPlayer.Backpack:FindFirstChild("Scanner") or localPlayer.Character and localPlayer.Character:FindFirstChild("Scanner")) then
					lib:Notify({ Title = "Scanner", Content = "You need to have the scanner for this", Duration = 4 })
					isEnabled38 = false
					return
				end
			end

			isEnabled38 = arg
		end,
	})

	task.spawn(function()
		while task.wait(0.5) do
			if isEnabled38 then
				if not (localPlayer.Backpack:FindFirstChild("Scanner") or localPlayer.Character and localPlayer.Character:FindFirstChild("Scanner")) then
					isEnabled38 = false
					lib:Notify({ Title = "Scanner", Content = "You need to have the scanner for this", Duration = 4 })
				else
					local npCs = workspace:FindFirstChild("NPCs")

					if npCs then
						local Lib = require(game.ReplicatedStorage.Lib)

						for _, child in ipairs(npCs:GetChildren()) do
							if isEnabled38 then
								if child:IsA("Model") and child:HasTag("GhostAnomaly") then
									local humanoidRootPart = child:FindFirstChild("HumanoidRootPart") or child:FindFirstChildOfClass("BasePart")

									if humanoidRootPart then
										local character = localPlayer.Character
										character = character and character:FindFirstChildOfClass("Humanoid")
										local scanner = localPlayer.Backpack:FindFirstChild("Scanner")

										if character and scanner then
											character:EquipTool(scanner)
											task.wait(0.2)
										end

										teleportTo(humanoidRootPart.Position)

										pcall(function()
											Lib.Network:FireServer("ScannerKillGhost", child)
										end)

										task.wait(0.3)
									end
								end

								continue
							end

							break
						end
					end
				end
			end
		end
	end)

	local tableValue12 = {
		"RE/JumpscareHollow",
		"RE/JumpscareShadowWithEyesIMG",
		"RE/JumpscareShadow",
		"RE/JumpscareStalker",
	}

	local isEnabled39 = false
	local connection = nil
	local isEnabled40 = getconnections ~= nil

	local function fn9(arg)
		if not isEnabled40 then
			if arg then
				lib:Notify({
					Title = "Anti Jumpscare",
					Content = "Your executor lacks getconnections — remote block unavailable. Static suppression still active.",
					Duration = 6,
				})
			end

			return
		end

		local net = game:GetService("ReplicatedStorage"):FindFirstChild("Util") and game:GetService("ReplicatedStorage").Util:FindFirstChild("Net")
		if not net then
			return
		end

		for _, value41 in ipairs(tableValue12) do
			local value42 = net:FindFirstChild(value41)

			if value42 then
				local ok, result = pcall(getconnections, value42.OnClientEvent)

				if ok then
					for _, value43 in ipairs(result) do
						if arg then
							pcall(function()
								value43:Disable()
							end)
						else
							pcall(function()
								value43:Enable()
							end)
						end
					end
				end
			end
		end
	end

	local function fn10()
		local playerGui = localPlayer:FindFirstChild("PlayerGui")
		if not playerGui then
			return nil
		end
		local static = playerGui:FindFirstChild("static")
		return static and static:FindFirstChild("staticframe")
	end

	value8:Toggle({
		Title = "Anti Jumpscare",
		Desc = "Works on the stalker, headbanger and camera anomaly",
		Value = false,
		Callback = function(arg)
			isEnabled39 = arg
			fn9(arg)

			if arg then
				local value44 = fn10()

				if value44 then
					value44.ImageTransparency = 1
				end

				if connection then
					connection:Disconnect()
					connection = nil
				end

				task.spawn(function()
					local staticframe = fn10()

					if not staticframe then
						local playerGui = localPlayer:FindFirstChild("PlayerGui")

						if playerGui then
							local static = playerGui:WaitForChild("static", 10)
							staticframe = static and static:WaitForChild("staticframe", 5)
						end
					end

					if staticframe and isEnabled39 then
						staticframe.ImageTransparency = 1

						connection = staticframe:GetPropertyChangedSignal("ImageTransparency"):Connect(function()
							if isEnabled39 and staticframe.ImageTransparency < 1 then
								staticframe.ImageTransparency = 1
							end
						end)
					end
				end)
			elseif connection then
				connection:Disconnect()
				connection = nil
			end
		end,
	})

	value8:Toggle({
		Title = "Give Headbanger Coffee",
		Desc = "Automatically gets the coffee and gives it to the headbanger",
		Value = false,
		Callback = function(arg)
			isEnabled24 = arg
		end,
	})

	isEnabled33 = false

	value8:Toggle({
		Title = "Ask Headbanger to Leave",
		Desc = "Automatically makes the headbanger leave",
		Value = false,
		Callback = function(arg)
			isEnabled33 = arg
		end,
	})

	value8:Divider({ Title = "Fire Settings", TitleAlignment = "Center" })
	local isEnabled41 = false

	value8:Toggle({
		Title = "Auto Treat Patient Burns",
		Desc = "Automatically gets ointment and treats the patient's burns",
		Value = false,
		Callback = function(arg)
			isEnabled41 = arg
		end,
	})

	local isEnabled42 = false

	value8:Toggle({
		Title = "Auto Put Fire Out",
		Desc = "Teleports to occuring fires and puts them out automatically",
		Value = false,
		Callback = function(arg)
			isEnabled42 = arg
		end,
	})

	value8:Divider({ Title = "Slime Settings", TitleAlignment = "Center" })
	local isEnabled43 = false

	value8:Toggle({
		Title = "Auto Clean Slime",
		Desc = "Teleports to available slimes and cleans it",
		Value = false,
		Callback = function(arg)
			isEnabled43 = arg
		end,
	})

	value8:Divider({ Title = "Patient Settings", TitleAlignment = "Center" })
	isEnabled34 = false
	isEnabled35 = false
	obj = setmetatable({}, { __mode = "k" })

	value8:Paragraph({
		Title = "<font color=\"rgb(255,255,255)\">Beta Feature</font>",
		Desc = "<font color=\"rgb(255,255,255)\">(WARNING THIS FEATURE IS CURRENTLY IN BETA EXPECT BUGS AND IT DOESN'T WORK FOR ROOM 6-8 FOR NOW)</font>",
		Color = "Green",
	})

	value8:Toggle({
		Title = "Auto Wheelchair Patient",
		Desc = "Automatically puts the patient's to bed after checking in",
		Value = false,
		Callback = function(arg)
			isEnabled34 = arg
		end,
	})

	value8:Divider({})
	local isEnabled44 = false

	value8:Toggle({
		Title = "Auto Trash Fainted Patients",
		Desc = "Teleports to fainted patients, picks them up and throws them in the trash",
		Value = false,
		Callback = function(arg)
			isEnabled44 = arg
		end,
	})

	value8:Divider({ Title = "Shop Settings", TitleAlignment = "Center" })

	local function fn11()
		local backpack = localPlayer:FindFirstChild("Backpack")

		if backpack then
			for _, child in ipairs(backpack:GetChildren()) do
				if child:IsA("Tool") and string.find(string.lower(child.Name), "coffee") then
					return true
				end
			end
		end

		local character = localPlayer.Character

		if character then
			for _, child in ipairs(character:GetChildren()) do
				if child:IsA("Tool") and string.find(string.lower(child.Name), "coffee") then
					return true
				end
			end
		end

		return false
	end

	local function fn12()
		local character = localPlayer.Character
		if not character then
			return false
		end

		for _, child in ipairs(character:GetChildren()) do
			if child:IsA("Tool") and string.find(string.lower(child.Name), "coffee") then
				return true
			end
		end

		return false
	end

	local function fn13()
		if fn12() then
			return true
		end
		local backpack = localPlayer:FindFirstChild("Backpack")
		local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
		if not backpack or not humanoid then
			return false
		end

		for _, child in ipairs(backpack:GetChildren()) do
			if child:IsA("Tool") and string.find(string.lower(child.Name), "coffee") then
				humanoid:EquipTool(child)
				task.wait(0.2)
				return true
			end
		end

		return false
	end

	fn5 = function(arg)
		local character = localPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if not humanoidRootPart or not character then
			return false
		end
		humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
		humanoidRootPart.AssemblyAngularVelocity = Vector3.zero
		local cframe = CFrame.new(arg + Vector3.new(0, 3, 0))

		if humanoid then
			humanoid:ChangeState(Enum.HumanoidStateType.Running)
		end

		humanoidRootPart.Anchored = true
		character:PivotTo(cframe)
		task.wait(0.02)

		if humanoidRootPart and humanoidRootPart.Parent then
			humanoidRootPart.Anchored = false
			humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
			humanoidRootPart.AssemblyAngularVelocity = Vector3.zero
		end

		task.wait(0.28)
		return true
	end

	fn6 = function(arg, arg2)
		local numberValue25 = arg2 or 2
		local character = localPlayer.Character
		character = character and character:FindFirstChild("HumanoidRootPart")
		if not character or not arg then
			return false
		end
		local position = arg.Position
		local lookVector = arg.CFrame.LookVector
		local vector = Vector3.new(lookVector.X, 0, lookVector.Z)
		local vector2

		if vector.Magnitude < 0.05 then
			vector2 = Vector3.new(0, 0, 1)
		else
			vector2 = vector.Unit
		end

		character.CFrame = CFrame.new(Vector3.new(position.X + vector2.X * numberValue25, position.Y + 1, position.Z + vector2.Z * numberValue25), position)
		task.wait(0.3)
		return true
	end

	local function fn14()
		local function fn15(arg)
			if not arg then
				return false
			end
			local status = arg:FindFirstChild("Attachment") and arg.Attachment:FindFirstChild("UI") and arg.Attachment.UI:FindFirstChild("status")
			if not status then
				return false
			end

			if status.Text ~= "coffee: <font color='rgb(0, 200, 0)'>ready</font>" then
				return false
			end
			fn5(arg:GetPivot().Position)
			local prompt12 = arg:FindFirstChild("Coffee") and arg.Coffee:FindFirstChild("PP")
			if not prompt12 or not prompt12:IsA("ProximityPrompt") or not prompt12.Enabled then
				return false
			end

			pcall(function()
				fireproximityprompt(prompt12)
			end)

			local numberValue26 = 0

			while not fn11() and numberValue26 < 3 do
				task.wait(0.2)
				numberValue26 += 0.2
			end

			return fn11()
		end

		if tableValue11["Normal Coffee Machine"] then
			if fn15(workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("CoffeeMachine")) then
				return true
			end
		end

		if tableValue11["2nd Coffee Machine"] then
			local coffeeMachine2 = workspace:FindFirstChild("CoffeeMachine2") or workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("CoffeeMachine2")
			if coffeeMachine2 and fn15(coffeeMachine2) then
				return true
			end
		end

		return false
	end

	local function fn15()
		local backpack = localPlayer:FindFirstChild("Backpack")

		if backpack then
			for _, child in ipairs(backpack:GetChildren()) do
				if child:IsA("Tool") and string.find(string.lower(child.Name), "taser") then
					return true
				end
			end
		end

		local character = localPlayer.Character

		if character then
			for _, child in ipairs(character:GetChildren()) do
				if child:IsA("Tool") and string.find(string.lower(child.Name), "taser") then
					return true
				end
			end
		end

		return false
	end

	local function fn16()
		local backpack = localPlayer:FindFirstChild("Backpack")

		if backpack then
			for _, child in ipairs(backpack:GetChildren()) do
				if child:IsA("Tool") and string.find(string.lower(child.Name), "eye") then
					return true
				end
			end
		end

		local character = localPlayer.Character

		if character then
			for _, child in ipairs(character:GetChildren()) do
				if child:IsA("Tool") and string.find(string.lower(child.Name), "eye") then
					return true
				end
			end
		end

		return false
	end

	local function fn17()
		local character = localPlayer.Character
		character = character and character:FindFirstChild("HumanoidRootPart")
		if not character then
			return false
		end

		for _, descendant in ipairs(workspace:GetDescendants()) do
			if descendant:IsA("ProximityPrompt") and descendant.Enabled and (string.find(string.lower(descendant.ActionText), "eye") or string.find(string.lower(descendant.ObjectText), "eye")) then
				local parent = descendant.Parent
				local isBasePart = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart")

				if isBasePart then
					character.CFrame = CFrame.new(isBasePart.Position + Vector3.new(0, 3, 2))
					task.wait(0.3)

					pcall(function()
						fireproximityprompt(descendant)
					end)

					local numberValue27 = 0

					while not fn16() and numberValue27 < 3 do
						task.wait(0.2)
						numberValue27 += 0.2
					end

					return fn16()
				end
			end
		end

		return false
	end

	local function fn18()
		local character = localPlayer.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if not character or not humanoid then
			return false
		end

		for _, child in ipairs(character:GetChildren()) do
			if child:IsA("Tool") and string.find(string.lower(child.Name), "eye") then
				return true
			end
		end

		local backpack = localPlayer:FindFirstChild("Backpack")
		if not backpack then
			return false
		end

		for _, child in ipairs(backpack:GetChildren()) do
			if child:IsA("Tool") and string.find(string.lower(child.Name), "eye") then
				humanoid:EquipTool(child)
				task.wait(0.2)
				return true
			end
		end

		return false
	end

	local function fn19()
		local backpack = localPlayer:FindFirstChild("Backpack")

		if backpack then
			for _, child in ipairs(backpack:GetChildren()) do
				if child:IsA("Tool") and string.find(string.lower(child.Name), "syrup") then
					return true
				end
			end
		end

		local character = localPlayer.Character

		if character then
			for _, child in ipairs(character:GetChildren()) do
				if child:IsA("Tool") and string.find(string.lower(child.Name), "syrup") then
					return true
				end
			end
		end

		return false
	end

	local function fn20()
		local character = localPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return false
		end

		for _, descendant in ipairs(workspace:GetDescendants()) do
			if descendant:IsA("ProximityPrompt") and descendant.Enabled and (string.find(string.lower(descendant.ActionText), "syrup") or string.find(string.lower(descendant.ObjectText), "syrup")) then
				local parent = descendant.Parent
				local isBasePart = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart")

				if isBasePart then
					humanoidRootPart.CFrame = CFrame.new(isBasePart.Position + Vector3.new(0, 3, 2))
					task.wait(0.3)

					pcall(function()
						fireproximityprompt(descendant)
					end)

					local numberValue28 = 0

					while not fn19() and numberValue28 < 3 do
						task.wait(0.2)
						numberValue28 += 0.2
					end

					return fn19()
				end
			end
		end

		return false
	end

	local function fn21()
		local character = localPlayer.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if not character or not humanoid then
			return false
		end

		for _, child in ipairs(character:GetChildren()) do
			if child:IsA("Tool") and string.find(string.lower(child.Name), "syrup") then
				return true
			end
		end

		local backpack = localPlayer:FindFirstChild("Backpack")
		if not backpack then
			return false
		end

		for _, child in ipairs(backpack:GetChildren()) do
			if child:IsA("Tool") and string.find(string.lower(child.Name), "syrup") then
				humanoid:EquipTool(child)
				task.wait(0.2)
				return true
			end
		end

		return false
	end

	local function fn22()
		local wheelChairStation = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("WheelChairStation")
		if not wheelChairStation then
			return nil, nil
		end
		local main = wheelChairStation:FindFirstChild("Main")
		if not main then
			return nil, nil
		end
		local prompt13 = main:FindFirstChild("PP")
		if not prompt13 or not prompt13:IsA("ProximityPrompt") then
			return nil, nil
		end
		return wheelChairStation, prompt13
	end

	local function fn23()
		local wheelChairStation = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("WheelChairStation")
		if not wheelChairStation then
			return nil
		end
		local main = wheelChairStation:FindFirstChild("Main")
		if not main then
			return nil
		end
		local attachment = main:FindFirstChild("Attachment")
		attachment = attachment and attachment:FindFirstChild("UI")
		return attachment and attachment:FindFirstChild("status")
	end

	fn7 = function()
		local value45 = fn23()
		if not value45 then
			return false
		end
		local value46 = string.lower(value45.ContentText ~= "" and value45.ContentText or value45.Text or "")
		local value47 = string.lower(localPlayer.Name)
		local value48 = string.lower(localPlayer.DisplayName)
		return string.find(value46, value47, 1, true) ~= nil or string.find(value46, value48, 1, true) ~= nil
	end

	local function fn24()
		local value49 = fn23()
		if not value49 then
			return false
		end
		local value50 = string.lower(value49.ContentText ~= "" and value49.ContentText or value49.Text or "")
		if string.find(value50, "ready", 1, true) then
			return false
		end

		for _, player in ipairs(Players:GetPlayers()) do
			if player == localPlayer then
				continue
			end

			if string.find(value50, string.lower(player.Name), 1, true) or string.find(value50, string.lower(player.DisplayName), 1, true) then
				return true
			end
		end

		return false
	end

	fn8 = function()
		if fn7() then
			return true
		end

		if fn24() then
			return false
		end
		local value51, value52 = fn22()
		if not value51 or not value52 then
			return false
		end
		fn5(value51:GetPivot().Position)
		task.wait(0.4)

		pcall(function()
			fireproximityprompt(value52)
		end)

		local numberValue29 = 0

		while numberValue29 < 3.5 and isEnabled34 do
			task.wait(0.2)
			numberValue29 += 0.2
			if fn7() then
				return true
			end
		end

		return fn7()
	end

	local function fn25()
		local character = localPlayer.Character
		return character and character:FindFirstChild("HumanoidRootPart")
	end

	local function fn26(arg)
		if arg and arg.Parent then
			pcall(function()
				fireproximityprompt(arg)
			end)
		end
	end

	local function fn27(arg)
		local rootPart = arg:FindFirstChild("RootPart")
		rootPart = rootPart and rootPart:FindFirstChild("spine")
		rootPart = rootPart and rootPart:FindFirstChild("spine.001")
		rootPart = rootPart and rootPart:FindFirstChild("spine.002")
		rootPart = rootPart and rootPart:FindFirstChild("FaintedPP")
		return rootPart and rootPart:IsA("ProximityPrompt") and rootPart or nil
	end

	local function fn28(arg)
		if not arg then
			return nil
		end

		if arg:IsA("BasePart") then
			return arg.Position
		end

		if arg:IsA("Attachment") then
			return arg.WorldPosition
		end

		if arg:IsA("Model") then
			if arg.PrimaryPart then
				return arg.PrimaryPart.Position
			end
			local basePart = arg:FindFirstChildWhichIsA("BasePart", true)
			return basePart and basePart.Position or nil
		end

		return nil
	end

	local function fn29(arg, arg2)
		local huge = math.huge
		local value53 = nil

		for _, child in ipairs(workspace:GetChildren()) do
			if not (Players:GetPlayerFromCharacter(child) or child == arg2) then
				local prompt14 = child:FindFirstChild("PP", true)

				if prompt14 and prompt14:IsA("ProximityPrompt") and string.find(string.lower(prompt14:GetFullName()), "trash") then
					local value54 = fn28(child)

					if value54 then
						local magnitude = (value54 - arg).Magnitude

						if magnitude < huge then
							huge = magnitude
							value53 = prompt14
						end
					end
				end
			end
		end

		return value53
	end

	local function fn30(arg, arg2, arg3)
		local now = os.clock()

		while os.clock() - now < arg3 do
			if not arg.Parent or not arg2:FindFirstChild("FaintedPP", true) then
				return true
			end
			task.wait(0.05)
		end

		return false
	end

	local function fn31()
		local playerGui = localPlayer:FindFirstChild("PlayerGui")
		playerGui = playerGui and playerGui:FindFirstChild("Notifications")
		playerGui = playerGui and playerGui:FindFirstChild("Notifications")
		playerGui = playerGui and playerGui:FindFirstChild("Feed")
		if not playerGui then
			return false
		end

		for _, child in ipairs(playerGui:GetChildren()) do
			local attribute = child:GetAttribute("ContentText")
			if typeof(attribute) == "string" and (string.find(string.lower(attribute), "no one will know", 1, true) or string.find(string.lower(attribute), "no one wil know", 1, true)) then
				return true
			end

			if child:IsA("TextLabel") or child:IsA("TextButton") then
				local value55 = string.lower(child.Text)
				if string.find(value55, "no one will know", 1, true) or string.find(value55, "no one wil know", 1, true) then
					return true
				end
			end

			for _, descendant in ipairs(child:GetDescendants()) do
				if descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
					local value56 = string.lower(descendant.Text)
					if string.find(value56, "no one will know", 1, true) or string.find(value56, "no one wil know", 1, true) then
						return true
					end
				end

				local attribute2 = descendant:GetAttribute("ContentText")
				if typeof(attribute2) == "string" and (string.find(string.lower(attribute2), "no one will know", 1, true) or string.find(string.lower(attribute2), "no one wil know", 1, true)) then
					return true
				end
			end
		end

		return false
	end

	local function fn32(arg)
		local now = os.clock()

		while os.clock() - now < arg do
			if fn31() then
				return true
			end
			task.wait(0.05)
		end

		return false
	end

	local function fn33(arg)
		local value57 = fn25()
		if not value57 then
			return false
		end
		local value58 = fn27(arg)
		if not value58 then
			return false
		end
		local rootPart = arg:FindFirstChild("RootPart")
		if not rootPart then
			return false
		end
		local cFrame = value57.CFrame
		value57.CFrame = rootPart.CFrame + Vector3.new(0, 2, 0)
		task.wait(0.3)
		if not value58.Parent then
			value57.CFrame = cFrame
			return false
		end
		fn26(value58)
		if not fn30(value58, arg, 5) then
			value57.CFrame = cFrame
			return false
		end
		task.wait(0.5)
		local value59 = fn25()
		if not value59 then
			return false
		end
		local value60 = fn29(value59.Position, arg)
		if not value60 then
			value59.CFrame = cFrame
			return false
		end
		local value61 = fn28(value60.Parent)
		if not value61 then
			value59.CFrame = cFrame
			return false
		end
		value59.CFrame = CFrame.new(value61 + Vector3.new(0, 2, 0))
		task.wait(0.5)
		local isEnabled45 = false

		while not isEnabled45 and isEnabled44 do
			fn26(value60)
			isEnabled45 = fn32(2)

			if not isEnabled45 then
				task.wait(0.5)
			end
		end

		local value62 = fn25()

		if value62 then
			value62.CFrame = cFrame
		end

		return isEnabled45
	end

	task.spawn(function()
		while true do
			task.wait(0.5)

			if isEnabled44 then
				local npCs = workspace:FindFirstChild("NPCs")
				if not npCs then
					continue
				end

				for _, child in ipairs(npCs:GetChildren()) do
					if not isEnabled44 then
						break
					end

					if child:IsA("Model") and fn27(child) then
						fn33(child)
						task.wait(0.5)
					end
				end
			end
		end
	end)

	task.spawn(function()
		while task.wait(0.75) do
			if isEnabled43 then
				local misc = workspace:FindFirstChild("Misc")

				if misc then
					local value63 = nil
					local value64 = nil

					for _, child in ipairs(misc:GetChildren()) do
						if string.find(string.lower(child.Name), "slime") then
							local prompt15 = child:FindFirstChild("PP", true)

							if prompt15 and prompt15:IsA("ProximityPrompt") and prompt15.Enabled then
								value63 = prompt15
								value64 = child
								break
							else
								value64 = nil
							end
						else
							value64 = nil
						end
					end

					if value64 and value63 then
						local character = localPlayer.Character
						character = character and character:FindFirstChild("HumanoidRootPart")

						if character then
							local cFrame = character.CFrame
							local isBasePart = value64:IsA("BasePart") and value64 or value64:FindFirstChildWhichIsA("BasePart", true)

							if isBasePart then
								character.CFrame = CFrame.new(isBasePart.Position + Vector3.new(0, 3, 0))
								task.wait(0.3)
								local numberValue30 = 0

								while value64.Parent and value63.Parent and numberValue30 < 10 and isEnabled43 do
									pcall(function()
										fireproximityprompt(value63)
									end)

									task.wait(0.4)
									numberValue30 += 1
								end

								local numberValue31 = 0

								while value64.Parent and numberValue31 < 3 and isEnabled43 do
									task.wait(0.2)
									numberValue31 += 0.2
								end

								if character.Parent then
									character.CFrame = cFrame
								end
							end
						end
					end
				end
			end
		end
	end)

	task.spawn(function()
		while task.wait(0.4) do
			if isEnabled41 then
				local npCs = workspace:FindFirstChild("NPCs")

				if npCs then
					for _, child in ipairs(npCs:GetChildren()) do
						if not (not child:IsA("Model") or fn3(child)) then
							local counter = child:FindFirstChild("Counter", true)
							counter = counter and counter:FindFirstChild("UI")
							local textLabel = counter and counter:FindFirstChildOfClass("TextLabel")
							local imageLabel = counter and counter:FindFirstChildOfClass("ImageLabel")
							local attribute = child:GetAttribute("IsCured")
							local value65 = nil

							for _, descendant in ipairs(child:GetDescendants()) do
								if descendant:IsA("ProximityPrompt") and descendant.Name == "FirePP" then
									value65 = descendant
									break
								end
							end

							local humanoidRootPart = child:FindFirstChild("HumanoidRootPart") or child:FindFirstChildOfClass("BasePart")

							if value65 and value65.Enabled and counter and counter.Enabled and textLabel and textLabel.Visible and tonumber(textLabel.Text:match("%d+")) and humanoidRootPart then
								local character = localPlayer.Character
								character = character and character:FindFirstChild("HumanoidRootPart")
								character = character and character.CFrame
								fn5(humanoidRootPart.Position)

								pcall(function()
									fireproximityprompt(value65)
								end)

								if character then
									local humanoidRootPart2 = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")

									if humanoidRootPart2 and humanoidRootPart2.Parent then
										humanoidRootPart2.CFrame = character
									end
								end
							elseif not attribute and value65 and value65.Enabled and counter and counter.Enabled and textLabel and not textLabel.Visible and imageLabel and imageLabel.Visible and humanoidRootPart then
								local character = localPlayer.Character
								character = character and character:FindFirstChild("HumanoidRootPart")
								character = character and character.CFrame
								local backpack = localPlayer:FindFirstChild("Backpack")
								local character2 = localPlayer.Character

								if not (backpack and backpack:FindFirstChild("Ointment") or character2 and character2:FindFirstChild("Ointment")) then
									local Ointment, value66 = findItem("Ointment")

									if Ointment and value66 then
										local pivot = value66:IsA("Model") and value66:GetPivot() or value66:IsA("BasePart") and value66.CFrame

										if pivot then
											fn5(pivot.Position)

											pcall(function()
												fireproximityprompt(Ointment)
											end)

											local now = os.clock()

											while true do
												task.wait()
												local backpack2 = localPlayer:FindFirstChild("Backpack")
												local character3 = localPlayer.Character
												if not (backpack2 and backpack2:FindFirstChild("Ointment") or character3 and character3:FindFirstChild("Ointment") or os.clock() - now > 2) then
													continue
												end
												break
											end
										end
									end
								end

								local backpack2 = localPlayer:FindFirstChild("Backpack")
								local character3 = localPlayer.Character

								if backpack2 and backpack2:FindFirstChild("Ointment") or character3 and character3:FindFirstChild("Ointment") then
									fn5(humanoidRootPart.Position)

									pcall(function()
										fireproximityprompt(value65)
									end)
								end

								if character then
									local humanoidRootPart2 = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")

									if humanoidRootPart2 and humanoidRootPart2.Parent then
										humanoidRootPart2.CFrame = character
									end
								end
							end
						end
					end
				end
			end
		end
	end)

	task.spawn(function()
		while task.wait(0.4) do
			if isEnabled42 then
				if not isEnabled3 then
					local character = localPlayer.Character
					character = character and character:FindFirstChild("HumanoidRootPart")

					if character then
						local tableValue13 = {}

						for _, descendant in ipairs(workspace:GetDescendants()) do
							if descendant:IsA("Model") and descendant.Name:lower():find("fire") then
								for _, descendant2 in ipairs(descendant:GetDescendants()) do
									if descendant2:IsA("BasePart") then
										local prompt16 = descendant2:FindFirstChild("PP")

										if prompt16 and prompt16:IsA("ProximityPrompt") and prompt16.Enabled then
											table.insert(tableValue13, { part = descendant2, pp = prompt16 })
										end
									end
								end
							end
						end

						if #tableValue13 ~= 0 then
							local cFrame = character.CFrame

							for _, value67 in ipairs(tableValue13) do
								if isEnabled42 then
									if not (not value67.pp.Parent or not value67.pp.Enabled) then
										fn5(value67.part.Position)

										pcall(function()
											fireproximityprompt(value67.pp)
										end)

										task.wait(0.3)
									end

									continue
								end

								break
							end

							local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")

							if humanoidRootPart and humanoidRootPart.Parent then
								humanoidRootPart.CFrame = cFrame
							end
						end
					end
				end
			end
		end
	end)

	task.spawn(function()
		while task.wait(0.5) do
			if isEnabled22 then
				if not isEnabled4 then
					local barney = workspace:FindFirstChild("NPCs") and workspace.NPCs:FindFirstChild("Barney")

					if barney then
						local humanoidRootPart = barney:FindFirstChild("HumanoidRootPart") or barney:FindFirstChildOfClass("BasePart")

						if humanoidRootPart then
							local character = localPlayer.Character
							character = character and character:FindFirstChild("HumanoidRootPart")

							if character then
								local cFrame = character.CFrame

								if (humanoidRootPart.Position - Vector3.new(-103.900024, 2.427771, -7.099718)).Magnitude < 8 then
									local misc = workspace:FindFirstChild("Misc")
									local checkIn

									if misc then
										checkIn = misc:FindFirstChild("CheckIn") or misc:FindFirstChild("CheckIn2")
									else
										checkIn = misc
									end

									checkIn = checkIn and checkIn:FindFirstChild("Camera")
									local prompt17 = checkIn and checkIn:FindFirstChild("PP")

									if prompt17 and prompt17:IsA("ProximityPrompt") and prompt17.Enabled then
										fn2(prompt17)
										task.wait(0.25)

										pcall(function()
											fireproximityprompt(prompt17)
										end)

										while prompt17 and prompt17.Parent and prompt17.Enabled do
											task.wait(0.2)
										end

										if character and character.Parent then
											character.CFrame = cFrame
										end
									end
								else
									local prompt18 = barney:FindFirstChild("PP")

									if not (not prompt18 or not prompt18:IsA("ProximityPrompt") or not prompt18.Enabled) then
										local actionText = prompt18.ActionText

										if actionText == "Accept Suitcase" or actionText == "Accept suitcase" then
											fn5(humanoidRootPart.Position)

											if prompt18 and prompt18.Enabled and (prompt18.ActionText == "Accept Suitcase" or prompt18.ActionText == "Accept suitcase") then
												pcall(function()
													fireproximityprompt(prompt18)
												end)
											end
										elseif actionText == "Let him hide with you" then
											fn5(humanoidRootPart.Position)

											if prompt18 and prompt18.Enabled and prompt18.ActionText == "Let him hide with you" then
												pcall(function()
													fireproximityprompt(prompt18)
												end)

												while prompt18 and prompt18.Parent and prompt18.Enabled do
													task.wait(0.2)
												end

												if character and character.Parent then
													character.CFrame = cFrame
												end
											end
										elseif actionText == "Give scalpel" or actionText == "Give Scalpel" then
											if not ahHasItem("Scalpel") then
												ahFetchObject("Scalpel")
											end

											if ahHasItem("Scalpel") then
												fn5(humanoidRootPart.Position)

												if prompt18 and prompt18.Enabled and (prompt18.ActionText == "Give scalpel" or prompt18.ActionText == "Give Scalpel") then
													pcall(function()
														fireproximityprompt(prompt18)
													end)
												end
											end
										elseif actionText == "Give Coffee" then
											if not fn11() then
												if not fn14() then
													continue
												end
											end

											fn13()
											local humanoidRootPart2 = barney:FindFirstChild("HumanoidRootPart") or barney:FindFirstChildOfClass("BasePart")

											if humanoidRootPart2 then
												fn5(humanoidRootPart2.Position)

												if prompt18 and prompt18.Enabled and prompt18.ActionText == "Give Coffee" then
													pcall(function()
														fireproximityprompt(prompt18)
													end)
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end)

	task.spawn(function()
		local function fn34()
			local playerGui = localPlayer:FindFirstChild("PlayerGui")
			playerGui = playerGui and playerGui:FindFirstChild("Notifications")
			local notifications = playerGui and playerGui:FindFirstChild("Notifications")
			local feed = notifications and notifications:FindFirstChild("Feed")
			if not feed then
				return false
			end

			for _, child in ipairs(feed:GetChildren()) do
				local attribute = child:GetAttribute("ContentText")
				if typeof(attribute) == "string" and string.find(string.lower(attribute), "the photo captured something strange", 1, true) then
					return true
				end

				if child:IsA("TextLabel") or child:IsA("TextButton") then
					if string.find(string.lower(child.Text), "the photo captured something strange", 1, true) then
						return true
					end
				end

				for _, descendant in ipairs(child:GetDescendants()) do
					if descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
						if string.find(string.lower(descendant.Text), "the photo captured something strange", 1, true) then
							return true
						end
					end

					local attribute2 = descendant:GetAttribute("ContentText")
					if typeof(attribute2) == "string" and string.find(string.lower(attribute2), "the photo captured something strange", 1, true) then
						return true
					end
				end
			end

			return false
		end

		while task.wait(0.5) do
			if isEnabled23 then
				local npCs = workspace:FindFirstChild("NPCs")

				if npCs then
					local liz = npCs:FindFirstChild("Liz")

					if liz then
						local prompt19 = liz:FindFirstChild("PP")

						if prompt19 and prompt19:IsA("ProximityPrompt") and prompt19.Enabled and string.lower(prompt19.ActionText) == "accept helping her" then
							local humanoidRootPart = liz:FindFirstChild("HumanoidRootPart") or liz:FindFirstChildOfClass("BasePart")
							local character = localPlayer.Character
							character = character and character:FindFirstChild("HumanoidRootPart")

							if humanoidRootPart and character then
								local cFrame = character.CFrame
								fn5(humanoidRootPart.Position)

								pcall(function()
									fireproximityprompt(prompt19)
								end)

								while prompt19 and prompt19.Parent and prompt19.Enabled do
									task.wait(0.2)
								end

								if character and character.Parent then
									character.CFrame = cFrame
								end
							end
						end

						local misc = workspace:FindFirstChild("Misc")
						local uvCamera = misc and misc:FindFirstChild("UVCamera")
						local prompt20 = uvCamera and uvCamera:FindFirstChild("PP")

						if not (not uvCamera or not prompt20) then
							if not (not prompt20:IsA("ProximityPrompt") or not prompt20.Enabled) then
								misc = misc and misc:FindFirstChild("LizNote")
								misc = misc and misc:FindFirstChild("SurfaceGui")
								misc = misc and misc:FindFirstChild("Frame")
								misc = misc and misc:FindFirstChild("TextLabel")

								if misc then
									local text = misc.Text

									if not (not text or text == "") then
										local value68 = npCs:FindFirstChild(text)

										if value68 then
											if value68:GetPivot().Position == Vector3.new(-103.900024, 2.427771, -7.099718) then
												local character = localPlayer.Character

												if character and character:FindFirstChild("HumanoidRootPart") then
													fn2(prompt20)
													task.wait(0.25)

													pcall(function()
														fireproximityprompt(prompt20)
													end)

													local numberValue32 = 0

													while numberValue32 < 5 do
														task.wait(0.2)
														numberValue32 += 0.2
														if not fn34() then
															continue
														end
														break
													end

													task.wait(1)
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end)

	task.spawn(function()
		while task.wait(0.5) do
			if isEnabled24 then
				local npCs = workspace:FindFirstChild("NPCs")

				if npCs then
					local value69 = nil
					local humanoidRootPart = nil

					for _, child in ipairs(npCs:GetChildren()) do
						local prompt21 = child:FindFirstChild("PP")

						if prompt21 and prompt21:IsA("ProximityPrompt") and prompt21.Enabled and prompt21.ActionText == "Ask to Leave" then
							value69 = prompt21
							humanoidRootPart = child:FindFirstChild("HumanoidRootPart") or child:FindFirstChildOfClass("BasePart")
							break
						else
							humanoidRootPart = nil
						end
					end

					if not (not value69 or not humanoidRootPart or not value69.Enabled) then
						if not fn11() then
							if not fn14() then
								continue
							end
						end

						fn13()
						fn5(humanoidRootPart.Position)

						if not (not value69.Enabled or value69.ActionText ~= "Ask to Leave") then
							pcall(function()
								fireproximityprompt(value69)
							end)

							local numberValue33 = 0

							while numberValue33 < 3 do
								task.wait(0.2)
								numberValue33 += 0.2
								if not (not value69.Enabled or value69.ActionText ~= "Ask to Leave") then
									continue
								end
								break
							end

							task.wait(0.5)
						end
					end
				end
			end
		end
	end)

	task.spawn(function()
		while task.wait(0.5) do
			if isEnabled33 then
				local npCs = workspace:FindFirstChild("NPCs")

				if npCs then
					local value70 = nil
					local humanoidRootPart = nil

					for _, child in ipairs(npCs:GetChildren()) do
						local prompt22 = child:FindFirstChild("PP")

						if prompt22 and prompt22:IsA("ProximityPrompt") and prompt22.Enabled and prompt22.ActionText == "Ask to Leave" then
							value70 = prompt22
							humanoidRootPart = child:FindFirstChild("HumanoidRootPart") or child:FindFirstChildOfClass("BasePart")
							break
						else
							humanoidRootPart = nil
						end
					end

					if not (not value70 or not humanoidRootPart or not value70.Enabled) then
						local character = localPlayer.Character
						character = character and character:FindFirstChild("HumanoidRootPart")
						character = character and character.CFrame
						fn5(humanoidRootPart.Position)

						if value70.Enabled and value70.ActionText == "Ask to Leave" then
							pcall(function()
								fireproximityprompt(value70)
							end)

							local numberValue34 = 0

							while numberValue34 < 2 do
								task.wait(0.1)
								numberValue34 += 0.1
								if not (not value70.Parent or not value70.Enabled) then
									continue
								end
								break
							end
						end

						if character then
							local humanoidRootPart2 = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")

							if humanoidRootPart2 and humanoidRootPart2.Parent then
								humanoidRootPart2.CFrame = character
							end
						end

						task.wait(0.5)
					end
				end
			end
		end
	end)

	local function fn34()
		if isEnabled26 then
			return
		end
		isEnabled26 = true

		while true do
			local attribute = localPlayer:GetAttribute("Sanity")

			if typeof(attribute) == "number" and attribute < numberValue20 then
				if not fn11() then
					if fn14() then
						if fn13() then
							local character = localPlayer.Character

							if character then
								local value71 = nil

								for _, child in ipairs(character:GetChildren()) do
									if child:IsA("Tool") and string.find(string.lower(child.Name), "coffee") then
										value71 = child
										break
									end
								end

								if value71 then
									for i = 1, n do
										if not (not value71 or not value71.Parent) then
											pcall(function()
												value71:Activate()
											end)

											if i < n then
												task.wait(1.5)
											end

											continue
										end

										break
									end

									task.wait(2)
									continue
								end
							end
						end
					end
				end
			end

			break
		end

		isEnabled26 = false
	end

	task.spawn(function()
		while task.wait(0.5) do
			if isEnabled25 and not isEnabled26 then
				local attribute = localPlayer:GetAttribute("Sanity")

				if typeof(attribute) == "number" and attribute < numberValue20 then
					fn34()
				end
			end
		end
	end)

	task.spawn(function()
		while task.wait(0.5) do
			if not isEnabled27 then
				isEnabled28 = fn15()
			else
				local value72 = fn15()

				if isEnabled28 and not value72 then
					numberValue22 = os.clock()
				end

				isEnabled28 = value72

				if not value72 then
					if not (os.clock() - numberValue21 < numberValue23) then
						if not (os.clock() - numberValue22 < numberValue24) then
							local taserStation = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("TaserStation")

							if taserStation then
								local status = taserStation:FindFirstChild("Main") and taserStation.Main:FindFirstChild("Attachment") and taserStation.Main.Attachment:FindFirstChild("UI") and taserStation.Main.Attachment.UI:FindFirstChild("status")

								if status then
									if status.Text == "taser: <font color='rgb(0, 200, 0)'>ready</font>" then
										local prompt23 = taserStation.Main:FindFirstChild("PP")

										if not (not prompt23 or not prompt23:IsA("ProximityPrompt") or not prompt23.Enabled) then
											local character = localPlayer.Character
											character = character and character:FindFirstChild("HumanoidRootPart")

											if character then
												local cFrame = character.CFrame
												fn5(taserStation:GetPivot().Position)

												pcall(function()
													fireproximityprompt(prompt23)
												end)

												local numberValue35 = 0

												while not fn15() and numberValue35 < 3 do
													task.wait(0.2)
													numberValue35 += 0.2
												end

												if fn15() then
													numberValue21 = os.clock()
													isEnabled28 = true
													character.CFrame = cFrame
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end)

	local util = game:GetService("ReplicatedStorage"):FindFirstChild("Util")
	util = util and util:FindFirstChild("Net")
	local reTaserFired = util and util:FindFirstChild("RE/TaserFired")
	local numberValue36 = 0
	local numberValue37 = 3

	local function fn35(arg)
		local character = localPlayer.Character

		if character then
			for _, child in ipairs(character:GetChildren()) do
				if child:IsA("Tool") and string.find(string.lower(child.Name), arg) then
					return child, true
				end
			end
		end

		local backpack = localPlayer:FindFirstChild("Backpack")

		if backpack then
			for _, child in ipairs(backpack:GetChildren()) do
				if child:IsA("Tool") and string.find(string.lower(child.Name), arg) then
					return child, false
				end
			end
		end

		return nil, false
	end

	local function fn36()
		local character = localPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return nil
		end
		local huge = math.huge
		local value73 = nil

		for _, descendant in ipairs(workspace:GetDescendants()) do
			if descendant:IsA("Model") and descendant ~= character and not Players:GetPlayerFromCharacter(descendant) then
				if fn3(descendant) then
					local humanoid = descendant:FindFirstChildOfClass("Humanoid")
					local humanoidRootPart2 = descendant:FindFirstChild("HumanoidRootPart") or descendant:FindFirstChild("Head") or descendant:FindFirstChildOfClass("BasePart")

					if humanoidRootPart2 and (not humanoid or humanoid.Health > 0) then
						local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

						if magnitude < huge then
							huge = magnitude
							value73 = descendant
						end
					end
				end
			end
		end

		return value73
	end

	task.spawn(function()
		while task.wait(0.5) do
			if isEnabled29 then
				if reTaserFired then
					if not (os.clock() - numberValue36 < numberValue37) then
						local taser, value74 = fn35("taser")

						if taser then
							local value75 = fn36()

							if value75 then
								if not value74 then
									local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")

									if humanoid then
										humanoid:EquipTool(taser)
										task.wait(0.2)
									end
								end

								pcall(function()
									reTaserFired:FireServer(value75)
								end)

								numberValue36 = os.clock()
							end
						end
					end
				end
			end
		end
	end)

	local function fn37()
		local character = localPlayer.Character
		character = character and character:FindFirstChild("HumanoidRootPart")
		if not character then
			return
		end
		local cFrame = character.CFrame
		local cameras = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Cameras")
		if not cameras then
			return
		end

		for _, descendant in ipairs(cameras:GetDescendants()) do
			if descendant:IsA("ProximityPrompt") then
				local parent = descendant.Parent

				if parent and parent:IsA("BasePart") then
					character.CFrame = CFrame.new(parent.Position + Vector3.new(0, 3, 4))
					task.wait(0.3)

					pcall(function()
						fireproximityprompt(descendant)
					end)

					task.wait(0.5)
				end
			end
		end

		character.CFrame = cFrame
	end

	task.spawn(function()
		while task.wait(1) do
			if isEnabled30 then
				fn37()
			end
		end
	end)

	task.spawn(function()
		while task.wait(0.5) do
			if isEnabled31 then
				local value76 = nil
				local value77 = nil

				for _, descendant in ipairs(workspace:GetDescendants()) do
					if descendant:IsA("Model") and string.find(string.lower(descendant.Name), "eye") then
						local main = descendant:FindFirstChild("Main")
						main = main and main:FindFirstChild("PP")

						if main and main:IsA("ProximityPrompt") and main.Enabled then
							value76 = main
							value77 = descendant
							break
						else
							value77 = nil
						end
					else
						value77 = nil
					end
				end

				if not (not value77 or not value76) then
					local character = localPlayer.Character
					character = character and character:FindFirstChild("HumanoidRootPart")

					if character then
						local cFrame = character.CFrame

						if not fn16() then
							if not fn17() then
								continue
							end
						end

						if fn18() then
							local main = value77:FindFirstChild("Main")
							local isBasePart = main and (main:IsA("BasePart") and main or main:FindFirstChildWhichIsA("BasePart"))

							if isBasePart then
								local character2 = localPlayer.Character
								character2 = character2 and character2:FindFirstChild("HumanoidRootPart")

								if character2 then
									character2.CFrame = CFrame.new(isBasePart.Position + Vector3.new(0, 3, 2))
									task.wait(0.3)

									if value76 and value76.Enabled then
										pcall(function()
											fireproximityprompt(value76)
										end)

										task.wait(1)

										if character2 and character2.Parent then
											character2.CFrame = cFrame
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end)

	task.spawn(function()
		while task.wait(0.5) do
			if isEnabled32 then
				local monsterBed = workspace:FindFirstChild("MonsterBed", true)

				if monsterBed then
					local character = localPlayer.Character
					character = character and character:FindFirstChild("HumanoidRootPart")

					if character then
						local cFrame = character.CFrame

						if not fn19() then
							if not fn20() then
								continue
							end
						end

						if fn21() then
							local main = monsterBed:FindFirstChild("Main")

							if main then
								main = main:IsA("BasePart") and main or main:FindFirstChildWhichIsA("BasePart")
							end

							local isBasePart

							if main then
								isBasePart = main
							else
								isBasePart = monsterBed:IsA("BasePart") and monsterBed
							end

							isBasePart = isBasePart or monsterBed:FindFirstChildWhichIsA("BasePart", true)
							local primaryPart = isBasePart or monsterBed.PrimaryPart

							if primaryPart then
								local character2 = localPlayer.Character
								character2 = character2 and character2:FindFirstChild("HumanoidRootPart")

								if character2 then
									character2.CFrame = CFrame.new(primaryPart.Position + Vector3.new(0, 3, 2))
									task.wait(0.3)
									local numberValue38 = 0

									while fn19() and numberValue38 < 5 do
										task.wait(0.2)
										numberValue38 += 0.2
									end

									local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")

									if humanoidRootPart and humanoidRootPart.Parent then
										humanoidRootPart.CFrame = cFrame
									end
								end
							end
						end
					end
				end
			end
		end
	end)
end

game:GetService("Players")

do
	local currentCamera = workspace.CurrentCamera
	local tableValue14 = {}
	local tableValue15 = {}
	local isEnabled46 = false
	local cFrame = nil

	local function fn9()
		return localPlayer.Character
	end

	local function fn10()
		local value78 = fn9()
		return value78 and value78:FindFirstChild("HumanoidRootPart")
	end

	local function fn11()
		local value79 = fn9()
		return value79 and value79:FindFirstChildOfClass("Humanoid")
	end

	local function fn12()
		local value80 = fn9()
		return value80 and value80:FindFirstChild("Head")
	end

	local function fn13(arg)
		if not arg or not arg.Parent then
			return false
		end
		local isEnabled47 = false

		pcall(function()
			if fireproximityprompt then
				fireproximityprompt(arg)
				isEnabled47 = true
			end
		end)

		return isEnabled47
	end

	local function fn14(arg)
		if not arg or arg == "" then
			return false
		end
		local value81 = string.lower(arg)
		local backpack = localPlayer:FindFirstChild("Backpack")

		if backpack then
			for _, child in ipairs(backpack:GetChildren()) do
				if child:IsA("Tool") and string.lower(child.Name) == value81 then
					return true
				end
			end
		end

		local value82 = fn9()

		if value82 then
			for _, child in ipairs(value82:GetChildren()) do
				if child:IsA("Tool") and string.lower(child.Name) == value81 then
					return true
				end
			end
		end

		return false
	end

	local function fn15(arg)
		local backpack = localPlayer:FindFirstChild("Backpack")
		local value83 = fn11()
		local value84 = string.lower(arg)

		if backpack and value83 then
			for _, child in ipairs(backpack:GetChildren()) do
				if child:IsA("Tool") and string.lower(child.Name) == value84 then
					value83:EquipTool(child)
					task.wait(0.02)
					return true
				end
			end
		end

		return false
	end

	local function fn16(arg)
		local value85 = fn9()
		local value86 = fn10()
		local value87 = fn11()
		if not value85 or not value86 or not value87 then
			return false
		end
		local anchored = value86.Anchored
		value86.AssemblyLinearVelocity = Vector3.zero
		value86.AssemblyAngularVelocity = Vector3.zero
		value86.Anchored = true
		value85:PivotTo(arg)
		task.wait(0.05)
		value85:PivotTo(arg)
		value86.AssemblyLinearVelocity = Vector3.zero
		value86.AssemblyAngularVelocity = Vector3.zero
		task.wait(0.02)
		value86.Anchored = anchored
		return true
	end

	local function fn17(arg)
		if not arg or not arg.Parent then
			return false
		end
		local value88 = fn10()
		local value89 = fn12()
		if not value88 or not value89 then
			return false
		end
		local parent = arg.Parent
		local isBasePart = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart")
		if not isBasePart then
			return false
		end
		local requiresLineOfSight = arg.RequiresLineOfSight
		local holdDuration = arg.HoldDuration
		local maxActivationDistance = arg.MaxActivationDistance
		local canCollide = isBasePart.CanCollide
		arg.RequiresLineOfSight = false
		arg.MaxActivationDistance = math.huge
		isBasePart.CanCollide = false

		pcall(function()
			arg.HoldDuration = 0
		end)

		local position = isBasePart.Position
		local attachment = parent:FindFirstChildOfClass("Attachment")

		if attachment then
			position = attachment.WorldPosition
		end

		local numberValue39 = position + Vector3.new(0, 0, 2)
		local part = Instance.new("Part")
		part.Name = "AutoHealPlatform"
		part.Size = Vector3.new(5, 1, 5)
		part.Anchored = true
		part.Transparency = 1
		part.CanCollide = true
		part.CanQuery = false
		part.CanTouch = false
		part.CFrame = CFrame.new(numberValue39 + Vector3.new(0, -2, 0))
		part.Parent = workspace

		if not fn16(CFrame.new(numberValue39)) then
			part:Destroy()
			arg.RequiresLineOfSight = requiresLineOfSight
			arg.MaxActivationDistance = maxActivationDistance
			isBasePart.CanCollide = canCollide

			pcall(function()
				arg.HoldDuration = holdDuration
			end)

			return false
		end

		local value90 = fn10()

		if value90 then
			value90.AssemblyLinearVelocity = Vector3.zero
			value90.AssemblyAngularVelocity = Vector3.zero
		end

		task.wait(0.2)
		fn10()
		local value91 = fn12()

		if value91 then
			currentCamera.CameraSubject = nil
			currentCamera.CFrame = CFrame.lookAt(value91.Position, position)
		end

		task.wait(0.05)
		local value92 = fn13(arg)
		task.wait(0.1)
		local value93 = fn11()

		if value93 then
			currentCamera.CameraSubject = value93
		end

		if arg and arg.Parent then
			arg.RequiresLineOfSight = requiresLineOfSight
			arg.MaxActivationDistance = maxActivationDistance
			isBasePart.CanCollide = canCollide

			pcall(function()
				arg.HoldDuration = holdDuration
			end)
		end

		part:Destroy()
		return value92
	end

	local function fn18(arg)
		local value94 = fn10()
		local value95 = fn12()
		if not value94 or not value95 then
			return false
		end
		local prompt24 = arg:FindFirstChild("PP2")
		if not prompt24 then
			return false
		end
		local basePart = arg:FindFirstChildWhichIsA("BasePart") or arg:IsA("BasePart") and arg
		if not basePart then
			return false
		end
		local cFrame2 = basePart.CFrame
		local numberValue40 = cFrame2.Position + cFrame2.LookVector * 2
		local part = Instance.new("Part")
		part.Name = "AutoHealPlatform"
		part.Size = Vector3.new(5, 1, 5)
		part.Anchored = true
		part.Transparency = 1
		part.CanCollide = true
		part.CanQuery = false
		part.CanTouch = false
		part.CFrame = CFrame.new(numberValue40 + Vector3.new(0, -2.5, 0))
		part.Parent = workspace
		local cframe = CFrame.lookAt(numberValue40, cFrame2.Position)
		if not fn16(cframe) then
			part:Destroy()
			return false
		end
		task.wait(0.05)
		local value96 = fn10()
		local value97 = fn12()

		if value96 and value97 then
			currentCamera.CFrame = CFrame.lookAt(value97.Position, cFrame2.Position)
		end

		task.wait(0.02)
		local requiresLineOfSight = prompt24.RequiresLineOfSight
		local maxActivationDistance = prompt24.MaxActivationDistance
		local holdDuration = prompt24.HoldDuration
		prompt24.RequiresLineOfSight = false
		prompt24.MaxActivationDistance = math.huge

		pcall(function()
			prompt24.HoldDuration = 0
		end)

		local isEnabled48 = false

		for i = 1, 5 do
			if fn13(prompt24) then
				isEnabled48 = true
			end

			task.wait(0.1)
		end

		prompt24.RequiresLineOfSight = requiresLineOfSight
		prompt24.MaxActivationDistance = maxActivationDistance

		pcall(function()
			prompt24.HoldDuration = holdDuration
		end)

		part:Destroy()
		return isEnabled48
	end

	local function fn19(arg)
		local value98 = fn10()
		local value99 = fn12()
		if not value98 or not value99 then
			return false
		end

		if fn14(arg) then
			return true
		end
		local value100 = string.lower(arg)

		for _, descendant in ipairs(workspace:GetDescendants()) do
			if descendant:IsA("ProximityPrompt") then
				local value101 = string.lower(descendant.ActionText or "")

				if string.lower(descendant.ObjectText or "") == value100 or value101 == value100 or value101 == "take " .. value100 or value101 == "pick up " .. value100 then
					if not descendant.Parent then
						continue
					end
					local parent = descendant.Parent
					local isBasePart = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart")
					if not isBasePart then
						continue
					end
					local requiresLineOfSight = descendant.RequiresLineOfSight
					local maxActivationDistance = descendant.MaxActivationDistance
					local holdDuration = descendant.HoldDuration
					local canCollide = isBasePart.CanCollide
					descendant.RequiresLineOfSight = false
					descendant.MaxActivationDistance = math.huge
					isBasePart.CanCollide = false

					pcall(function()
						descendant.HoldDuration = 0
					end)

					local position = isBasePart.Position
					local attachment = parent:FindFirstChildOfClass("Attachment")

					if attachment then
						position = attachment.WorldPosition
					end

					local numberValue41 = isBasePart.CFrame.Position + isBasePart.CFrame.LookVector * 3
					local part = Instance.new("Part")
					part.Name = "AutoHealPlatform"
					part.Size = Vector3.new(5, 1, 5)
					part.Anchored = true
					part.Transparency = 1
					part.CanCollide = true
					part.CanQuery = false
					part.CanTouch = false
					part.CFrame = CFrame.new(numberValue41 + Vector3.new(0, -2.5, 0))
					part.Parent = workspace
					local cframe = CFrame.lookAt(numberValue41, position)

					if not fn16(cframe) then
						part:Destroy()
						descendant.RequiresLineOfSight = requiresLineOfSight
						descendant.MaxActivationDistance = maxActivationDistance
						isBasePart.CanCollide = canCollide

						pcall(function()
							descendant.HoldDuration = holdDuration
						end)

						continue
					end

					task.wait(0.05)
					local value102 = fn10()
					local value103 = fn12()

					if value102 and value103 then
						currentCamera.CFrame = CFrame.lookAt(value103.Position, isBasePart.Position)
					end

					local numberValue42 = 0

					while numberValue42 < 3 and not fn14(arg) do
						task.wait(0.02)
						fn13(descendant)
						task.wait(0.2)
						numberValue42 += 1
					end

					if descendant and descendant.Parent then
						descendant.RequiresLineOfSight = requiresLineOfSight
						descendant.MaxActivationDistance = maxActivationDistance
						isBasePart.CanCollide = canCollide

						pcall(function()
							descendant.HoldDuration = holdDuration
						end)
					end

					part:Destroy()
					if fn14(arg) then
						return true
					end
					return false
				end
			end
		end

		return false
	end

	local function fn20(arg)
		if not arg then
			return false
		end

		for _, child in ipairs(arg:GetChildren()) do
			if child:IsA("GuiObject") then
				local value104 = string.lower(child.Name)

				if value104 == "check" or value104 == "tick" or value104 == "checkmark" then
					if child.Visible then
						if child:IsA("ImageLabel") then
							return child.ImageTransparency < 1
						end
						return true
					end
				end
			end
		end

		return false
	end

	local function fn21(arg)
		if not arg then
			return {}
		end
		local tableValue16 = {}

		for _, child in ipairs(arg:GetChildren()) do
			if not child:IsA("UIGridLayout") and not child:IsA("UIListLayout") and not child:IsA("Folder") then
				if child.Name and child.Name ~= "" then
					if not fn20(child) then
						table.insert(tableValue16, child.Name)
					end
				end
			end
		end

		return tableValue16
	end

	local function fn22(arg)
		local prompt25 = nil

		pcall(function()
			prompt25 = workspace.Rooms.Medical[arg].Minigame.Bed.InBed.PP
		end)

		return prompt25
	end

	local function fn23(arg, arg2)
		local value105 = fn22(arg)
		if not value105 or not value105.Parent then
			return false
		end
		local parent = value105.Parent
		local isBasePart = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart")
		local requiresLineOfSight = value105.RequiresLineOfSight
		local maxActivationDistance = value105.MaxActivationDistance
		local holdDuration = value105.HoldDuration
		local canCollide = isBasePart and isBasePart.CanCollide or nil
		value105.RequiresLineOfSight = false
		value105.MaxActivationDistance = math.huge

		pcall(function()
			value105.HoldDuration = 0
		end)

		if isBasePart then
			isBasePart.CanCollide = false
		end

		fn15(arg2)
		local value106 = fn13(value105)
		value105.RequiresLineOfSight = requiresLineOfSight
		value105.MaxActivationDistance = maxActivationDistance

		pcall(function()
			value105.HoldDuration = holdDuration
		end)

		if isBasePart and canCollide ~= nil then
			isBasePart.CanCollide = canCollide
		end

		if value106 then
			local numberValue43 = 0

			while numberValue43 < 0.3 do
				if not value105 or not value105.Parent or not value105.Enabled or not fn14(arg2) then
					return true
				end
				task.wait(0.02)
				numberValue43 += 0.02
			end

			return true
		end

		return false
	end

	local function fn24(arg, arg2)
		if not arg or not arg.Parent then
			return false
		end
		local parent = arg.Parent
		local isBasePart = parent:IsA("BasePart") and parent or parent:FindFirstChildWhichIsA("BasePart")
		local parent2

		if not isBasePart then
			parent2 = parent.Parent

			while true do
				if parent2 and parent2 ~= workspace then
					if not parent2:IsA("BasePart") then
						local basePart = parent2:FindFirstChildWhichIsA("BasePart")

						if basePart then
							parent2 = basePart
							break
						else
							parent2 = parent2.Parent
							continue
						end
					end
				else
					parent2 = isBasePart
					break
				end

				break
			end
		else
			parent2 = isBasePart
		end

		if not parent2 then
			return false
		end
		local requiresLineOfSight = arg.RequiresLineOfSight
		local maxActivationDistance = arg.MaxActivationDistance
		local holdDuration = arg.HoldDuration
		local canCollide = parent2.CanCollide
		arg.RequiresLineOfSight = false
		arg.MaxActivationDistance = math.huge

		pcall(function()
			arg.HoldDuration = 0
		end)

		parent2.CanCollide = false
		local position = parent2.Position
		local attachment = parent:FindFirstChildOfClass("Attachment")

		if attachment then
			position = attachment.WorldPosition
		end

		local numberValue44 = position + Vector3.new(0, 0, 2)
		local part = Instance.new("Part")
		part.Name = "AutoHealApplyPlatform"
		part.Size = Vector3.new(5, 1, 5)
		part.Anchored = true
		part.Transparency = 1
		part.CanCollide = true
		part.CanQuery = false
		part.CanTouch = false
		part.CFrame = CFrame.new(numberValue44 + Vector3.new(0, -2, 0))
		part.Parent = workspace
		fn16(CFrame.new(numberValue44))
		local value107 = fn10()

		if value107 then
			value107.AssemblyLinearVelocity = Vector3.zero
			value107.AssemblyAngularVelocity = Vector3.zero
		end

		task.wait(0.2)
		local value108 = fn12()

		if value108 then
			currentCamera.CameraSubject = nil
			currentCamera.CFrame = CFrame.lookAt(value108.Position, position)
		end

		task.wait(0.05)
		fn15(arg2)
		local numberValue45 = os.clock() + 15
		local isEnabled49

		while true do
			isEnabled49 = false

			if not (os.clock() < numberValue45) then
				break
			else
				if not arg.Parent or not arg.Enabled then
					isEnabled49 = true
					break
				elseif fn14(arg2) then
					fn13(arg)
					task.wait(0.15)
					continue
				end

				break
			end
		end

		if arg and arg.Parent then
			arg.RequiresLineOfSight = requiresLineOfSight
			arg.MaxActivationDistance = maxActivationDistance

			pcall(function()
				arg.HoldDuration = holdDuration
			end)
		end

		if parent2 and parent2.Parent then
			parent2.CanCollide = canCollide
		end

		local value109 = fn11()

		if value109 then
			currentCamera.CameraSubject = value109
		end

		part:Destroy()
		return isEnabled49
	end

	local function fn25()
		local playerGui = localPlayer:FindFirstChild("PlayerGui")
		if not playerGui then
			return false
		end
		local notifications = playerGui:FindFirstChild("Notifications")
		if not notifications then
			return false
		end
		local notifications2 = notifications:FindFirstChild("Notifications")
		if not notifications2 then
			return false
		end
		local feed = notifications2:FindFirstChild("Feed")
		if not feed then
			return false
		end

		for _, descendant in ipairs(feed:GetDescendants()) do
			if (descendant:IsA("TextLabel") or descendant:IsA("TextButton")) and descendant.Visible then
				if string.find(string.lower(descendant.Text), "you successfully completed the surgery") then
					return true
				end
			end
		end

		return false
	end

	local function fn26(arg)
		if not arg or not arg.Parent then
			return false
		end
		local value110 = fn9()
		local value111 = fn10()
		local value112 = fn12()
		if not value110 or not value111 or not value112 then
			return false
		end
		local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChildWhichIsA("BasePart")
		if not humanoidRootPart then
			return false
		end
		local numberValue46 = humanoidRootPart.Position + Vector3.new(0, 1, 0)
		local part = Instance.new("Part")
		part.Name = "AutoHealDeliveryPlatform"
		part.Size = Vector3.new(5, 1, 5)
		part.Anchored = true
		part.Transparency = 1
		part.CanCollide = true
		part.CanQuery = false
		part.CanTouch = false
		part.CFrame = CFrame.new(numberValue46 + Vector3.new(0, -2.5, 0))
		part.Parent = workspace
		local cframe = CFrame.new(numberValue46)
		if not fn16(cframe) then
			part:Destroy()
			return false
		end
		task.wait(0.05)
		local value113 = fn10()
		local value114 = fn12()

		if value113 and value114 then
			currentCamera.CFrame = CFrame.lookAt(value114.Position, humanoidRootPart.Position)
		end

		task.wait(0.02)
		part:Destroy()
		return true
	end

	task.spawn(function()
		while task.wait(0.5) do
			if not (not isEnabled5 or isEnabled6 or isEnabled3 or isEnabled4 or isEnabled16 and fn()) then
				local npCs = workspace:FindFirstChild("NPCs")

				if npCs then
					local value115 = nil

					for _, child in ipairs(npCs:GetChildren()) do
						if child:IsA("Model") then
							local textValue3 = tostring(child:GetAttribute("DesignatedRoom") or "")

							if textValue3 == "8" or textValue3 == "Room8" then
								local ok, result = pcall(function()
									return workspace.Rooms.Emergency.Room8.Minigame.Bed.InBed.PP2.Enabled
								end)

								if ok and result then
									value115 = child
									break
								else
									value115 = nil
								end
							else
								value115 = nil
							end
						else
							value115 = nil
						end
					end

					if value115 then
						isEnabled6 = true
						isEnabled3 = true

						local function fn27()
							isEnabled6 = false
							isEnabled3 = false
						end

						local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
						local cFrame2 = nil

						if humanoidRootPart then
							cFrame2 = humanoidRootPart.CFrame
						end

						local ok, result = pcall(function()
							return workspace.Rooms.Emergency.Room8.Minigame
						end)

						if not ok or not result then
							fn27()
						else
							local bed = result:FindFirstChild("Bed")
							bed = bed and bed:FindFirstChild("InBed")
							local prompt26 = bed and bed:FindFirstChild("PP2")
							local prompt27 = nil

							pcall(function()
								prompt27 = workspace.Rooms.Emergency.Room8.Minigame.Bed.InBed.PP
							end)

							if not prompt26 or not prompt27 then
								fn27()
							else
								local numberValue47 = 0

								while (value115:GetAttribute("InBed") ~= true or not prompt26.Enabled) and numberValue47 < 25 do
									task.wait(0.1)
									numberValue47 += 0.1
								end

								if value115:GetAttribute("InBed") ~= true then
									if cFrame2 then
										fn16(cFrame2)
									end

									fn27()
								elseif not fn26(value115) then
									if cFrame2 then
										fn16(cFrame2)
									end

									fn27()
								else
									prompt26.RequiresLineOfSight = false
									prompt26.MaxActivationDistance = math.huge

									pcall(function()
										prompt26.HoldDuration = 0
									end)

									local inv = nil

									pcall(function()
										inv = result.TV.Screen.UI.Report.inv
									end)

									if not inv then
										if cFrame2 then
											fn16(cFrame2)
										end

										fn27()
									elseif isEnabled15 and fn3(value115) then
										ahProcessWrongTreatment(value115, "8", cFrame2)

										if cFrame2 then
											fn16(cFrame2)
										end

										fn27()
									else
										local numberValue48 = 0

										while numberValue48 < 10 do
											if isEnabled5 then
												if not prompt26.Enabled then
													task.wait(0.2)
													numberValue48 += 0.2
													continue
												else
													fn13(prompt26)
													task.wait(0.5)
													numberValue48 += 0.5
													if not (#fn21(inv) > 0) then
														continue
													end
												end
											end

											break
										end

										local numberValue49 = os.clock() + 120
										local value116 = nil

										while not fn25() do
											if isEnabled5 then
												if not (numberValue49 < os.clock()) then
													if not (not value115.Parent or value115:GetAttribute("InBed") ~= true) then
														local value117 = fn21(inv)

														if #value117 > 0 and value117[1] == value116 and not fn14(value116) then
															local numberValue50 = 0

															while numberValue50 < 2 do
																task.wait(0.2)
																numberValue50 += 0.2
																local value118 = fn21(inv)
																if #value118 == 0 or value118[1] ~= value116 then
																	break
																end
															end

															value116 = nil
														elseif #value117 ~= 0 then
															if #value117 == 0 then
																task.wait(0.3)
															else
																value116 = value117[1]

																if not fn19(value116) then
																	task.wait(0.5)
																	value116 = nil
																else
																	fn24(prompt27, value116)
																	task.wait(0.1)
																end
															end
														elseif prompt26.Enabled then
															fn13(prompt26)
															task.wait(0.5)
															local numberValue51 = 0

															while #fn21(inv) == 0 and numberValue51 < 5 do
																task.wait(0.2)
																numberValue51 += 0.2
															end

															value117 = fn21(inv)

															if #value117 == 0 then
																task.wait(0.3)
															else
																value116 = value117[1]

																if not fn19(value116) then
																	task.wait(0.5)
																	value116 = nil
																else
																	fn24(prompt27, value116)
																	task.wait(0.1)
																end
															end
														else
															task.wait(0.2)
														end

														continue
													end
												end
											end

											break
										end

										if cFrame2 then
											fn16(cFrame2)
										end

										fn27()
									end
								end
							end
						end
					end
				end
			end
		end
	end)

	local obj2 = setmetatable({}, { __mode = "k" })

	task.spawn(function()
		while task.wait(0.5) do
			if not (not isEnabled7 or isEnabled8 or isEnabled3 or isEnabled4 or isEnabled16 and fn()) then
				local npCs = workspace:FindFirstChild("NPCs")

				if npCs then
					local value119 = nil

					for _, child in ipairs(npCs:GetChildren()) do
						if child:IsA("Model") then
							local textValue4 = tostring(child:GetAttribute("DesignatedRoom") or "")
							if (textValue4 == "7" or textValue4 == "Room7") and child:GetAttribute("InBed") == true and not obj2[child] then
								value119 = child
								break
							end
						end
					end

					if value119 then
						isEnabled8 = true
						isEnabled3 = true
						obj2[value119] = true
						local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
						local cFrame2 = nil

						if humanoidRootPart then
							cFrame2 = humanoidRootPart.CFrame
						end

						local function fn27()
							isEnabled3 = false

							task.spawn(function()
								local numberValue52 = os.clock() + 10

								while value119 and value119.Parent and os.clock() < numberValue52 do
									task.wait(0.3)
								end

								isEnabled8 = false
							end)
						end

						local ok, result = pcall(function()
							return workspace.Rooms.Emergency.Room7.Minigame
						end)

						if not ok or not result then
							fn27()
						else
							local name = value119.Name

							local function fn28(arg, arg2)
								if not arg or not arg.Parent then
									return false
								end
								local requiresLineOfSight = arg.RequiresLineOfSight
								local maxActivationDistance = arg.MaxActivationDistance
								local holdDuration = arg.HoldDuration
								arg.RequiresLineOfSight = false
								arg.MaxActivationDistance = math.huge

								pcall(function()
									arg.HoldDuration = 0
								end)

								local numberValue53 = os.clock() + (arg2 or 15)

								while os.clock() < numberValue53 do
									if not (not arg.Parent or not arg.Enabled) then
										if arg.ActionText ~= "Apply Treatment" then
											fn13(arg)
											task.wait(0.15)
											continue
										end
									end

									break
								end

								local isEnabled50 = not arg.Parent or not arg.Enabled

								if arg and arg.Parent then
									arg.RequiresLineOfSight = requiresLineOfSight
									arg.MaxActivationDistance = maxActivationDistance

									pcall(function()
										arg.HoldDuration = holdDuration
									end)
								end

								return isEnabled50
							end

							local function fn29(arg, arg2)
								local numberValue54 = os.clock() + (arg2 or 20)

								while arg and arg.Parent and not arg.Enabled do
									if os.clock() > numberValue54 then
										return false
									end
									task.wait(0.1)
								end

								return arg and arg.Parent and arg.Enabled == true
							end

							local function fn30(arg)
								if not arg then
									return false
								end
								return fn16(CFrame.new((arg:IsA("BasePart") and arg.Position or arg:IsA("Model") and arg.PrimaryPart and arg.PrimaryPart.Position or arg:GetPivot().Position) + Vector3.new(0, 3, 0)))
							end

							local prompt28 = nil

							pcall(function()
								prompt28 = result.Bed.InBed.PP2
							end)

							if not prompt28 then
								fn27()
							else
								local humanoidRootPart2 = value119:FindFirstChild("HumanoidRootPart") or value119:FindFirstChildOfClass("BasePart")

								if not humanoidRootPart2 then
									fn27()
								elseif isEnabled15 and fn3(value119) then
									ahProcessWrongTreatment(value119, "7", cFrame2)

									if cFrame2 then
										fn16(cFrame2)
									end

									fn27()
								else
									fn16(CFrame.new(humanoidRootPart2.Position + Vector3.new(0, 3, 0)))
									task.wait(0.3)

									if not fn29(prompt28, 15) then
										fn27()
									elseif not fn28(prompt28, 20) then
										fn27()
									elseif not isEnabled7 then
										fn27()
									else
										local standIV = result:FindFirstChild("StandIV")
										local prompt29 = standIV and standIV:FindFirstChild("PP")

										if not prompt29 then
											fn27()
										else
											fn30(standIV)
											task.wait(0.3)

											if not fn29(prompt29, 15) then
												fn27()
											else
												fn28(prompt29, 20)

												if not isEnabled7 then
													fn27()
												else
													local machine = result:FindFirstChild("Machine")
													local prompt30 = machine and machine:FindFirstChild("PP")

													if not prompt30 then
														fn27()
													else
														fn30(machine)
														task.wait(0.3)

														if not fn29(prompt30, 15) then
															fn27()
														else
															fn28(prompt30, 20)

															if not isEnabled7 then
																fn27()
															else
																local heartMonitor = result:FindFirstChild("HeartMonitor")
																local prompt31 = heartMonitor and heartMonitor:FindFirstChild("PP")

																if not prompt31 then
																	fn27()
																else
																	fn30(heartMonitor)
																	task.wait(0.3)

																	if not fn29(prompt31, 15) then
																		fn27()
																	else
																		fn13(prompt31)
																		local numberValue55 = os.clock() + 15
																		local isEnabled51 = false

																		while os.clock() < numberValue55 do
																			local playerGui = localPlayer:FindFirstChild("PlayerGui")
																			local frame = playerGui and playerGui:FindFirstChild("Minigame") and playerGui.Minigame:FindFirstChild("Frame")

																			if frame then
																				for _, descendant in ipairs(frame:GetDescendants()) do
																					if descendant.Name == "Template" and descendant:IsA("GuiButton") and descendant.Visible then
																						isEnabled51 = true
																						break
																					end
																				end
																			end

																			if not isEnabled51 then
																				task.wait(0.1)
																				continue
																			end
																			break
																		end

																		if isEnabled51 then
																			local reHeartbeatMinigameComplete = nil

																			pcall(function()
																				reHeartbeatMinigameComplete = game:GetService("ReplicatedStorage").Util.Net["RE/HeartbeatMinigameComplete"]
																			end)

																			local value120 = npCs:FindFirstChild(name)

																			if reHeartbeatMinigameComplete and value120 then
																				pcall(function()
																					reHeartbeatMinigameComplete:FireServer(workspace.Rooms.Emergency.Room7, value120, heartMonitor)
																				end)
																			end
																		end

																		if not isEnabled7 then
																			fn27()
																		else
																			local monitor = result:FindFirstChild("Monitor")
																			local prompt32 = monitor and monitor:FindFirstChild("PP2")

																			if not prompt32 then
																				fn27()
																			elseif not fn29(prompt32, 25) then
																				fn27()
																			else
																				fn30(monitor)
																				task.wait(0.3)
																				fn28(prompt32, 20)

																				if not isEnabled7 then
																					fn27()
																				else
																					local numberValue56 = os.clock() + 20
																					local printedXRay = nil

																					while os.clock() < numberValue56 do
																						printedXRay = result:FindFirstChild("PrintedXRay")
																						if not printedXRay then
																							task.wait(0.2)
																							continue
																						end
																						break
																					end

																					if not printedXRay then
																						fn27()
																					else
																						local prompt33 = printedXRay:FindFirstChild("PP")

																						if not prompt33 then
																							fn27()
																						else
																							fn30(printedXRay)
																							task.wait(0.3)

																							if not fn29(prompt33, 10) then
																								fn27()
																							else
																								fn28(prompt33, 15)

																								if not isEnabled7 then
																									fn27()
																								else
																									local inv = nil

																									pcall(function()
																										inv = result.TV.Screen.UI.Report.inv
																									end)

																									if not inv then
																										fn27()
																									else
																										local numberValue57 = 0

																										while numberValue57 < 15 do
																											if not (#fn21(inv) > 0) then
																												task.wait(0.1)
																												numberValue57 += 0.1
																												continue
																											end

																											break
																										end

																										local numberValue58 = os.clock() + 60

																										while #fn21(inv) > 0 do
																											if isEnabled7 then
																												if not (numberValue58 < os.clock()) then
																													if not (not value119.Parent or value119:GetAttribute("InBed") ~= true) then
																														local value121 = fn21(inv)

																														if #value121 ~= 0 then
																															local value122 = value121[1]

																															if not fn19(value122) then
																																task.wait(0.5)
																																continue
																															elseif fn26(value119) then
																																local prompt34 = nil

																																pcall(function()
																																	prompt34 = workspace.Rooms.Emergency.Room7.Minigame.Bed.InBed.PP
																																end)

																																prompt34 = prompt34 or value119:FindFirstChild("PP") or value119:FindFirstChildOfClass("ProximityPrompt")

																																if not prompt34 then
																																	break
																																else
																																	local numberValue59 = 0

																																	while fn14(value122) and numberValue59 < 10 do
																																		fn24(prompt34, value122)
																																		task.wait(0.02)
																																		numberValue59 += 1
																																	end

																																	task.wait(0.1)
																																	continue
																																end
																															end
																														end
																													end
																												end
																											end

																											break
																										end

																										isEnabled3 = false

																										if cFrame2 then
																											fn16(cFrame2)
																										end

																										fn27()
																									end
																								end
																							end
																						end
																					end
																				end
																			end
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end)

	local vector = Vector3.new(-181.62, 3.01, 53.96)
	local numberValue60 = 2.5

	local function fn27(arg)
		if not arg or not arg.Parent then
			return false
		end
		local textValue5 = tostring(arg:GetAttribute("DesignatedRoom") or "")

		if textValue5 == "6" or textValue5 == "Room6" then
			local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart then
				return false
			end
			return (humanoidRootPart.Position - vector).Magnitude <= numberValue60
		end

		if textValue5 == "8" or textValue5 == "Room8" then
			local ok, result = pcall(function()
				return workspace.Rooms.Emergency.Room8.Minigame.Bed.InBed.PP2.Enabled
			end)

			return ok and result == true
		end

		return arg:GetAttribute("InBed") == true
	end

	local function fn28(arg, arg2)
		if not fn10() then
			return false
		end
		local textValue6 = tostring(arg:GetAttribute("DesignatedRoom") or "")
		if fn3(arg) then
			fn16(arg2)
			return false
		end

		if textValue6 ~= "6" and textValue6 ~= "Room6" and textValue6 ~= "7" and textValue6 ~= "Room7" and textValue6 ~= "8" and textValue6 ~= "Room8" then
			local prompt35 = arg:FindFirstChild("PP")
			if not prompt35 then
				fn16(arg2)
				return false
			end

			if prompt35.ActionText ~= "Take DNA Sample" then
				fn16(arg2)
				return false
			end

			if not fn17(prompt35) then
				fn16(arg2)
				return false
			end
			local numberValue61 = 0
			local isEnabled52

			while true do
				isEnabled52 = false

				if numberValue61 < 5 then
					if prompt35.ActionText ~= "Take DNA Sample" then
						isEnabled52 = true
						break
					else
						task.wait(0.1)
						numberValue61 += 0.1
					end
				else
					break
				end
			end

			if not isEnabled52 then
				fn16(arg2)
				return false
			end
		end

		if not textValue6 or textValue6 == "" then
			fn16(arg2)
			return false
		end

		if textValue6 == "6" or textValue6 == "Room6" then
			local room6 = workspace.Rooms.Emergency:FindFirstChild("Room6")
			if not room6 then
				fn16(arg2)
				return false
			end
			local minigame = room6:FindFirstChild("Minigame")
			if not minigame then
				fn16(arg2)
				return false
			end
			arg:FindFirstChild("HumanoidRootPart")
			local numberValue62 = 0

			while numberValue62 < 25 do
				local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")

				if not (humanoidRootPart and (humanoidRootPart.Position - vector).Magnitude <= numberValue60) then
					task.wait(0.1)
					numberValue62 += 0.1
					continue
				end

				break
			end

			local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart or (humanoidRootPart.Position - vector).Magnitude > numberValue60 then
				fn16(arg2)
				return false
			end
			local monitor = minigame:FindFirstChild("Monitor")
			local prompt36 = monitor and monitor:FindFirstChild("PP2")

			if prompt36 then
				local basePart = monitor:FindFirstChildWhichIsA("BasePart") or monitor:IsA("BasePart") and monitor
				basePart = basePart and basePart.CFrame

				if basePart then
					local numberValue63 = basePart.Position + basePart.LookVector * 2
					local part = Instance.new("Part")
					part.Name = "AutoHealPlatform"
					part.Size = Vector3.new(5, 1, 5)
					part.Anchored = true
					part.Transparency = 1
					part.CanCollide = true
					part.CanQuery = false
					part.CanTouch = false
					part.CFrame = CFrame.new(numberValue63 + Vector3.new(0, -2.5, 0))
					part.Parent = workspace
					local cframe = CFrame.lookAt(numberValue63, basePart.Position)

					if fn16(cframe) then
						task.wait(0.05)
						local value123 = fn10()
						local value124 = fn12()

						if value123 and value124 then
							currentCamera.CFrame = CFrame.lookAt(value124.Position, basePart.Position)
						end

						task.wait(0.02)
						prompt36.RequiresLineOfSight = false
						prompt36.MaxActivationDistance = math.huge

						pcall(function()
							prompt36.HoldDuration = 0
						end)

						local numberValue64 = os.clock() + 10

						while os.clock() < numberValue64 do
							if prompt36.Parent then
								fn13(prompt36)
								task.wait(0.2)
								continue
							end

							break
						end
					end

					part:Destroy()
				elseif not fn17(prompt36) then
					fn16(arg2)
					return false
				end
			end

			local numberValue65 = 0
			local printedXRay = nil

			while numberValue65 < 5 do
				printedXRay = minigame:FindFirstChild("PrintedXRay")

				if not printedXRay then
					task.wait(0.1)
					numberValue65 += 0.1
					continue
				end

				break
			end

			if printedXRay then
				local prompt37 = printedXRay:FindFirstChild("PP")

				if prompt37 then
					if not fn17(prompt37) then
						fn16(arg2)
						return false
					end
				end
			end

			local inv = nil

			pcall(function()
				inv = minigame.TV.Screen.UI.Report.inv
			end)

			if not inv then
				fn16(arg2)
				return false
			end
			local numberValue66 = 0

			while numberValue66 < 15 do
				if not (#fn21(inv) > 0) then
					task.wait(0.1)
					numberValue66 += 0.1
					continue
				end

				break
			end

			local numberValue67 = os.clock() + 60

			while true do
				if not (#fn21(inv) > 0) then
					fn16(arg2)
					return true
				else
					if os.clock() > numberValue67 or not arg.Parent then
						fn16(arg2)
						return false
					end
					local humanoidRootPart2 = arg:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart2 or (humanoidRootPart2.Position - vector).Magnitude > numberValue60 then
						fn16(arg2)
						return false
					end
					local value125 = fn21(inv)
					if #value125 == 0 then
						fn16(arg2)
						return true
					end
					local value126 = value125[1]
					if not fn19(value126) then
						task.wait(0.5)
						continue
					end

					if not fn26(arg) then
						fn16(arg2)
						return false
					end
					local prompt38 = arg:FindFirstChild("PP") or arg:FindFirstChildOfClass("ProximityPrompt")
					if not prompt38 then
						break
					end
					local numberValue68 = 0

					while fn14(value126) and numberValue68 < 10 do
						fn24(prompt38, value126)
						task.wait(0.02)
						numberValue68 += 1
					end

					task.wait(0.1)
				end
			end

			fn16(arg2)
			return false
		end

		if textValue6 == "7" or textValue6 == "Room7" then
			local room7 = workspace.Rooms.Emergency:FindFirstChild("Room7")
			if not room7 then
				fn16(arg2)
				return false
			end
			local minigame = room7:FindFirstChild("Minigame")
			if not minigame then
				fn16(arg2)
				return false
			end
			local monitor = minigame.Monitor and minigame.Monitor:FindFirstChild("Monitor")
			local prompt39 = monitor and monitor:FindFirstChild("PP2")
			if not prompt39 then
				fn16(arg2)
				return false
			end
			local numberValue69 = 0

			while (arg:GetAttribute("InBed") ~= true or not prompt39.Enabled) and numberValue69 < 25 do
				task.wait(0.1)
				numberValue69 += 0.1
			end

			if arg:GetAttribute("InBed") ~= true then
				fn16(arg2)
				return false
			end

			if isEnabled15 and fn3(arg) then
				ahProcessWrongTreatment(arg, "7", arg2)
				fn16(arg2)
				return true
			end

			local cFrame2 = monitor.CFrame
			local numberValue70 = cFrame2.Position + cFrame2.LookVector * 2
			local part = Instance.new("Part")
			part.Name = "AutoHealPlatform"
			part.Size = Vector3.new(5, 1, 5)
			part.Anchored = true
			part.Transparency = 1
			part.CanCollide = true
			part.CanQuery = false
			part.CanTouch = false
			part.CFrame = CFrame.new(numberValue70 + Vector3.new(0, -2.5, 0))
			part.Parent = workspace

			if fn16(CFrame.lookAt(numberValue70, cFrame2.Position)) then
				task.wait(0.05)
				local value127 = fn10()
				local value128 = fn12()

				if value127 and value128 then
					currentCamera.CFrame = CFrame.lookAt(value128.Position, cFrame2.Position)
				end

				task.wait(0.02)
				prompt39.RequiresLineOfSight = false
				prompt39.MaxActivationDistance = math.huge

				pcall(function()
					prompt39.HoldDuration = 0
				end)

				fn13(prompt39)
				task.wait(0.1)
			end

			part:Destroy()
			local numberValue71 = 0
			local printedXRay = nil

			while numberValue71 < 15 do
				printedXRay = minigame:FindFirstChild("PrintedXRay")

				if not printedXRay then
					task.wait(0.1)
					numberValue71 += 0.1
					continue
				end

				break
			end

			if not printedXRay then
				fn16(arg2)
				return false
			end
			local prompt40 = printedXRay:FindFirstChild("PP")
			if not prompt40 then
				fn16(arg2)
				return false
			end
			local cFrame3 = printedXRay:IsA("BasePart") and printedXRay.CFrame or printedXRay:GetPivot()
			local numberValue72 = cFrame3.Position + cFrame3.LookVector * 2
			local part2 = Instance.new("Part")
			part2.Name = "AutoHealPlatform"
			part2.Size = Vector3.new(5, 1, 5)
			part2.Anchored = true
			part2.Transparency = 1
			part2.CanCollide = true
			part2.CanQuery = false
			part2.CanTouch = false
			part2.CFrame = CFrame.new(numberValue72 + Vector3.new(0, -2.5, 0))
			part2.Parent = workspace

			if fn16(CFrame.lookAt(numberValue72, cFrame3.Position)) then
				task.wait(0.05)
				local value129 = fn10()
				local value130 = fn12()

				if value129 and value130 then
					currentCamera.CFrame = CFrame.lookAt(value130.Position, cFrame3.Position)
				end

				task.wait(0.02)
				prompt40.RequiresLineOfSight = false
				prompt40.MaxActivationDistance = math.huge

				pcall(function()
					prompt40.HoldDuration = 0
				end)

				fn13(prompt40)
				task.wait(0.1)
			end

			part2:Destroy()
			local inv = nil

			pcall(function()
				inv = minigame.TV.Screen.UI.Report.inv
			end)

			if not inv then
				fn16(arg2)
				return false
			end
			local numberValue73 = 0

			while numberValue73 < 15 do
				if not (#fn21(inv) > 0) then
					task.wait(0.1)
					numberValue73 += 0.1
					continue
				end

				break
			end

			local numberValue74 = os.clock() + 60

			while true do
				if not (#fn21(inv) > 0) then
					fn16(arg2)
					return true
				else
					local isEnabled53 = os.clock() > numberValue74
					local isEnabled54

					if isEnabled53 then
						isEnabled54 = isEnabled53
					else
						isEnabled54 = not arg.Parent or arg:GetAttribute("InBed") ~= true
					end

					if isEnabled54 then
						fn16(arg2)
						return false
					end
					local value131 = fn21(inv)
					if #value131 == 0 then
						fn16(arg2)
						return true
					end
					local value132 = value131[1]
					if not fn19(value132) then
						task.wait(0.5)
						continue
					end

					if not fn26(arg) then
						fn16(arg2)
						return false
					end
					local prompt41 = nil

					pcall(function()
						prompt41 = workspace.Rooms.Emergency.Room7.Minigame.Bed.InBed.PP
					end)

					prompt41 = prompt41 or arg:FindFirstChild("PP") or arg:FindFirstChildOfClass("ProximityPrompt")
					if not prompt41 then
						break
					end
					local numberValue75 = 0

					while fn14(value132) and numberValue75 < 10 do
						fn24(prompt41, value132)
						task.wait(0.02)
						numberValue75 += 1
					end

					task.wait(0.1)
				end
			end

			fn16(arg2)
			return false
		end

		if textValue6 == "8" or textValue6 == "Room8" then
			fn16(arg2)
			return false
		end
		local value133 = workspace.Rooms.Medical:FindFirstChild(textValue6)
		if not value133 then
			fn16(arg2)
			return false
		end
		local minigame = value133:FindFirstChild("Minigame")
		if not minigame then
			fn16(arg2)
			return false
		end
		local monitor = minigame:FindFirstChild("Monitor")
		if not monitor or not fn18(monitor) then
			fn16(arg2)
			return false
		end
		local inv = nil

		pcall(function()
			inv = minigame.TV.Screen.UI.Report.inv
		end)

		if not inv then
			fn16(arg2)
			return false
		end
		local numberValue76 = 0

		while numberValue76 < 15 do
			if not (#fn21(inv) > 0) then
				task.wait(0.1)
				numberValue76 += 0.1
				continue
			end

			break
		end

		local numberValue77 = os.clock() + 120

		while #fn21(inv) > 0 do
			if os.clock() > numberValue77 or not arg.Parent or arg:GetAttribute("InBed") ~= true then
				fn16(arg2)
				return false
			end
			local value134 = fn21(inv)
			if #value134 == 0 then
				break
			end
			local value135 = value134[1]

			if not fn19(value135) then
				task.wait(0.5)
			else
				local value136 = fn22(textValue6)

				if value136 then
					fn24(value136, value135)
				else
					fn23(textValue6, value135)
				end

				task.wait(0.1)
			end
		end

		fn16(arg2)
		return true
	end

	local tableValue17 = {}

	local function fn29(arg)
		return arg:GetAttribute("HealedAtleastOnce") == true
	end

	local function fn30(arg)
		if not arg or not arg.Parent then
			return
		end

		if fn3(arg) then
			return
		end

		if fn29(arg) then
			return
		end

		if not fn27(arg) then
			return
		end

		if tableValue14[arg] then
			return
		end
		local isEnabled55 = tableValue17[arg]

		if isEnabled55 then
			local value137 = tableValue17[arg]
			isEnabled55 = os.clock() < value137
		end

		if isEnabled55 then
			return
		end
		local num = tonumber(tostring(arg:GetAttribute("DesignatedRoom") or ""):match("%d+"))
		if num and num >= 6 then
			return
		end
		tableValue14[arg] = true
		table.insert(tableValue15, arg)
	end

	task.spawn(function()
		while true do
			if #tableValue15 > 0 and not isEnabled46 and flag and not isEnabled10 and not isEnabled8 and not isEnabled6 then
				if isEnabled16 and (isEnabled4 or fn()) then
					task.wait(0.1)
					continue
				end
				isEnabled46 = true
				isEnabled3 = true
				local value138 = fn10()

				if value138 and not cFrame then
					cFrame = value138.CFrame
				end

				local value139 = table.remove(tableValue15, 1)

				if value139 and value139.Parent then
					local ok, result = pcall(function()
						return fn28(value139, cFrame)
					end)

					if not ok then
						tableValue14[value139] = nil
						tableValue17[value139] = os.clock() + 3
					elseif result ~= true then
						tableValue14[value139] = nil
						tableValue17[value139] = os.clock() + 3
					end
				end

				if #tableValue15 == 0 then
					if cFrame then
						fn16(cFrame)
						cFrame = nil
					end
				end

				isEnabled46 = false
				isEnabled3 = false
			end

			task.wait(0.1)
		end
	end)

	task.spawn(function()
		local npCs = workspace:FindFirstChild("NPCs")
		if not npCs then
			return
		end

		local function fn31(arg)
			if not arg:IsA("Model") then
				return
			end
			fn30(arg)
			local textValue7 = tostring(arg:GetAttribute("DesignatedRoom") or "")

			if textValue7 ~= "8" and textValue7 ~= "Room8" then
				arg:GetAttributeChangedSignal("InBed"):Connect(function()
					if fn29(arg) then
						tableValue14[arg] = nil
						return
					end

					if fn27(arg) then
						fn30(arg)
					elseif not isEnabled46 or tableValue15[1] ~= arg then
						tableValue14[arg] = nil
					end
				end)
			end

			arg:GetAttributeChangedSignal("HealedAtleastOnce"):Connect(function()
				if fn29(arg) then
					tableValue14[arg] = true
					tableValue17[arg] = nil
				end
			end)
		end

		for _, child in ipairs(npCs:GetChildren()) do
			fn31(child)
		end

		npCs.ChildAdded:Connect(function(child)
			task.spawn(function()
				task.wait(0.5)
				if not child.Parent then
					return
				end

				if not child:IsA("Model") then
					return
				end

				if fn27(child) then
					fn31(child)
					return
				end

				for i = 1, 95 do
					task.wait(0.1)
					if not child.Parent then
						return
					end

					if fn27(child) then
						fn31(child)
						return
					end
				end
			end)
		end)

		while true do
			if flag then
				for _, child in ipairs(npCs:GetChildren()) do
					if child:IsA("Model") then
						if fn29(child) then
							continue
						end

						if fn27(child) then
							fn30(child)
							continue
						end

						if not isEnabled46 then
							local isEnabled56 = false

							for _, value140 in ipairs(tableValue15) do
								if value140 == child then
									isEnabled56 = true
									break
								end
							end

							if not isEnabled56 then
								tableValue14[child] = nil
								continue
							end
						end
					end
				end
			end

			task.wait(0.3)
		end
	end)

	local function fn31(arg, arg2)
		if not arg or not arg.Parent then
			return false
		end

		if arg:GetAttribute("HealedAtleastOnce") then
			return false
		end
		local value141

		if arg2 == "6" or arg2 == "Room6" or arg2 == "7" or arg2 == "Room7" or arg2 == "8" or arg2 == "Room8" then
			value141 = workspace.Rooms.Emergency:FindFirstChild("Room" .. arg2:match("%d+"))
		else
			value141 = workspace.Rooms.Medical:FindFirstChild("Room" .. (arg2:match("%d+") or arg2)) or workspace.Rooms.Medical:FindFirstChild(arg2)
		end

		if not value141 then
			return false
		end
		local minigame = value141:FindFirstChild("Minigame")
		if not minigame then
			return false
		end
		local inv = nil

		pcall(function()
			inv = minigame.TV.Screen.UI.Report.inv
		end)

		local numberValue78 = 0

		if inv then
			for _, child in ipairs(inv:GetChildren()) do
				if child:IsA("Frame") then
					numberValue78 += 1
				end
			end
		end

		if numberValue78 <= 0 then
			task.wait(0.4)

			if arg2 == "6" or arg2 == "Room6" then
				local monitor = minigame:FindFirstChild("Monitor")
				local monitor2 = monitor and (monitor:FindFirstChild("Monitor") or monitor:FindFirstChildWhichIsA("BasePart"))
				monitor2 = monitor2 and monitor2:FindFirstChild("PP2") or monitor and monitor:FindFirstChild("PP2")

				if monitor2 then
					fn17(monitor2)
				end

				local numberValue79 = 0
				local printedXRay = nil

				while numberValue79 < 10 do
					printedXRay = minigame:FindFirstChild("PrintedXRay")

					if not printedXRay then
						task.wait(0.1)
						numberValue79 += 0.1
						continue
					end

					break
				end

				if printedXRay then
					local prompt42 = printedXRay:FindFirstChild("PP")

					if prompt42 then
						fn17(prompt42)
					end
				end
			elseif arg2 == "7" or arg2 == "Room7" then
				local monitor = minigame.Monitor and minigame.Monitor:FindFirstChild("Monitor")
				monitor = monitor and monitor:FindFirstChild("PP2")

				if monitor then
					fn17(monitor)
				end

				local numberValue80 = 0
				local printedXRay = nil

				while numberValue80 < 15 do
					printedXRay = minigame:FindFirstChild("PrintedXRay")

					if not printedXRay then
						task.wait(0.1)
						numberValue80 += 0.1
						continue
					end

					break
				end

				if printedXRay then
					local prompt43 = printedXRay:FindFirstChild("PP")

					if prompt43 then
						fn17(prompt43)
					end
				end
			elseif arg2 == "8" or arg2 == "Room8" then
				local bed = minigame:FindFirstChild("Bed")
				bed = bed and bed:FindFirstChild("InBed")
				local prompt44 = bed and bed:FindFirstChild("PP2")

				if prompt44 then
					prompt44.RequiresLineOfSight = false
					prompt44.MaxActivationDistance = math.huge

					pcall(function()
						prompt44.HoldDuration = 0
					end)

					if not fn26(arg) then
						return false
					end
					fn13(prompt44)
					task.wait(0.1)
				end
			else
				local monitor = minigame:FindFirstChild("Monitor")

				if monitor then
					fn18(monitor)
				end
			end

			local numberValue81 = 0

			while numberValue81 < 5 do
				pcall(function()
					inv = minigame.TV.Screen.UI.Report.inv
				end)

				if inv then
					local numberValue82 = 0

					for _, child in ipairs(inv:GetChildren()) do
						if child:IsA("Frame") then
							numberValue82 += 1
						end
					end

					if not (numberValue82 > 0) then
						task.wait(0.2)
						numberValue81 += 0.2
						continue
					end
				else
					task.wait(0.2)
					numberValue81 += 0.2
					continue
				end

				break
			end
		end

		if not inv then
			return false
		end
		local value142 = fn21(inv)
		if #value142 == 0 then
			return false
		end
		local tableValue18 = {}

		for _, value143 in ipairs(value142) do
			tableValue18[value143] = true
		end

		local tableValue19 = {}

		for _, value144 in ipairs(tableValue6) do
			if not tableValue18[value144] then
				table.insert(tableValue19, value144)
			end
		end

		local value145 = nil

		if #tableValue19 > 0 then
			value145 = tableValue19[math.random(1, #tableValue19)]
		end

		if not value145 then
			return false
		end

		if not fn19(value145) then
			return false
		end
		local prompt45 = nil

		if arg2 == "6" or arg2 == "Room6" then
			prompt45 = arg:FindFirstChild("PP") or arg:FindFirstChildOfClass("ProximityPrompt")
			if not fn26(arg) then
				return false
			end
		elseif arg2 == "7" or arg2 == "Room7" then
			pcall(function()
				prompt45 = workspace.Rooms.Emergency.Room7.Minigame.Bed.InBed.PP
			end)

			if not fn26(arg) then
				return false
			end
		elseif arg2 == "8" or arg2 == "Room8" then
			pcall(function()
				prompt45 = workspace.Rooms.Emergency.Room8.Minigame.Bed.InBed.PP
			end)

			if not fn26(arg) then
				return false
			end
		else
			prompt45 = fn22(arg2)
			if not fn26(arg) then
				return false
			end
		end

		if not prompt45 then
			return false
		end
		local numberValue83 = 0

		while fn14(value145) and not fn25() and numberValue83 < 10 do
			fn24(prompt45, value145)
			task.wait(0.02)
			numberValue83 += 1
		end

		return true
	end

	task.spawn(function()
		while task.wait(0.5) do
			if isEnabled15 then
				if not (isEnabled3 or isEnabled10 or isEnabled8 or isEnabled6) then
					if not (isEnabled16 and (fn() or isEnabled4)) then
						local value146 = fn10()

						if value146 then
							local npCs = workspace:FindFirstChild("NPCs")

							if npCs then
								local isEnabled57 = false

								for _, child in ipairs(npCs:GetChildren()) do
									if not child:IsA("Model") then
										isEnabled57 = false
									elseif not fn3(child) then
										isEnabled57 = false
									elseif child:GetAttribute("HealedAtleastOnce") then
										isEnabled57 = false
									else
										local textValue8 = tostring(child:GetAttribute("DesignatedRoom") or "")

										if textValue8 == "" then
											isEnabled57 = false
										else
											local num = tonumber(textValue8:match("%d+"))

											if num then
												if num == 6 and isEnabled9 or num == 7 and isEnabled7 or num == 8 and isEnabled5 then
													isEnabled57 = false
												elseif not fn27(child) then
													isEnabled57 = false
												else
													isEnabled57 = true
													break
												end
											elseif not fn27(child) then
												isEnabled57 = false
											else
												isEnabled57 = true
												break
											end
										end
									end
								end

								if isEnabled57 then
									local cFrame2 = value146.CFrame
									isEnabled3 = true

									pcall(function()
										for _, child in ipairs(npCs:GetChildren()) do
											if not isEnabled15 then
												return
											end

											if child:IsA("Model") then
												if fn3(child) then
													if not child:GetAttribute("HealedAtleastOnce") then
														local textValue9 = tostring(child:GetAttribute("DesignatedRoom") or "")

														if textValue9 ~= "" then
															local num = tonumber(textValue9:match("%d+"))

															if num then
																local isEnabled58 = num == 6 and isEnabled9
																local isEnabled59

																if isEnabled58 then
																	isEnabled59 = isEnabled58
																else
																	isEnabled59 = num == 7 and isEnabled7
																end

																isEnabled59 = isEnabled59 or num == 8 and isEnabled5
																if isEnabled59 then
																	continue
																end
															end

															if fn27(child) then
																fn31(child, textValue9, cFrame2)
																task.wait(0.3)
															end
														end
													end
												end
											end
										end
									end)

									isEnabled3 = false
									local value147 = fn10()

									if value147 and value147.Parent then
										fn16(cFrame2)
									end
								end
							end
						end
					end
				end
			end
		end
	end)
end

do
	local function fn9(arg, arg2)
		local misc = workspace:FindFirstChild("Misc")
		if not misc then
			return nil
		end
		local shutterButton = arg:FindFirstChild("ShutterButton") or arg:FindFirstChild("Shutter")
		if shutterButton then
			return shutterButton
		end
		local textValue10 = string.match(arg2, "%d+$") or ""

		if textValue10 ~= "" then
			local value148 = misc:FindFirstChild("ShutterButton" .. textValue10) or misc:FindFirstChild("Shutter" .. textValue10)
			if value148 then
				return value148
			end
		end

		return misc:FindFirstChild("ShutterButton") or misc:FindFirstChild("Shutter")
	end

	local function fn10()
		local npCs = workspace:FindFirstChild("NPCs")
		if not npCs then
			return false
		end
		local misc = workspace:FindFirstChild("Misc")
		if not misc then
			return false
		end
		local tableValue20 = {}
		local tableValue21 = { misc:FindFirstChild("CheckIn"), "CheckIn" }
		local tableValue22 = { misc:FindFirstChild("CheckIn2"), "CheckIn2" }
		tableValue20[1] = tableValue21
		tableValue20[2] = tableValue22

		local function fn11(arg)
			if tableValue10.Sam and arg.Name == "Sam" then
				return true
			end

			if tableValue10.Barney and arg.Name == "Barney" then
				return true
			end

			if tableValue10.Anomalies and fn3(arg) then
				return true
			end
			return false
		end

		for _, child in ipairs(npCs:GetChildren()) do
			if child:IsA("Model") and child.PrimaryPart and fn11(child) then
				for _, value149 in ipairs(tableValue20) do
					local value150 = value149[1]
					local value151 = value149[2]

					if value150 then
						local bell = value150:FindFirstChild("Bell") or value150:FindFirstChild("Form")

						if bell then
							bell = bell:IsA("Model") and bell:GetPivot().Position or bell.Position
						end

						if bell and (child.PrimaryPart.Position - bell).Magnitude <= 5 then
							return true, value150, value151
						end
					end
				end
			end
		end

		return false
	end

	task.spawn(function()
		while task.wait(0.3) do
			if isEnabled17 then
				local value152, value153, value154 = fn10()

				if value152 then
					if not fn4() then
						local pivot = fn9(value153, value154)
						local prompt46 = pivot and pivot:FindFirstChild("PP")

						if pivot then
							pivot = pivot:IsA("Model") and pivot:GetPivot() or pivot.CFrame
						end

						if prompt46 and pivot then
							fn5(pivot.Position)
							task.wait(0.3)

							pcall(function()
								fireproximityprompt(prompt46)
							end)

							task.wait(0.5)
						end
					end
				elseif fn4() then
					local misc = workspace:FindFirstChild("Misc")
					misc = misc and misc:FindFirstChild("CheckIn")

					if misc then
						local checkIn = fn9(misc, "CheckIn")
						local prompt47 = checkIn and checkIn:FindFirstChild("PP")
						local pivot = checkIn and (checkIn:IsA("Model") and checkIn:GetPivot() or checkIn.CFrame)

						if prompt47 and pivot then
							fn5(pivot.Position)
							task.wait(0.3)

							pcall(function()
								fireproximityprompt(prompt47)
							end)

							task.wait(0.5)
						end
					end
				end
			end
		end
	end)
end

task.spawn(function()
	while task.wait(0.75) do
		if isEnabled34 then
			if not (isEnabled4 or isEnabled3 or isEnabled35 or isEnabled10 or isEnabled8 or isEnabled6 or isEnabled16 and fn()) then
				local npCs = workspace:FindFirstChild("NPCs")

				if npCs then
					local value155 = nil
					local humanoidRootPart = nil

					for _, child in ipairs(npCs:GetChildren()) do
						if not child:IsA("Model") then
							value155 = nil
							humanoidRootPart = nil
						elseif tbl[child.Name] then
							value155 = nil
							humanoidRootPart = nil
						elseif not child:FindFirstChild("NameTag") then
							value155 = nil
							humanoidRootPart = nil
						elseif child:GetAttribute("InBed") == true then
							value155 = nil
							humanoidRootPart = nil
						elseif child:GetAttribute("InWheelChair") == true then
							value155 = nil
							humanoidRootPart = nil
						elseif child:FindFirstChild("Bandages") then
							value155 = nil
							humanoidRootPart = nil
						else
							local isEnabled60 = obj[child]

							if isEnabled60 then
								local value156 = obj[child]
								isEnabled60 = os.clock() < value156
							end

							if isEnabled60 then
								value155 = nil
								humanoidRootPart = nil
							else
								local attribute = child:GetAttribute("DesignatedRoom")
								local isEnabled61 = typeof(attribute) == "string"
								local isEnabled62

								if isEnabled61 then
									isEnabled62 = attribute == "Room6" or attribute == "Room7" or attribute == "Room8"
								else
									isEnabled62 = isEnabled61
								end

								if isEnabled62 then
									value155 = nil
									humanoidRootPart = nil
								elseif typeof(attribute) ~= "string" or attribute == "" then
									value155 = nil
									humanoidRootPart = nil
								else
									humanoidRootPart = child:FindFirstChild("HumanoidRootPart") or child:FindFirstChildOfClass("BasePart")

									if humanoidRootPart then
										value155 = child
										break
									else
										value155 = nil
										humanoidRootPart = nil
									end
								end
							end
						end
					end

					if not (not value155 or not humanoidRootPart) then
						isEnabled35 = true
						isEnabled3 = true
						local character = localPlayer.Character
						local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
						local cFrame = humanoidRootPart2 and humanoidRootPart2.CFrame

						local function fn9()
							isEnabled35 = false
							isEnabled3 = false

							if cFrame then
								character = localPlayer.Character
								humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")

								if humanoidRootPart2 and humanoidRootPart2.Parent then
									humanoidRootPart2.CFrame = cFrame
								end
							end
						end

						local isEnabled63, isEnabled64, prompt48, enabled, numberValue84, isEnabled65, bandages, attribute, isEnabled66, isEnabled67, rooms, minigame, union, prompt49, isEnabled68, isBasePart, primaryPart, numberValue85, isEnabled69

						if not fn7() then
							if not fn8() then
								obj[value155] = os.clock() + 4
								fn9()
							else
								isEnabled63 = false

								for i = 1, 3 do
									isEnabled64 = not isEnabled34 or not value155.Parent

									if not isEnabled64 then
										if value155:GetAttribute("InWheelChair") == true then
											isEnabled63 = true
											break
										elseif fn6(humanoidRootPart, 2) then
											prompt48 = value155:FindFirstChild("PP", true)
											enabled = prompt48 and prompt48:IsA("ProximityPrompt") and prompt48.Enabled

											if enabled then
												pcall(function()
													fireproximityprompt(prompt48)
												end)
											end

											numberValue84 = 0

											while numberValue84 < 2 do
												task.wait(0.25)
												numberValue84 += 0.25

												if value155.Parent then
													if value155:GetAttribute("InWheelChair") == true then
														isEnabled63 = true
														break
													else
														continue
													end
												end

												break
											end

											if not isEnabled63 then
												continue
											end
										end
									end

									break
								end

								if not isEnabled63 then
									obj[value155] = os.clock() + 5
									fn9()
								else
									isEnabled65 = not value155.Parent
									bandages = isEnabled65 or value155:GetAttribute("InBed") == true or value155:FindFirstChild("Bandages")

									if bandages then
										fn9()
									else
										attribute = value155:GetAttribute("DesignatedRoom")
										isEnabled66 = typeof(attribute) ~= "string"
										isEnabled67 = isEnabled66 or attribute == "" or attribute == "Room6" or attribute == "Room7" or attribute == "Room8"

										if isEnabled67 then
											fn9()
										else
											rooms = workspace:FindFirstChild("Rooms")
											rooms = rooms and rooms:FindFirstChild("Medical")
											rooms = rooms and rooms:FindFirstChild(attribute)

											if not rooms then
												fn9()
											else
												minigame = rooms:FindFirstChild("Minigame")
												minigame = minigame and minigame:FindFirstChild("Bed")

												if not minigame then
													fn9()
												else
													union = minigame:FindFirstChild("Union")
													prompt49 = union and union:FindFirstChild("PP")
													isEnabled68 = not prompt49 or not prompt49:IsA("ProximityPrompt") or not prompt49.Enabled

													if isEnabled68 then
														fn9()
													else
														isBasePart = union:IsA("BasePart")
														union = isBasePart and union or minigame:FindFirstChildWhichIsA("BasePart")
														primaryPart = union or minigame.PrimaryPart

														if not primaryPart then
															fn9()
														else
															fn5(primaryPart.Position)
															task.wait(0.35)

															if prompt49.Enabled then
																pcall(function()
																	fireproximityprompt(prompt49)
																end)

																numberValue85 = 0

																while numberValue85 < 4 do
																	task.wait(0.25)
																	numberValue85 += 0.25
																	isEnabled69 = not prompt49.Enabled and value155:GetAttribute("InBed") == true
																	if not isEnabled69 then
																		continue
																	end
																	break
																end
															end

															fn9()
														end
													end
												end
											end
										end
									end
								end
							end
						else
							isEnabled63 = false

							for i = 1, 3 do
								isEnabled64 = not isEnabled34 or not value155.Parent

								if not isEnabled64 then
									if value155:GetAttribute("InWheelChair") == true then
										isEnabled63 = true
										break
									elseif fn6(humanoidRootPart, 2) then
										prompt48 = value155:FindFirstChild("PP", true)
										enabled = prompt48 and prompt48:IsA("ProximityPrompt") and prompt48.Enabled

										if enabled then
											pcall(function()
												fireproximityprompt(prompt48)
											end)
										end

										numberValue84 = 0

										while numberValue84 < 2 do
											task.wait(0.25)
											numberValue84 += 0.25

											if value155.Parent then
												if value155:GetAttribute("InWheelChair") == true then
													isEnabled63 = true
													break
												else
													continue
												end
											end

											break
										end

										if not isEnabled63 then
											continue
										end
									end
								end

								break
							end

							if not isEnabled63 then
								obj[value155] = os.clock() + 5
								fn9()
							else
								isEnabled65 = not value155.Parent
								bandages = isEnabled65 or value155:GetAttribute("InBed") == true or value155:FindFirstChild("Bandages")

								if bandages then
									fn9()
								else
									attribute = value155:GetAttribute("DesignatedRoom")
									isEnabled66 = typeof(attribute) ~= "string"
									isEnabled67 = isEnabled66 or attribute == "" or attribute == "Room6" or attribute == "Room7" or attribute == "Room8"

									if isEnabled67 then
										fn9()
									else
										rooms = workspace:FindFirstChild("Rooms")
										rooms = rooms and rooms:FindFirstChild("Medical")
										rooms = rooms and rooms:FindFirstChild(attribute)

										if not rooms then
											fn9()
										else
											minigame = rooms:FindFirstChild("Minigame")
											minigame = minigame and minigame:FindFirstChild("Bed")

											if not minigame then
												fn9()
											else
												union = minigame:FindFirstChild("Union")
												prompt49 = union and union:FindFirstChild("PP")
												isEnabled68 = not prompt49 or not prompt49:IsA("ProximityPrompt") or not prompt49.Enabled

												if isEnabled68 then
													fn9()
												else
													isBasePart = union:IsA("BasePart")
													union = isBasePart and union or minigame:FindFirstChildWhichIsA("BasePart")
													primaryPart = union or minigame.PrimaryPart

													if not primaryPart then
														fn9()
													else
														fn5(primaryPart.Position)
														task.wait(0.35)

														if prompt49.Enabled then
															pcall(function()
																fireproximityprompt(prompt49)
															end)

															numberValue85 = 0

															while numberValue85 < 4 do
																task.wait(0.25)
																numberValue85 += 0.25
																isEnabled69 = not prompt49.Enabled and value155:GetAttribute("InBed") == true
																if not isEnabled69 then
																	continue
																end
																break
															end
														end

														fn9()
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

do
	local folder = Instance.new("Folder")
	folder.Name = "AHospital_ESPHighlights"
	folder.Parent = game:GetService("CoreGui")

	local function fn9(adornee, arg, fillColor, outlineColor)
		if not adornee then
			return
		end

		if not adornee:IsA("Model") and not adornee:IsA("BasePart") then
			return
		end
		local debugId = adornee:GetDebugId()
		local value157 = folder:FindFirstChild(debugId)

		if value157 then
			value157.FillColor = fillColor
			value157.OutlineColor = outlineColor
			return
		end

		local highlight = Instance.new("Highlight")
		highlight.Name = debugId
		highlight.Adornee = adornee
		highlight.FillColor = fillColor
		highlight.OutlineColor = outlineColor
		highlight.FillTransparency = 0.35
		highlight.OutlineTransparency = 0
		highlight:SetAttribute("ESPType", arg)
		highlight.Parent = folder
	end

	local function fn10(arg)
		for _, child in ipairs(folder:GetChildren()) do
			if child:GetAttribute("ESPType") == arg then
				child:Destroy()
			end
		end
	end

	local tableValue23 = { anomaly = false, patient = false, player = false, mainCharacter = false }

	local tableValue24 = {
		anomaly = Color3.fromRGB(255, 40, 40),
		patient = Color3.fromRGB(40, 200, 255),
		player = Color3.fromRGB(255, 220, 60),
		mainCharacter = Color3.fromRGB(180, 100, 255),
	}

	value1:Colorpicker({
		Title = "Anomaly / Skinwalker Color",
		Desc = "Highlight color for anomalies and skinwalkers",
		Default = tableValue24.anomaly,
		Transparency = 0,
		Locked = false,
		Callback = function(anomaly)
			tableValue24.anomaly = anomaly
		end,
	})

	value1:Toggle({
		Title = "Anomaly / Skinwalker ESP",
		Desc = "Highlights anomalies, skinwalkers, mimics and monsters",
		Value = false,
		Callback = function(anomaly)
			tableValue23.anomaly = anomaly

			if not anomaly then
				fn10("Anomaly")
			end
		end,
	})

	value1:Divider({})

	value1:Colorpicker({
		Title = "Patient ESP Color",
		Desc = "Highlight color for normal animal patients",
		Default = tableValue24.patient,
		Transparency = 0,
		Locked = false,
		Callback = function(patient)
			tableValue24.patient = patient
		end,
	})

	value1:Toggle({
		Title = "Patient ESP",
		Desc = "Highlights normal animal patients only",
		Value = false,
		Callback = function(patient)
			tableValue23.patient = patient

			if not patient then
				fn10("Patient")
			end
		end,
	})

	value1:Divider({})

	value1:Colorpicker({
		Title = "Player ESP Color",
		Desc = "Highlight color for other players",
		Default = tableValue24.player,
		Transparency = 0,
		Locked = false,
		Callback = function(player)
			tableValue24.player = player
		end,
	})

	value1:Toggle({
		Title = "Player ESP",
		Desc = "Highlights other players in the server",
		Value = false,
		Callback = function(player)
			tableValue23.player = player

			if not player then
				fn10("Player")
			end
		end,
	})

	value1:Divider({})

	value1:Colorpicker({
		Title = "Main Character ESP Color",
		Desc = "Highlight color for Barney, Ratthew, Sam, Liz and others",
		Default = tableValue24.mainCharacter,
		Transparency = 0,
		Locked = false,
		Callback = function(mainCharacter)
			tableValue24.mainCharacter = mainCharacter
		end,
	})

	value1:Toggle({
		Title = "Main Character ESP",
		Desc = "Highlights Barney, Ratthew, Sam, Lisbeth and Ron",
		Value = false,
		Callback = function(mainCharacter)
			tableValue23.mainCharacter = mainCharacter

			if not mainCharacter then
				fn10("MainCharacter")
			end
		end,
	})

	local function fn11(arg)
		if not arg or not arg:IsA("Model") then
			return false
		end

		if not arg:FindFirstChildOfClass("Humanoid") then
			return false
		end

		if Players:GetPlayerFromCharacter(arg) then
			return false
		end

		if arg:GetAttribute("Always Patient") == true then
			return false
		end

		if fn3(arg) then
			return false
		end
		return true
	end

	local function fn12(arg)
		if not arg or not arg:IsA("Model") then
			return false
		end
		return tbl[arg.Name] == true
	end

	local function fn13(arg)
		if not arg:IsA("Model") then
			return
		end

		if arg == localPlayer.Character then
			return
		end

		if tableValue23.anomaly and fn3(arg) then
			fn9(arg, "Anomaly", tableValue24.anomaly, Color3.fromRGB(255, 255, 255))
		elseif tableValue23.patient and fn11(arg) then
			fn9(arg, "Patient", tableValue24.patient, Color3.fromRGB(255, 255, 255))
		elseif tableValue23.mainCharacter and fn12(arg) then
			fn9(arg, "MainCharacter", tableValue24.mainCharacter, Color3.fromRGB(255, 255, 255))
		end
	end

	workspace.DescendantAdded:Connect(function(descendant)
		task.defer(function()
			if descendant and descendant.Parent then
				fn13(descendant)
			end
		end)
	end)

	workspace.DescendantRemoving:Connect(function(descendant)
		if not descendant:IsA("Model") then
			return
		end
		local debugId = descendant:GetDebugId()
		local value158 = folder:FindFirstChild(debugId)

		if value158 then
			value158:Destroy()
		end
	end)

	Players.PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(function(character)
			if tableValue23.player and player ~= localPlayer then
				fn9(character, "Player", tableValue24.player, Color3.fromRGB(255, 255, 255))
			end
		end)
	end)

	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= localPlayer then
			player.CharacterAdded:Connect(function(character)
				if tableValue23.player then
					fn9(character, "Player", tableValue24.player, Color3.fromRGB(255, 255, 255))
				end
			end)
		end
	end

	local numberValue86 = 0

	RunService.Heartbeat:Connect(function(deltaTime)
		numberValue86 += deltaTime
		if numberValue86 < 1 then
			return
		end
		numberValue86 = 0

		for _, child in ipairs(folder:GetChildren()) do
			if child:IsA("Highlight") then
				local adornee = child.Adornee

				if not adornee or not adornee.Parent then
					child:Destroy()
				end
			end
		end

		if tableValue23.player then
			for _, player in ipairs(Players:GetPlayers()) do
				if player ~= localPlayer then
					local character = player.Character

					if character then
						fn9(character, "Player", tableValue24.player, Color3.fromRGB(255, 255, 255))
					end
				end
			end
		end
	end)

	task.defer(function()
		for _, descendant in ipairs(workspace:GetDescendants()) do
			fn13(descendant)
		end

		if tableValue23.player then
			for _, player in ipairs(Players:GetPlayers()) do
				if player ~= localPlayer and player.Character then
					fn9(player.Character, "Player", tableValue24.player, Color3.fromRGB(255, 255, 255))
				end
			end
		end
	end)
end

value2:Divider({ Title = "Script Version" })

value2:Paragraph({
	Title = "V.1.0.2",
	Desc = [[ll
		V.1.0.2
		+ Fixed wrong treatment interfering with other auto room _ features
		+ Auto check-in now supports 2nd check in
		+ Auto drink coffee now supports 2nd coffee machine
		+ Added Barney and Sam on auto close shutters
		+ Auto give barney is now Help Barney quest
		+ Added help Liz (Beta)
		+ Added auto buy items
		+ fixed auto taser anomaly bug
		]],
	Color = Color3.fromHex("#5BB8F5"),
	Thumbnail = "https://cdn.phototourl.com/member/2026-09-07-f5bb55a1-9410-40e1-8e42-c48a654103c5.png",
	ThumbnailSize = 200,
})

value2:Divider({ Title = "Main Developer" })

value2:Paragraph({
	Title = "qwrtyfish",
	Image = "https://cdn.phototourl.com/free/2026-09-03-c07344cc-eb62-436e-a988-19a67771811c.png",
	ImageSize = 80,
})

value2:Divider({ Title = "Contributors" })

value2:Paragraph({
	Title = "msvexon",
	Image = "https://cdn.phototourl.com/member/2026-09-03-df36608f-156c-4ca7-8abc-628aefe9d8ad.jpg",
	ImageSize = 80,
})

value2:Paragraph({
	Title = "operationcryptic",
	Image = "https://cdn.phototourl.com/free/2026-09-03-d207f210-8781-4d1f-a4f1-528ac73d85c9.png",
	ImageSize = 80,
})

value2:Paragraph({
	Title = "afkar.lol",
	Image = "https://cdn.phototourl.com/member/2026-09-03-be116fc2-e62c-4ae3-8a57-fc9e595b802b.png",
	ImageSize = 80,
})

value2:Divider({ Title = "Feedback" })

value2:Paragraph({
	Title = "Feedback",
	Desc = "Having some issues, bugs or suggestions? Send a feedback. Need assistance? Contact me on discord",
	Buttons = {
		{
			Icon = "copy",
			Title = "Copy Discord",
			Callback = function()
				setclipboard("qwrtyfish")
				lib:Notify({ Title = "Discord", Content = "Discord username copied to clipboard!", Duration = 3 })
			end,
		},
	},
})

local textValue11 = ""

value2:Input({
	Title = "Your Feedback",
	Placeholder = "Enter your feedback, bug report or suggestion...",
	Type = "Textarea",
	Callback = function(arg)
		textValue11 = arg
	end,
})

value2:Button({
	Title = "Send Feedback",
	Icon = "send",
	Callback = function()
		if textValue11 == "" or textValue11 == nil then
			lib:Notify({ Title = "Feedback", Content = "Please write something before sending!", Duration = 3 })
			return
		end
		local request_ = syn and syn.request or http and http.request or request
		local name = localPlayer.Name
		local textValue12 = "Unknown"

		if identifyexecutor then
			local ok, result = pcall(identifyexecutor)

			if ok then
				textValue12 = tostring(result)
			end
		end

		local ok, result = pcall(function()
			return request_({ Url = "https://ipapi.co/country_name/", Method = "GET" })
		end)

		local body = ok and result and result.Body
		local textValue13 = "Unknown"

		if body then
			textValue13 = result.Body:gsub("%s+", "")
		end

		local json = game:GetService("HttpService"):JSONEncode({
			embeds = {
				{
					title = "📬 New Feedback — Animal Hospital",
					color = 3447003,
					fields = {
						{ name = "🌍 Country", value = str3, inline = true },
						{ name = "👤 User", value = name, inline = true },
						{ name = "⚙️ Executor", value = str2, inline = true },
						{ name = "💬 Feedback", value = str, inline = false },
					},
					footer = { text = "Animal Hospital Script • v1.0.2" },
				},
			},
		})

		if pcall(function()
			request_({
				Url = "https://discord.com/api/webhooks/1538473211811856508/BxYvTh38t7h5aP2Qdp5KiIo_laqtxy8gWjL9t_XuhhftCt8IlmB70g30J3h_I26kfamS",
				Method = "POST",
				Headers = { ["Content-Type"] = "application/json" },
				Body = json,
			})
		end) then
			lib:Notify({ Title = "Feedback", Content = "Feedback sent successfully! Thank you.", Duration = 4 })
		else
			lib:Notify({ Title = "Feedback", Content = "Failed to send feedback. Try again later.", Duration = 4 })
		end
	end,
})

do
	local isEnabled70 = false
	local tableValue25 = {}
	value8:Divider({ Title = "1st Auto Buy Shop Priority", TitleAlignment = "Center" })

	local tableValue26 = {
		["Adv. DNA Synth"] = { "Adv. DNA Synth", "50% Faster DNA analysis", "Analyzer" },
		["Expert DNA Synth"] = { "Expert DNA Synth", "25% Faster DNA analysis" },
		["16GB RAM"] = { "16GB RAM", "33% Faster computers" },
		["32GB RAM"] = { "32GB RAM", "25% Faster computers" },
		["Faster Check-Ins"] = { "Faster Check-Ins", "Visitors check in faster" },
		["Second Check-in"] = { "Second Check-in", "Extra check in window" },
		["\"No Speaking\" Sign"] = { "No Speaking", "Faster check in" },
		["Better Printers"] = { "Better Printers", "25% Faster Printers" },
		["Max Printers"] = { "Max Printers", "20% Faster Printers" },
		["Medicine Pockets"] = { "Medicine Pockets", "+1 Carry Capacity" },
		["Medical Backpack"] = { "Medical Backpack", "+1 Carry Capacity" },
		["Special Formula"] = { "Special Formula", "Patients recover 25% faster" },
		["Special Technique"] = { "Special Technique", "Give medicine from inventory" },
		["Hospital Shoes"] = { "Hospital Shoes", "+10% NPC Speed" },
		["Hospital Shoes 2"] = { "Hospital Shoes 2", "+10% NPC Speed" },
		["Hospital Shoes 3"] = { "Hospital Shoes 3", "+12% NPC Speed" },
		["Improved Signs"] = { "Improved Signs", "Room signs show patient status" },
		["Animal Coins"] = { "Animal Coins", "1-3 Animal Coins" },
		Choco = { "Choco", "Recover 60% Sanity" },
		RunCola = { "RunCola", "Speed Boost" },
		Coffee = { "Coffee", "Recover 15% Sanity" },
		["Mint Tea"] = { "Mint Tea", "Recover Sanity over a brief period" },
		Taser = { "Taser", "Shock people (1 use)" },
		["X-Taser"] = { "X-Taser", "Shock people (3 uses)" },
		Gun = { "Gun", "Shoot people" },
		Teddy = { "Teddy", "revive 1 dead player" },
		["1UseScanner"] = { "1UseScanner", "scan a patient for anomalies" },
		["Deployable Camera"] = { "Deployable Camera", "security camera" },
		Medkit = { "Medkit" },
		["Eye Drops"] = { "Eye Drops" },
		Bandages = { "Bandages" },
		Thermo = { "Thermo" },
		Ointment = { "Ointment" },
		["IV Drops"] = { "IV Drops" },
	}

	local function fn9()
		local tableValue27 = {}

		for k in pairs(tableValue26) do
			table.insert(tableValue27, k)
		end

		table.sort(tableValue27)
		return tableValue27
	end

	local function fn10()
		local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")

		if playerGui then
			local cash = playerGui:FindFirstChild("cash", true) or playerGui:FindFirstChild("Cash", true) or playerGui:FindFirstChild("Money", true)

			if cash and cash:IsA("TextLabel") then
				local textValue14 = cash.Text:gsub("[^%d]", "")
				local num = tonumber(textValue14)
				if num then
					return num
				end
			end

			for _, descendant in ipairs(playerGui:GetDescendants()) do
				if descendant:IsA("TextLabel") and descendant.Visible and string.find(descendant.Text, "$") then
					local textValue15 = descendant.Text:gsub("[^%d]", "")
					local num = tonumber(textValue15)
					if num then
						return num
					end
				end
			end
		end

		return 0
	end

	local function fn11(arg)
		local value159 = tableValue26[arg]
		if not value159 then
			return nil, 0
		end
		local shopItems = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("ShopItems") or workspace:FindFirstChild("ShopItems", true) or workspace:FindFirstChild("Shop", true)
		if not shopItems then
			return nil, 0
		end

		for _, child in ipairs(shopItems:GetChildren()) do
			local isEnabled71 = false
			local numberValue87 = 0

			for _, descendant in ipairs(child:GetDescendants()) do
				if descendant:IsA("TextLabel") and descendant.Text ~= "" then
					local textValue16 = descendant.Text:lower()

					for _, value160 in ipairs(value159) do
						if string.find(textValue16, value160:lower(), 1, true) then
							isEnabled71 = true
							break
						end
					end

					if descendant.Name == "Cost" or string.find(descendant.Text, "$") then
						local textValue17 = descendant.Text:gsub("[^%d]", "")
						numberValue87 = tonumber(textValue17) or numberValue87
					end
				end
			end

			if isEnabled71 then
				return child, numberValue87
			end
		end

		return nil, 0
	end

	local function fn12(arg)
		if not arg then
			return false
		end

		for _, descendant in ipairs(arg:GetDescendants()) do
			if descendant:IsA("ProximityPrompt") and descendant.Enabled then
				return true
			end
		end

		return false
	end

	local function fn13()
		local tableValue28 = {}

		if type(tableValue25) == "table" then
			for k, value161 in pairs(tableValue25) do
				if type(k) == "string" and value161 == true then
					table.insert(tableValue28, k)
				elseif type(value161) == "string" then
					table.insert(tableValue28, value161)
				end
			end
		end

		return tableValue28
	end

	value8:Dropdown({
		Title = "Select Items to Auto Buy",
		Values = fn9(),
		Multi = true,
		Default = {},
		Callback = function(arg)
			tableValue25 = arg
		end,
	})

	value8:Toggle({
		Title = "Auto Buy Selected Items",
		Desc = "Buys selected items automatically when present in shop",
		Value = false,
		Callback = function(arg)
			isEnabled70 = arg
		end,
	})

	task.spawn(function()
		while task.wait(1.5) do
			if isEnabled70 then
				local value162 = fn13()

				if #value162 ~= 0 then
					local value163 = fn10()

					for _, value164 in ipairs(value162) do
						local value165, value166 = fn11(value164)

						if value165 and fn12(value165) then
							if value163 >= value166 or value166 == 0 then
								local character = localPlayer.Character
								character = character and character:FindFirstChild("HumanoidRootPart")

								if character then
									local cFrame = character.CFrame
									character.CFrame = CFrame.new(Vector3.new(-168.44, 3.46, -13.37))
									task.wait(0.3)

									for _, descendant in ipairs(value165:GetDescendants()) do
										if descendant:IsA("ProximityPrompt") and descendant.Enabled then
											descendant.RequiresLineOfSight = false
											descendant.MaxActivationDistance = 9999

											if fireproximityprompt then
												fireproximityprompt(descendant)
											else
												descendant:InputHoldBegin()
												task.wait(descendant.HoldDuration or 0.1)
												descendant:InputHoldEnd()
											end
										end
									end

									task.wait(0.5)

									if character.Parent then
										character.CFrame = cFrame
									end

									task.wait(1)
								end
							end
						end
					end
				end
			end
		end
	end)
end

do
	local isEnabled72 = false
	local tableValue29 = {}
	value8:Divider({ Title = "2nd Auto Buy Shop Priority", TitleAlignment = "Center" })

	local tableValue30 = {
		["Advanced DNA Synth"] = { "Adv. DNA Synth", "50% Faster DNA analysis", "Analyzer" },
		["Expert DNA Synth"] = { "Expert DNA Synth", "25% Faster DNA analysis" },
		["16GB RAM (Computers)"] = { "16GB RAM", "33% Faster computers" },
		["32GB RAM (Computers)"] = { "32GB RAM", "25% Faster computers" },
		["Faster Check-Ins"] = { "Faster Check-Ins", "Visitors check in faster" },
		["Second Check-in Window"] = { "Second Check-in", "Extra check in window" },
		["No Speaking Sign"] = { "No Speaking", "Faster check in" },
		["Better Printers"] = { "Better Printers", "25% Faster Printers" },
		["Max Printers"] = { "Max Printers", "20% Faster Printers" },
		["Medicine Pockets (+1)"] = { "Medicine Pockets", "+1 Carry Capacity" },
		["Medical Backpack (+1)"] = { "Medical Backpack", "+1 Carry Capacity" },
		["Special Formula (Healing)"] = { "Special Formula", "Patients recover 25% faster" },
		["Special Technique"] = { "Special Technique", "Give medicine from inventory" },
		["Hospital Shoes (Tier 1)"] = { "Hospital Shoes", "+10% NPC Speed" },
		["Hospital Shoes (Tier 2)"] = { "Hospital Shoes 2", "+10% NPC Speed" },
		["Hospital Shoes (Tier 3)"] = { "Hospital Shoes 3", "+12% NPC Speed" },
		["Improved Signs"] = { "Improved Signs", "Room signs show patient status" },
		["Animal Coins"] = { "Animal Coins", "1-3 Animal Coins" },
		["Chocolate Bar (Sanity)"] = { "Choco", "Recover 60% Sanity" },
		["Run Cola (Speed)"] = { "RunCola", "Speed Boost" },
		["Coffee (Sanity)"] = { "Coffee", "Recover 15% Sanity" },
		["Mint Tea (Sanity)"] = { "Mint Tea", "Recover Sanity over a brief period" },
		["Taser (1 Use)"] = { "Taser", "Shock people (1 use)" },
		["X-Taser (3 Uses)"] = { "X-Taser", "Shock people (3 uses)" },
		["Gun (20 Bullets)"] = { "Gun", "Shoot people" },
		["Teddy Bear (Revive)"] = { "Teddy", "revive 1 dead player" },
		["Single Use Scanner"] = { "1UseScanner", "scan a patient for anomalies" },
		["Security Camera"] = { "Deployable Camera", "security camera" },
		Medkit = { "Medkit" },
		["Eye Drops"] = { "Eye Drops" },
		Bandages = { "Bandages" },
		Thermometer = { "Thermo" },
		Ointment = { "Ointment" },
		["IV Drops"] = { "IV Drops" },
	}

	local function fn9()
		local tableValue31 = {}

		for k in pairs(tableValue30) do
			table.insert(tableValue31, k)
		end

		table.sort(tableValue31)
		return tableValue31
	end

	local function fn10()
		local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")

		if playerGui then
			local cash = playerGui:FindFirstChild("cash", true) or playerGui:FindFirstChild("Cash", true) or playerGui:FindFirstChild("Money", true)

			if cash and cash:IsA("TextLabel") then
				local textValue18 = cash.Text:gsub("[^%d]", "")
				local num = tonumber(textValue18)
				if num then
					return num
				end
			end

			for _, descendant in ipairs(playerGui:GetDescendants()) do
				if descendant:IsA("TextLabel") and descendant.Visible and string.find(descendant.Text, "$") then
					local textValue19 = descendant.Text:gsub("[^%d]", "")
					local num = tonumber(textValue19)
					if num then
						return num
					end
				end
			end
		end

		return 0
	end

	local function fn11(arg)
		local value167 = tableValue30[arg]
		if not value167 then
			return nil, 0
		end
		local shopItems = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("ShopItems")

		if not shopItems then
			shopItems = workspace:FindFirstChild("ShopItems", true) or workspace:FindFirstChild("Shop", true)
		end

		if not shopItems then
			return nil, 0
		end

		for _, child in ipairs(shopItems:GetChildren()) do
			local isEnabled73 = false
			local numberValue88 = 0

			for _, descendant in ipairs(child:GetDescendants()) do
				if descendant:IsA("TextLabel") and descendant.Text ~= "" then
					local textValue20 = descendant.Text:lower()

					for _, value168 in ipairs(value167) do
						if string.find(textValue20, value168:lower(), 1, true) then
							isEnabled73 = true
							break
						end
					end

					if descendant.Name == "Cost" or string.find(descendant.Text, "$") then
						local textValue21 = descendant.Text:gsub("[^%d]", "")
						numberValue88 = tonumber(textValue21) or numberValue88
					end
				end
			end

			if isEnabled73 then
				return child, numberValue88
			end
		end

		return nil, 0
	end

	local function fn12(arg)
		if not arg then
			return false
		end

		for _, descendant in ipairs(arg:GetDescendants()) do
			if descendant:IsA("ProximityPrompt") and descendant.Enabled then
				return true
			end
		end

		return false
	end

	local function fn13()
		local tableValue32 = {}

		if type(tableValue29) == "table" then
			for k, value169 in pairs(tableValue29) do
				if type(k) == "string" and value169 == true then
					table.insert(tableValue32, k)
				elseif type(value169) == "string" then
					table.insert(tableValue32, value169)
				end
			end
		end

		return tableValue32
	end

	value8:Dropdown({
		Title = "Select Items to Auto Buy",
		Values = fn9(),
		Multi = true,
		Default = {},
		Callback = function(arg)
			tableValue29 = arg
		end,
	})

	value8:Toggle({
		Title = "Auto Buy Selected Items",
		Desc = "Buys selected items automatically when present in shop",
		Value = false,
		Callback = function(arg)
			isEnabled72 = arg
		end,
	})

	task.spawn(function()
		while task.wait(1.5) do
			if isEnabled72 then
				local value170 = fn13()

				if #value170 ~= 0 then
					local value171 = fn10()

					for _, value172 in ipairs(value170) do
						local value173, value174 = fn11(value172)

						if value173 and fn12(value173) then
							if value171 >= value174 or value174 == 0 then
								local character = localPlayer.Character
								local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

								if humanoidRootPart then
									local cFrame = humanoidRootPart.CFrame
									humanoidRootPart.CFrame = CFrame.new(Vector3.new(-168.44, 3.46, -13.37))
									task.wait(0.3)

									for _, descendant in ipairs(value173:GetDescendants()) do
										if descendant:IsA("ProximityPrompt") and descendant.Enabled then
											descendant.RequiresLineOfSight = false
											descendant.MaxActivationDistance = 9999

											if fireproximityprompt then
												fireproximityprompt(descendant)
											else
												descendant:InputHoldBegin()
												task.wait(descendant.HoldDuration or 0.1)
												descendant:InputHoldEnd()
											end
										end
									end

									task.wait(0.5)

									if humanoidRootPart.Parent then
										humanoidRootPart.CFrame = cFrame
									end

									task.wait(1)
								end
							end
						end
					end
				end
			end
		end
	end)
end

v:Select()
