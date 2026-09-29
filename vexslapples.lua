local str = "VEX-KEY"

local function fn()
	local str2 = ""

	pcall(function()
		if isfile("VexSlapples_key.txt") then
			str2 = readfile("VexSlapples_key.txt")
		end
	end)

	if str2 == str then
		return
	end
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "KeySystem"
	screenGui.ResetOnSpawn = false
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	pcall(function()
		screenGui.Parent = game:GetService("CoreGui")
	end)

	if not screenGui.Parent then
		screenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	end

	local frame = Instance.new("Frame", screenGui)
	frame.Size = UDim2.new(0, 340, 0, 160)
	frame.Position = UDim2.new(0.5, -170, 0.5, -80)
	frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	frame.BorderSizePixel = 0
	Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
	local textLabel = Instance.new("TextLabel", frame)
	textLabel.Size = UDim2.new(1, 0, 0, 36)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = "VEXSLAPPLES"
	textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel.Font = Enum.Font.GothamBold
	textLabel.TextSize = 14
	local textBox = Instance.new("TextBox", frame)
	textBox.Size = UDim2.new(0.85, 0, 0, 36)
	textBox.Position = UDim2.new(0.075, 0, 0, 50)
	textBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	textBox.BorderSizePixel = 0
	textBox.PlaceholderText = "Enter key..."
	textBox.Text = ""
	textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	textBox.Font = Enum.Font.Gotham
	textBox.TextSize = 13
	textBox.ClearTextOnFocus = false
	Instance.new("UICorner", textBox).CornerRadius = UDim.new(0, 6)
	local textLabel2 = Instance.new("TextLabel", frame)
	textLabel2.Size = UDim2.new(1, 0, 0, 20)
	textLabel2.Position = UDim2.new(0, 0, 0, 92)
	textLabel2.BackgroundTransparency = 1
	textLabel2.Text = ""
	textLabel2.TextColor3 = Color3.fromRGB(255, 80, 80)
	textLabel2.Font = Enum.Font.Gotham
	textLabel2.TextSize = 12
	local textButton = Instance.new("TextButton", frame)
	textButton.Size = UDim2.new(0.85, 0, 0, 34)
	textButton.Position = UDim2.new(0.075, 0, 0, 116)
	textButton.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
	textButton.BorderSizePixel = 0
	textButton.Text = "Submit"
	textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	textButton.Font = Enum.Font.GothamBold
	textButton.TextSize = 13
	Instance.new("UICorner", textButton).CornerRadius = UDim.new(0, 6)
	local flag = false

	textButton.MouseButton1Click:Connect(function()
		if textBox.Text == str then
			pcall(function()
				writefile("VexSlapples_key.txt", textBox.Text)
			end)

			screenGui:Destroy()
			flag = true
		else
			textLabel2.Text = "Invalid key. Try again."
			textBox.Text = ""
		end
	end)

	repeat
		task.wait()
	until flag
end

fn()
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/uhfork/Obsidian/main/Library.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xvvvvvsph1nx/Vortexhub/refs/heads/main/Aura"))():Apply(lib)
local lib2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/uhfork/Obsidian/main/addons/SaveManager.lua"))()
local lib3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/uhfork/Obsidian/main/addons/ThemeManager.lua"))()
local options = lib.Options
local toggles = lib.Toggles
local localPlayer = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

if workspace:FindFirstChild("Safespot") == nil then
	local part = Instance.new("Part", workspace)
	part.Name = "Safespot"
	part.Position = Vector3.new(10000, -50, 10000)
	part.Size = Vector3.new(500, 10, 500)
	part.Anchored = true
	part.CanCollide = true
	part.Transparency = 0.5
	local part2 = Instance.new("Part", workspace)
	part2.Name = "DefendPart"
	part2.Position = Vector3.new(10000.2, 13, 9752.45)
	part2.Size = Vector3.new(500, 117, 5)
	part2.Anchored = true
	part2.CanCollide = true
	part2.Transparency = 0.5
	part2.Parent = workspace.Safespot
	local part3 = Instance.new("Part", workspace)
	part3.Name = "DefendPart1"
	part3.Position = Vector3.new(10248.2, 13, 10002.4)
	part3.Size = Vector3.new(5, 117, 496)
	part3.Anchored = true
	part3.CanCollide = true
	part3.Transparency = 0.5
	part3.Parent = workspace.Safespot
	local part4 = Instance.new("Part", workspace)
	part4.Name = "DefendPart2"
	part4.Position = Vector3.new(9998.13, 13, 10247.2)
	part4.Size = Vector3.new(497, 117, 6)
	part4.Anchored = true
	part4.CanCollide = true
	part4.Transparency = 0.5
	part4.Parent = workspace.Safespot
end

if workspace:FindFirstChild("SafeBox") == nil then
	local part = Instance.new("Part", workspace)
	part.Name = "SafeBox"
	local random = math.random
	part.Position = Vector3.new(math.random(-25000, -2500), math.random(500, 5000), random(-25000, -2500))
	part.Size = Vector3.new(128, 14, 128)
	part.Anchored = true
	part.Transparency = 0.5
	part.BrickColor = BrickColor.new("Bright yellow")
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DiamondTimerGui"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = gethui and gethui() or localPlayer.PlayerGui
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 160, 0, 40)
frame.Position = UDim2.new(0.5, -80, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BackgroundTransparency = 0.3
frame.BorderSizePixel = 0
frame.Visible = false
frame.Parent = screenGui
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.GothamBold
textLabel.Text = "00:00:00"
textLabel.Parent = frame
local n = 25
local flag = false

local v = lib:CreateWindow({
	Title = "VexSlapples",
	Footer = "Made By Sph1nx [SLAP BATTLES V1]",
	Icon = "eye",
	ShowCustomCursor = true,
	NotifySide = "Right",
})

v:HideTabInfo()

v.ShowTabInfo = function()
end

v.HideTabInfo = function()
end

local tbl = {
	Info = v:AddTab("Info", "info"),
	Main = v:AddTab("Main", "skull"),
	Gloves = v:AddTab("Gloves", "hand"),
	Misc = v:AddTab("Misc", "wrench"),
	Badges = v:AddTab("Badges", "star"),
	Anti = v:AddTab("Anti", "shield"),
	Visuals = v:AddTab("Visuals", "eye"),
	["UI Settings"] = v:AddTab("UI Settings", "settings"),
}

local v2 = tbl.Main:AddLeftGroupbox("Afk Gloves", "pickaxe")
local v3 = tbl.Main:AddLeftGroupbox("Auto Stuffs", "zap")
local zap = tbl.Main:AddRightTabbox("zap")
local v4 = zap:AddTab("Slap Farm")
local Settings = zap:AddTab("Settings")
local Blatant = tbl.Main:AddRightGroupbox("Blatant", "zap")
local Tycoon = tbl.Gloves:AddLeftGroupbox("Tycoon", "zap")
local v5 = tbl.Misc:AddLeftGroupbox("Modify Map", "wrench")
local Welcome = tbl.Info:AddLeftGroupbox("Welcome", "info")
local v6 = tbl.Info:AddLeftGroupbox("Game Supports", "list")
local v7 = tbl.Info:AddRightGroupbox("Game Info", "zap")
local Server = tbl.Info:AddRightGroupbox("Server", "zap")
Welcome:AddLabel("Hiii! " .. localPlayer.Name, true)
Welcome:AddLabel("Thanks for using our script, consider joining our discord server!", true)
Welcome:AddDivider()
Welcome:AddLabel("This script was made by @qwrtycat", true)

Welcome:AddButton({
	Text = "Copy Discord Invite",
	Func = function()
		setclipboard("https://discord.gg/qfppNwS5t5")
		lib:Notify({ Title = "Copied", Description = "Discord invite copied to clipboard", Duration = 3 })
	end,
})

v6:AddLabel("🟢 : Active", true)
v6:AddLabel("🟣 : Discontinued", true)
v6:AddLabel("🔴 : Unreleased / Beta", true)
v6:AddDivider()
v6:AddLabel("1. 🟢🟣 Forsaken", true)
v6:AddLabel("2. 🟢 Bite By Night", true)
v6:AddLabel("3. 🟢 Slap Battles", true)
v6:AddLabel("4. 🔴 99 Nights In The Forest", true)
v6:AddLabel("5. 🔴 Rivals", true)
local v8 = v7:AddLabel("Game : Loading...", true)
v7:AddLabel("User : " .. localPlayer.Name, true)
local v9 = v7:AddLabel("Gloves Owned : ...", true)
local v10 = v7:AddLabel("Players : ...", true)
local v11 = v7:AddLabel("Slaps : ...", true)
local v12 = v7:AddLabel("Glove : ...", true)
local v13 = v7:AddLabel("Keypad Spawn : N/A", true)
local v14 = v7:AddLabel("Code Keypad : N/A", true)

Server:AddButton({
	Text = "Copy Job ID",
	Func = function()
		setclipboard(game.JobId)
		lib:Notify({ Title = "Copied", Description = "Job ID copied to clipboard", Duration = 3 })
	end,
})

Server:AddButton({
	Text = "Rejoin",
	Func = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, localPlayer)
	end,
})

Server:AddButton({
	Text = "Server Hop",
	Func = function()
		local TeleportService = game:GetService("TeleportService")
		local HttpService = game:GetService("HttpService")
		local placeId = game.PlaceId
		local jobId = game.JobId
		local str2 = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"

		local ok, result = pcall(function()
			return HttpService:JSONDecode(game:HttpGet(str2))
		end)

		ok = ok and result and result.data
		local flag2 = false

		if ok then
			for _, v15 in pairs(result.data) do
				if v15.id ~= jobId and v15.playing < v15.maxPlayers then
					TeleportService:TeleportToPlaceInstance(placeId, v15.id, localPlayer)
					flag2 = true
					break
				end
			end
		end

		if not flag2 then
			lib:Notify({ Title = "Server Hop", Description = "No available servers found", Duration = 3 })
		end
	end,
})

task.spawn(function()
	local ok, result = pcall(function()
		return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
	end)

	v8:SetText("Game : " .. (ok and result.Name or "Unknown"))
end)

game:GetService("RunService").RenderStepped:Connect(function()
	v10:SetText("Players : " .. #game.Players:GetPlayers())

	if localPlayer.leaderstats then
		if localPlayer.leaderstats:FindFirstChild("Slaps") then
			v11:SetText("Slaps : " .. tostring(localPlayer.leaderstats.Slaps.Value))
		end

		if localPlayer.leaderstats:FindFirstChild("Glove") then
			v12:SetText("Glove : " .. tostring(localPlayer.leaderstats.Glove.Value))
		end
	end

	local glovesOwned = 0

	if localPlayer:FindFirstChild("_unlockedGloves") then
		for _, child in pairs(localPlayer._unlockedGloves:GetChildren()) do
			if child.Value == true then
				glovesOwned += 1
			end
		end
	end

	v9:SetText("Gloves Owned : " .. glovesOwned)

	if not workspace:FindFirstChild("Keypad") then
		v13:SetText("Keypad Spawn : No")
	else
		v13:SetText("Keypad Spawn : Yes")
	end

	v14:SetText("Code Keypad : " .. tostring(#game.Players:GetPlayers() * 25 + 1100 - 7))
end)

local flag2 = false
local flag3 = false
local flag4 = false
local flag5 = false
local str2 = "Safe Platform"
local str3 = "Teleport"
local str4 = "FireTouchInterest"
local str5 = "Normal"
local thread = nil
local str6 = "Fast"

local tbl2 = {
	["Super Fast"] = { ability = 0.05, reset = 0.1 },
	Fast = { ability = 0.15, reset = 0.25 },
	Normal = { ability = 0.3, reset = 0.6 },
	Slow = { ability = 0.5, reset = 1 },
}

local function fn2(arg)
	if thread then
		task.cancel(thread)
		thread = nil
	end

	frame.Visible = true

	thread = task.spawn(function()
		local v15 = arg

		while v15 > 0 do
			task.wait(1)
			v15 -= 1
			textLabel.Text = string.format("%02d:%02d:%02d", math.floor(v15 / 3600), math.floor(v15 % 3600 / 60), v15 % 60)
		end

		textLabel.Text = "Done!"
	end)
end

local function fn3()
	if thread then
		task.cancel(thread)
		thread = nil
	end

	textLabel.Text = "00:00:00"
	frame.Visible = false
end

local function fn4()
	if str2 == "Plate" then
		return workspace.Arena.Plate.CFrame
	end

	if str2 == "Slapple Island" then
		return CFrame.new(-395, 51, -14)
	end

	if str2 == "Safe Platform" then
		return workspace.SafeBox.CFrame * CFrame.new(0, 5, 0)
	end

	if str2 == "Cannon Island" then
		return workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0, 0, 35)
	end

	if str2 == "Battle Arena" then
		return workspace.Battlearena.Arena.CFrame * CFrame.new(0, 10, 0)
	end
	return nil
end

local function fn5(arg)
	if (arg and "Teleport" or str3) == "Pathfind" then
		while true do
			task.wait()
			if not (localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid")) then
				continue
			end
			break
		end

		localPlayer.Character.Humanoid:MoveTo(workspace.Lobby.Teleport1.Position)

		repeat
			task.wait()
		until localPlayer.Character:FindFirstChild("entered")
	else
		repeat
			task.wait()
			firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
			firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
		until localPlayer.Character:FindFirstChild("entered")
	end
end

v2:AddToggle("AntiAFK", {
	Text = "Anti AFK",
	Default = false,
	Callback = function(antiAFK)
		_G.AntiAFK = antiAFK

		if antiAFK then
			localPlayer.Idled:Connect(function()
				if _G.AntiAFK then
					game:GetService("VirtualUser"):CaptureController()
					game:GetService("VirtualUser"):ClickButton2(Vector2.new())
				end
			end)
		end
	end,
})

v2:AddToggle("ShowTimer", {
	Text = "Show Timer [10h/1h]",
	Default = false,
	Callback = function(arg)
		flag2 = arg

		if not arg then
			fn3()
		elseif flag3 then
			fn2(36000)
		elseif flag4 or flag5 then
			fn2(3600)
		end
	end,
})

v2:AddDropdown("TeleportSpot", {
	Searchable = true,
	Text = "Teleport Spot",
	Values = { "Arena", "Plate", "Slapple Island", "Safe Platform", "Cannon Island", "Battle Arena" },
	Default = "Safe Platform",
	Multi = false,
	Callback = function(arg)
		str2 = arg
	end,
})

v2:AddToggle("MegarockFarm", {
	Text = "Get Megarock",
	Default = false,
	Callback = function(arg)
		flag3 = arg

		if not arg then
			fn3()
			ReplicatedStorage:WaitForChild("DeactivateRockmode"):FireServer()
			return
		end

		task.spawn(function()
			while true do
				task.wait()
				if not (localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")) then
					continue
				end
				break
			end

			fireclickdetector(workspace.Lobby.Diamond.ClickDetector)
			task.wait(0.5)

			if not localPlayer.Character:FindFirstChild("entered") then
				fn5(true)
			end

			task.wait(0.25)
			local v15 = fn4()

			if v15 then
				localPlayer.Character.HumanoidRootPart.CFrame = v15
				task.wait(0.1)
			end

			ReplicatedStorage:WaitForChild("Rockmode"):FireServer()

			if flag2 then
				fn2(36000)
			end
		end)
	end,
})

v2:AddToggle("VoodooFarm", {
	Text = "Get Voodoo",
	Default = false,
	Callback = function(arg)
		flag4 = arg

		if not arg then
			if not flag5 then
				fn3()
			end

			return
		end

		task.spawn(function()
			while true do
				task.wait()
				if not (localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")) then
					continue
				end
				break
			end

			if not localPlayer.Character:FindFirstChild("entered") then
				fireclickdetector(workspace.Lobby.Ghost.ClickDetector)
				task.wait(0.3)
			end

			if not localPlayer.Character:FindFirstChild("entered") then
				fn5(true)
			end

			task.wait(0.25)
			local v15 = fn4()

			if v15 then
				localPlayer.Character.HumanoidRootPart.CFrame = v15
				task.wait(0.2)
			end

			ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

			if flag2 then
				fn2(3600)
			end
		end)
	end,
})

v2:AddToggle("FishFarm", {
	Text = "Get Fish",
	Default = false,
	Callback = function(arg)
		flag5 = arg

		if not arg then
			if not flag4 then
				fn3()
			end

			return
		end

		task.spawn(function()
			while true do
				task.wait()
				if not (localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")) then
					continue
				end
				break
			end

			if not localPlayer.Character:FindFirstChild("entered") then
				fireclickdetector(workspace.Lobby.ZZZZZZZ.ClickDetector)
				task.wait(0.3)
			end

			if not localPlayer.Character:FindFirstChild("entered") then
				fn5(true)
			end

			task.wait(0.25)
			local v15 = fn4()

			if v15 then
				localPlayer.Character.HumanoidRootPart.CFrame = v15
				task.wait(0.2)
			end

			ReplicatedStorage:WaitForChild("ZZZZZZZSleep"):FireServer()

			if flag2 then
				fn2(3600)
			end
		end)
	end,
})

v2:AddToggle("TrapFarm", {
	Text = "Get Trap",
	Default = false,
	Callback = function(trapFarm)
		_G.TrapFarm = trapFarm
		if not trapFarm then
			return
		end

		task.spawn(function()
			while true do
				task.wait()
				if not (localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")) then
					continue
				end
				break
			end

			fireclickdetector(workspace.Lobby.Brick.ClickDetector)
			task.wait(0.3)

			if not localPlayer.Character:FindFirstChild("entered") then
				fn5(true)
			end

			task.wait(0.25)
			local v15 = fn4()

			if v15 then
				localPlayer.Character.HumanoidRootPart.CFrame = v15
				task.wait(0.2)
			end

			while _G.TrapFarm do
				ReplicatedStorage:WaitForChild("lbrick"):FireServer()
				local brickcount = localPlayer.PlayerGui:FindFirstChild("BRICKCOUNT")

				if brickcount then
					local imageLabel = brickcount:FindFirstChildWhichIsA("ImageLabel", true)

					if imageLabel and imageLabel:FindFirstChildWhichIsA("TextLabel") then
						imageLabel:FindFirstChildWhichIsA("TextLabel").Text = tostring((tonumber(imageLabel:FindFirstChildWhichIsA("TextLabel").Text) or 0) + 1)
					end
				end

				task.wait(1.5)
			end
		end)
	end,
})

v2:AddToggle("TycoonFarm", {
	Text = "Get Tycoon",
	Default = false,
	Callback = function(tycoonFarm)
		_G.TycoonFarm = tycoonFarm

		if not tycoonFarm then
			flag3 = false
			fn3()
			return
		end

		if not localPlayer.Character:FindFirstChild("entered") then
			lib:Notify({ Title = "Get Tycoon", Description = "Get in the arena", Duration = 5 })
			toggles.TycoonFarm:SetValue(false)
			return
		end

		if #game.Players:GetPlayers() < 7 then
			lib:Notify({ Title = "Get Tycoon", Description = "Server needs 7 players", Duration = 5 })
			toggles.TycoonFarm:SetValue(false)
			return
		end

		flag3 = true

		if flag2 then
			fn2(600)
		end

		task.spawn(function()
			while _G.TycoonFarm do
				if localPlayer.Character and localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
					if #game.Players:GetPlayers() >= 7 then
						localPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame
						task.wait()
					else
						lib:Notify({ Title = "Get Tycoon", Description = "Server needs 7 players", Duration = 5 })
						_G.TycoonFarm = false
						flag3 = false
						fn3()
						toggles.TycoonFarm:SetValue(false)
						break
					end
				else
					task.wait()
				end
			end
		end)
	end,
})

v2:AddDivider("Get Bob")

v2:AddToggle("BobFarm", {
	Text = "Bob Farm",
	Default = false,
	Callback = function(autoFarmBob)
		_G.AutoFarmBob = autoFarmBob
		if not autoFarmBob then
			return
		end

		task.spawn(function()
			while true do
				task.wait()
				if not (localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")) then
					continue
				end
				break
			end

			fireclickdetector(workspace.Lobby.Replica.ClickDetector)
			task.wait(0.25)

			while _G.AutoFarmBob do
				while true do
					task.wait()
					if not (localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")) then
						continue
					end
					break
				end

				if not localPlayer.Character:FindFirstChild("entered") then
					fn5()
				end

				local v15 = tbl2[str5]
				task.wait(v15.ability)
				ReplicatedStorage.Duplicate:FireServer()

				if workspace:FindFirstChild("bobcap") then
					_G.AutoFarmBob = false
					toggles.BobFarm:SetValue(false)
					break
				else
					localPlayer.Character.Humanoid.Health = 0

					while true do
						task.wait()
						if not (localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character.Humanoid.Health ~= 0) then
							continue
						end
						break
					end

					task.wait(v15.reset)
				end
			end
		end)
	end,
})

v2:AddDropdown("ArenaEntryMethod", {
	Text = "Bob Farm Entry Method",
	Values = { "Teleport", "Pathfind" },
	Default = "Teleport",
	Multi = false,
	Callback = function(arg)
		str3 = arg
	end,
})

v2:AddDropdown("BobFarmSpeed", {
	Searchable = false,
	Text = "Bob Farm Speed",
	Values = { "Super Fast", "Fast", "Normal", "Slow" },
	Default = "Normal",
	Multi = false,
	Callback = function(arg)
		str5 = arg
	end,
})

v3:AddToggle("AutoBrick", {
	Text = "Auto Brick",
	Default = false,
	Callback = function(autoBrick)
		_G.AutoBrick = autoBrick
		if not autoBrick then
			return
		end

		task.spawn(function()
			while _G.AutoBrick do
				local n2

				if localPlayer.Character and localPlayer.leaderstats.Glove.Value == "Brick" then
					ReplicatedStorage:WaitForChild("lbrick"):FireServer()
					local brickcount = localPlayer.PlayerGui:FindFirstChild("BRICKCOUNT")

					if brickcount then
						local imageLabel = brickcount:FindFirstChildWhichIsA("ImageLabel", true)

						if imageLabel and imageLabel:FindFirstChildWhichIsA("TextLabel") then
							imageLabel:FindFirstChildWhichIsA("TextLabel").Text = tostring((tonumber(imageLabel:FindFirstChildWhichIsA("TextLabel").Text) or 0) + 1)
							n2 = str6 == "Fast" and 1.5 or 5.05
							task.wait(n2)
						else
							n2 = str6 == "Fast" and 1.5 or 5.05
							task.wait(n2)
						end
					else
						n2 = str6 == "Fast" and 1.5 or 5.05
						task.wait(n2)
					end
				elseif _G.AutoBrick then
					lib:Notify({ Title = "Error", Description = "You don't have Brick equipped", Duration = 5 })
					toggles.AutoBrick:SetValue(false)
					break
				else
					n2 = str6 == "Fast" and 1.5 or 5.05
					task.wait(n2)
				end
			end
		end)
	end,
})

v3:AddDropdown("FarmBrickSpeed", {
	Text = "Auto Brick Speed",
	Values = { "Slow", "Fast" },
	Default = "Fast",
	Multi = false,
	Callback = function(arg)
		str6 = arg
	end,
})

v3:AddDivider("Halloween Event")
local str7 = "Teleport"

v3:AddToggle("AutoCandyFarm", {
	Text = "Auto Candy Farm",
	Default = false,
	Callback = function(candyCornsFarm)
		_G.CandyCornsFarm = candyCornsFarm
		if not candyCornsFarm then
			return
		end

		task.spawn(function()
			while _G.CandyCornsFarm do
				if workspace:FindFirstChild("CandyCorns") then
					for _, child in pairs(workspace.CandyCorns:GetChildren()) do
						if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
							if str7 == "FireTouchInterest" then
								if child:FindFirstChild("TouchInterest") then
									firetouchinterest(localPlayer.Character.HumanoidRootPart, child, 0)
									firetouchinterest(localPlayer.Character.HumanoidRootPart, child, 1)
								end
							else
								child.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
							end
						end
					end
				end

				task.wait()
			end
		end)
	end,
})

v3:AddDropdown("CandyFarmMethod", {
	Text = "Candy Farm Method",
	Values = { "Teleport", "FireTouchInterest" },
	Default = "Teleport",
	Multi = false,
	Callback = function(arg)
		str7 = arg
	end,
})

v3:AddDivider("Enter Arena")

v3:AddToggle("AutoEnter", {
	Text = "Auto Enter",
	Default = false,
	Callback = function(autoEnterJoin)
		_G.AutoEnterJoin = autoEnterJoin
		if not autoEnterJoin then
			return
		end

		task.spawn(function()
			while _G.AutoEnterJoin do
				if _G.AutoEnter == "Arena" then
					if localPlayer.Character:FindFirstChild("entered") == nil and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
						while true do
							task.wait()

							if localPlayer.Character:FindFirstChild("HumanoidRootPart") then
								firetouchinterest(localPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 0)
								firetouchinterest(localPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 1)
							end

							if not localPlayer.Character:FindFirstChild("entered") then
								continue
							end
							break
						end
					end
				elseif _G.AutoEnter == "Arena Default" then
					if localPlayer.Character:FindFirstChild("entered") == nil and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
						while true do
							task.wait()

							if localPlayer.Character:FindFirstChild("HumanoidRootPart") then
								firetouchinterest(localPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport2, 0)
								firetouchinterest(localPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport2, 1)
							end

							if not localPlayer.Character:FindFirstChild("entered") then
								continue
							end
							break
						end
					end
				end

				task.wait()
			end
		end)
	end,
})

v3:AddDropdown("ArenaEnter", {
	Text = "Enter Arena",
	Values = { "Arena", "Arena Default" },
	Default = "Arena",
	Multi = false,
	Callback = function(autoEnter)
		_G.AutoEnter = autoEnter
	end,
})

Tycoon:AddToggle("AutoClickTycoon", {
	Text = "Auto Click Tycoon",
	Default = false,
	Callback = function(autoClickTycoon)
		_G.AutoClickTycoon = autoClickTycoon
		if not autoClickTycoon then
			return
		end

		task.spawn(function()
			while _G.AutoClickTycoon do
				if _G.TycoonAuto == "All" then
					for _, child in pairs(workspace:GetChildren()) do
						if string.find(child.Name, "ÅTycoon") and child:FindFirstChild("Click") then
							fireclickdetector(child.Click.ClickDetector, 0)
							fireclickdetector(child.Click.ClickDetector, 1)
						end
					end
				elseif _G.TycoonAuto == "Mine Only" then
					for _, child in pairs(workspace:GetChildren()) do
						if child.Name:match(localPlayer.Name) then
							for _, child2 in pairs(child:GetChildren()) do
								if child2.Name == "TycoonDrop" then
									child2.CFrame = child.End.CFrame
								end
							end

							if child:FindFirstChild("Click") then
								fireclickdetector(child.Click.ClickDetector, 0)
								fireclickdetector(child.Click.ClickDetector, 1)
							end
						end
					end
				end

				task.wait()
			end
		end)
	end,
})

Tycoon:AddDropdown("TycoonMode", {
	Text = "Tycoon Mode",
	Values = { "All", "Mine Only" },
	Default = "All",
	Multi = false,
	Callback = function(tycoonAuto)
		_G.TycoonAuto = tycoonAuto
	end,
})

Tycoon:AddToggle("AutoDestroyTycoon", {
	Text = "Auto Destroy Tycoon",
	Default = false,
	Callback = function(autoDestroyTycoon)
		_G.AutoDestroyTycoon = autoDestroyTycoon
		if not autoDestroyTycoon then
			return
		end

		task.spawn(function()
			while _G.AutoDestroyTycoon do
				for _, child in pairs(workspace:GetChildren()) do
					if string.find(child.Name, "ÅTycoon") and child:FindFirstChild("Destruct") then
						fireclickdetector(child.Destruct.ClickDetector, 0)
						fireclickdetector(child.Destruct.ClickDetector, 1)
					end
				end

				task.wait()
			end
		end)
	end,
})

Tycoon:AddButton({
	Text = "Destroy All Tycoons",
	DoubleClick = true,
	Func = function()
		for _, child in pairs(workspace:GetChildren()) do
			if string.find(child.Name, "ÅTycoon") and child:FindFirstChild("Destruct") then
				for i = 1, 200 do
					if child:FindFirstChild("Destruct") then
						fireclickdetector(child.Destruct.ClickDetector, 0)
						fireclickdetector(child.Destruct.ClickDetector, 1)
					end
				end
			end
		end
	end,
})

local flag6 = false
local flag7 = false
local flag8 = false
local flag9 = false
local flag10 = false
local flag11 = false
local str8 = "HumanoidRootPart"
local flag12 = false
local n2 = 0
local flag13 = false
local flag14 = false
local flag15 = false
local v15 = v4:AddLabel("Check the Settings tab above for more options!", true)
v15:SetVisible(false)

v4:AddToggle("SlapAura", {
	Text = "Slap Aura",
	Default = false,
	Callback = function(arg)
		flag = arg
		v15:SetVisible(arg)
		toggles.SlapAuraIgnoreReverse:SetVisible(arg)
		toggles.SlapAuraIgnoreFriends:SetVisible(arg)
		toggles.SlapAuraIgnoreGolden:SetVisible(arg)
		toggles.SlapAuraIgnoreSpectator:SetVisible(arg)
		toggles.SlapAuraIgnoreDead:SetVisible(arg)
		toggles.SlapAuraLegit:SetVisible(arg)
		options.SlapAuraPart:SetVisible(arg)
		toggles.SlapAuraDeactivateRagdoll:SetVisible(arg)
		options.SlapAuraCooldown:SetVisible(arg)
		toggles.SlapAuraReplica:SetVisible(arg)
		toggles.SlapAuraBaller:SetVisible(arg)
		toggles.SlapAuraDontSlapCounter:SetVisible(arg)
		toggles.SlapAuraIgnoreTimestop:SetVisible(arg)
		toggles.SlapAuraIgnoreBubbled:SetVisible(arg)
		toggles.SlapAuraIgnoreSbeved:SetVisible(arg)
		toggles.SlapAuraIgnoreBoogie:SetVisible(arg)
		toggles.SlapAuraIgnoreIce:SetVisible(arg)
	end,
})

Settings:AddDropdown("SlapAuraPart", {
	Text = "Slap Part",
	Values = { "HumanoidRootPart", "Head", "Torso" },
	Default = "HumanoidRootPart",
	Visible = false,
	Multi = false,
	Callback = function(arg)
		str8 = arg
	end,
})

Settings:AddSlider("SlapAuraCooldown", {
	Text = "Slap Cooldown",
	Default = 0,
	Min = 0,
	Max = 5,
	Rounding = 2,
	Compact = false,
	Visible = false,
	Callback = function(arg)
		n2 = arg
	end,
})

Settings:AddToggle("SlapAuraLegit", {
	Text = "Legit Slap Aura",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag11 = arg
	end,
})

Settings:AddToggle("SlapAuraDeactivateRagdoll", {
	Text = "Deactivate when Ragdolled",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag12 = arg
	end,
})

Settings:AddToggle("SlapAuraIgnoreDead", {
	Text = "Ignore Dead",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag10 = arg
	end,
})

Settings:AddToggle("SlapAuraIgnoreSpectator", {
	Text = "Ignore Spectator",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag9 = arg
	end,
})

Settings:AddToggle("SlapAuraIgnoreGolden", {
	Text = "Ignore Golden",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag8 = arg
	end,
})

Settings:AddToggle("SlapAuraIgnoreReverse", {
	Text = "Ignore Reverse Card",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag6 = arg
	end,
})

Settings:AddToggle("SlapAuraIgnoreFriends", {
	Text = "Ignore Friends",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag7 = arg
	end,
})

Settings:AddToggle("SlapAuraReplica", {
	Text = "Slap Replica",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag13 = arg
	end,
})

Settings:AddToggle("SlapAuraBaller", {
	Text = "Slap Baller",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag14 = arg
	end,
})

Settings:AddToggle("SlapAuraDontSlapCounter", {
	Text = "Don't Slap when Counter",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag15 = arg
	end,
})

local flag16 = false
local flag17 = false
local flag18 = false
local flag19 = false
local flag20 = false
local flag21 = false

Settings:AddToggle("SlapAuraIgnoreTimestop", {
	Text = "Don't Slap when Timestopped",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag16 = arg
	end,
})

Settings:AddToggle("SlapAuraIgnoreBubbled", {
	Text = "Don't Slap when Bubbled",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag18 = arg
	end,
})

Settings:AddToggle("SlapAuraIgnoreSbeved", {
	Text = "Don't Slap when Sbeved",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag19 = arg
	end,
})

Settings:AddToggle("SlapAuraIgnoreBoogie", {
	Text = "Don't Slap when Boogied",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag20 = arg
	end,
})

Settings:AddToggle("SlapAuraIgnoreIce", {
	Text = "Don't Slap when Iced",
	Default = false,
	Visible = false,
	Callback = function(arg)
		flag21 = arg
	end,
})

local function fn6()
	if not localPlayer.Character then
		return false
	end
	local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		return false
	end

	for _, child in pairs(workspace:GetChildren()) do
		if child.Name ~= "BubbleObject" then
			continue
		end
		local weld = child:FindFirstChild("Weld")

		if weld then
			weld = weld.Part0 == humanoidRootPart or weld.Part1 == humanoidRootPart
		end

		if weld then
			return true
		end
	end

	return false
end

local function fn7()
	return localPlayer.Character and localPlayer.Character:FindFirstChild("stevebody") ~= nil
end

local function fn8()
	return localPlayer.Character and localPlayer.Character:FindFirstChild("Boogie") ~= nil
end

local function fn9()
	return localPlayer.Character and localPlayer.Character:FindFirstChild("Icecube") ~= nil
end

task.spawn(function()
	local timestop = game:GetService("ReplicatedStorage"):WaitForChild("Timestop", 10)
	if not timestop then
		return
	end

	timestop.OnClientEvent:Connect(function()
		if not flag16 then
			return
		end
		flag17 = true
		local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")

		if humanoidRootPart then
			local connection = nil

			connection = humanoidRootPart:GetPropertyChangedSignal("Anchored"):Connect(function()
				if not humanoidRootPart.Anchored then
					flag17 = false
					connection:Disconnect()
				end
			end)
		end
	end)
end)

task.spawn(function()
	while true do
		if flag16 and flag17 then
			task.wait(0.1)
			continue
		end

		if flag18 and fn6() then
			task.wait(0.1)
			continue
		end

		if flag19 and fn7() then
			task.wait(0.1)
			continue
		end

		if flag20 and fn8() then
			task.wait(0.1)
			continue
		end

		if flag21 and fn9() then
			task.wait(0.1)
			continue
		end

		if (flag or flag11) and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
			local ragdolled = localPlayer.Character:FindFirstChild("Ragdolled")
			if flag12 and ragdolled and ragdolled.Value == true then
				task.wait(0.08)
				continue
			end

			for _, child in pairs(game.Players:GetChildren()) do
				if child ~= localPlayer and child.Character then
					if child.Character:FindFirstChild("entered") and child.Character:FindFirstChild("HumanoidRootPart") and not child.Character:FindFirstChild("stevebody") and not child.Character:FindFirstChild("rock") and child.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and child.Character.Ragdolled.Value == false and not child.Character:FindFirstChild("Mirage") and (not flag15 or not child.Character:FindFirstChild("Counterd")) and (not flag8 or child.Character.HumanoidRootPart.Color ~= Color3.fromRGB(255, 255, 0)) and (not flag9 or child.leaderstats.Glove.Value ~= "Spectator") and (not flag10 or child.Character:FindFirstChild("Humanoid") and child.Character.Humanoid.Health > 0) then
						if flag7 and localPlayer:IsFriendsWith(child.UserId) then
							continue
						end

						if not child.Character.Head:FindFirstChild("UnoReverseCard") or flag6 or localPlayer.leaderstats.Glove.Value == "Error" then
							if not ((localPlayer.Character.HumanoidRootPart.Position - child.Character.HumanoidRootPart.Position).Magnitude <= n) then
								continue
							end
							local humanoidRootPart = child.Character:FindFirstChild(str8) or child.Character.HumanoidRootPart

							if flag11 then
								for _, child2 in pairs(localPlayer.Character:GetChildren()) do
									if child2:IsA("Tool") and child2:FindFirstChild("Glove") then
										if not ((child2.Glove.Position - humanoidRootPart.Position).Magnitude <= n) then
											continue
										end
										game:GetService("VirtualUser"):ClickButton1(Vector2.new(200, 200))
									end
								end
							end

							if localPlayer.Character:FindFirstChild("Default") or localPlayer.Backpack:FindFirstChild("Default") then
								ReplicatedStorage.b:FireServer(humanoidRootPart)
							elseif ReplicatedStorage:FindFirstChild(localPlayer.leaderstats.Glove.Value .. "Hit") then
								ReplicatedStorage[localPlayer.leaderstats.Glove.Value .. "Hit"]:FireServer(humanoidRootPart, true)
							elseif localPlayer.leaderstats.Glove.Value == "Boxer" then
								ReplicatedStorage.Events.Boxing:FireServer(child.Character, true)
							else
								ReplicatedStorage.GeneralHit:FireServer(humanoidRootPart, true)
							end

							if not (n2 > 0) then
								continue
							end
							task.wait(n2)
							continue
						end
					end
				end
			end

			if flag13 and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
				for _, child in pairs(workspace:GetChildren()) do
					if string.find(child.Name, "Å") and child:FindFirstChild("HumanoidRootPart") then
						if not ((localPlayer.Character.HumanoidRootPart.Position - child.HumanoidRootPart.Position).Magnitude <= n) then
							continue
						end

						if localPlayer.Character:FindFirstChild("Default") or localPlayer.Backpack:FindFirstChild("Default") then
							ReplicatedStorage.b:FireServer(child.HumanoidRootPart)
						elseif ReplicatedStorage:FindFirstChild(localPlayer.leaderstats.Glove.Value .. "Hit") then
							ReplicatedStorage[localPlayer.leaderstats.Glove.Value .. "Hit"]:FireServer(child.HumanoidRootPart, true)
						else
							ReplicatedStorage.GeneralHit:FireServer(child.HumanoidRootPart, true)
						end

						if not (n2 > 0) then
							continue
						end
						task.wait(n2)
					end
				end
			end

			if flag14 and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and workspace:FindFirstChild("Balls") then
				for _, child in pairs(workspace.Balls:GetChildren()) do
					if string.find(child.Name, "'s Ball") then
						if not ((localPlayer.Character.HumanoidRootPart.Position - child.Position).Magnitude <= n) then
							continue
						end
						ReplicatedStorage.Events.BeachBall:FireServer(child, Vector3.new(workspace.CurrentCamera.CFrame.LookVector.X, 0, workspace.CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)

						if n2 > 0 then
							task.wait(n2)
						end
					end
				end
			end
		end

		task.wait(0.08)
	end
end)

v4:AddSlider("AuraRange", {
	Compact = false,
	HideMax = true,
	Text = "Reach Aura",
	Default = 25,
	Min = 10,
	Max = 50,
	Rounding = 0,
	Callback = function(arg)
		n = arg
	end,
})

v4:AddDivider("Farm Slaps")
local str9 = "Teleport"
local n3 = 5
local str10 = "Default"
local v16 = nil

v4:AddToggle("AutoFarmSlap", {
	Text = "Auto Farm Slap",
	Default = false,
	Callback = function(autoFarmSlap)
		_G.AutoFarmSlap = autoFarmSlap
		if not autoFarmSlap then
			return
		end

		task.spawn(function()
			local function fn10(arg)
				if not arg then
					return false
				end

				if not arg:FindFirstChild("entered") then
					return false
				end
				local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart then
					return false
				end
				local humanoid = arg:FindFirstChild("Humanoid")
				if not humanoid or humanoid.Health <= 0 then
					return false
				end

				if arg:FindFirstChild("stevebody") then
					return false
				end

				if arg:FindFirstChild("rock") then
					return false
				end

				if arg:FindFirstChild("Mirage") then
					return false
				end

				if humanoidRootPart.BrickColor == BrickColor.new("New Yeller") then
					return false
				end
				local ragdolled = arg:FindFirstChild("Ragdolled")
				if not ragdolled or ragdolled.Value == true then
					return false
				end

				if arg.Head:FindFirstChild("UnoReverseCard") then
					return false
				end
				return true
			end

			local function fn11()
				if not localPlayer.Character or not localPlayer.Character:FindFirstChild("entered") or not localPlayer.Character:FindFirstChild("HumanoidRootPart") then
					return nil
				end
				local huge = math.huge
				local character = nil

				for _, child in pairs(game.Players:GetChildren()) do
					if child ~= localPlayer and child.Character then
						if fn10(child.Character) then
							local magnitude = (localPlayer.Character.HumanoidRootPart.Position - child.Character.HumanoidRootPart.Position).Magnitude

							if magnitude < huge then
								character = child.Character
								huge = magnitude
							end
						end
					end
				end

				return character
			end

			local v17 = nil
			local v18 = nil

			while _G.AutoFarmSlap do
				if str9 == "Pathfind" then
					if localPlayer.Character and not localPlayer.Character:FindFirstChild("entered") then
						if localPlayer.Character:FindFirstChild("Humanoid") then
							localPlayer.Character.Humanoid:MoveTo(workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").Position)
						end
					end

					if str10 == "Lock On" then
						if v16 then
							local humanoidRootPart = v16:FindFirstChild("HumanoidRootPart")
							local humanoid = v16:FindFirstChild("Humanoid")

							if not humanoidRootPart or not humanoid or humanoid.Health <= 0 or not v16:FindFirstChild("entered") then
								v16 = nil
							end
						end

						if not v16 then
							v16 = fn11()
						end

						v17 = v16
					elseif str10 == "Nearest" then
						v17 = fn11()
					else
						if v17 and not v17:FindFirstChild("entered") then
							v17 = nil
						end

						if not v17 or not fn10(v17) then
							v17 = fn11()
						end
					end

					if v17 and localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
						if localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:FindFirstChild("Ragdolled") and localPlayer.Character.Ragdolled.Value == false then
							local humanoidRootPart = localPlayer.Character.HumanoidRootPart
							local humanoidRootPart2 = v17:FindFirstChild("HumanoidRootPart")

							if humanoidRootPart2 then
								local cframe = CFrame.new
								local position = humanoidRootPart.Position
								local vector = Vector3.new(humanoidRootPart2.Position.X, humanoidRootPart.Position.Y, humanoidRootPart2.Position.Z)
								local v19 = cframe(position, vector)

								if v17 ~= v18 then
									humanoidRootPart.CFrame = humanoidRootPart.CFrame:Lerp(v19, math.clamp(n3 * 0.05, 0.01, 1))
								else
									humanoidRootPart.CFrame = humanoidRootPart.CFrame:Lerp(v19, math.clamp(n3 * 0.05, 0.01, 1))
								end

								if (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude <= 5 then
									game:GetService("VirtualUser"):ClickButton1(Vector2.new(200, 200))
									v18 = v17
								else
									localPlayer.Character.Humanoid:MoveTo(humanoidRootPart2.Position)
									v18 = v17
								end
							end
						end
					end
				else
					if localPlayer.Character and not localPlayer.Character:FindFirstChild("entered") then
						firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
						firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
						task.wait(1)
					end

					local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("entered") and localPlayer.Character:FindFirstChild("HumanoidRootPart")
					v17 = nil
					v18 = nil

					if humanoidRootPart then
						for _, child in pairs(game.Players:GetChildren()) do
							if _G.AutoFarmSlap then
								if child ~= localPlayer and child.Character and child.Character:FindFirstChild("entered") and child.Character:FindFirstChild("HumanoidRootPart") and not child.Character:FindFirstChild("rock") and child.Character:FindFirstChild("Ragdolled") and child.Character.Ragdolled.Value == false and not child.Character.Head:FindFirstChild("UnoReverseCard") then
									localPlayer.Character.HumanoidRootPart.CFrame = child.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
									task.wait(0.5)

									if _G.AutoFarmSlap then
										if ReplicatedStorage:FindFirstChild(localPlayer.leaderstats.Glove.Value .. "Hit") then
											ReplicatedStorage[localPlayer.leaderstats.Glove.Value .. "Hit"]:FireServer(child.Character.HumanoidRootPart)
										else
											ReplicatedStorage.GeneralHit:FireServer(child.Character.HumanoidRootPart)
										end

										task.wait(0.43)
										continue
									end
								else
									continue
								end
							end

							break
						end

						v17 = nil
						v18 = nil
					end
				end

				task.wait()
			end
		end)
	end,
})

v4:AddDropdown("FarmSlapMethod", {
	Text = "Auto Farm Slap Method",
	Values = { "Teleport", "Pathfind" },
	Default = "Teleport",
	Multi = false,
	Callback = function(arg)
		str9 = arg

		if arg ~= "Pathfind" then
			v16 = nil
		end
	end,
})

v4:AddDropdown("PathfindMode", {
	Searchable = false,
	Text = "Pathfind Mode",
	Values = { "Default", "Nearest", "Lock On" },
	Default = "Default",
	Multi = false,
	Callback = function(arg)
		str10 = arg

		if arg ~= "Lock On" then
			v16 = nil
		end
	end,
})

v4:AddSlider("SmoothTurnSpeed", {
	Compact = false,
	Text = "Smooth Turn [Pathfind]",
	Default = 5,
	Min = 0.1,
	Max = 20,
	Rounding = 1,
	Callback = function(arg)
		n3 = arg
	end,
})

v4:AddDivider()

v4:AddToggle("SlappleFarm", {
	Text = "Slapple Farm",
	Default = false,
	Callback = function(slappleFarm)
		_G.SlappleFarm = slappleFarm
		if not slappleFarm then
			return
		end

		if not localPlayer.Character or not localPlayer.Character:FindFirstChild("entered") then
			lib:Notify({
				Title = "Enter Arena First",
				Description = "You need to enter the arena before starting Slapple Farm",
				Duration = 5,
			})

			toggles.SlappleFarm:SetValue(false)
			return
		end

		task.spawn(function()
			while _G.SlappleFarm do
				if localPlayer.Character and localPlayer.Character:FindFirstChild("entered") then
					for _, child in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
						if str4 == "FireTouchInterest" then
							if child.Glove:FindFirstChild("TouchInterest") and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
								firetouchinterest(localPlayer.Character.HumanoidRootPart, child.Glove, 0)
								firetouchinterest(localPlayer.Character.HumanoidRootPart, child.Glove, 1)
							end
						elseif localPlayer.Character:FindFirstChild("HumanoidRootPart") then
							localPlayer.Character.HumanoidRootPart.CFrame = child.Glove.CFrame * CFrame.new(0, 2, 0)
							task.wait(0.05)
						end
					end
				end

				task.wait()
			end
		end)
	end,
})

v4:AddDropdown("SlappleMethod", {
	Text = "Slapple Farm Method",
	Values = { "FireTouchInterest", "Teleport" },
	Default = "FireTouchInterest",
	Multi = false,
	Callback = function(arg)
		str4 = arg
	end,
})

Blatant:AddToggle("NoAbilityCooldown", {
	Text = "No Ability Cooldown",
	Default = false,
	Callback = function(noAbilityCooldown)
		_G.NoAbilityCooldown = noAbilityCooldown
		if not noAbilityCooldown then
			return
		end

		task.spawn(function()
			while _G.NoAbilityCooldown do
				local character = localPlayer.Character

				if character then
					local tool = character:FindFirstChildOfClass("Tool") or localPlayer.Backpack:FindFirstChildOfClass("Tool")

					if tool then
						local localScript = tool:FindFirstChildOfClass("LocalScript")

						if localScript then
							local clone = localScript:Clone()
							localScript:Destroy()
							clone.Parent = tool
						end
					end
				end

				task.wait(0.1)
			end
		end)
	end,
})

Blatant:AddToggle("Godmode", {
	Text = "Godmode",
	Default = false,
	Callback = function(arg)
		if not arg then
			return
		end

		task.spawn(function()
			if localPlayer.Character:FindFirstChild("entered") == nil then
				firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
				firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
			end

			while true do
				task.wait()
				if not (localPlayer.Character:FindFirstChildWhichIsA("Tool") or localPlayer.Backpack:FindFirstChildWhichIsA("Tool")) then
					continue
				end
				break
			end

			for _, child in pairs(localPlayer.Character:GetChildren()) do
				child.Parent = game.LogService
			end

			for _, child in pairs(localPlayer.Backpack:GetChildren()) do
				child.Parent = game.LogService
			end

			localPlayer.Reset:FireServer()
			wait(3.82)

			for _, child in pairs(game.LogService:GetChildren()) do
				child.Parent = localPlayer.Backpack
			end

			for _, child in pairs(localPlayer.Backpack:GetChildren()) do
				localPlayer.Character.Humanoid:EquipTool(child)
			end

			localPlayer.Character.HumanoidRootPart.CFrame = workspace.Origo.CFrame * CFrame.new(0, -5, 0)
		end)
	end,
})

Blatant:AddToggle("InvisibilityOnly", {
	Text = "Invisibility",
	Default = false,
	Callback = function(arg)
		if not arg then
			return
		end

		task.spawn(function()
			if localPlayer.leaderstats.Slaps.Value >= 666 then
				local value = localPlayer.leaderstats.Glove.Value
				fireclickdetector(workspace.Lobby.Ghost.ClickDetector)
				ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
				fireclickdetector(workspace.Lobby[value].ClickDetector)
			else
				lib:Notify({ Title = "Error", Description = "You need 666+ slaps for Invisibility", Duration = 5 })
			end
		end)
	end,
})

Blatant:AddToggle("GodmodeInvis", {
	Text = "Godmode + Invisibility",
	Default = false,
	Callback = function(arg)
		if not arg then
			return
		end

		task.spawn(function()
			if localPlayer.leaderstats.Slaps.Value >= 666 then
				if localPlayer.Character:FindFirstChild("entered") == nil then
					firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
					firetouchinterest(localPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
				end

				while true do
					task.wait()
					if not (localPlayer.Character:FindFirstChildWhichIsA("Tool") or localPlayer.Backpack:FindFirstChildWhichIsA("Tool")) then
						continue
					end
					break
				end

				for _, child in pairs(localPlayer.Character:GetChildren()) do
					child.Parent = game.LogService
				end

				for _, child in pairs(localPlayer.Backpack:GetChildren()) do
					child.Parent = game.LogService
				end

				localPlayer.Reset:FireServer()
				wait(3.82)
				local value = localPlayer.leaderstats.Glove.Value
				fireclickdetector(workspace.Lobby.Ghost.ClickDetector)
				ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
				fireclickdetector(workspace.Lobby[value].ClickDetector)

				for _, child in pairs(game.LogService:GetChildren()) do
					child.Parent = localPlayer.Backpack
				end

				for _, child in pairs(localPlayer.Backpack:GetChildren()) do
					localPlayer.Character.Humanoid:EquipTool(child)
				end

				localPlayer.Character.HumanoidRootPart.CFrame = workspace.Origo.CFrame * CFrame.new(0, -5, 0)
				wait(0.5)

				for _, child in pairs(localPlayer.Character:GetChildren()) do
					if child.Name ~= "Humanoid" then
						child.Transparency = 0
					end
				end
			else
				lib:Notify({
					Title = "Error",
					Description = "You need 666+ slaps for Godmode + Invisibility",
					Duration = 5,
				})
			end
		end)
	end,
})

local tbl3 = { X = 64, Y = 1, Z = 64 }

v5:AddToggle("PlateSizeToggle", {
	Text = "Custom Plate Size",
	Default = false,
	Callback = function(plateSizeToggle)
		_G.PlateSizeToggle = plateSizeToggle

		if not plateSizeToggle then
			local arena = workspace:FindFirstChild("Arena")
			arena = arena and arena:FindFirstChild("Plate")

			if arena then
				arena.Size = Vector3.new(64, 1, 64)
			end

			return
		end

		task.spawn(function()
			while _G.PlateSizeToggle do
				local arena = workspace:FindFirstChild("Arena")
				arena = arena and arena:FindFirstChild("Plate")

				if arena then
					arena.Size = Vector3.new(tbl3.X, tbl3.Y, tbl3.Z)
				end

				task.wait(0.1)
			end
		end)
	end,
})

v5:AddSlider("PlateSizeX", {
	Compact = false,
	Text = "Plate Width (X)",
	Default = 64,
	Min = 1,
	Max = 500,
	Rounding = 0,
	Callback = function(x)
		tbl3.X = x
	end,
})

v5:AddSlider("PlateSizeY", {
	Compact = false,
	Text = "Plate Height (Y)",
	Default = 1,
	Min = 1,
	Max = 100,
	Rounding = 0,
	Callback = function(y)
		tbl3.Y = y
	end,
})

v5:AddSlider("PlateSizeZ", {
	Compact = false,
	Text = "Plate Depth (Z)",
	Default = 64,
	Min = 1,
	Max = 500,
	Rounding = 0,
	Callback = function(z)
		tbl3.Z = z
	end,
})

local walkSpeed = 16
local jumpPower = 50
local flag22 = false
local flag23 = false
local Movement = tbl.Misc:AddLeftGroupbox("Movement", "zap")

if workspace:FindFirstChild("NametagChanged") == nil then
	local stringValue = Instance.new("StringValue", workspace)
	stringValue.Name = "NametagChanged"
	stringValue.Value = ""
end

local Tags = tbl.Misc:AddRightGroupbox("Tags", "user")
Tags:AddLabel("All of these are client sided meaning other people cant see it", true)
Tags:AddDivider()

Tags:AddInput("NametagInput", {
	Default = "",
	Numeric = false,
	Finished = false,
	Text = "",
	Placeholder = "New nametag text",
	Callback = function(value)
		workspace.NametagChanged.Value = value
	end,
})

Tags:AddToggle("NametagToggle", {
	Text = "Change Nametag",
	Default = false,
	Callback = function(autoSetNameTag)
		_G.AutoSetNameTag = autoSetNameTag

		while _G.AutoSetNameTag do
			if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") and localPlayer.Character.Head:FindFirstChild("Nametag") then
				if localPlayer.Character.Head.Nametag:FindFirstChild("TextLabel") and localPlayer.Character.Head.Nametag.TextLabel.Text ~= workspace.NametagChanged.Value then
					localPlayer.Character.Head.Nametag.TextLabel.Text = workspace.NametagChanged.Value
				end
			end

			task.wait()
		end
	end,
})

Tags:AddDivider()
local image = "rbxassetid://76170954125105"
local connection = nil
local connection2 = nil

local function fn10(arg)
	local head = arg:WaitForChild("Head", 5)
	if not head then
		return
	end
	local nametag = head:WaitForChild("Nametag", 5)
	if not nametag then
		return
	end
	local deviceImage = nametag:WaitForChild("deviceImage", 5)
	if not deviceImage then
		return
	end

	if not deviceImage:IsA("ImageLabel") and not deviceImage:IsA("ImageButton") then
		return
	end
	deviceImage.Image = image

	if connection then
		connection:Disconnect()
	end

	connection = deviceImage:GetPropertyChangedSignal("Image"):Connect(function()
		if deviceImage.Image ~= image then
			deviceImage.Image = image
		end
	end)
end

Tags:AddDropdown("DeviceImageDropdown", {
	Text = "Device Icon",
	Values = { "PC", "Mobile", "Console" },
	Default = "PC",
	Multi = false,
	Callback = function(arg)
		if arg == "PC" then
			image = "rbxassetid://76170954125105"
		elseif arg == "Mobile" then
			image = "rbxassetid://111896694304106"
		elseif arg == "Console" then
			image = "rbxassetid://81295685226914"
		end
	end,
})

local image2 = nil

Tags:AddToggle("DeviceImageHook", {
	Text = "Spoof Device",
	Default = false,
	Callback = function(arg)
		if connection then
			connection:Disconnect()
			connection = nil
		end

		if connection2 then
			connection2:Disconnect()
			connection2 = nil
		end

		if not arg then
			if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") then
				local nametag = localPlayer.Character.Head:FindFirstChild("Nametag", true)

				if nametag then
					local deviceImage = nametag:FindFirstChild("deviceImage", true)

					if deviceImage and image2 then
						deviceImage.Image = image2
					end
				end
			end

			return
		end

		if localPlayer.Character and localPlayer.Character:FindFirstChild("Head") then
			local nametag = localPlayer.Character.Head:FindFirstChild("Nametag", true)

			if nametag then
				local deviceImage = nametag:FindFirstChild("deviceImage", true)

				if deviceImage then
					image2 = deviceImage.Image
				end
			end
		end

		if localPlayer.Character then
			fn10(localPlayer.Character)
		end

		connection2 = localPlayer.CharacterAdded:Connect(function(character)
			if toggles.DeviceImageHook.Value then
				fn10(character)
			end
		end)
	end,
})

Movement:AddSlider("MiscWalkSpeed", {
	Text = "Walk Speed",
	Default = 16,
	Min = 16,
	Max = 1000,
	Rounding = 0,
	Compact = true,
	Callback = function(walkSpeed2)
		walkSpeed = walkSpeed2

		if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
			localPlayer.Character.Humanoid.WalkSpeed = walkSpeed2
		end
	end,
})

Movement:AddToggle("MiscKeepWalkSpeed", {
	Text = "Set Walk Speed",
	Default = false,
	Callback = function(arg)
		flag22 = arg
		if not arg then
			return
		end

		task.spawn(function()
			while flag22 do
				if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character.Humanoid.WalkSpeed ~= walkSpeed then
					localPlayer.Character.Humanoid.WalkSpeed = walkSpeed
				end

				task.wait()
			end
		end)
	end,
})

Movement:AddSlider("MiscJumpPower", {
	Text = "Jump Power",
	Default = 50,
	Min = 50,
	Max = 1000,
	Rounding = 0,
	Compact = true,
	Callback = function(jumpPower2)
		jumpPower = jumpPower2

		if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
			localPlayer.Character.Humanoid.JumpPower = jumpPower2
		end
	end,
})

Movement:AddToggle("MiscKeepJumpPower", {
	Text = "Set Jump Power",
	Default = false,
	Callback = function(arg)
		flag23 = arg
		if not arg then
			return
		end

		task.spawn(function()
			while flag23 do
				if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character.Humanoid.JumpPower ~= jumpPower then
					localPlayer.Character.Humanoid.JumpPower = jumpPower
				end

				task.wait()
			end
		end)
	end,
})

local Teleport = tbl.Misc:AddLeftGroupbox("Teleport", "map-pin")
local str11 = "Arena"

Teleport:AddDropdown("TeleportPlaceDropdown", {
	Searchable = true,
	Text = "Place",
	Values = {
		"Arena",
		"Lobby",
		"Hunter Room",
		"Tournament",
		"Brazil",
		"Island Slapple",
		"Plate",
		"Cannon Island",
		"Keypad",
		"Cube Of Death",
		"Moai Island",
		"Default Arena",
		"Island 1",
		"Island 2",
		"Island 3",
	},
	Default = "Arena",
	Multi = false,
	Callback = function(arg)
		str11 = arg
	end,
})

Teleport:AddButton({
	Text = "Teleport",
	Func = function()
		local character = localPlayer.Character
		if not character or not character:FindFirstChild("HumanoidRootPart") then
			lib:Notify({ Title = "Teleport", Description = "Character not found", Duration = 3 })
			return
		end
		local humanoidRootPart = character.HumanoidRootPart
		local v17 = str11

		if v17 == "Arena" then
			humanoidRootPart.CFrame = workspace.Origo.CFrame * CFrame.new(0, -5, 0)
		elseif v17 == "Lobby" then
			humanoidRootPart.CFrame = CFrame.new(-800, 328, -2.5)
		elseif v17 == "Hunter Room" then
			humanoidRootPart.CFrame = workspace.BountyHunterRoom.Union.CFrame * CFrame.new(0, 5, 0)
		elseif v17 == "Brazil" then
			humanoidRootPart.CFrame = workspace.Lobby.brazil.portal.CFrame
		elseif v17 == "Island Slapple" then
			humanoidRootPart.CFrame = workspace.Arena.island5.Union.CFrame * CFrame.new(0, 3.25, 0)
		elseif v17 == "Plate" then
			humanoidRootPart.CFrame = workspace.Arena.Plate.CFrame
		elseif v17 == "Tournament" then
			if workspace:FindFirstChild("TournamentIsland") then
				humanoidRootPart.CFrame = workspace.TournamentIsland.Spawns.Part.CFrame * CFrame.new(0, 2, 0)
			else
				lib:Notify({ Title = "Teleport", Description = "Tournament Island hasn't spawned", Duration = 3 })
			end
		elseif v17 == "Cannon Island" then
			humanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0, 0, 35)
		elseif v17 == "Keypad" then
			if not workspace:FindFirstChild("Keypad") then
				lib:Notify({ Title = "Teleport", Description = "No keypad in this server", Duration = 3 })
			else
				humanoidRootPart.CFrame = workspace.Keypad.Buttons.Enter.CFrame
			end
		elseif v17 == "Cube Of Death" then
			if workspace.Arena.CubeOfDeathArea:FindFirstChild("the cube of death(i heard it kills)") then
				humanoidRootPart.CFrame = workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CFrame * CFrame.new(0, 5, 0)
			else
				lib:Notify({ Title = "Teleport", Description = "Cube of Death not found", Duration = 3 })
			end
		elseif v17 == "Moai Island" then
			humanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
		elseif v17 == "Default Arena" then
			humanoidRootPart.CFrame = CFrame.new(120, 360, -3)
		elseif v17 == "Island 1" then
			humanoidRootPart.CFrame = CFrame.new(-211.210846, -5.27827597, 4.13719559, -0.0225322824, 1.83683113e-08, -0.999746144, -1.83560154e-08, 1, 1.87866842e-08, 0.999746144, 1.87746618e-08, -0.0225322824)
		elseif v17 == "Island 2" then
			humanoidRootPart.CFrame = CFrame.new(-8.17191315, -5.14452887, -205.249741, -0.98216176, -3.48867246e-09, -0.188037917, -4.19987778e-09, 1, 3.38382322e-09, 0.188037917, 4.11319823e-09, -0.98216176)
		elseif v17 == "Island 3" then
			humanoidRootPart.CFrame = CFrame.new(-6.66747713, -5.06731462, 213.575378, 0.945777893, 2.52095178e-10, 0.324814111, -3.7823856e-08, 1, 1.09357536e-07, -0.324814111, -1.15713661e-07, 0.945777893)
		end
	end,
})

local tbl4 = { Prediction = 0.1, Smoothness = 0.5 }
local vector = Vector3.zero
local flag24 = false
local connection3 = nil
local v17 = tbl.Misc:AddRightGroupbox("Velocity Desync", "zap")

v17:AddSlider("DesyncPrediction", {
	Text = "Prediction",
	Default = 10,
	Min = 1,
	Max = 100,
	Rounding = 0,
	Compact = false,
	Callback = function(arg)
		tbl4.Prediction = arg / 100
	end,
})

v17:AddSlider("DesyncSmoothness", {
	Text = "Smoothness",
	Default = 50,
	Min = 1,
	Max = 100,
	Rounding = 0,
	Compact = false,
	Callback = function(arg)
		tbl4.Smoothness = arg / 100
	end,
})

v17:AddToggle("VelocityDesyncToggle", {
	Text = "Velocity Desync",
	Default = false,
	Callback = function(arg)
		flag24 = arg

		if connection3 then
			connection3:Disconnect()
			connection3 = nil
		end

		vector = Vector3.zero
		if not arg then
			return
		end

		connection3 = game:GetService("RunService").Heartbeat:Connect(function()
			if not flag24 then
				return
			end
			local character = localPlayer.Character
			if not character then
				return
			end
			local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
			local humanoid = character:FindFirstChild("Humanoid")
			if not humanoidRootPart or not humanoid then
				return
			end
			local networkPing = localPlayer:GetNetworkPing()
			local n4 = math.clamp(tbl4.Prediction + networkPing * 0.16, 0.05, 0.25)
			local n5 = math.clamp(tbl4.Smoothness + networkPing * 0.065, 0.09, 0.2)
			local velocity = humanoidRootPart.Velocity
			vector = vector:Lerp(Vector3.new(velocity.X, velocity.Y * 0.1, velocity.Z) * n4, n5)
			humanoid.CameraOffset = humanoidRootPart.CFrame:VectorToObjectSpace(-vector)
			local cFrame = humanoidRootPart.CFrame
			humanoidRootPart.CFrame = cFrame + vector
			game:GetService("RunService").RenderStepped:Wait()

			if humanoidRootPart.Parent then
				humanoidRootPart.CFrame = cFrame
			end
		end)
	end,
})

local tbl5 = {}
local flag25 = false
local v18 = tbl.Misc:AddRightGroupbox("Free Animations", "music")
v18:AddLabel("Use /e ___ — emote name", true)

v18:AddToggle("FreeEmoteToggle", {
	Text = "Free Emote",
	Default = false,
	Callback = function(loadingEmote)
		_G.LoadingEmote = loadingEmote

		tbl5 = {
			L = localPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").AnimationPack.L),
			GROOVE = localPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").AnimationPack.Groove),
			HELICOPTER = localPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").AnimationPack.Helicopter),
			FLOSS = localPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").AnimationPack.Floss),
			KICK = localPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").AnimationPack.Kick),
			HEADLESS = localPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").AnimationPack.Headless),
			LAUGH = localPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").AnimationPack.Laugh),
			PARKER = localPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").AnimationPack.Parker),
			THRILLER = localPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").AnimationPack.Thriller),
			SPASM = localPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").AnimationPack.Spasm),
		}

		local consoleEmotes = localPlayer.PlayerGui:FindFirstChild("ConsoleEmotes")

		if consoleEmotes and consoleEmotes:FindFirstChild("Emotes") and consoleEmotes.Emotes:FindFirstChild("Frame") and consoleEmotes.Emotes.Frame:FindFirstChild("Buttons") then
			for _, child in pairs(consoleEmotes.Emotes.Frame.Buttons:GetChildren()) do
				if child:IsA("TextButton") then
					child.MouseButton1Click:Connect(function()
						if _G.LoadingEmote then
							localPlayer.PlayerGui:FindFirstChild("ConsoleEmotes").Enabled = false

							for _, v19 in pairs(tbl5) do
								if v19.IsPlaying then
									v19:Stop()
								end
							end

							task.wait()

							if tbl5[child.Text] then
								tbl5[child.Text]:Play()
							end

							localPlayer.Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
								if localPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
									for _, v19 in pairs(tbl5) do
										if v19.IsPlaying then
											v19:Stop()
										end
									end
								end
							end)
						end
					end)
				end
			end

			localPlayer.Chatted:Connect(function(message)
				if not _G.LoadingEmote then
					return
				end
				local v19 = string.lower(message)
				if v19 == "/e opengui" then
					localPlayer.PlayerGui:FindFirstChild("ConsoleEmotes").Enabled = true
					return
				end

				if v19 == "/e closegui" then
					localPlayer.PlayerGui:FindFirstChild("ConsoleEmotes").Enabled = false
					return
				end

				for _, v20 in pairs(tbl5) do
					if v20.IsPlaying then
						v20:Stop()
					end
				end

				task.wait()

				if v19 == "/e l" then
					tbl5.L:Play()
				elseif v19 == "/e groove" then
					tbl5.GROOVE:Play()
				elseif v19 == "/e helicopter" then
					tbl5.HELICOPTER:Play()
				elseif v19 == "/e floss" then
					tbl5.FLOSS:Play()
				elseif v19 == "/e kick" then
					tbl5.KICK:Play()
				elseif v19 == "/e headless" then
					tbl5.HEADLESS:Play()
				elseif v19 == "/e laugh" then
					tbl5.LAUGH:Play()
					game:GetService("ReplicatedStorage").AnimationSound:FireServer("LAUGH")
				elseif v19 == "/e parker" then
					tbl5.PARKER:Play()
				elseif v19 == "/e thriller" then
					tbl5.THRILLER:Play()
				elseif v19 == "/e spasm" then
					tbl5.SPASM:Play()
				end

				localPlayer.Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
					if localPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
						for _, v20 in pairs(tbl5) do
							if v20.IsPlaying then
								v20:Stop()
							end
						end
					end
				end)
			end)
		end

		if not flag25 then
			flag25 = true
			lib:Notify("Free Emote: /e <name> | /e opengui | /e closegui", 6)
		end
	end,
})

local v19 = tbl["UI Settings"]:AddLeftGroupbox("UI Settings", "settings")
local Menu = tbl["UI Settings"]:AddLeftGroupbox("Menu", "wrench")
Menu:AddLabel("Menu Keybind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Toggle Menu" })

Menu:AddToggle("ShowCustomCursor", {
	Text = "Custom Cursor",
	Default = true,
	Callback = function(showCustomCursor)
		lib.ShowCustomCursor = showCustomCursor
	end,
})

Menu:AddDropdown("NotificationSide", {
	Values = { "Left", "Right" },
	Default = "Right",
	Text = "Notification Side",
	Callback = function(arg)
		lib:SetNotifySide(arg)
	end,
})

Menu:AddDropdown("DPIDropdown", {
	Values = { "75%", "100%", "125%", "150%" },
	Default = "100%",
	Text = "DPI Scale",
	Callback = function(arg)
		local str12 = arg:gsub("%%", "")
		lib:SetDPIScale(tonumber(str12))
	end,
})

Menu:AddSlider("UICornerSlider", {
	Text = "Corner Radius",
	Default = lib.CornerRadius,
	Min = 0,
	Max = 20,
	Rounding = 0,
	Compact = false,
	HideMax = true,
	Callback = function(arg)
		v:SetCornerRadius(arg)
	end,
})

Menu:AddDivider()

Menu:AddButton({
	Text = "Unload Script",
	DoubleClick = true,
	Risky = true,
	Func = function()
		lib:Unload()
	end,
})

lib.ToggleKeybind = options.MenuKeybind
local name = game.Players.LocalPlayer.Name
local tbl6 = _G or {}

local function fn11(arg)
	for _, player in pairs(game.Players:GetPlayers()) do
		if string.sub(player.Name, 1, #arg):lower() == arg:lower() then
			return player
		end
	end
end

local v20 = tbl.Gloves:AddLeftGroupbox("Guardian Angel", "heart")

v20:AddInput("GuardianTarget", {
	Default = "",
	Numeric = false,
	Text = "",
	Finished = true,
	Placeholder = "Username",
	Callback = function(arg)
		local v21 = fn11(arg)

		if v21 then
			name = v21.Name
		end
	end,
})

v20:AddToggle("GloveGuardian", {
	Text = "Protect Player",
	Default = false,
	Callback = function(arg)
		if game.Players.LocalPlayer.leaderstats.Glove.Value == "Guardian Angel" then
			while arg and game.Players.LocalPlayer.leaderstats.Glove.Value == "Guardian Angel" do
				game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players[name])
				task.wait()
			end
		elseif arg == true then
			lib:Notify({
				Title = "Protect Player",
				Description = "You need the Guardian Angel glove equipped for this",
				Duration = 4,
			})

			toggles.GloveGuardian:SetValue(false)
		end
	end,
})

local Swapper = tbl.Gloves:AddRightGroupbox("Swapper", "target")
tbl6.TeleportOldPlace = "Yes"

Swapper:AddDropdown("GlovePlayerChoose", {
	Text = "Target Mode",
	Values = { "Username", "Random" },
	Default = "Username",
	Multi = false,
	Callback = function(playerChoose)
		tbl6.PlayerChoose = playerChoose
	end,
})

Swapper:AddInput("PlayerGloveTarget", {
	Default = "",
	Numeric = false,
	Text = "Target Username",
	Finished = true,
	Placeholder = "Type name then press Enter to lock target",
	Callback = function(noPlayerMatches)
		local v21 = fn11(noPlayerMatches)

		if v21 then
			tbl6.PlayerButton = v21.Name
			lib:Notify({ Title = "Target Locked", Description = "Now targeting: " .. v21.Name, Duration = 3 })
		else
			lib:Notify({ Title = "Not Found", Description = "No player matches: " .. noPlayerMatches, Duration = 3 })
		end
	end,
})

Swapper:AddButton({
	Text = "Swapper Void",
	Func = function()
		if tbl6.PlayerChoose == "Username" then
			if game.Players.LocalPlayer.Character:FindFirstChild("Swapper") or game.Players.LocalPlayer.Backpack:FindFirstChild("Swapper") then
				local cFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

				while true do
					task.wait()

					if workspace[tbl6.PlayerButton]:FindFirstChild("HumanoidRootPart") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace[tbl6.PlayerButton].HumanoidRootPart.Position.X, -70, workspace[tbl6.PlayerButton].HumanoidRootPart.Position.Z)
						task.wait(0.37)
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					end

					if not (game.Players[tbl6.PlayerButton].Character and workspace[tbl6.PlayerButton]:FindFirstChild("HumanoidRootPart") and workspace[tbl6.PlayerButton]:FindFirstChild("entered") and workspace[tbl6.PlayerButton].Ragdolled.Value == false) then
						continue
					end
					break
				end

				task.wait(0.6)
				game:GetService("ReplicatedStorage").SLOC:FireServer()
				wait(0.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				task.wait(0.05)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cFrame
			else
				lib:Notify({ Title = "Error", Description = "Need Swapper equipped in arena", Duration = 4 })
			end
		elseif tbl6.PlayerChoose == "Random" then
			if game.Players.LocalPlayer.Character:FindFirstChild("Swapper") or game.Players.LocalPlayer.Backpack:FindFirstChild("Swapper") then
				local cFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				local children = game.Players:GetChildren()
				local v21

				while true do
					v21 = children[math.random(1, #children)]
					if not (v21 ~= game.Players.LocalPlayer and v21.Character:FindFirstChild("entered") and v21.Character:FindFirstChild("Ragdolled").Value == false) then
						continue
					end
					break
				end

				while true do
					task.wait()

					if v21.Character:FindFirstChild("HumanoidRootPart") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v21.Character.HumanoidRootPart.Position.X, -70, v21.Character.HumanoidRootPart.Position.Z)
						task.wait(0.37)
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					end

					if not (v21.Character and v21.Character:FindFirstChild("HumanoidRootPart") and v21.Character:FindFirstChild("entered") and v21.Character:FindFirstChild("Ragdolled").Value == false) then
						continue
					end
					break
				end

				task.wait(0.6)
				game:GetService("ReplicatedStorage").SLOC:FireServer()
				wait(0.25)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				task.wait(0.05)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cFrame
			end
		end
	end,
})

tbl.Gloves:AddRightGroupbox("Sbeve", "star"):AddButton({
	Text = "Sbeve All Players",
	Func = function()
		if game.Players.LocalPlayer.leaderstats.Glove.Value == "Sbeve" or game.Players.LocalPlayer.Character:FindFirstChild("stevebody") then
			for _, child in pairs(game.Players:GetChildren()) do
				if child ~= game.Players.LocalPlayer and child.Character and child.Character:FindFirstChild("entered") and child.Character:FindFirstChild("HumanoidRootPart") and child.Character:FindFirstChild("stevebody") == nil and child.Character:FindFirstChild("rock") == nil and child.Character.Ragdolled.Value == false then
					child.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.stevebody.CFrame
				end
			end
		end
	end,
})

local Alchemist = tbl.Gloves:AddRightGroupbox("Alchemist", "flask-conical")

Alchemist:AddToggle("GloveAutoIngredients", {
	Text = "Auto Collect Ingredients",
	Default = false,
	Callback = function(autoPickupIngredients)
		tbl6.AutoPickupIngredients = autoPickupIngredients

		while tbl6.AutoPickupIngredients do
			if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" and game.Workspace:FindFirstChild("Alchemist_Ingredients_") then
				local v21 = pairs
				local alchemistIngredients = game.Workspace:FindFirstChild("Alchemist_Ingredients_")

				for _, child in v21(alchemistIngredients:GetChildren()) do
					if child:IsA("Model") and child:FindFirstChild("Clickbox") and child.Clickbox:FindFirstChild("ClickDetector") then
						child.Clickbox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					end
				end
			end

			task.wait()
		end
	end,
})

Alchemist:AddToggle("GloveInfiniteIngredients", {
	Text = "Infinite Ingredients",
	Default = false,
	Callback = function(infiniteIngredients)
		tbl6.InfiniteIngredients = infiniteIngredients

		if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
			while tbl6.InfiniteIngredients do
				for _, v21 in ipairs({
					"Mushroom",
					"Glowing Mushroom",
					"Fire Flower",
					"Winter Rose",
					"Dark Root",
					"Dire Flower",
					"Autumn Sprout",
					"Elder Wood",
					"Hazel Lily",
					"Wild Vine",
					"Jade Stone",
					"Lamp Grass",
					"Plane Flower",
					"Blood Rose",
					"Red Crystal",
					"Blue Crystal",
					"Cake Mix",
				}) do
					game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", v21)
				end

				task.wait()
			end
		elseif tbl6.InfiniteIngredients == true then
			lib:Notify({
				Title = "Infinite Ingredients",
				Description = "You need the Alchemist glove equipped for this",
				Duration = 4,
			})

			toggles.GloveInfiniteIngredients:SetValue(false)
		end
	end,
})

Alchemist:AddDropdown("GlovePotion", {
	Text = "Potion",
	Values = {
		"Grug",
		"Nightmare",
		"Confusion",
		"Power",
		"Paralyzing",
		"Haste",
		"Invisibility",
		"Explosion",
		"Invincible",
		"Toxic",
		"Freeze",
		"Feather",
		"Speed",
		"Lethal",
		"Slow",
		"Antitoxin",
		"Corrupted Vine",
		"Field",
		"Lost",
	},
	Default = "",
	Multi = false,
	Callback = function(makePotion)
		tbl6.MakePotion = makePotion
	end,
})

Alchemist:AddButton({
	Text = "Brew Potion",
	Func = function()
		if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
			if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name .. "'s Cauldron") then
				game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
			end

			local v21 = ipairs
			local getPotion = tbl6.GetPotion and tbl6.GetPotion[tbl6.MakePotion] or {}

			for _, v22 in v21(getPotion) do
				game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("AddItem", v22)
				game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("MixItem", v22)
				task.wait()
			end

			game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("BrewPotion")
		else
			lib:Notify({ Title = "Error", Description = "Need Alchemist equipped", Duration = 4 })
		end
	end,
})

Alchemist:AddToggle("GloveAutoPotion", {
	Text = "Auto Brew Potion",
	Default = false,
	Callback = function(autoMakePotion)
		tbl6.AutoMakePotion = autoMakePotion

		if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
			while tbl6.AutoMakePotion do
				if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name .. "'s Cauldron") then
					game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
				end

				local v21 = ipairs
				local getPotion = tbl6.GetPotion and tbl6.GetPotion[tbl6.MakePotion] or {}

				for _, v22 in v21(getPotion) do
					game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("AddItem", v22)
					game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("MixItem", v22)
				end

				game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("BrewPotion")
				task.wait(0.01)
			end
		elseif tbl6.AutoMakePotion == true then
			lib:Notify({
				Title = "Auto Brew Potion",
				Description = "You need the Alchemist glove equipped for this",
				Duration = 4,
			})

			toggles.GloveAutoPotion:SetValue(false)
		end
	end,
})

local Pillow = tbl.Gloves:AddRightGroupbox("Pillow", "moon")

Pillow:AddToggle("GloveAutoPillow", {
	Text = "Auto Collect Pillow",
	Default = false,
	Callback = function(autoCollectPillow)
		tbl6.AutoCollectPillow = autoCollectPillow

		while tbl6.AutoCollectPillow do
			if game.Players.LocalPlayer.leaderstats.Glove.Value == "Pillow" and game.Workspace:FindFirstChild("pillows_") then
				local v21 = pairs
				local pillows = game.Workspace:FindFirstChild("pillows_")

				for _, child in v21(pillows:GetChildren()) do
					if child.Name == "pillow_model" and child:FindFirstChild("Clickbox") and child.Clickbox:FindFirstChild("ClickDetector") then
						child.Clickbox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					end
				end
			end

			task.wait()
		end
	end,
})

Pillow:AddToggle("GloveInfinityPillow", {
	Text = "Infinite Pillow",
	Default = false,
	Callback = function(infinityPillow)
		tbl6.InfinityPillow = infinityPillow

		if game.Players.LocalPlayer.leaderstats.Glove.Value == "Pillow" then
			while tbl6.InfinityPillow do
				game:GetService("ReplicatedStorage").Events.PillowEvent:FireServer("AddPillow")
				task.wait()
			end
		elseif tbl6.InfinityPillow == true then
			lib:Notify({
				Title = "Infinite Pillow",
				Description = "You need the Pillow glove equipped for this",
				Duration = 4,
			})

			toggles.GloveInfinityPillow:SetValue(false)
		end
	end,
})

local Replica = tbl.Gloves:AddRightGroupbox("Replica", "user")
local str12 = ""

Replica:AddInput("ReplicaStickTargetInput", {
	Default = "",
	Numeric = false,
	Text = "",
	Finished = true,
	Placeholder = "Username",
	Callback = function(arg)
		local v21 = fn11(arg)

		if v21 then
			str12 = v21.Name
		end
	end,
})

Replica:AddToggle("GloveReplicaStick", {
	Text = "Teleport Clone to Target",
	Default = false,
	Callback = function(replicaStick)
		tbl6.ReplicaStick = replicaStick

		if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" then
			while tbl6.ReplicaStick do
				local flag26 = str12 ~= "" and game.Players:FindFirstChild(str12) or nil

				if flag26 and flag26 ~= game.Players.LocalPlayer and flag26.Character and flag26.Character:FindFirstChild("HumanoidRootPart") then
					for _, child in pairs(game.Workspace:GetChildren()) do
						if child.Name == "Å" .. game.Players.LocalPlayer.Name and child:FindFirstChild("HumanoidRootPart") then
							child.HumanoidRootPart.CFrame = flag26.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 6)
						end
					end
				end

				task.wait()
			end
		elseif tbl6.ReplicaStick == true then
			lib:Notify({
				Title = "Teleport Clone to Target",
				Description = "You need the Replica glove equipped for this",
				Duration = 4,
			})

			toggles.GloveReplicaStick:SetValue(false)
		end
	end,
})

local Rob = tbl.Gloves:AddLeftGroupbox("Rob", "dollar-sign")

Rob:AddSlider("GloveRobExtend", {
	Text = "Extend HitBox",
	Default = 16,
	Min = 16,
	Max = 400,
	Rounding = 1,
	Compact = true,
	Callback = function(extendHitboxRob)
		tbl6.ExtendHitboxRob = extendHitboxRob
	end,
})

Rob:AddToggle("GloveRobHitboxToggle", {
	Text = "Rob Hitbox Expander",
	Default = false,
	Callback = function(hitboxRob)
		tbl6.HitboxRob = hitboxRob

		while tbl6.HitboxRob do
			for _, child in pairs(game.Workspace:GetChildren()) do
				if child.Name == "Field" then
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - child.Position).Magnitude <= 0 then
						child.Size = Vector3.new(tbl6.ExtendHitboxRob, tbl6.ExtendHitboxRob, tbl6.ExtendHitboxRob)
					end
				end
			end

			task.wait()
		end

		for _, child in pairs(game.Workspace:GetChildren()) do
			if child.Name == "Field" then
				child.Size = Vector3.new(16, 16, 16)
			end
		end
	end,
})

local Cloud = tbl.Gloves:AddLeftGroupbox("Cloud", "cloud")

Cloud:AddInput("CloudSpeed", {
	Default = "2",
	Numeric = true,
	Text = "Fly Speed",
	Placeholder = "Speed",
	Callback = function(arg)
		tbl6.SetSpeedFlyCloud = tonumber(arg) or 2
	end,
})

Cloud:AddToggle("GloveCloudSpeed", {
	Text = "Cloud Speed",
	Default = false,
	Callback = function(cloudSpeed)
		tbl6.CloudSpeed = cloudSpeed

		if game.Players.LocalPlayer.leaderstats.Glove.Value == "Cloud" then
			local ControlModule = require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))

			while tbl6.CloudSpeed do
				for _, child in pairs(game.Workspace:GetChildren()) do
					if child.Name:match(game.Players.LocalPlayer.Name) and child:FindFirstChild("BodyVelocity") and child:FindFirstChild("VehicleSeat") then
						if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
							if 3 >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - child.VehicleSeat.Position).Magnitude then
								local moveVector = ControlModule:GetMoveVector()

								if moveVector.X ~= 0 then
									child.BodyVelocity.Velocity = child.BodyVelocity.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * moveVector.X * tbl6.SetSpeedFlyCloud
								end

								if moveVector.Z ~= 0 then
									child.BodyVelocity.Velocity = child.BodyVelocity.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * moveVector.Z * tbl6.SetSpeedFlyCloud
								end
							end
						end
					end
				end

				task.wait()
			end
		elseif tbl6.CloudSpeed == true then
			lib:Notify({
				Title = "Cloud Speed",
				Description = "You need the Cloud glove equipped for this",
				Duration = 4,
			})

			toggles.GloveCloudSpeed:SetValue(false)
		end
	end,
})

Cloud:AddToggle("GloveBringAllCloud", {
	Text = "Bring all cloud",
	Default = false,
	Callback = function(bringAllCloud)
		tbl6.BringAllCloud = bringAllCloud

		while tbl6.BringAllCloud do
			for _, child in pairs(game.Workspace:GetChildren()) do
				if child:FindFirstChild("VehicleSeat") then
					local character = game.Players.LocalPlayer.Character

					if character and character:FindFirstChild("HumanoidRootPart") then
						child.VehicleSeat.CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, -2.32, 0)
					end
				end
			end

			task.wait()
		end
	end,
})

Cloud:AddToggle("GloveBringMyCloud", {
	Text = "Bring my cloud",
	Default = false,
	Callback = function(bringMyCloud)
		tbl6.BringMyCloud = bringMyCloud

		if game.Players.LocalPlayer.leaderstats.Glove.Value == "Cloud" then
			while tbl6.BringMyCloud do
				local character = game.Players.LocalPlayer.Character

				if character and character:FindFirstChild("entered") and character.Humanoid.Sit == false then
					for _, child in pairs(game.Workspace:GetChildren()) do
						if child.Name:match(game.Players.LocalPlayer.Name) and child:FindFirstChild("VehicleSeat") then
							child.VehicleSeat.CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, -2.32, 0)
						end
					end
				end

				task.wait()
			end
		elseif tbl6.BringMyCloud == true then
			lib:Notify({
				Title = "Bring My Cloud",
				Description = "You need the Cloud glove equipped for this",
				Duration = 4,
			})

			toggles.GloveBringMyCloud:SetValue(false)
		end
	end,
})

tbl.Gloves:AddRightGroupbox("Kinetic", "activity"):AddToggle("GloveFullKinetic", {
	Text = "Auto Full Kinetic",
	Default = false,
	Callback = function(fullKineticSpam)
		tbl6.FullKineticSpam = fullKineticSpam

		if game.Players.LocalPlayer.leaderstats.Glove.Value == "Kinetic" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
			while tbl6.FullKineticSpam do
				game.ReplicatedStorage.SelfKnockback:FireServer({ Force = 0, Direction = Vector3.new(0, 0.01, 0) })
				task.wait()
			end
		elseif tbl6.FullKineticSpam == true then
			lib:Notify({
				Title = "Auto Full Kinetic",
				Description = "You need the Kinetic glove equipped and be in the arena",
				Duration = 4,
			})

			toggles.GloveFullKinetic:SetValue(false)
		end
	end,
})

tbl.Gloves:AddRightGroupbox("Golden", "star"):AddButton({
	Text = "Infinite Golden Time",
	Func = function()
		if localPlayer.leaderstats.Glove.Value == "Golden" then
			if localPlayer.Character and localPlayer.Character:FindFirstChild("entered") then
				game:GetService("ReplicatedStorage").Goldify:FireServer(true)
			else
				lib:Notify({ Title = "Golden", Description = "You need to be in the arena", Duration = 3 })
			end
		else
			lib:Notify({ Title = "Golden", Description = "You don't have Golden equipped", Duration = 3 })
		end
	end,
})

local v21 = tbl.Badges:AddLeftGroupbox("Orb Farm", "gem")

v21:AddToggle("JetOrbFarm", {
	Text = "Jet Orb Farm",
	Default = false,
	Callback = function(jetOrbFarm)
		tbl6.JetOrbFarm = jetOrbFarm

		while tbl6.JetOrbFarm do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name == "JetOrb" then
					firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), child, 0)
					firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), child, 1)
				end
			end

			task.wait()
		end
	end,
})

v21:AddToggle("PhaseOrbFarm", {
	Text = "Phase Orb Farm",
	Default = false,
	Callback = function(phaseOrbFarm)
		tbl6.PhaseOrbFarm = phaseOrbFarm

		while tbl6.PhaseOrbFarm do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name == "PhaseOrb" then
					firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), child, 0)
					firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), child, 1)
				end
			end

			task.wait()
		end
	end,
})

v21:AddToggle("SiphonOrbFarm", {
	Text = "Siphon Orb Farm",
	Default = false,
	Callback = function(siphonOrbFarm)
		tbl6.SiphonOrbFarm = siphonOrbFarm

		if localPlayer.leaderstats.Slaps.Value >= 5000 then
			while tbl6.SiphonOrbFarm do
				for _, child in pairs(workspace:GetChildren()) do
					if child.Name == "SiphonOrb" then
						firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), child, 0)
						firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), child, 1)
					end
				end

				task.wait()
			end
		elseif siphonOrbFarm == true then
			lib:Notify({ Title = "Siphon Orb Farm", Description = "You need at least 5,000 slaps", Duration = 4 })
			toggles.SiphonOrbFarm:SetValue(false)
		end
	end,
})

v21:AddToggle("MaterializeOrbFarm", {
	Text = "MATERIALIZE Orb Farm",
	Default = false,
	Callback = function(materializeOrbFarm)
		tbl6.MaterializeOrbFarm = materializeOrbFarm

		while tbl6.MaterializeOrbFarm do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name == "MATERIALIZEOrb" then
					firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), child, 0)
					firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), child, 1)
				end
			end

			task.wait()
		end
	end,
})

local v22 = tbl.Badges:AddLeftGroupbox("In-Game Badges", "star")

v22:AddButton({
	Text = "Get Iceskate Badge",
	Func = function()
		ReplicatedStorage.IceSkate:FireServer("Freeze")
		lib:Notify({ Title = "Iceskate Badge", Description = "Done! Check your badges", Duration = 3 })
	end,
})

v22:AddButton({
	Text = "Get Lamp Badge",
	Func = function()
		if localPlayer.leaderstats.Slaps.Value < 25 then
			lib:Notify({ Title = "Lamp Badge", Description = "You need at least 25 slaps for this one", Duration = 4 })
			return
		end
		local value = localPlayer.leaderstats.Glove.Value

		if not localPlayer.Character:FindFirstChild("entered") and localPlayer.leaderstats.Glove.Value ~= "ZZZZZZZ" then
			fireclickdetector(workspace.Lobby.ZZZZZZZ.ClickDetector)
		end

		for i = 1, 5 do
			task.wait()
			ReplicatedStorage.nightmare:FireServer("LightBroken")
		end

		if not localPlayer.Character:FindFirstChild("entered") then
			pcall(function()
				fireclickdetector(workspace.Lobby[value].ClickDetector)
			end)
		end

		lib:Notify({ Title = "Lamp Badge", Description = "Done! Badge should be on its way", Duration = 4 })
	end,
})

v22:AddButton({
	Text = "Get Plank Badge",
	Func = function()
		if localPlayer.leaderstats.Slaps.Value < 1075 then
			lib:Notify({
				Title = "Plank Badge",
				Description = "You need at least 1,075 slaps for this one",
				Duration = 4,
			})

			return
		end

		if localPlayer.leaderstats.Glove.Value ~= "Fort" then
			lib:Notify({ Title = "Plank Badge", Description = "Equip the Fort glove first", Duration = 4 })
			return
		end

		if not localPlayer.Character:FindFirstChild("entered") then
			lib:Notify({ Title = "Plank Badge", Description = "You need to be in the arena first", Duration = 4 })
			return
		end
		local cFrame = localPlayer.Character.HumanoidRootPart.CFrame
		localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-364.407684, 77.866585, 14.302447)
		task.wait(0.5)
		ReplicatedStorage:WaitForChild("Fort"):FireServer()
		task.wait(0.1)
		ReplicatedStorage:WaitForChild("Fort"):FireServer()
		task.wait(0.5)
		localPlayer.Character.HumanoidRootPart.CFrame = cFrame
		lib:Notify({ Title = "Plank Badge", Description = "Done! Badge should be on its way", Duration = 3 })
	end,
})

v22:AddButton({
	Text = "Get [REDACTED] Badge",
	Func = function()
		if localPlayer.leaderstats.Slaps.Value < 5000 then
			lib:Notify({
				Title = "[REDACTED] Badge",
				Description = "You need at least 5,000 slaps for this one",
				Duration = 4,
			})

			return
		end

		local cFrame = localPlayer.Character.HumanoidRootPart.CFrame

		for _, child in pairs(workspace.PocketDimension.Doors:GetChildren()) do
			local cFrame2 = child.CFrame
			child.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
			task.wait(0.5)
			child.CFrame = cFrame2

			if localPlayer.Character.Humanoid.Health ~= 0 then
				localPlayer.Character.HumanoidRootPart.CFrame = cFrame
				break
			else
				task.wait(3.3)
			end
		end

		lib:Notify({ Title = "[REDACTED] Badge", Description = "Done! Check your badges", Duration = 3 })
	end,
})

v22:AddButton({
	Text = "Get Duck Badge",
	Func = function()
		pcall(function()
			fireclickdetector(workspace.Arena["default island"]["Rubber Ducky"].ClickDetector)
		end)

		lib:Notify({ Title = "Duck Badge", Description = "Done! Badge should pop up shortly", Duration = 3 })
	end,
})

v22:AddButton({
	Text = "Get The Lone Orange Badge",
	Func = function()
		pcall(function()
			fireclickdetector(workspace.Arena.island5.Orange.ClickDetector)
		end)

		lib:Notify({ Title = "Lone Orange Badge", Description = "Done! Badge should pop up shortly", Duration = 3 })
	end,
})

v22:AddButton({
	Text = "Get Court Evidence Badge",
	Func = function()
		pcall(function()
			fireclickdetector(workspace.Lobby.Scene.knofe.ClickDetector)
		end)

		lib:Notify({ Title = "Court Evidence Badge", Description = "Done! Badge should pop up shortly", Duration = 3 })
	end,
})

v22:AddButton({
	Text = "Get Brazil Badge",
	Func = function()
		pcall(function()
			localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-924, 307, -2)
		end)

		lib:Notify({ Title = "Brazil Badge", Description = "Done! Badge should pop up shortly", Duration = 3 })
	end,
})

v22:AddButton({
	Text = "Complete Hunt for the Hunter Quest",
	Func = function()
		pcall(function()
			if workspace.Arena.CannonIsland.TreasureSpots._treasureSpot11.Decal.Transparency == 0 then
				localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(289, 13, 261)

				while true do
					task.wait()
					ReplicatedStorage.DigEvent:FireServer({ index = 2, cf = CFrame.new() })
					if not (workspace:FindFirstChild("TreasureChestFolder") and workspace.TreasureChestFolder:FindFirstChild("TreasureChest")) then
						continue
					end
					break
				end

				workspace.TreasureChestFolder.TreasureChest.OpenRemote:FireServer()
				localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17895, -130, -3522)
				lib:Notify({ Title = "Hunt for the Hunter", Description = "Quest done! Nice one", Duration = 4 })
			else
				lib:Notify({
					Title = "Hunt for the Hunter",
					Description = "You need to start the quest first before running this",
					Duration = 4,
				})
			end
		end)
	end,
})

v22:AddButton({
	Text = "Complete Easter Egg Hunter Quest",
	Func = function()
		if workspace:FindFirstChild("EasterHuntEggs") then
			for _, child in pairs(workspace.EasterHuntEggs:GetChildren()) do
				if child:FindFirstChild("ClickDetector") then
					fireclickdetector(child.ClickDetector)
				end
			end

			lib:Notify({ Title = "Easter Egg Hunter", Description = "Done! Nice one", Duration = 3 })
		else
			lib:Notify({
				Title = "Easter Egg Hunter",
				Description = "You need to start the quest first before running this",
				Duration = 4,
			})
		end
	end,
})

local v23 = tbl.Badges:AddRightGroupbox("Subplace Gloves", "zap")
v23:AddLabel("You need to be in a specific game in order to obtain these badges", true)
v23:AddDivider()

v23:AddButton({
	Text = "Get Admin Badge",
	Func = function()
		lib:Notify({ Title = "Admin Badge", Description = "You need to be in Brazil", Duration = 4 })
		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(500, 81, 61)
                game:GetService("StarterGui"):SetCore("SendNotification",{Title="Getting Admin...",Text="This will take one hour.",Duration=3600})
                game.Players.LocalPlayer.Idled:Connect(function()
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
                end)
                for i,v in pairs(game.ReplicatedStorage.Assets.Retro.Map.RetroObbyMap:GetChildren()) do
                    if v:FindFirstChild("StaffApp") then
                        while task.wait() do
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.StaffApp.Button.CFrame
                            fireclickdetector(v.StaffApp.Button:WaitForChild("ClickDetector"))
                        end
                    end
                end
            ]])
		end

		game:GetService("TeleportService"):Teleport(7234087065)
	end,
})

v23:AddButton({
	Text = "Get Bind Badge",
	Func = function()
		lib:Notify({ Title = "Bind Badge", Description = "You need to be in Binded Maze", Duration = 4 })
		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                wait(0.5)
                fireclickdetector(workspace:WaitForChild("Orb").ClickDetector)
            ]])
		end

		game:GetService("TeleportService"):Teleport(74169485398268)
	end,
})

v23:AddButton({
	Text = "Get Boxer Badge",
	Func = function()
		lib:Notify({ Title = "Boxer Badge", Description = "You need to be in Brazil", Duration = 4 })
		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4174, 3498, 250)
                fireclickdetector(workspace:WaitForChild("BoxingGloves").ClickDetector)
                wait(0.1)
                game:GetService("TeleportService"):Teleport(6403373529)
            ]])
		end

		game:GetService("TeleportService"):Teleport(7234087065)
	end,
})

v23:AddButton({
	Text = "Get Chain Badge",
	Func = function()
		lib:Notify({ Title = "Chain Badge", Description = "You need to be in Origin", Duration = 4 })
		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([=[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                local code = {}
                for i,v in pairs(workspace.Map:WaitForChild("CodeBrick").SurfaceGui:GetChildren()) do
                    if v.Name == "IMGTemplate" then
                        local map = {
                            ["http://www.roblox.com/asset/?id=9648769161"]="4",
                            ["http://www.roblox.com/asset/?id=9648765536"]="2",
                            ["http://www.roblox.com/asset/?id=9648762863"]="3",
                            ["http://www.roblox.com/asset/?id=9648759883"]="9",
                            ["http://www.roblox.com/asset/?id=9648755440"]="8",
                            ["http://www.roblox.com/asset/?id=9648752438"]="2",
                            ["http://www.roblox.com/asset/?id=9648749145"]="8",
                            ["http://www.roblox.com/asset/?id=9648745618"]="3",
                            ["http://www.roblox.com/asset/?id=9648742013"]="7",
                            ["http://www.roblox.com/asset/?id=9648738553"]="8",
                            ["http://www.roblox.com/asset/?id=9648734698"]="2",
                            ["http://www.roblox.com/asset/?id=9648730082"]="6",
                            ["http://www.roblox.com/asset/?id=9648723237"]="3",
                            ["http://www.roblox.com/asset/?id=9648718450"]="6",
                            ["http://www.roblox.com/asset/?id=9648715920"]="6",
                            ["http://www.roblox.com/asset/?id=9648712563"]="2",
                        }
                        if map[v.Image] then table.insert(code, map[v.Image]) end
                    end
                end
                fireclickdetector(workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector)
                wait(0.3)
                for i = 1, 4 do
                    fireclickdetector(workspace.Map.OriginOffice.Door.Keypad.Buttons[code[i]].ClickDetector)
                    wait(0.3)
                end
                fireclickdetector(workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector)
                game:GetService("TeleportService"):Teleport(6403373529)
            ]=])
		end

		game:GetService("TeleportService"):Teleport(9431156611)
	end,
})

v23:AddButton({
	Text = "Get Clock Badge",
	Func = function()
		lib:Notify({ Title = "Clock Badge", Description = "You need to be in Brazil", Duration = 4 })
		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game:GetService("RunService").RenderStepped:Connect(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250,150,-458)
                end)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Guy-that-exists/Hub-that-exists/main/Slap%20Battles/Get%20Clock"))()
            ]])
		end

		game:GetService("TeleportService"):Teleport(7234087065)
	end,
})

v23:AddButton({
	Text = "Get Counter Badge",
	Func = function()
		lib:Notify({
			Title = "Counter Badge",
			Description = "You need to be in Elude Maze! (~2 minutes)",
			Duration = 4,
		})

		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game:GetService("StarterGui"):SetCore("SendNotification",{Title="Getting Counter...",Text="This will take two minutes.",Duration=120})
                fireclickdetector(workspace.CounterLever.ClickDetector)
                workspace:WaitForChild("Pim"):Destroy()
                repeat task.wait() until workspace.Maze:FindFirstChildOfClass("MeshPart")
                fireclickdetector(workspace.Maze:FindFirstChildOfClass("MeshPart").ClickDetector)
            ]])
		end

		game:GetService("TeleportService"):Teleport(11828384869)
	end,
})

v23:AddButton({
	Text = "Get Eggler Badge",
	Func = function()
		if not workspace:FindFirstChild("EggTeleport") then
			lib:Notify({
				Title = "Eggler Badge",
				Description = "You need to complete the Easter Egg Hunter quest first",
				Duration = 4,
			})

			return
		end

		lib:Notify({ Title = "Eggler Badge", Description = "You need to be in the Easter Event", Duration = 4 })
		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(70, 4235, 0)
                wait(0.5)
                game.ReplicatedStorage.Remotes.KennethInteract:FireServer("EggifyPlease")
                workspace.TrialCompletedPoints["Trial 1"].root.Size = Vector3.new(2048, 2048, 2048)
                workspace.TrialCompletedPoints["Trial 1"].root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                workspace.TrialCompletedPoints["Trial 2"].root.Size = Vector3.new(2048, 2048, 2048)
                workspace.TrialCompletedPoints["Trial 2"].root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                workspace.TrialCompletedPoints["Trial 3"].root.Size = Vector3.new(2048, 2048, 2048)
                workspace.TrialCompletedPoints["Trial 3"].root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait(2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(70, 4235, 0)
                wait(0.5)
                game.ReplicatedStorage.Remotes.KennethInteract:FireServer("AwardBadge")
            ]])
		end

		fireclickdetector(workspace.EggTeleport.ClickDetector)
	end,
})

v23:AddButton({
	Text = "Get Elude Badge",
	Func = function()
		lib:Notify({ Title = "Elude Badge", Description = "You need to be in Elude Maze", Duration = 4 })
		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game:GetService("RunService").RenderStepped:Connect(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502, 13, -180)
                end)
            ]])
		end

		game:GetService("TeleportService"):Teleport(11828384869)
	end,
})

v23:AddButton({
	Text = "Get Frostbite Badge",
	Func = function()
		lib:Notify({ Title = "Frostbite Badge", Description = "You need to be in Ice Trials", Duration = 4 })
		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-557, 180, 54)
                wait(0.25)
                fireproximityprompt(workspace.FinishDoor_Ice.Model.Part.ProximityPrompt)
            ]])
		end

		game:GetService("TeleportService"):Teleport(17290438723)
	end,
})

v23:AddButton({
	Text = "Get Guide Badges",
	Func = function()
		lib:Notify({
			Title = "Guide Badges",
			Description = "You need to be in Where Guide Resides! (~7 minutes)",
			Duration = 4,
		})

		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3260, -70, 823)
                fireclickdetector(workspace:WaitForChild("ShackLever").ClickDetector)
                game:GetService("StarterGui"):SetCore("SendNotification",{Title="Defeating Guide...",Text="This will take seven minutes.",Duration=410})
                workspace.Map.Components:WaitForChild("GuideNPC")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(595, 117, -165)
                wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                while task.wait() do
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Lantern)
                    end
                    for i,v in pairs(workspace:GetChildren()) do
                        if v.Name == "TrackGloveMissile" then
                            game.Players.LocalPlayer.Character.Lantern:Activate()
                            game.Players.LocalPlayer.Character.Lantern.Network:FireServer("Hit", v)
                        elseif v.Name == "GuideNPC" and v:FindFirstChild("HumanoidRootPart") then
                            game.Players.LocalPlayer.Character.Lantern:Activate()
                            game.Players.LocalPlayer.Character.Lantern.Network:FireServer("Hit", v.HumanoidRootPart)
                        end
                    end
                end
            ]])
		end

		game:GetService("TeleportService"):Teleport(18550498098)
	end,
})

v23:AddButton({
	Text = "Get Metaverse Badge",
	Func = function()
		lib:Notify({ Title = "Metaverse Badge", Description = "You need to be in Brazil", Duration = 4 })
		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game:GetService("StarterGui"):SetCore("SendNotification",{Title="Warning",Text="If not teleported after a while, rejoin and try again.",Duration=999})
                repeat wait() until workspace.Buildings:FindFirstChild("wizard twoer 2")
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Buildings["wizard twoer 2"].Model.Trigger, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Buildings["wizard twoer 2"].Model.Trigger, 1)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Guy-that-exists/Hub-that-exists/refs/heads/main/Slap%20Battles/Get%20Metaverse"))()
            ]])
		end

		game:GetService("TeleportService"):Teleport(7234087065)
	end,
})

v23:AddButton({
	Text = "Get Mouse Badge",
	Func = function()
		if localPlayer.leaderstats.Slaps.Value < 11500 then
			lib:Notify({
				Title = "Mouse Badge",
				Description = "You need at least 11,500 slaps for this one",
				Duration = 4,
			})

			return
		end

		lib:Notify({
			Title = "Mouse Badge",
			Description = "You need to be in el gato minigame! (~6-7 minutes)",
			Duration = 4,
		})

		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game.ReplicatedStorage.Remotes.PlaceBuilding:FireServer("City", Vector3.new(), 0)
                game:GetService("StarterGui"):SetCore("SendNotification",{Title="Getting Mouse...",Text="This will take 6-7 minutes.",Duration=400})
                repeat wait()
                    for i,v in pairs(workspace.Game.Enemies:GetChildren()) do
                        if v:FindFirstChild("Hitbox") then
                            game.ReplicatedStorage.Remotes.GloveHit:FireServer(v.Hitbox)
                        end
                    end
                until game.Players.LocalPlayer.PlayerGui.MainGui.OrbFrame.OrbLabel.Text == "3,000"
                game.ReplicatedStorage.Remotes.UnlockGloveWithOrbs:FireServer()
            ]])
		end

		local value = localPlayer.leaderstats.Glove.Value

		if not localPlayer.Character:FindFirstChild("entered") and localPlayer.leaderstats.Glove.Value ~= "el gato" then
			fireclickdetector(workspace.Lobby["el gato"].ClickDetector)
		end

		task.wait()

		pcall(function()
			fireclickdetector(workspace.Cheese.ClickDetector)
		end)

		task.wait()

		if not localPlayer.Character:FindFirstChild("entered") then
			pcall(function()
				fireclickdetector(workspace.Lobby[value].ClickDetector)
			end)
		end
	end,
})

v23:AddButton({
	Text = "Get Swordfighter Badge",
	Func = function()
		lib:Notify({ Title = "Swordfighter Badge", Description = "You need to be in Tower of Hell", Duration = 4 })
		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game.ReplicatedStorage.Remotes.FinishedBossDialogue:FireServer(true)
                workspace.Map.Components.NPCs.FinalBoss.FinalBoss.Humanoid.Health = 0
                wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7, 846, 90)
                repeat wait() until game.Players.LocalPlayer.PlayerGui:WaitForChild("SkipButton").SkipDialogueButton.Visible == true
                game:GetService("StarterGui"):SetCore("SendNotification",{Title="Info",Text="You can skip the dialogue to get the badge faster.",Duration=99})
                repeat wait() until game.Players.LocalPlayer.PlayerGui.SkipButton.SkipDialogueButton.Visible == false
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6, 852, 288)
                wait(0.5)
                fireproximityprompt(workspace.Map.Components.GloveIsland.ClaimGlove.ProximityPrompt)
            ]])
		end

		pcall(function()
			localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(316, 40, 196)
			task.wait(0.5)
			ReplicatedStorage.RetroAbility:FireServer("Ban Hammer")
			localPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland["Cannon Island [OLD]"].Model.Towers:WaitForChild("Ring of Fire").CFrame
		end)
	end,
})

v23:AddButton({
	Text = "Get Untitled Tag Glove Badge",
	Func = function()
		lib:Notify({
			Title = "Untitled Tag Glove Badge",
			Description = "You need to be in Tower of Hell",
			Duration = 4,
		})

		local v24 = queueonteleport or queue_on_teleport

		if v24 then
			v24([[                if not game:IsLoaded() then game.Loaded:Wait() end
                repeat wait() until game.Players.LocalPlayer
                game.Players:Chat("I'M A LOSER")
                fireclickdetector(workspace.Sign.Part1.ClickDetector)
            ]])
		end

		game:GetService("TeleportService"):Teleport(115782629143468)
	end,
})

local v24 = tbl.Anti:AddLeftGroupbox("Universal Protection", "shield")
local v25 = tbl.Anti:AddRightGroupbox("Glove Ability Protection", "shield")

v24:AddToggle("AntiLeAll", {
	Text = "Anti le All ✨",
	Default = false,
	Callback = function(arg)
		for _, v26 in ipairs({
			"AntiVoidFloor",
			"AntiKnockback",
			"AntiRagdoll",
			"AntiPortal",
			"AntiKick",
			"AntiDeathBarriers",
			"AntiCubeOfDeath",
			"AntiBarzil",
			"AntiHunterBox",
			"AntiPylon",
			"AntiStun",
			"AntiBooster",
			"AntiBrick",
			"AntiConveyor",
			"AntiDefense",
			"AntiHallowJack",
			"AntiIce",
			"AntiIceskate",
			"AntiLamp",
			"AntiMail",
			"AntiMegarock",
			"AntiTimeStop",
			"AntiPusher",
			"AntiZaHando",
			"AntiFort",
			"AntiReaper",
			"AntiSbeve",
			"AntiBallBaller",
			"AntiBalloony",
			"AntiBoogieBall",
			"AntiBus",
			"AntiMittenBlind",
			"AntiBubble",
			"AntiObby",
			"AntiNull",
			"AntiLure",
			"AntiNightmare",
			"AntiRun",
			"AntiKnockoff",
			"AntiPlank",
			"AntiRedacted",
			"AntiSquid",
		}) do
			if toggles[v26] and toggles[v26].Callback then
				toggles[v26].Callback(arg)
			end
		end

		if arg then
			lib:Notify({ Title = "Anti le All ✨", Description = "All protections are now active", Duration = 3 })
		else
			lib:Notify({ Title = "Anti le All ✨", Description = "All protections turned off", Duration = 3 })
		end
	end,
})

v24:AddDivider()

v24:AddToggle("AntiVoidFloor", {
	Text = "Anti le Void ✨",
	Default = false,
	Callback = function(arg)
		if arg then
			if not workspace:FindFirstChild("AntiVoidFloor") then
				local part = Instance.new("Part", workspace)
				part.Name = "AntiVoidFloor"
				part.Position = Vector3.new(-51, -12, 108)
				part.Size = Vector3.new(1000000, 1, 1000000)
				part.Anchored = true
				part.CanCollide = true
				part.Transparency = 0.5
			end
		elseif workspace:FindFirstChild("AntiVoidFloor") then
			workspace.AntiVoidFloor:Destroy()
		end
	end,
})

v24:AddToggle("AntiKnockback", {
	Text = "Anti le Knockback ✨",
	Default = false,
	Callback = function(antiKnockback)
		getgenv().antiKnockback = antiKnockback

		while getgenv().antiKnockback do
			local character = localPlayer.Character

			if character and character:FindFirstChild("Torso") and character:FindFirstChild("Ragdolled") and character.Ragdolled.Value == true then
				character.Torso.Anchored = true

				while true do
					wait()
					if not (not character:FindFirstChild("Ragdolled") or character.Ragdolled.Value == false) then
						continue
					end
					break
				end

				if character:FindFirstChild("Torso") then
					character.Torso.Anchored = false
				end
			end

			wait()
		end
	end,
})

v24:AddToggle("AntiRagdoll", {
	Text = "Anti le Ragdoll ✨",
	Default = false,
	Callback = function(antiRagdoll)
		getgenv().antiRagdoll = antiRagdoll

		while getgenv().antiRagdoll do
			local character = localPlayer.Character

			if character and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Torso") and character:FindFirstChild("Ragdolled") then
				if character.Ragdolled.Value == true then
					while true do
						task.wait()

						if character:FindFirstChild("Torso") then
							character.Torso.Anchored = true
						end

						if not (character:FindFirstChild("Ragdolled") and character.Ragdolled.Value == false) then
							continue
						end
						break
					end

					if character:FindFirstChild("Torso") then
						character.Torso.Anchored = false
					end
				end
			end

			task.wait()
		end
	end,
})

v24:AddToggle("AntiPortal", {
	Text = "Anti le Portal ✨",
	Default = false,
	Callback = function(arg)
		pcall(function()
			for _, child in pairs(workspace.Lobby:GetChildren()) do
				if child.Name == "Teleport2" or child.Name == "Teleport3" or child.Name == "Teleport4" or child.Name == "Teleport6" then
					child.CanTouch = not arg
				end
			end
		end)
	end,
})

v24:AddToggle("AntiKick", {
	Text = "Anti le Kick ✨",
	Default = false,
	Callback = function(antiKick)
		getgenv().antiKick = antiKick

		while getgenv().antiKick do
			pcall(function()
				for _, descendant in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetDescendants()) do
					if descendant.Name == "ErrorPrompt" then
						game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, localPlayer)
					end
				end
			end)

			task.wait()
		end
	end,
})

v24:AddToggle("AntiDeathBarriers", {
	Text = "Anti le Death Barriers ✨",
	Default = false,
	Callback = function(arg)
		pcall(function()
			workspace.AntiDefaultArena.CanTouch = not arg
			workspace.ArenaBarrier.CanTouch = not arg
			workspace.DEATHBARRIER.CanTouch = not arg
			workspace.DEATHBARRIER2.CanTouch = not arg

			for _, child in pairs(workspace.DEATHBARRIER:GetChildren()) do
				if child.Name == "BLOCK" then
					child.CanTouch = not arg
				end
			end
		end)
	end,
})

v24:AddToggle("AntiCubeOfDeath", {
	Text = "Anti le Cube Of Death ✨",
	Default = false,
	Callback = function(arg)
		pcall(function()
			workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = not arg
		end)
	end,
})

v24:AddToggle("AntiBarzil", {
	Text = "Anti le Brazil ✨",
	Default = false,
	Callback = function(antiBarzil)
		getgenv().antiBarzil = antiBarzil

		while getgenv().antiBarzil do
			pcall(function()
				for _, descendant in pairs(workspace.Lobby.brazil:GetDescendants()) do
					if descendant:IsA("Part") then
						descendant.CanTouch = false
					end
				end
			end)

			task.wait(1)
		end

		pcall(function()
			for _, descendant in pairs(workspace.Lobby.brazil:GetDescendants()) do
				if descendant:IsA("Part") then
					descendant.CanTouch = true
				end
			end
		end)
	end,
})

v24:AddToggle("AntiHunterBox", {
	Text = "Anti le Hunter ✨",
	Default = false,
	Callback = function(antiHunterBox)
		getgenv().antiHunterBox = antiHunterBox

		while getgenv().antiHunterBox do
			pcall(function()
				for _, descendant in pairs(workspace.BountyHunterRoom.Build.Model["Meshes/boxshadow_Cube.005"]:GetDescendants()) do
					if descendant.Name == "Hitbox" then
						descendant.CanTouch = false
					end
				end
			end)

			task.wait(1)
		end

		pcall(function()
			for _, descendant in pairs(workspace.BountyHunterRoom.Build.Model["Meshes/boxshadow_Cube.005"]:GetDescendants()) do
				if descendant.Name == "Hitbox" then
					descendant.CanTouch = true
				end
			end
		end)
	end,
})

v24:AddToggle("AntiPylon", {
	Text = "Anti le Pylon ✨",
	Default = false,
	Callback = function(antiPylon)
		getgenv().antiPylon = antiPylon

		if antiPylon then
			task.spawn(function()
				while getgenv().antiPylon do
					for _, descendant in pairs(workspace:GetDescendants()) do
						if descendant:IsA("Model") and descendant.Name:lower():find("pylon") then
							local hitbox = descendant:FindFirstChild("Hitbox") or descendant:FindFirstChild("hitbox") or descendant:FindFirstChild("Main") or descendant:FindFirstChild("Base")

							if hitbox and hitbox:IsA("BasePart") then
								pcall(function()
									hitbox:Destroy()
								end)

								pcall(function()
									descendant:Destroy()
								end)
							end
						end

						if descendant:IsA("BasePart") and descendant.Name:lower():find("pylon") and descendant:FindFirstChildWhichIsA("TouchTransmitter") then
							pcall(function()
								descendant:Destroy()
							end)
						end
					end

					task.wait(0.4)
				end
			end)
		end
	end,
})

v25:AddToggle("AntiStun", {
	Text = "Anti le Stun ✨",
	Default = false,
	Callback = function(antiStun)
		getgenv().antiStun = antiStun

		while getgenv().antiStun do
			local character = localPlayer.Character

			if character and character:FindFirstChild("Humanoid") and character:FindFirstChild("Ragdolled") and character.Ragdolled.Value == false and character.Humanoid.PlatformStand == true then
				character.Humanoid.PlatformStand = false
			end

			wait()
		end
	end,
})

v25:AddToggle("AntiBooster", {
	Text = "Anti le Booster ✨",
	Default = false,
	Callback = function(antiBooster)
		getgenv().antiBooster = antiBooster

		while getgenv().antiBooster do
			for _, descendant in pairs(localPlayer.Character:GetDescendants()) do
				if descendant.Name == "BoosterObject" then
					descendant:Destroy()
				end
			end

			wait()
		end
	end,
})

v25:AddToggle("AntiBrick", {
	Text = "Anti le Brick ✨",
	Default = false,
	Callback = function(antiBrick)
		getgenv().antiBrick = antiBrick

		while getgenv().antiBrick do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name == "Union" then
					child.CanTouch = false
					child.CanQuery = false
				end
			end

			wait()
		end
	end,
})

v25:AddToggle("AntiConveyor", {
	Text = "Anti le Conveyor ✨",
	Default = false,
	Callback = function(disabled)
		pcall(function()
			localPlayer.PlayerScripts.LegacyClient.ConveyorVictimized.Disabled = disabled
		end)
	end,
})

v25:AddToggle("AntiDefense", {
	Text = "Anti le Defense ✨",
	Default = false,
	Callback = function(antiDefense)
		getgenv().antiDefense = antiDefense

		while getgenv().antiDefense do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name:find("ÅBarrier") then
					child.CanCollide = false
				end
			end

			wait()
		end
	end,
})

v25:AddToggle("AntiHallowJack", {
	Text = "Anti le Hallow Jack ✨",
	Default = false,
	Callback = function(disabled)
		pcall(function()
			localPlayer.PlayerScripts.LegacyClient.HallowJackAbilities.Disabled = disabled
		end)
	end,
})

v25:AddToggle("AntiIce", {
	Text = "Anti le Ice ✨",
	Default = false,
	Callback = function(antiIce)
		getgenv().antiIce = antiIce

		while getgenv().antiIce do
			for _, child in pairs(localPlayer.Character:GetChildren()) do
				if child.Name == "Icecube" then
					child:Destroy()
					localPlayer.Character.Humanoid.PlatformStand = false
					localPlayer.Character.Humanoid.AutoRotate = true
				end
			end

			wait()
		end
	end,
})

v25:AddToggle("AntiIceskate", {
	Text = "Anti le Iceskate ✨",
	Default = false,
	Callback = function(antiIceskate)
		getgenv().antiIceskate = antiIceskate

		while getgenv().antiIceskate do
			if localPlayer.Character and localPlayer.Character:FindFirstChild("IceSkateEffect") then
				localPlayer.Character.IceSkateEffect.Disabled = true
			end

			wait()
		end

		pcall(function()
			if localPlayer.Character and localPlayer.Character:FindFirstChild("IceSkateEffect") then
				localPlayer.Character.IceSkateEffect.Disabled = false
			end
		end)
	end,
})

v25:AddToggle("AntiLamp", {
	Text = "Anti le Lamp ✨",
	Default = false,
	Callback = function(antiLamp)
		getgenv().antiLamp = antiLamp

		while getgenv().antiLamp do
			for _, child in pairs(game.Lighting:GetChildren()) do
				if child.Name:find("lampcci") then
					child.Enabled = false
				end
			end

			for _, child in pairs(localPlayer.PlayerGui:GetChildren()) do
				if child.Name:find("whiteframe") then
					child.Enabled = false
				end
			end

			task.wait()
		end

		for _, child in pairs(localPlayer.PlayerGui:GetChildren()) do
			if child.Name:find("whiteframe") then
				child.Enabled = true
			end
		end
	end,
})

v25:AddToggle("AntiMail", {
	Text = "Anti le Mail ✨",
	Default = false,
	Callback = function(antiMail)
		getgenv().antiMail = antiMail

		while getgenv().antiMail do
			if localPlayer.Character and localPlayer.Character:FindFirstChild("YouHaveGotMail") then
				localPlayer.Character.YouHaveGotMail.Disabled = true
			end

			wait()
		end

		pcall(function()
			if localPlayer.Character and localPlayer.Character:FindFirstChild("YouHaveGotMail") then
				localPlayer.Character.YouHaveGotMail.Disabled = false
			end
		end)
	end,
})

v25:AddToggle("AntiMegarock", {
	Text = "Anti le Megarock ✨",
	Default = false,
	Callback = function(antiMegarock)
		getgenv().antiMegarock = antiMegarock

		while getgenv().antiMegarock do
			for _, player in pairs(game.Players:GetPlayers()) do
				if player.Character and player.Character:FindFirstChild("rock") then
					player.Character.rock.CanTouch = false
					player.Character.rock.CanQuery = false
				end
			end

			task.wait()
		end

		for _, player in pairs(game.Players:GetPlayers()) do
			if player.Character and player.Character:FindFirstChild("rock") then
				player.Character.rock.CanTouch = true
			end
		end
	end,
})

v25:AddToggle("AntiTimeStop", {
	Text = "Anti le Time Stop ✨",
	Default = false,
	Callback = function(antiTimeStop)
		getgenv().antiTimeStop = antiTimeStop

		while getgenv().antiTimeStop do
			if localPlayer.Character then
				for _, child in pairs(localPlayer.Character:GetChildren()) do
					if child.ClassName == "Part" then
						child.Anchored = false
					end
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiPusher", {
	Text = "Anti le Pusher ✨",
	Default = false,
	Callback = function(antiPusher)
		getgenv().antiPusher = antiPusher

		while getgenv().antiPusher do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name == "wall" then
					child.CanCollide = false
				end
			end

			wait()
		end
	end,
})

v25:AddToggle("AntiZaHando", {
	Text = "Anti le Za Hando ✨",
	Default = false,
	Callback = function(antiZaHando)
		getgenv().antiZaHando = antiZaHando

		while getgenv().antiZaHando do
			for _, child in pairs(workspace:GetChildren()) do
				if child.ClassName == "Part" and child.Name == "Part" then
					child:Destroy()
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiFort", {
	Text = "Anti le Fort ✨",
	Default = false,
	Callback = function(antiFort)
		getgenv().antiFort = antiFort

		while getgenv().antiFort do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name == "Part" then
					child.CanCollide = false
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiReaper", {
	Text = "Anti le Reaper ✨",
	Default = false,
	Callback = function(antiReaper)
		getgenv().antiReaper = antiReaper

		while getgenv().antiReaper do
			for _, descendant in pairs(localPlayer.Character:GetDescendants()) do
				if descendant.Name == "DeathMark" then
					pcall(function()
						ReplicatedStorage.ReaperGone:FireServer(localPlayer.Character.DeathMark)
						game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy()
					end)
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiSbeve", {
	Text = "Anti le Sbeve ✨",
	Default = false,
	Callback = function(antiSbeve)
		getgenv().antiSbeve = antiSbeve

		while getgenv().antiSbeve do
			for _, player in pairs(game.Players:GetPlayers()) do
				if player ~= localPlayer and player.Character and player.Character:FindFirstChild("stevebody") then
					player.Character.stevebody.CanTouch = false
					player.Character.stevebody.CanQuery = false
					player.Character.stevebody.CanCollide = false
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiBallBaller", {
	Text = "Anti le Baller ✨",
	Default = false,
	Callback = function(antiBallBaller)
		getgenv().antiBallBaller = antiBallBaller

		while getgenv().antiBallBaller do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name == "ClonedBall" then
					child.CanTouch = false
					child.CanCollide = true
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiBalloony", {
	Text = "Anti le Balloony ✨",
	Default = false,
	Callback = function(disabled)
		pcall(function()
			localPlayer.PlayerScripts.LegacyClient.BalloonyListener.Disabled = disabled
		end)
	end,
})

v25:AddToggle("AntiBoogieBall", {
	Text = "Anti le Boogie ✨",
	Default = false,
	Callback = function(disabled)
		pcall(function()
			localPlayer.PlayerScripts.LegacyClient.BoogieBallListener.Disabled = disabled
		end)
	end,
})

v25:AddToggle("AntiBus", {
	Text = "Anti le Bus ✨",
	Default = false,
	Callback = function(antiBus)
		getgenv().antiBus = antiBus

		while getgenv().antiBus do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name == "BusModel" then
					child.CanTouch = false
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiMittenBlind", {
	Text = "Anti le Mitten Blind ✨",
	Default = false,
	Callback = function(antiMittenBlind)
		getgenv().antiMittenBlind = antiMittenBlind

		while getgenv().antiMittenBlind do
			if localPlayer.PlayerGui:FindFirstChild("MittenBlind") then
				localPlayer.PlayerGui.MittenBlind:Destroy()
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiBubble", {
	Text = "Anti le Bubble ✨",
	Default = false,
	Callback = function(antiBubble)
		getgenv().antiBubble = antiBubble

		while getgenv().antiBubble do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name == "BubbleObject" and child:FindFirstChild("Weld") then
					child.Weld:Destroy()
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiObby", {
	Text = "Anti le Obby ✨",
	Default = false,
	Callback = function(antiObby)
		getgenv().antiObby = antiObby

		while getgenv().antiObby do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name:find("LavaBlock") or child.Name:find("LavaSpinner") then
					child.CanTouch = false
				end
			end

			task.wait()
		end

		for _, child in pairs(workspace:GetChildren()) do
			if child.Name:find("LavaBlock") or child.Name:find("LavaSpinner") then
				child.CanTouch = true
			end
		end
	end,
})

v25:AddToggle("AntiNull", {
	Text = "Anti le Null ✨",
	Default = false,
	Callback = function(antiNull)
		getgenv().antiNull = antiNull

		while getgenv().antiNull do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name == "Imp" and child:FindFirstChild("Body") then
					pcall(function()
						ReplicatedStorage.GeneralHit:FireServer(child.Body, true)
					end)
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiLure", {
	Text = "Anti le Lure ✨",
	Default = false,
	Callback = function(antiLure)
		getgenv().antiLure = antiLure

		while getgenv().antiLure do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name:find("_lure") and child:FindFirstChild("Root") and child:FindFirstChild("watercircle") then
					child.Root.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
					child.watercircle.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiNightmare", {
	Text = "Anti le Nightmare / Potion ✨",
	Default = false,
	Callback = function(arg)
		pcall(function()
			localPlayer.PlayerScripts.BACKEND.Systems.VFXReplication.NightmareEffect.Parent = arg and game.Lighting or localPlayer.PlayerScripts.BACKEND.Systems.VFXReplication
		end)
	end,
})

v25:AddToggle("AntiRun", {
	Text = "Anti le Run ✨",
	Default = false,
	Callback = function(antiRun)
		getgenv().antiRun = antiRun

		while getgenv().antiRun do
			if localPlayer.Character and localPlayer.Character:FindFirstChild("InLabyrinth") then
				local v26 = next
				local children, v27 = workspace:GetChildren()

				for _, v28 in v26, children, v27 do
					if v28.Name:find("Labyrinth") and v28:FindFirstChild("Doors") then
						for _, child in ipairs(v28.Doors:GetChildren()) do
							if child:FindFirstChild("Hitbox") and child.Hitbox:FindFirstChild("TouchInterest") then
								firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), child.Hitbox, 0)
								firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), child.Hitbox, 1)
							end
						end
					end
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiKnockoff", {
	Text = "Anti le Knockoff ✨",
	Default = false,
	Callback = function(antiKnockoff)
		getgenv().antiKnockoff = antiKnockoff

		while getgenv().antiKnockoff do
			if workspace.CurrentCamera and localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid") and workspace.CurrentCamera.CameraSubject == workspace:FindFirstChild(localPlayer.Name .. "'s_falsehead") then
				workspace.CurrentCamera.CameraSubject = localPlayer.Character:FindFirstChildOfClass("Humanoid")
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiPlank", {
	Text = "Anti le Plank Attack ✨",
	Default = false,
	Callback = function(antiPlank)
		getgenv().antiPlank = antiPlank

		while getgenv().antiPlank do
			for _, child in pairs(workspace:GetChildren()) do
				if child.Name:find("'s Plank") and child.ClassName == "Part" then
					child.CanTouch = false
					child.CanQuery = false
				end
			end

			task.wait()
		end
	end,
})

v25:AddToggle("AntiRedacted", {
	Text = "Anti le Redacted ✨",
	Default = false,
	Callback = function(disabled)
		pcall(function()
			localPlayer.PlayerScripts.LegacyClient.Well.Disabled = disabled
		end)
	end,
})

v25:AddToggle("AntiSquid", {
	Text = "Anti le Squid ✨",
	Default = false,
	Callback = function(antiSquid)
		getgenv().antiSquid = antiSquid

		while getgenv().antiSquid do
			if localPlayer.PlayerGui:FindFirstChild("SquidInk") then
				localPlayer.PlayerGui.SquidInk.Enabled = false
			end

			wait()
		end

		pcall(function()
			if localPlayer.PlayerGui:FindFirstChild("SquidInk") then
				localPlayer.PlayerGui.SquidInk.Enabled = true
			end
		end)
	end,
})

local flag26 = false
local visible = false
local flag27 = false
local flag28 = false
local flag29 = false
local tbl7 = {}
local esp = tbl.Visuals:AddLeftGroupbox("ESP", "eye")

local function fn12(arg)
	local v26 = tbl7[arg]
	if not v26 then
		return
	end

	if v26.highlight and v26.highlight.Parent then
		v26.highlight:Destroy()
	end

	v26.highlight = nil
end

local function fn13(arg)
	local v26 = tbl7[arg]
	if not v26 then
		return
	end

	if v26.billboard and v26.billboard.Parent then
		v26.billboard:Destroy()
	end

	v26.billboard = nil
	v26.nameLabel = nil
	v26.hbOuter = nil
	v26.hbFill = nil
	v26.gloveLabel = nil
	v26.slapsLabel = nil
end

local function fn14(arg)
	fn12(arg)
	fn13(arg)

	if tbl7[arg] then
		if tbl7[arg].charConn then
			tbl7[arg].charConn:Disconnect()
		end

		tbl7[arg] = nil
	end
end

local function fn15(arg)
	if not arg.Character then
		return
	end
	local v26 = tbl7[arg]
	if not v26 then
		return
	end
	fn12(arg)
	local highlight = Instance.new("Highlight")
	highlight.Name = "VexHL"
	highlight.Adornee = arg.Character
	highlight.FillColor = Color3.fromRGB(255, 60, 60)
	highlight.FillTransparency = 0.6
	highlight.OutlineColor = Color3.fromRGB(255, 60, 60)
	highlight.OutlineTransparency = 0
	highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	highlight.Parent = game:GetService("CoreGui")
	v26.highlight = highlight
end

local function fn16(arg)
	if not arg.Character then
		return
	end
	local head = arg.Character:FindFirstChild("Head")
	if not head then
		return
	end
	local v26 = tbl7[arg]
	if not v26 then
		return
	end
	fn13(arg)
	local billboardGui = Instance.new("BillboardGui")
	billboardGui.Name = "VexESP"
	billboardGui.AlwaysOnTop = true
	billboardGui.Size = UDim2.new(0, 80, 0, 30)
	billboardGui.StudsOffset = Vector3.new(0, 2.8, 0)
	billboardGui.Adornee = head
	billboardGui.Parent = game:GetService("CoreGui")
	local uiListLayout = Instance.new("UIListLayout")
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Padding = UDim.new(0, 1)
	uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uiListLayout.Parent = billboardGui

	local function createTextLabel(textColor3, layoutOrder)
		local textLabel2 = Instance.new("TextLabel")
		textLabel2.Size = UDim2.new(1, 0, 0, 8)
		textLabel2.BackgroundTransparency = 1
		textLabel2.TextColor3 = textColor3
		textLabel2.TextStrokeTransparency = 0.4
		textLabel2.TextSize = 7
		textLabel2.Font = Enum.Font.RobotoMono
		textLabel2.Text = ""
		textLabel2.Visible = false
		textLabel2.LayoutOrder = layoutOrder
		textLabel2.Parent = billboardGui
		return textLabel2
	end

	local v27 = createTextLabel(Color3.fromRGB(255, 255, 255), 1)
	v27.Name = "NameLabel"
	v27.Text = arg.Name
	local frame2 = Instance.new("Frame")
	frame2.Name = "HealthBarFrame"
	frame2.Size = UDim2.new(1, 0, 0, 3)
	frame2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	frame2.BorderSizePixel = 0
	frame2.Visible = false
	frame2.LayoutOrder = 2
	frame2.Parent = billboardGui
	local frame3 = Instance.new("Frame")
	frame3.Size = UDim2.new(1, 0, 1, 0)
	frame3.BackgroundColor3 = Color3.fromRGB(80, 200, 80)
	frame3.BorderSizePixel = 0
	frame3.Parent = frame2
	local v28 = createTextLabel(Color3.fromRGB(255, 215, 0), 3)
	v28.Name = "GloveLabel"
	local v29 = createTextLabel(Color3.fromRGB(100, 200, 255), 4)
	v29.Name = "SlapsLabel"
	v26.billboard = billboardGui
	v26.nameLabel = v27
	v26.hbOuter = frame2
	v26.hbFill = frame3
	v26.gloveLabel = v28
	v26.slapsLabel = v29
end

local function fn17(arg)
	if arg == localPlayer then
		return
	end
	fn14(arg)
	local tbl8 = {}
	tbl7[arg] = tbl8

	tbl8.charConn = arg.CharacterAdded:Connect(function()
		task.wait(0.5)
		if not tbl7[arg] then
			return
		end

		if flag26 then
			fn15(arg)
		end

		if visible or flag27 or flag28 or flag29 then
			fn16(arg)
		end
	end)

	if arg.Character then
		if flag26 then
			fn15(arg)
		end

		if visible or flag27 or flag28 or flag29 then
			fn16(arg)
		end
	end
end

game:GetService("RunService").Heartbeat:Connect(function()
	for k, v26 in pairs(tbl7) do
		if k.Character then
			if v26.highlight and v26.highlight.Parent then
				v26.highlight.Adornee = k.Character
			end

			local billboard = v26.billboard

			if billboard and billboard.Parent then
				local humanoid = k.Character:FindFirstChild("Humanoid")

				if v26.nameLabel then
					v26.nameLabel.Visible = visible
				end

				if v26.hbOuter then
					if flag29 and humanoid and humanoid.MaxHealth > 0 then
						v26.hbOuter.Visible = true
						local n4 = math.clamp(humanoid.Health / humanoid.MaxHealth, 0, 1)
						v26.hbFill.Size = UDim2.new(n4, 0, 1, 0)
						v26.hbFill.BackgroundColor3 = Color3.fromRGB(math.floor((1 - n4) * 255), math.floor(n4 * 200), 50)
					else
						v26.hbOuter.Visible = false
					end
				end

				if v26.gloveLabel then
					if flag27 then
						local leaderstats = k:FindFirstChild("leaderstats")
						leaderstats = leaderstats and leaderstats:FindFirstChild("Glove")
						v26.gloveLabel.Text = "Glove: " .. (leaderstats and leaderstats.Value or "?")
						v26.gloveLabel.Visible = true
					else
						v26.gloveLabel.Visible = false
					end
				end

				if v26.slapsLabel then
					if flag28 then
						local leaderstats = k:FindFirstChild("leaderstats")
						leaderstats = leaderstats and leaderstats:FindFirstChild("Slaps")
						v26.slapsLabel.Text = "Slaps: " .. (leaderstats and tostring(leaderstats.Value) or "?")
						v26.slapsLabel.Visible = true
					else
						v26.slapsLabel.Visible = false
					end
				end

				billboard.Enabled = (v26.nameLabel and v26.nameLabel.Visible or v26.hbOuter and v26.hbOuter.Visible or v26.gloveLabel and v26.gloveLabel.Visible or v26.slapsLabel and v26.slapsLabel.Visible) == true
			end
		end
	end
end)

game.Players.PlayerAdded:Connect(function(player)
	if flag26 or visible or flag27 or flag28 or flag29 then
		fn17(player)
	end
end)

game.Players.PlayerRemoving:Connect(function(player)
	fn14(player)
end)

esp:AddToggle("ESPEnabled", {
	Text = "ESP Players",
	Default = false,
	Callback = function(arg)
		flag26 = arg

		if arg then
			for _, player in pairs(game.Players:GetPlayers()) do
				if player ~= localPlayer then
					if not tbl7[player] then
						fn17(player)
					end

					fn15(player)
				end
			end
		else
			for _, player in pairs(game.Players:GetPlayers()) do
				fn12(player)
			end

			if not (visible or flag27 or flag28 or flag29) then
				for _, player in pairs(game.Players:GetPlayers()) do
					fn14(player)
				end
			end
		end
	end,
})

esp:AddToggle("ESPUsername", {
	Text = "ESP Username",
	Default = false,
	Callback = function(arg)
		visible = arg

		if arg then
			for _, player in pairs(game.Players:GetPlayers()) do
				if player == localPlayer then
					continue
				end

				if not tbl7[player] then
					fn17(player)
					return
				end

				if not (tbl7[player].billboard and tbl7[player].billboard.Parent) then
					fn16(player)
				end
			end
		elseif not (flag27 or flag28 or flag29) then
			for _, player in pairs(game.Players:GetPlayers()) do
				fn13(player)

				if not flag26 then
					fn14(player)
				end
			end
		end
	end,
})

esp:AddToggle("ESPGloves", {
	Text = "ESP Gloves",
	Default = false,
	Callback = function(arg)
		flag27 = arg

		if arg then
			for _, player in pairs(game.Players:GetPlayers()) do
				if player == localPlayer then
					continue
				end

				if not tbl7[player] then
					fn17(player)
					return
				end

				if not (tbl7[player].billboard and tbl7[player].billboard.Parent) then
					fn16(player)
				end
			end
		elseif not (visible or flag28 or flag29) then
			for _, player in pairs(game.Players:GetPlayers()) do
				fn13(player)

				if not flag26 then
					fn14(player)
				end
			end
		end
	end,
})

esp:AddToggle("ESPSlaps", {
	Text = "ESP Slaps",
	Default = false,
	Callback = function(arg)
		flag28 = arg

		if arg then
			for _, player in pairs(game.Players:GetPlayers()) do
				if player == localPlayer then
					continue
				end

				if not tbl7[player] then
					fn17(player)
					return
				end

				if not (tbl7[player].billboard and tbl7[player].billboard.Parent) then
					fn16(player)
				end
			end
		elseif not (visible or flag27 or flag29) then
			for _, player in pairs(game.Players:GetPlayers()) do
				fn13(player)

				if not flag26 then
					fn14(player)
				end
			end
		end
	end,
})

esp:AddToggle("ESPHealthBar", {
	Text = "Health Bar",
	Default = false,
	Callback = function(arg)
		flag29 = arg

		if arg then
			for _, player in pairs(game.Players:GetPlayers()) do
				if player == localPlayer then
					continue
				end

				if not tbl7[player] then
					fn17(player)
					return
				end

				if not (tbl7[player].billboard and tbl7[player].billboard.Parent) then
					fn16(player)
				end
			end
		elseif not (visible or flag27 or flag28) then
			for _, player in pairs(game.Players:GetPlayers()) do
				fn13(player)

				if not flag26 then
					fn14(player)
				end
			end
		end
	end,
})

lib3:SetLibrary(lib)
lib2:SetLibrary(lib)
lib2:IgnoreThemeSettings()
lib2:SetIgnoreIndexes({})
lib2:SetFolder("VexSlapples")
lib3:SetFolder("VexSlapples")
lib3:ApplyToGroupbox(v19)
lib2:BuildConfigSection(tbl["UI Settings"])
lib2:LoadAutoloadConfig()
