local lib = loadstring(game:HttpGet("https://sirius.menu/gen2"))()
local tbl = {}
local colorSequence = ColorSequence.new
local tbl2 = {}
local v = ColorSequenceKeypoint.new(0, Color3.fromRGB(2, 8, 14))
local v2 = ColorSequenceKeypoint.new(0.3, Color3.fromRGB(4, 30, 42))
local v3 = ColorSequenceKeypoint.new(0.65, Color3.fromRGB(5, 75, 80))
local new = ColorSequenceKeypoint.new
local color = Color3.fromRGB
tbl2[1] = v
tbl2[2] = v2
tbl2[3] = v3
tbl2[#tbl2 + 1] = new(1, color(10, 140, 100))
tbl.WindowColor = colorSequence(tbl2)
tbl.ShadowColor = Color3.fromRGB(0, 4, 8)
tbl.ContentColor = Color3.fromRGB(200, 245, 235)
tbl.TitlingColor = Color3.fromRGB(220, 255, 248)
local str = "ElementTextHoverColor"
tbl[str] = Color3.fromRGB(60, 230, 180)
tbl.ActionColor = Color3.fromRGB(30, 210, 160)
local str2 = "TabColor"
tbl[str2] = Color3.fromRGB(80, 230, 190)
local colorSequence2 = ColorSequence.new
local tbl3 = {}
local v4 = ColorSequenceKeypoint.new(0, Color3.fromRGB(3, 12, 18))
local v5 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(5, 50, 58))
local new2 = ColorSequenceKeypoint.new
local color2 = Color3.fromRGB
tbl3[1] = v4
tbl3[2] = v5
tbl3[#tbl3 + 1] = new2(1, color2(8, 110, 85))
tbl.TabBackground = colorSequence2(tbl3)
local colorSequence3 = ColorSequence.new
local tbl4 = {}
local v6 = ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 60, 70))
local v7 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(20, 140, 110))
local new3 = ColorSequenceKeypoint.new
local color3 = Color3.fromRGB
tbl4[1] = v6
tbl4[2] = v7
tbl4[#tbl4 + 1] = new3(1, color3(60, 220, 175))
tbl.TabStroke = colorSequence3(tbl4)
local str3 = "ElementGradient"
local colorSequence4 = ColorSequence.new
local tbl5 = {}
local v8 = ColorSequenceKeypoint.new(0, Color3.fromRGB(3, 12, 18))
local v9 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(5, 40, 50))
local new4 = ColorSequenceKeypoint.new
local color4 = Color3.fromRGB
tbl5[1] = v8
tbl5[2] = v9
tbl5[#tbl5 + 1] = new4(1, color4(8, 95, 72))
tbl[str3] = colorSequence4(tbl5)
tbl.ElementStroke = Color3.fromRGB(15, 110, 88)
local str4 = "ElementStrokeHover"
tbl[str4] = Color3.fromRGB(55, 220, 170)
tbl.ElementTransparency = 0
tbl.ElementStrokeTransparency = 0
tbl.AccentColor = Color3.fromRGB(20, 185, 145)
tbl.AccentStroke = Color3.fromRGB(65, 235, 185)
tbl.AccentGlow = 0.4
tbl.FieldBackground = Color3.fromRGB(4, 16, 22)
tbl.FieldTransparency = 0
tbl.FieldGlow = Color3.fromRGB(15, 140, 105)
tbl.PlaceholderColor = Color3.fromRGB(80, 145, 125)
tbl.NeutralButton = Color3.fromRGB(5, 20, 28)
tbl.NeutralButtonHover = Color3.fromRGB(8, 75, 65)
tbl.NeutralButtonStroke = Color3.fromRGB(18, 120, 95)
tbl.SliderBackground = Color3.fromRGB(5, 28, 36)
tbl.SliderBackgroundHover = Color3.fromRGB(8, 70, 62)
local colorSequence5 = ColorSequence.new
local tbl6 = {}
local v10 = ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 80, 65))
local v11 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(18, 155, 120))
local new5 = ColorSequenceKeypoint.new
local color5 = Color3.fromRGB
tbl6[1] = v10
tbl6[2] = v11
tbl6[#tbl6 + 1] = new5(1, color5(55, 225, 175))
tbl.SliderProgress = colorSequence5(tbl6)
tbl.SliderStroke = Color3.fromRGB(55, 220, 170)
tbl.SliderHandle = Color3.fromRGB(100, 240, 195)
tbl.ToggleTrack = Color3.fromRGB(5, 28, 36)
tbl.ToggleTrackTransparency = 0
tbl.ToggleKnobOff = Color3.fromRGB(20, 90, 75)
tbl.ToggleKnobOffTransparency = 0
tbl.DarkToggleOverlay = true
tbl.DropdownHighlight = Color3.fromRGB(18, 160, 120)
tbl.ErrorColor = Color3.fromRGB(220, 80, 60)
tbl.ErrorStrokeColor = Color3.fromRGB(255, 110, 85)
tbl.CornerRoundness = UDim.new(0, 8)
tbl.PillCornerRadius = UDim.new(0, 8)
tbl.ElementCornerRadius = UDim.new(0, 6)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
game:GetService("RunService")
game:GetService("VirtualUser")
local CoreGui = game:GetService("CoreGui")
game:GetService("PathfindingService")
local TweenService = game:GetService("TweenService")
local localPlayer = Players.LocalPlayer
local remotes = ReplicatedStorage:WaitForChild("Remotes")
local counterRemotes = remotes:WaitForChild("CounterRemotes")
local getCounterInfo = counterRemotes:WaitForChild("GetCounterInfo")
local assignNPC = counterRemotes:WaitForChild("AssignNPC")
remotes:WaitForChild("NPCRemotes"):WaitForChild("RunawayExitedEvent")
local buyMysteryBox = remotes:WaitForChild("MysteryBoxRemotes"):WaitForChild("BuyMysteryBox")
local shopRemotes = remotes:WaitForChild("ShopRemotes")
local buyIngredient = shopRemotes:WaitForChild("BuyIngredient")
local getShopInfo = shopRemotes:WaitForChild("GetShopInfo")
local buyFurniture = shopRemotes:WaitForChild("BuyFurniture")
local giveSoftdrink = shopRemotes:WaitForChild("GiveSoftdrink")
local redeemCode = remotes:WaitForChild("RedeemCode"):WaitForChild("RedeemCode")
local placeFurnitureEvent = remotes:WaitForChild("PlaceFurnitureEvent")
local buyTableEvent = remotes:WaitForChild("BuyTableEvent")
local hireWorker = remotes:WaitForChild("WorkerRemotes"):WaitForChild("HireWorker")
local IngredientsConfig = require(ReplicatedStorage.Modules:WaitForChild("IngredientsConfig"))
local FurnitureConfig = require(ReplicatedStorage.Modules:WaitForChild("FurnitureConfig"))
local PaintConfig = require(ReplicatedStorage.Modules:WaitForChild("PaintConfig"))
local MaterialConfig = require(ReplicatedStorage.Modules:WaitForChild("MaterialConfig"))
local ExpansionConfig = require(ReplicatedStorage.Modules:WaitForChild("ExpansionConfig"))

local tbl7 = {
	AutoPlay = false,
	AutoAssign = false,
	AutoServeCustomer = false,
	AutoCleanPlates = false,
	AutoServeDrinks = false,
	AutoHitThieves = false,
	AutoWakeWorkers = false,
	AutoCleanupTrashes = false,
	AutoBuy = false,
	AutoBuyFurniture = false,
	AutoBuyPaints = false,
	AutoBuyMaterials = false,
	AutoBuyTables = false,
	AutoChoppy = false,
	AutoOpenChoppy = false,
	AutoPlaceFurniture = false,
	AutoHireWorkers = false,
	AntiAfk = false,
	ChoppyQuantity = 1,
	SelectedIngredients = {},
	SelectedRarities = {},
	SelectedPaints = {},
	SelectedMaterials = {},
	SelectedFurniture = {},
	ESPThieves = false,
	ESPSleeping = false,
	ESPTrash = false,
	ESPPlayers = false,
}

local tbl8 = {
	Thieves = Color3.fromRGB(255, 55, 55),
	Sleeping = Color3.fromRGB(255, 200, 50),
	Trash = Color3.fromRGB(70, 220, 80),
	Players = Color3.fromRGB(0, 170, 255),
}

local tbl9 = {
	LastCash = 0,
	CashEarned = 0,
	CashSpent = 0,
	ThievesCaught = 0,
	BoxesOpened = 0,
	SessionStart = tick(),
}

local tbl10 = { "BRGYPERMIT", "100KCCU", "DECOPART1" }

local tbl11 = {
	"Top1Bat",
	"Top2Bat",
	"Top3Bat",
	"VIPPan",
	"GoldenPan",
	"GoldenSpatula",
	"Pan",
	"Hanger",
	"Dipper",
}

local function fn()
	for _, child in ipairs(Workspace:GetChildren()) do
		local flag = string.find(child.Name, "^Karenderya")

		if flag then
			local userId = localPlayer.UserId
			flag = child:GetAttribute("Owner") == userId
		end

		if flag then
			return child
		end
	end

	return nil
end

local v12 = fn

local function fn2()
	local leaderstats = localPlayer:FindFirstChild("leaderstats")
	if leaderstats and leaderstats:FindFirstChild("Cash") then
		return leaderstats.Cash.Value
	end
	return 0
end

local v13 = fn2

local function fn3(arg, arg2)
	local ingredients = localPlayer:FindFirstChild("Ingredients")
	local maxStock = arg2.MaxStock or 100
	if not ingredients then
		return 0, maxStock
	end
	local v14 = ingredients:FindFirstChild(arg)
	local n = v14 and v14.Value or 0
	local character = localPlayer.Character

	if character then
		for _, child in ipairs(character:GetChildren()) do
			if child:IsA("Accessory") and child:GetAttribute("IsSoftdrink") and (child:GetAttribute("Flavor") or arg == child.Name) then
				n += 1
			end
		end
	end

	return n, maxStock
end

local v14 = fn3

local function fn4(arg, arg2)
	local v15 = localPlayer:FindFirstChild(arg)
	if not v15 then
		return 0
	end
	local v16 = v15:FindFirstChild(arg2)
	return v16 and v16.Value or 0
end

local v15 = fn4

local function fn5(arg)
	local character = localPlayer.Character
	if not character then
		return
	end
	local backpack = localPlayer:FindFirstChildOfClass("Backpack")
	local v16 = nil

	for _, v17 in ipairs(tbl11) do
		v16 = character:FindFirstChild(v17) or backpack and backpack:FindFirstChild(v17)
		if not v16 then
			continue
		end
		break
	end

	if not v16 then
		return
	end

	if v16.Parent == backpack then
		local humanoid = character:FindFirstChildOfClass("Humanoid")

		if humanoid then
			humanoid:EquipTool(v16)
			task.wait(0.2)
		end
	end

	local v17 = character:FindFirstChild(v16.Name)
	local v18 = v17

	if v17 then
		local n = arg or 3

		for i = 1, n do
			v18:Activate()
			task.wait(0.08)
		end
	end
end

local exclude = Enum.RaycastFilterType.Exclude
RaycastParams.new().FilterType = exclude

task.spawn(function()
	while true do
		task.wait()
		local flag = v13() > 0

		if not flag then
			local sessionStart = tbl9.SessionStart
			flag = tick() - sessionStart > 5
		end

		if not flag then
			continue
		end
		break
	end

	tbl9.LastCash = v13()
end)

local folder = Instance.new("Folder", CoreGui)
folder.Name = "KarinderyaESP"

local function fn6()
	folder:ClearAllChildren()
end

local v16 = fn6

local function fn7(adornee, text, fillColor)
	if not adornee then
		return
	end
	local primaryPart = adornee:IsA("Model") and (adornee.PrimaryPart or adornee:FindFirstChild("HumanoidRootPart") or adornee:FindFirstChildWhichIsA("BasePart")) or adornee
	if not primaryPart then
		return
	end
	local highlight = Instance.new("Highlight")
	highlight.Adornee = adornee
	highlight.FillColor = fillColor
	highlight.OutlineColor = fillColor
	highlight.FillTransparency = 0.7
	highlight.OutlineTransparency = 0.15
	highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	highlight.Parent = folder
	local billboardGui = Instance.new("BillboardGui")
	billboardGui.Adornee = primaryPart
	billboardGui.Size = UDim2.new(0, 90, 0, 22)
	billboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
	billboardGui.AlwaysOnTop = true
	billboardGui.Parent = folder
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, 0, 1, 0)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = text
	textLabel.TextColor3 = fillColor
	textLabel.TextStrokeTransparency = 0.3
	textLabel.Font = Enum.Font.GothamBold
	textLabel.TextSize = 12
	textLabel.Parent = billboardGui
end

local v17 = fn7

local function fn8()
	v16()

	if tbl7.ESPThieves then
		local clientNPCs = Workspace:FindFirstChild("ClientNPCs")

		if clientNPCs then
			for _, child in ipairs(clientNPCs:GetChildren()) do
				if child:IsA("Model") and child:GetAttribute("IsRunaway") then
					v17(child, "THIEF", tbl8.Thieves)
				end
			end
		end
	end

	if tbl7.ESPSleeping then
		for _, child in ipairs(Workspace:GetChildren()) do
			if child:IsA("Model") and string.find(child.Name, "WorkerSpawn") then
				v17(child, "WORKER", tbl8.Sleeping)
			end
		end
	end

	if tbl7.ESPTrash then
		local globalTrashSpawner = Workspace:FindFirstChild("GlobalTrashSpawner")

		if globalTrashSpawner then
			for _, descendant in ipairs(globalTrashSpawner:GetDescendants()) do
				if descendant:IsA("ProximityPrompt") and descendant.Enabled then
					v17(descendant.Parent, "TRASH", tbl8.Trash)
				end
			end
		end
	end

	if tbl7.ESPPlayers then
		for _, player in ipairs(Players:GetPlayers()) do
			if player ~= localPlayer and player.Character then
				v17(player.Character, player.Name, tbl8.Players)
			end
		end
	end
end

local tbl12 = {}
local tbl13 = {}

pcall(function()
	for k, v18 in pairs(FurnitureConfig) do
		if type(v18) == "table" then
			if k == "Tables" or k == "Chairs" or k == "Stoves" then
				for k2, v19 in pairs(v18) do
					if type(v19) == "table" then
						local str5 = (v19.Name or k2) .. " [" .. k .. "]"
						tbl12[str5] = { SystemType = "Furniture", Category = k, Key = k2 }
						table.insert(tbl13, str5)
					end
				end
			else
				for k2, v19 in pairs(v18) do
					if type(v19) == "table" then
						if k2 == "Tables" or k2 == "Chairs" or k2 == "Stoves" or k2 == "Furniture" then
							for k3, v20 in pairs(v19) do
								if type(v20) == "table" then
									local str5 = (v20.Name or k3) .. " [" .. k2 .. "]"
									tbl12[str5] = { SystemType = k, Category = k2, Key = k3 }
									table.insert(tbl13, str5)
								end
							end
						end
					end
				end
			end
		end
	end
end)

table.sort(tbl13)
local tbl14 = {}

for k in pairs(IngredientsConfig) do
	table.insert(tbl14, k)
end

table.sort(tbl14)
local tbl15 = {}

for k in pairs(PaintConfig) do
	table.insert(tbl15, k)
end

table.sort(tbl15)
local tbl16 = {}

for k in pairs(MaterialConfig) do
	table.insert(tbl16, k)
end

table.sort(tbl16)
local placeId = game.PlaceId
local name = game:GetService("MarketplaceService"):GetProductInfo(placeId).Name

local v18 = lib:CreateWindow({
	name = "Nauru Hub",
	subtitle = "Managed By Luna",
	sidebarLayout = true,
	theme = tbl,
	icon = "rbxassetid://118415481943025",
	showIcon = "rbxassetid://118415481943025",
	showIconOnly = true,
	configuration = { autoSave = true, autoLoad = true, fileName = "NauruHub" },
})

v18:SetProfile(name)
v18:CreateSection({ name = "Karinderya" })
local v19 = v18:CreateTab({ name = "Main", icon = 93364949241311 })
local v20 = v18:CreateTab({ name = "Shop", icon = 93364949241311 })
local v21 = v18:CreateTab({ name = "ESP", icon = 93364949241311 })
local v22 = v18:CreateTab({ name = "Stats", icon = 93364949241311 })
local v23 = nil
local v24 = nil
local v25 = nil
local v26 = nil
local v27 = nil
local v28 = nil
v19:CreateSection({ name = "Auto Play" })

v19:CreateToggle({
	name = "Auto Play",
	description = "Enables all core automation at once",
	flag = "AutoPlay",
	callback = function(autoPlay)
		tbl7.AutoPlay = autoPlay

		local tbl17 = {
			{ toggle = v23, flag = "AutoAssign" },
			{ toggle = v24, flag = "AutoServeCustomer" },
			{ toggle = v25, flag = "AutoCleanPlates" },
			{ toggle = v26, flag = "AutoServeDrinks" },
			{ toggle = v27, flag = "AutoHitThieves" },
			{ toggle = "AntiAfk", flag = "AntiAfk" },
		}

		local n = nil
		local exitTo4 = nil
		local v29

		while true do
			if n then
				exitTo4 = 1
				break
			else
				if tbl17[1] ~= nil then
					n = 1
					v29 = tbl17[1]
					tbl7[v29.flag] = autoPlay

					if v29.toggle then
						v29.toggle:Set(autoPlay, true)

						if autoPlay then
							v29.toggle:Lock("Controlled by Auto Play")
						else
							v29.toggle:Unlock()
						end
					end

					continue
				end

				break
			end
		end

		if exitTo4 == 1 then
			if tbl17[n + 1] ~= nil then
				n += 1
				v29 = tbl17[n + 1]
				local exitTo5 = nil

				while true do
					tbl7[v29.flag] = autoPlay

					if v29.toggle then
						v29.toggle:Set(autoPlay, true)

						if autoPlay then
							v29.toggle:Lock("Controlled by Auto Play")
							local exitTo = nil

							while true do
								if n then
									exitTo = 1
									break
								else
									if tbl17[1] ~= nil then
										n = 1
										v29 = tbl17[1]
										tbl7[v29.flag] = autoPlay

										if v29.toggle then
											v29.toggle:Set(autoPlay, true)

											if autoPlay then
												v29.toggle:Lock("Controlled by Auto Play")
											else
												v29.toggle:Unlock()
											end
										end

										continue
									end

									break
								end
							end

							if exitTo == 1 then
								if tbl17[n + 1] ~= nil then
									n += 1
									v29 = tbl17[n + 1]
								else
									exitTo5 = 5
									break
								end
							else
								exitTo5 = 4
								break
							end
						else
							v29.toggle:Unlock()
							local exitTo2 = nil

							while true do
								if n then
									exitTo2 = 1
									break
								else
									if tbl17[1] ~= nil then
										n = 1
										v29 = tbl17[1]
										tbl7[v29.flag] = autoPlay

										if v29.toggle then
											v29.toggle:Set(autoPlay, true)

											if autoPlay then
												v29.toggle:Lock("Controlled by Auto Play")
											else
												v29.toggle:Unlock()
											end
										end

										continue
									end

									break
								end
							end

							if exitTo2 == 1 then
								if tbl17[n + 1] ~= nil then
									n += 1
									v29 = tbl17[n + 1]
								else
									exitTo5 = 3
									break
								end
							else
								exitTo5 = 2
								break
							end
						end
					else
						local exitTo3 = nil

						while true do
							if n then
								exitTo3 = 1
								break
							else
								if tbl17[1] ~= nil then
									n = 1
									v29 = tbl17[1]
									tbl7[v29.flag] = autoPlay

									if v29.toggle then
										v29.toggle:Set(autoPlay, true)

										if autoPlay then
											v29.toggle:Lock("Controlled by Auto Play")
										else
											v29.toggle:Unlock()
										end
									end

									continue
								end

								break
							end
						end

						if exitTo3 == 1 then
							if tbl17[n + 1] ~= nil then
								n += 1
								v29 = tbl17[n + 1]
								continue
							else
								exitTo5 = 1
								break
							end
						end

						break
					end
				end

				if exitTo5 == 1 then
					if not nil then
					end
				elseif exitTo5 == 2 then
					if not nil then
					end
				elseif exitTo5 == 3 then
					if not nil then
					end
				elseif exitTo5 == 4 then
					if not nil then
					end
				elseif exitTo5 == 5 then
					if not nil then
					end
				elseif not nil then
				end
			elseif not nil then
			end
		elseif not nil then
		end
	end,
})

v28 = v19:CreateToggle({
	name = "Anti-AFK",
	flag = "AntiAfk",
	callback = function(antiAfk)
		tbl7.AntiAfk = antiAfk
	end,
})

v19:CreateSection({ name = "Karinderya" })

v23 = v19:CreateToggle({
	name = "Auto Assign Customers",
	flag = "AutoAssign",
	callback = function(autoAssign)
		tbl7.AutoAssign = autoAssign
	end,
})

v24 = v19:CreateToggle({
	name = "Auto Serve Customer",
	flag = "AutoServeCustomer",
	callback = function(autoServeCustomer)
		tbl7.AutoServeCustomer = autoServeCustomer
	end,
})

v25 = v19:CreateToggle({
	name = "Auto Clean Plates",
	flag = "AutoCleanPlates",
	callback = function(autoCleanPlates)
		tbl7.AutoCleanPlates = autoCleanPlates
	end,
})

v26 = v19:CreateToggle({
	name = "Auto Serve Drinks",
	flag = "AutoServeDrinks",
	callback = function(autoServeDrinks)
		tbl7.AutoServeDrinks = autoServeDrinks
	end,
})

v19:CreateSection({ name = "Others" })

v27 = v19:CreateToggle({
	name = "Auto Hit Thieves",
	flag = "AutoHitThieves",
	callback = function(autoHitThieves)
		tbl7.AutoHitThieves = autoHitThieves
	end,
})

v19:CreateToggle({
	name = "Auto Wake-up Workers",
	flag = "AutoWakeWorkers",
	callback = function(autoWakeWorkers)
		tbl7.AutoWakeWorkers = autoWakeWorkers
	end,
})

v19:CreateToggle({
	name = "Auto Cleanup Trashes",
	flag = "AutoCleanupTrashes",
	callback = function(autoCleanupTrashes)
		tbl7.AutoCleanupTrashes = autoCleanupTrashes
	end,
})

v19:CreateDivider()

v19:CreateToggle({
	name = "Auto Place Chair & Table",
	flag = "AutoPlaceFurniture",
	callback = function(autoPlaceFurniture)
		tbl7.AutoPlaceFurniture = autoPlaceFurniture
	end,
})

v19:CreateToggle({
	name = "Auto Buy Tables (Plot)",
	flag = "AutoBuyTables",
	callback = function(autoBuyTables)
		tbl7.AutoBuyTables = autoBuyTables
	end,
})

v19:CreateSection({ name = "Choppy" })

v19:CreateSlider({
	name = "Choppy Quantity",
	range = { 1, 5 },
	increment = 1,
	currentValue = 1,
	flag = "ChoppyQuantity",
	callback = function(choppyQuantity)
		tbl7.ChoppyQuantity = choppyQuantity
	end,
})

v19:CreateToggle({
	name = "Auto Order Choppy",
	flag = "AutoChoppy",
	callback = function(autoChoppy)
		tbl7.AutoChoppy = autoChoppy
	end,
})

v19:CreateToggle({
	name = "Auto Open Choppy",
	flag = "AutoOpenChoppy",
	callback = function(autoOpenChoppy)
		tbl7.AutoOpenChoppy = autoOpenChoppy
	end,
})

v19:CreateSection({ name = "Workers" })

v19:CreateDropdown({
	name = "Select Rarities to Hire",
	options = { "Common", "Uncommon", "Rare", "Epic", "Steamer" },
	multiSelect = true,
	flag = "SelectedRarities",
	callback = function(arg)
		tbl7.SelectedRarities = {}

		for _, v29 in ipairs(arg) do
			tbl7.SelectedRarities[v29] = true
		end
	end,
})

v19:CreateToggle({
	name = "Auto Hire Workers",
	flag = "AutoHireWorkers",
	callback = function(autoHireWorkers)
		tbl7.AutoHireWorkers = autoHireWorkers
	end,
})

v20:CreateSection({ name = "Grocery" })

v20:CreateDropdown({
	name = "Select Ingredients",
	options = tbl14,
	multiSelect = true,
	flag = "SelectedIngredients",
	callback = function(arg)
		tbl7.SelectedIngredients = {}

		for _, v29 in ipairs(arg) do
			tbl7.SelectedIngredients[v29] = true
		end
	end,
})

v20:CreateToggle({
	name = "Auto Buy Ingredients",
	flag = "AutoBuy",
	callback = function(autoBuy)
		tbl7.AutoBuy = autoBuy
	end,
})

local v29 = v20:CreateText({ name = "Ingredient Stock", text = "Loading..." })
v20:CreateSection({ name = "Shop Items" })

v20:CreateDropdown({
	name = "Select Paints",
	options = tbl15,
	multiSelect = true,
	flag = "SelectedPaints",
	callback = function(arg)
		tbl7.SelectedPaints = {}

		for _, v30 in ipairs(arg) do
			tbl7.SelectedPaints[v30] = true
		end
	end,
})

v20:CreateToggle({
	name = "Auto Buy Paints",
	flag = "AutoBuyPaints",
	callback = function(autoBuyPaints)
		tbl7.AutoBuyPaints = autoBuyPaints
	end,
})

v20:CreateDivider()

v20:CreateDropdown({
	name = "Select Materials",
	options = tbl16,
	multiSelect = true,
	flag = "SelectedMaterials",
	callback = function(arg)
		tbl7.SelectedMaterials = {}

		for _, v30 in ipairs(arg) do
			tbl7.SelectedMaterials[v30] = true
		end
	end,
})

v20:CreateToggle({
	name = "Auto Buy Materials",
	flag = "AutoBuyMaterials",
	callback = function(autoBuyMaterials)
		tbl7.AutoBuyMaterials = autoBuyMaterials
	end,
})

v20:CreateDivider()

v20:CreateDropdown({
	name = "Select Furniture",
	options = tbl13,
	multiSelect = true,
	flag = "SelectedFurniture",
	callback = function(arg)
		tbl7.SelectedFurniture = {}

		for _, v30 in ipairs(arg) do
			tbl7.SelectedFurniture[v30] = true
		end
	end,
})

v20:CreateToggle({
	name = "Auto Buy Furniture",
	flag = "AutoBuyFurniture",
	callback = function(autoBuyFurniture)
		tbl7.AutoBuyFurniture = autoBuyFurniture
	end,
})

v20:CreateDivider()
local v30 = v20:CreateText({ name = "Paints Stock", text = "None" })
local v31 = v20:CreateText({ name = "Materials Stock", text = "None" })
local v32 = v20:CreateText({ name = "Furniture Stock", text = "None" })
v21:CreateSection({ name = "ESP Settings" })

v21:CreateToggle({
	name = "Thieves ESP",
	flag = "ESPThieves",
	callback = function(espThieves)
		tbl7.ESPThieves = espThieves
	end,
})

v21:CreateColorPicker({
	name = "Thieves Color",
	flag = "ESPThievesColor",
	currentColor = Color3.fromRGB(255, 55, 55),
	callback = function(thieves)
		tbl8.Thieves = thieves
	end,
})

v21:CreateDivider()

v21:CreateToggle({
	name = "Workers ESP",
	flag = "ESPSleeping",
	callback = function(espSleeping)
		tbl7.ESPSleeping = espSleeping
	end,
})

v21:CreateColorPicker({
	name = "Workers Color",
	flag = "ESPSleepingColor",
	currentColor = Color3.fromRGB(255, 200, 50),
	callback = function(sleeping)
		tbl8.Sleeping = sleeping
	end,
})

v21:CreateDivider()

v21:CreateToggle({
	name = "Trash ESP",
	flag = "ESPTrash",
	callback = function(espTrash)
		tbl7.ESPTrash = espTrash
	end,
})

v21:CreateColorPicker({
	name = "Trash Color",
	flag = "ESPTrashColor",
	currentColor = Color3.fromRGB(70, 220, 80),
	callback = function(trash)
		tbl8.Trash = trash
	end,
})

v21:CreateDivider()

v21:CreateToggle({
	name = "Players ESP",
	flag = "ESPPlayers",
	callback = function(espPlayers)
		tbl7.ESPPlayers = espPlayers
	end,
})

v21:CreateColorPicker({
	name = "Players Color",
	flag = "ESPPlayersColor",
	currentColor = Color3.fromRGB(0, 170, 255),
	callback = function(players)
		tbl8.Players = players
	end,
})

v22:CreateSection({ name = "Live Stats" })
local v33 = v22:CreateStat({ name = "Current Cash" })
local v34 = v22:CreateStat({ name = "Cash Earned" })
local v35 = v22:CreateStat({ name = "Cash Spent" })
local v36 = v22:CreateStat({ name = "Thieves Caught" })
local v37 = v22:CreateStat({ name = "Boxes Opened" })
local v38 = v22:CreateStat({ name = "Uptime (min)" })

v22:CreateButton({
	name = "Reset Stats",
	callback = function()
		tbl9.LastCash = v13()
		tbl9.CashEarned = 0
		tbl9.CashSpent = 0
		tbl9.ThievesCaught = 0
		tbl9.BoxesOpened = 0
		tbl9.SessionStart = tick()
		v18:Notify({ title = "Nauru Hub", content = "Stats reset!", duration = 2 })
	end,
})

v22:CreateSection({ name = "Codes" })

v22:CreateButton({
	name = "Redeem All Codes",
	callback = function()
		task.spawn(function()
			for _, v39 in ipairs(tbl10) do
				pcall(function()
					redeemCode:FireServer(v39)
				end)

				v18:Notify({ title = "Nauru Hub", content = "Redeemed: " .. v39, duration = 1.4 })
				task.wait(2)
			end

			v18:Notify({ title = "Nauru Hub", content = "All codes tried!", duration = 3 })
		end)
	end,
}):Lock("Expired")

for _, v39 in ipairs(tbl10) do
	v22:CreateButton({
		name = v39,
		callback = function()
			pcall(function()
				redeemCode:FireServer(v39)
			end)

			v18:Notify({ title = "Nauru Hub", content = "Redeemed: " .. v39, duration = 2 })
		end,
	}):Lock("Expired")
end

task.spawn(function()
	while task.wait(0.5) do
		pcall(function()
			local v39 = v13()
			local n = v39 - tbl9.LastCash

			if n > 0 then
				tbl9.CashEarned = tbl9.CashEarned + n
			elseif n < 0 then
				tbl9.CashSpent = tbl9.CashSpent + math.abs(n)
			end

			tbl9.LastCash = v39
			local sessionStart = tbl9.SessionStart
			local n2 = math.floor(tick() - sessionStart)
			v33:Set(v39)
			v34:Set(tbl9.CashEarned)
			v35:Set(tbl9.CashSpent)
			v36:Set(tbl9.ThievesCaught)
			v37:Set(tbl9.BoxesOpened)
			v38:Set(math.floor(n2 / 60))
		end)
	end
end)

task.spawn(function()
	while task.wait(0.6) do
		pcall(function()
			local tbl17 = {}

			for _, v39 in ipairs(tbl14) do
				local v40 = IngredientsConfig[v39]

				if v40 then
					local v41, v42 = v14(v39, v40)
					table.insert(tbl17, (v40.Name or v39) .. ": " .. v41 .. " / " .. v42)
				end
			end

			v29:Set(table.concat(tbl17, "\n"))
		end)
	end
end)

task.spawn(function()
	while task.wait(1) do
		pcall(function()
			local tbl17 = {}

			for k, v39 in pairs(PaintConfig) do
				local Paints = v15("Paints", k)

				if Paints > 0 then
					table.insert(tbl17, (v39.Name or k) .. ": " .. Paints)
				end
			end

			v30:Set(#tbl17 > 0 and table.concat(tbl17, "\n") or "None")
			local tbl18 = {}

			for k, v39 in pairs(MaterialConfig) do
				local Materials = v15("Materials", k)

				if Materials > 0 then
					table.insert(tbl18, (v39.Name or k) .. ": " .. Materials)
				end
			end

			local set = v31.Set
			local v39 = v31
			local n = #tbl18
			set(v39, (n or n) > 0 and table.concat(tbl18, "\n") or "None")
			local tbl19 = {}
			local furnitureInventory = localPlayer:FindFirstChild("FurnitureInventory")

			if furnitureInventory then
				for _, child in ipairs(furnitureInventory:GetChildren()) do
					if child.Value > 0 then
						table.insert(tbl19, child.Name .. ": " .. child.Value)
					end
				end
			end

			v32:Set(#tbl19 > 0 and table.concat(tbl19, "\n") or "None")
		end)
	end
end)

local spawn = task.spawn

local function fn9()
	while task.wait(0.5) do
		if tbl7.AutoServeDrinks then
			pcall(function()
				local v39 = v12()

				if v39 then
					local v40 = v39

					for _, v41 in ipairs(ExpansionConfig.Chiller.PlotPath) do
						v40 = v40 and v40:FindFirstChild(v41)
					end

					if v40 then
						local promptPart = v40:FindFirstChild("PromptPart")
						local give = promptPart and (promptPart:FindFirstChild("Give") or promptPart:FindFirstChild("Get") or promptPart:FindFirstChildOfClass("ProximityPrompt"))

						if give then
							give.MaxActivationDistance = 9999
							give.RequiresLineOfSight = false
							local tbl17 = { "Kola", "Suprise", "Loyal" }
							local n = nil

							while true do
								local v41

								if n then
									if tbl17[n + 1] ~= nil then
										n += 1
										v41 = tbl17[n + 1]

										pcall(function()
											giveSoftdrink:InvokeServer(v41)
										end)

										task.wait(0.2)
										continue
									end

									break
								else
									if tbl17[1] ~= nil then
										n = 1
										v41 = tbl17[1]

										pcall(function()
											giveSoftdrink:InvokeServer(v41)
										end)

										task.wait(0.2)
										continue
									end

									break
								end
							end
						end
					end
				end
			end)
		end
	end
end

spawn(fn9)
local str5 = nil
local tbl17 = {}

local function fn10(arg)
	if tbl17[arg] then
		return
	end
	tbl17[arg] = true

	task.spawn(function()
		local vector = Vector3.new(0, 3, 0)
		local tweenInfo = TweenInfo.new(0.12, Enum.EasingStyle.Linear)

		while tbl7.AutoHitThieves and arg and arg.Parent do
			pcall(function()
				local primaryPart = arg.PrimaryPart or arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChildWhichIsA("BasePart")
				if not primaryPart then
					return
				end
				local character = localPlayer.Character
				if not character then
					return
				end
				local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart then
					return
				end
				str5 = "thieves"
				local tween = TweenService:Create(humanoidRootPart, tweenInfo, { CFrame = CFrame.new(primaryPart.Position + vector) })
				tween:Play()
				tween.Completed:Wait()
				fn5(3)
			end)

			task.wait(0.08)
		end

		tbl9.ThievesCaught = tbl9.ThievesCaught + 1

		if str5 == "thieves" then
			str5 = nil
		end

		tbl17[arg] = nil
	end)
end

task.spawn(function()
	while task.wait(0.25) do
		if tbl7.AutoHitThieves then
			pcall(function()
				local clientNPCs = Workspace:FindFirstChild("ClientNPCs")
				if not clientNPCs then
					return
				end

				for _, child in ipairs(clientNPCs:GetChildren()) do
					if child:IsA("Model") and child:GetAttribute("IsRunaway") then
						fn10(child)
					end
				end
			end)
		else
			if str5 == "thieves" then
				str5 = nil
			end

			table.clear(tbl17)
		end
	end
end)

task.spawn(function()
	while task.wait(0.3) do
		if tbl7.AutoWakeWorkers then
			pcall(function()
				for _, v39 in ipairs({ Workspace, Workspace:FindFirstChild("ClientNPCs") }) do
					if v39 then
						for _, child in ipairs(v39:GetChildren()) do
							if child:IsA("Model") and child:GetAttribute("IsSleeping") == true then
								local humanoidRootPart = child:FindFirstChild("HumanoidRootPart") or child.PrimaryPart

								if humanoidRootPart then
									local character = localPlayer.Character

									if character then
										local humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")

										if humanoidRootPart2 then
											humanoidRootPart2.CFrame = CFrame.new(humanoidRootPart.Position + Vector3.new(0, 3, 0))
											task.wait(0.1)

											if (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude < 8 then
												fn5(5)
											end

											task.wait(0.5)
										end
									end
								end
							end
						end
					end
				end
			end)
		end
	end
end)

task.spawn(function()
	while task.wait(0.5) do
		if tbl7.AutoCleanupTrashes then
			pcall(function()
				local globalTrashSpawner = Workspace:FindFirstChild("GlobalTrashSpawner")

				if globalTrashSpawner then
					for _, descendant in ipairs(globalTrashSpawner:GetDescendants()) do
						if descendant:IsA("ProximityPrompt") and descendant.Enabled then
							local parent = descendant.Parent
							local character = localPlayer.Character

							if character and character:FindFirstChild("HumanoidRootPart") then
								local humanoidRootPart = character.HumanoidRootPart
								local position = nil

								if parent:IsA("BasePart") then
									position = parent.Position
								elseif parent:IsA("Model") and (parent.PrimaryPart or parent:FindFirstChild("HumanoidRootPart")) then
									position = (parent.PrimaryPart or parent:FindFirstChild("HumanoidRootPart")).Position
								end

								if position then
									humanoidRootPart.CFrame = CFrame.new(position + Vector3.new(0, 3, 0))
									fireproximityprompt(descendant)
									task.wait(0.05)
									fireproximityprompt(descendant)
									task.wait(0.2)
								end
							end
						end
					end
				end
			end)
		end
	end
end)

task.spawn(function()
	while task.wait(50) do
		if tbl7.AntiAfk then
			pcall(function()
				local VirtualUser = game:GetService("VirtualUser")
				local cFrame = workspace.CurrentCamera.CFrame
				VirtualUser:Button1Down(Vector2.new(0, 0), cFrame)
				task.wait(0.1)
				local cFrame2 = workspace.CurrentCamera.CFrame
				VirtualUser:Button1Up(Vector2.new(0, 0), cFrame2)
			end)
		end
	end
end)

task.spawn(function()
	while task.wait(0.9) do
		pcall(fn8)
	end
end)

task.spawn(function()
	while task.wait(0.5) do
		if tbl7.AutoBuy then
			pcall(function()
				for k, selectedIngredient in pairs(tbl7.SelectedIngredients) do
					if selectedIngredient then
						local v39 = IngredientsConfig[k]

						if v39 then
							local v40, v41 = v14(k, v39)
							local n = v41 - v40

							if n > 0 then
								local n2 = math.min(math.max(1, math.ceil(n / (v39.YieldAmount or 1))), math.floor(v13() / math.max(1, v39.Cost or 1)))

								if n2 > 0 then
									buyIngredient:InvokeServer(k, n2, "Cash")
									task.wait(0.25)
								end
							end
						end
					end
				end
			end)
		end
	end
end)

task.spawn(function()
	while task.wait(1.4) do
		if tbl7.AutoBuyFurniture or tbl7.AutoBuyPaints or tbl7.AutoBuyMaterials then
			pcall(function()
				local response = getShopInfo:InvokeServer()
				if type(response) ~= "table" then
					return
				end

				local function fn11(arg, arg2)
					if type(response[arg]) ~= "table" then
						return
					end

					for _, v39 in ipairs(response[arg]) do
						if (v39.Stock or 0) > 0 then
							local flag = true

							if arg2 then
								if arg == "Paints" and next(tbl7.SelectedPaints) then
									flag = tbl7.SelectedPaints[v39.Key] == true
								elseif arg == "Materials" and next(tbl7.SelectedMaterials) then
									flag = tbl7.SelectedMaterials[v39.Key] == true
								end
							end

							if flag then
								pcall(function()
									buyFurniture:InvokeServer(v39.SystemType, v39.Category, v39.Key)
								end)

								task.wait(0.4)
							end
						end
					end
				end

				if tbl7.AutoBuyFurniture then
					if next(tbl7.SelectedFurniture) then
						for k, v39 in pairs(tbl7.SelectedFurniture) do
							if v39 then
								local v40 = tbl12[k]

								if v40 then
									pcall(function()
										buyFurniture:InvokeServer(v40.SystemType, v40.Category, v40.Key)
									end)

									task.wait(0.4)
								end
							end
						end
					else
						fn11("Tables", false)
						fn11("Chairs", false)
						fn11("Stoves", false)
						fn11("Tiles", false)
					end
				end

				if tbl7.AutoBuyPaints then
					fn11("Paints", true)
				end

				if tbl7.AutoBuyMaterials then
					fn11("Materials", true)
				end
			end)
		end
	end
end)

task.spawn(function()
	while task.wait(1.5) do
		if tbl7.AutoBuyTables then
			pcall(function()
				local v39 = v12()
				if not v39 then
					return
				end
				local v40 = v13()

				for _, child in ipairs(v39:GetChildren()) do
					if string.match(child.Name, "^DiningPlot") then
						for _, child2 in ipairs(child:GetChildren()) do
							if string.match(child2.Name, "^Table") then
								local promptPart = child2:FindFirstChild("PromptPart")

								if promptPart then
									local proximityPrompt = promptPart:FindFirstChildOfClass("ProximityPrompt")

									if not (not proximityPrompt or not proximityPrompt.Enabled) then
										local actionText = proximityPrompt.ActionText or ""

										if string.find(string.lower(actionText), "buy") then
											local n = tonumber((string.match(actionText, "(%d[%d,]*)") or "0"):gsub(",", "")) or 0

											if not (n <= 0 or v40 < n) then
												if buyTableEvent then
													buyTableEvent:InvokeServer(child2.Name)
													task.wait(0.7)
													v40 = v13()
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
		end
	end
end)

task.spawn(function()
	while true do
		task.wait(2)

		if tbl7.AutoPlaceFurniture then
			pcall(function()
				local v39 = v12()
				if not v39 then
					return
				end
				local furnitureInventory = localPlayer:FindFirstChild("FurnitureInventory")
				if not furnitureInventory then
					return
				end
				local tbl18 = {}
				local tbl19 = {}

				for _, child in ipairs(furnitureInventory:GetChildren()) do
					if child.Value > 0 then
						local v40, v41 = string.match(child.Name, "^([^_]+)_(.+)$")

						if v40 == "Chairs" then
							table.insert(tbl18, v41)
						elseif v40 == "Tables" then
							table.insert(tbl19, v41)
						end
					end
				end

				for _, child in ipairs(v39:GetChildren()) do
					if string.match(child.Name, "^DiningPlot") then
						for _, child2 in ipairs(child:GetChildren()) do
							if string.match(child2.Name, "^Table") then
								local promptPart = child2:FindFirstChild("PromptPart")

								if promptPart then
									local proximityPrompt = promptPart:FindFirstChildOfClass("ProximityPrompt")
									local v40 = proximityPrompt

									if v40 then
										v40 = string.find(proximityPrompt.ActionText or "", "Buy")
									end

									if v40 then
										continue
									end
								end

								local currentTable = child2:FindFirstChild("CurrentTable")
								local currentChair = child2:FindFirstChild("CurrentChair")

								if currentTable and #currentTable:GetChildren() == 0 and #tbl19 > 0 then
									local v40 = tbl19[1]
									table.remove(tbl19, 1)

									pcall(function()
										placeFurnitureEvent:FireServer(child2, "Tables", v40, "Dining", nil)
									end)

									task.wait(0.5)
								end

								if currentChair and #currentChair:GetChildren() == 0 and #tbl18 > 0 then
									local v40 = tbl18[1]
									table.remove(tbl18, 1)

									pcall(function()
										placeFurnitureEvent:FireServer(child2, "Chairs", v40, "Dining", nil)
									end)

									task.wait(0.5)
								end
							end
						end
					end
				end
			end)
		end
	end
end)

task.spawn(function()
	while task.wait(1) do
		if tbl7.AutoAssign then
			pcall(function()
				local response, v39 = getCounterInfo:InvokeServer()

				if response and v39 and #v39 > 0 then
					local v40 = v39[1]
					local npcId = response.NpcId or response.TemplateName

					if v40 and npcId then
						local seat = v40.Seat
						assignNPC:FireServer({ Slot = seat, Seat = seat, NPCName = npcId, SystemId = npcId })
						task.wait(0.5)
					end
				end
			end)
		end
	end
end)

task.spawn(function()
	local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local vector = Vector3.new(0, 3, 0)

	local function fn11(arg, arg2)
		local tween = TweenService:Create(arg, tweenInfo, { CFrame = CFrame.new(arg2) })
		tween:Play()
		tween.Completed:Wait()
	end

	local v39 = fn11

	local function fn12(arg, arg2)
		local sink = arg:FindFirstChild("Sink")
		if not sink then
			return false
		end

		for _, descendant in ipairs(sink:GetDescendants()) do
			if descendant:IsA("ProximityPrompt") and descendant.Enabled then
				local parent = descendant.Parent
				local cframe = nil

				if parent:IsA("BasePart") then
					cframe = CFrame.new(parent.Position + (string.match(arg.Name, "Karenderya([4-6])") and Vector3.new(0, 3, -3) or Vector3.new(0, 3, 3)), parent.Position)
				elseif parent:IsA("Model") then
					local primaryPart = parent.PrimaryPart or parent:FindFirstChild("HumanoidRootPart")

					if primaryPart then
						cframe = primaryPart.CFrame + primaryPart.CFrame.LookVector * -3 + Vector3.new(0, 3, 0)
					end
				end

				if cframe then
					if (arg2.Position - cframe.Position).Magnitude > 9 then
						v39(arg2, cframe.Position)
					end

					descendant:InputHoldBegin()
					task.wait(0.5)
					descendant:InputHoldEnd()
					task.wait(0.3)
					return true
				end
			end
		end

		return false
	end

	local v40 = fn12

	local function fn13(arg, arg2)
		local v41 = nil
		local v42 = nil
		local huge = math.huge

		for _, descendant in ipairs(arg:GetDescendants()) do
			if descendant:IsA("ProximityPrompt") and descendant:GetAttribute("TableAction") then
				local parent = descendant.Parent
				local position = nil

				if parent:IsA("BasePart") then
					position = parent.Position
				elseif parent:IsA("Model") then
					local primaryPart = parent.PrimaryPart or parent:FindFirstChild("HumanoidRootPart") or parent:FindFirstChildWhichIsA("BasePart")

					if primaryPart then
						position = primaryPart.Position
					end
				end

				if position then
					local magnitude = (arg2.Position - position).Magnitude

					if magnitude < huge then
						huge = magnitude
						v41 = descendant
						v42 = position
					end
				end
			end
		end

		if v41 and v42 then
			if (arg2.Position - v42).Magnitude > 3 then
				v39(arg2, v42 + vector)
			end

			fireproximityprompt(v41)
			task.wait(0.15)
		end
	end

	while true do
		if str5 ~= "thieves" then
			pcall(function()
				if not (tbl7.AutoCleanPlates or tbl7.AutoServeCustomer) then
					return
				end
				local v41 = v12()
				if not v41 then
					return
				end
				local character = localPlayer.Character
				if not character then
					return
				end
				local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart then
					return
				end

				if tbl7.AutoCleanPlates then
					if v40(v41, humanoidRootPart) then
						return
					end
				end

				if tbl7.AutoServeCustomer then
					fn13(v41, humanoidRootPart)
				end
			end)
		end

		task.wait(0.15)
	end
end)

task.spawn(function()
	while task.wait(1) do
		if tbl7.AutoChoppy then
			pcall(function()
				buyMysteryBox:InvokeServer("Common", tbl7.ChoppyQuantity)
				tbl9.BoxesOpened = tbl9.BoxesOpened + tbl7.ChoppyQuantity
			end)
		end
	end
end)

task.spawn(function()
	while task.wait(0.5) do
		if tbl7.AutoOpenChoppy then
			pcall(function()
				local v39 = v12()
				if not v39 then
					return
				end
				local mystery = v39:FindFirstChild("Mystery")
				if not mystery then
					return
				end

				for _, descendant in ipairs(mystery:GetDescendants()) do
					if descendant:IsA("ProximityPrompt") then
						local parent = descendant.Parent
						local character = localPlayer.Character

						if character and character:FindFirstChild("HumanoidRootPart") then
							local humanoidRootPart = character.HumanoidRootPart
							local position = parent:IsA("BasePart") and parent.Position

							if not position and parent:IsA("Model") then
								local primaryPart = parent.PrimaryPart or parent:FindFirstChild("HumanoidRootPart")

								if primaryPart then
									position = primaryPart.Position
								end
							end

							if position then
								if (humanoidRootPart.Position - position).Magnitude > 9 then
									humanoidRootPart.CFrame = CFrame.new(position + Vector3.new(0, 3, 0))
									task.wait(0.1)
								end

								fireproximityprompt(descendant)
								task.wait(0.3)
							end
						end
					end
				end
			end)
		end
	end
end)

task.spawn(function()
	while task.wait(1) do
		if tbl7.AutoHireWorkers then
			pcall(function()
				local clientNPCs = Workspace:FindFirstChild("ClientNPCs")
				if not clientNPCs then
					return
				end

				for _, child in ipairs(clientNPCs:GetChildren()) do
					if string.find(child.Name, "WorkerSpawn") then
						local attribute = child:GetAttribute("Rarity")
						local attribute2 = child:GetAttribute("WorkerPlot")

						if not (attribute2 ~= nil and attribute2 ~= "") and (not next(tbl7.SelectedRarities) or tbl7.SelectedRarities[attribute]) then
							hireWorker:InvokeServer(child.Name, child:GetAttribute("Role"))
							task.wait(0.5)
						end
					end
				end
			end)
		end
	end
end)

lib:Notify({ Title = "Nauru Hub", Content = "Welcome to " .. name .. "!", Duration = 4 })
print("[Nauru Hub] Loaded successfully")
