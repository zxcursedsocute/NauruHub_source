local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local response = game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua")
local result = loadstring(response)()
local Loading = result:CreateLoading({ Title = "Vexsaken", Icon = "rbxassetid://106047893866515", ShowSidebar = true, TotalSteps = 7 })
Loading.Sidebar:AddLabel("<font color=\"rgb(140, 80, 255)\">Vexsaken 6.9.1</font>", true)
Loading.Sidebar:AddLabel("<font color=\"rgb(180, 180, 180)\">by Sphynx / Luna</font>", true)
Loading.Sidebar:AddDivider({ MarginBottom = 2, MarginTop = 2 })
Loading.Sidebar:AddLabel("Press <font color=\"rgb(140,80,255)\">P</font> to toggle the menu once loaded.", true)
Loading:SetMessage("Downloading modules...")
Loading:SetDescription("Fetching SaveManager...")
local response2 = game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua")
local result2 = loadstring(response2)()
Loading:SetCurrentStep(1)
task.wait(0.2)
Loading:SetDescription("Fetching ThemeManager...")
local response3 = game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua")
local result3 = loadstring(response3)()
Loading:SetCurrentStep(2)
task.wait(0.2)
Loading:SetMessage("Resolving services...")
Loading:SetDescription("Getting game services...")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
Loading:SetCurrentStep(3)
task.wait(0.2)
Loading:SetMessage("Waiting for player...")
Loading:SetDescription("Waiting for LocalPlayer...")
Loading:SetCurrentStep(4)
task.wait(0.1)
Loading:SetDescription("Waiting for character...")
Loading:SetCurrentStep(5)
task.wait(0.1)
Loading:SetMessage("Loading game assets...")
Loading:SetDescription("Waiting for Systems...")
ReplicatedStorage:WaitForChild("Systems", 15)
Loading:SetDescription("Waiting for Modules...")
ReplicatedStorage:WaitForChild("Modules", 15)
Loading:SetDescription("Waiting for Assets...")
ReplicatedStorage:WaitForChild("Assets", 15)
Loading:SetCurrentStep(6)
task.wait(0.2)
Loading:SetMessage("Pre-caching modules...")
Loading:SetDescription("Caching Sprinting module...")
local module = require(ReplicatedStorage.Systems.Character.Game.Sprinting)
getgenv()._SharedSprintMod = module
Loading:SetDescription("Loading functions...")
local module2 = require(ReplicatedStorage.Systems.Player.Miscellaneous.GetPlayerMousePosition)
getgenv()._SharedMouseMod = module2
Loading:SetCurrentStep(7)
task.wait(0.3)
Loading:SetMessage("Done!")
Loading:SetDescription("Launching Vexsaken...")
task.wait(0.4)
Loading:Continue()
local Window = result:CreateWindow({
	Title = "Vexsaken",
	AutoShow = true,
	Center = true,
	Folder = "Vexsaken",
	Footer = "Vexsaken 6.9.1 [ Revamped ]",
	Icon = "rbxassetid://106047893866515",
	ToggleKeybind = Enum.KeyCode.P
})
local Tab = Window:AddTab("Home", "house")
local LeftGroupbox = Tab:AddLeftGroupbox("Welcome", "boxes")
local RightGroupbox = Tab:AddRightGroupbox("Credits", "info")
local RightGroupbox2 = Tab:AddRightGroupbox("Contributors", "users")
RightGroupbox:AddLabel("<font color=\"rgb(255, 221, 0)\">Sphynx/Luna - (Owner)</font>\n\n⚠ This script is heavily inspired by Fartsaken\n\nI want to be transparent and give credit where it's due. This script is heavily inspired by Fartsaken. Many of the ideas, features, and the overall direction were influenced by their work. Although I developed this script myself and added my own ideas and improvements, I want to acknowledge the Fartsaken developers for inspiring this project. This is my own interpretation and is not intended to copy or replace the original.", true)
RightGroupbox:AddLabel("<font color=\"rgb(140, 80, 255)\">— Change Logs —</font>\n<font color=\"rgb(100, 220, 120)\">> Added Feedback System</font>", true)
RightGroupbox2:AddLabel("<font color=\"rgb(180, 180, 180)\">Coro - (Co-Owner/Former Developer)</font>", true)
RightGroupbox2:AddLabel("<font color=\"rgb(100, 149, 237)\">Veux67 - (Helper/Best Friend)</font>", true)
RightGroupbox2:AddLabel("<font color=\"rgb(255, 80, 80)\">Cryptic - (Helper/Friend)</font>", true)
LeftGroupbox:AddButton({
	Text = "Copy Vexsaken Invite",
	Func = function(arg, arg2)
		setclipboard("https://discord.gg/CuxSmrgDKD")
		result:Notify({ Title = "Copied!", Description = "discord.gg/CuxSmrgDKD", Duration = 3 })
	end
})
local character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait() -- [[reconstructed: guard из оригинала (devirt-lift), потерян при рендере]]
character.Archivable = true
local clone = character:Clone()
for i, v in ipairs(clone:GetDescendants()) do
	if v:IsA("Script") or v:IsA("LocalScript") then -- [[reconstructed: условие потеряно при рендере; без него Destroy убивал HumanoidRootPart]]
		if v then v:Destroy() end -- [[deobf: guard]]
	end
end
clone:MoveTo(Vector3.new(0, 0, 0))
local HumanoidRootPart = clone:FindFirstChild("HumanoidRootPart")
if HumanoidRootPart then
	if HumanoidRootPart then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if HumanoidRootPart then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	HumanoidRootPart.Anchored = true
	end
	end
end
local WorldModel = Instance.new("WorldModel")
clone.Parent = WorldModel
local Camera = Instance.new("Camera")
LeftGroupbox:AddViewport("anjmviewport", { AutoFocus = true, Camera = Camera, Height = 200, Interactive = true, Object = WorldModel })
LeftGroupbox:AddLabel("🟢 Vexsaken 6.9.1", true)
LeftGroupbox:AddInput("VX_flag_1", {
	Text = "Feedback",
	Placeholder = "Share your thoughts...",
	Callback = function(state, arg4)
	end
})
LeftGroupbox:AddButton({
	Text = "Send Feedback",
	Func = function(arg5, arg6)
		local __feedbackText = (result.Options and result.Options.VX_flag_1 and result.Options.VX_flag_1.Value) or "" -- [[reconstructed: текст фидбека из инпута]]
		if __feedbackText == "" then __feedbackText = "(empty)" end -- [[reconstructed: discord требует непустое value]]
		local json = HttpService:JSONEncode({
	embeds = {
		{
			color = 8978687,
			fields = {
				{ inline = true, name = "👤 Player", value = string.format("%s (`%s`)", Players.LocalPlayer.Name, "0") },
				{ inline = true, name = "⚙️ Executor", value = identifyexecutor() }, -- [[reconstructed: envlog вернул "Wave" из identifyexecutor()]]
				{ inline = false, name = "💬 Feedback", value = false }
			},
			footer = { text = "Vexsaken 6.9.1 • Feedback System" },
			timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"), -- [[reconstructed: метка времени динамическая]]
			title = "📨 New Feedback — Vexsaken"
		}
	}
})
		request({
	Body = json,
	Headers = { ["Content-Type"] = "application/json" },
	Method = "POST",
	Url = "https://discord.com/api/webhooks/1538473211811856508/BxYvTh38t7h5aP2Qdp5KiIo_laqtxy8gWjL9t_XuhhftCt8IlmB70g30J3h_I26kfamS"
})
		result:Notify({ Title = "Feedback Sent!", Description = "Thank you for your feedback.", Duration = 3 })
	end
})
task.spawn(function(...)
	task.wait(0.2)
	local descendants2 = result.ScreenGui:GetDescendants()
	for i2, v2 in ipairs(descendants2) do
		if not v2:IsA("ViewportFrame") then continue end -- [[reconstructed: фильтр потерян при рендере; .WorldModel на не-ViewportFrame = ошибка]]
		local wm = v2:FindFirstChild("WorldModel")
		local Model = wm and wm:FindFirstChildOfClass("Model") or nil
		if not Model then continue end
		local Torso = Model and Model:FindFirstChild("Torso")
		local humanoid2 = Model and Model:FindFirstChildOfClass("Humanoid")
		local Animator = humanoid2 and humanoid2:FindFirstChildOfClass("Animator") or nil
		if not (Torso and Animator) then continue end -- [[reconstructed]]
		v2.CurrentCamera.CFrame = CFrame.new(((Torso.Position + (Torso.CFrame.LookVector * 5.5)) + Vector3.new(0, 0.5, 0)), (Torso.Position + Vector3.new(0, 0.2, 0)))
		local Animation = Instance.new("Animation")
		Animation.AnimationId = "rbxassetid://87793550167629"
		local track = Animator and Animator:LoadAnimation(Animation)
		if track then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		track.Looped = false
		end
		if track then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		track:Play()
		end
		if track then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		track.Stopped:Connect(function(arg7)
			track:Stop()
			local Animation9 = Instance.new("Animation")
			Animation9.AnimationId = "rbxassetid://139133319221924"
			local track9 = Animator and Animator:LoadAnimation(Animation9)
			track9.Looped = false
			track9:Play()
			track9.Stopped:Connect(function(arg1050)
				track9:Stop()
				local Animation10 = Instance.new("Animation")
				Animation10.AnimationId = "rbxassetid://121015083880066"
				local track10 = Animator and Animator:LoadAnimation(Animation10)
				track10.Looped = false
				track10:Play()
				track10.Stopped:Connect(function(arg1082)
					track10:Stop()
					local Animation11 = Instance.new("Animation")
					Animation11.AnimationId = "rbxassetid://78992923796168"
					local track11 = Animator and Animator:LoadAnimation(Animation11)
					track11.Looped = false
					track11:Play()
					track11.Stopped:Connect(function(arg1098)
						track11:Stop()
						local Animation12 = Instance.new("Animation")
						Animation12.AnimationId = "rbxassetid://116164572233278"
						local track12 = Animator and Animator:LoadAnimation(Animation12)
						track12.Looped = false
						track12:Play()
						track12.Stopped:Connect(function(arg1111)
							track12:Stop()
							local Animation13 = Instance.new("Animation")
							Animation13.AnimationId = "rbxassetid://135096417373947"
							local track13 = Animator and Animator:LoadAnimation(Animation13)
							track13.Looped = false
							track13:Play()
							track13.Stopped:Connect(function(arg1124)
								track13:Stop()
								local Animation14 = Instance.new("Animation")
								Animation14.AnimationId = "rbxassetid://116164572233278"
								local track14 = Animator and Animator:LoadAnimation(Animation14)
								track14.Looped = false
								track14:Play()
								track14.Stopped:Connect(function(arg1137)
									track14:Stop()
									local Animation15 = Instance.new("Animation")
									Animation15.AnimationId = "rbxassetid://135096417373947"
									local track15 = Animator and Animator:LoadAnimation(Animation15)
									track15.Looped = false
									track15:Play()
									track15.Stopped:Connect(function(arg1150)
										track15:Stop()
										local Animation16 = Instance.new("Animation")
										Animation16.AnimationId = "rbxassetid://109894892784471"
										local track16 = Animator and Animator:LoadAnimation(Animation16)
										track16.Looped = false
										track16:Play()
										track16.Stopped:Connect(function(arg1163)
											track16:Stop()
											local Animation17 = Instance.new("Animation")
											Animation17.AnimationId = "rbxassetid://78992923796168"
											local track17 = Animator and Animator:LoadAnimation(Animation17)
											track17.Looped = false
											track17:Play()
											track17.Stopped:Connect(function(arg1176)
												track17:Stop()
												local Animation18 = Instance.new("Animation")
												Animation18.AnimationId = "rbxassetid://139133319221924"
												local track18 = Animator and Animator:LoadAnimation(Animation18)
												track18.Looped = false
												track18:Play()
												track18.Stopped:Connect(function(arg1189)
													track18:Stop()
													local Animation19 = Instance.new("Animation")
													Animation19.AnimationId = "rbxassetid://120476797927055"
													local track19 = Animator and Animator:LoadAnimation(Animation19)
													track19.Looped = false
													track19:Play()
													track19.Stopped:Connect(function(arg1202)
														track19:Stop()
														local Animation20 = Instance.new("Animation")
														Animation20.AnimationId = "rbxassetid://121015083880066"
														local track20 = Animator and Animator:LoadAnimation(Animation20)
														track20.Looped = false
														track20:Play()
														track20.Stopped:Connect(function(arg1215)
															track20:Stop()
															local Animation21 = Instance.new("Animation")
															Animation21.AnimationId = "rbxassetid://116164572233278"
															local track21 = Animator and Animator:LoadAnimation(Animation21)
															track21.Looped = false
															track21:Play()
															track21.Stopped:Connect(function(arg1228)
																track21:Stop()
																local Animation22 = Instance.new("Animation")
																Animation22.AnimationId = "rbxassetid://135096417373947"
																local track22 = Animator and Animator:LoadAnimation(Animation22)
																track22.Looped = false
																track22:Play()
																track22.Stopped:Connect(function(arg1241)
																	track22:Stop()
																	local Animation23 = Instance.new("Animation")
																	Animation23.AnimationId = "rbxassetid://87793550167629"
																	local track23 = Animator and Animator:LoadAnimation(Animation23)
																	track23.Looped = false
																	track23:Play()
																	track23.Stopped:Connect(function(arg1254)
																		track23:Stop()
																		local Animation24 = Instance.new("Animation")
																		Animation24.AnimationId = "rbxassetid://109894892784471"
																		local track24 = Animator and Animator:LoadAnimation(Animation24)
																		track24.Looped = false
																		track24:Play()
																		track24.Stopped:Connect(function(arg1267)
																			track24:Stop()
																			local Animation25 = Instance.new("Animation")
																			Animation25.AnimationId = "rbxassetid://139133319221924"
																			local track25 = Animator and Animator:LoadAnimation(Animation25)
																			track25.Looped = false
																			track25:Play()
																			track25.Stopped:Connect(function(arg1280)
			track25:Stop()
			local Animation26 = Instance.new("Animation")
			Animation26.AnimationId = "rbxassetid://135096417373947"
			local track26 = Animator and Animator:LoadAnimation(Animation26)
			track26.Looped = false
			track26:Play()
			track26.Stopped:Connect(function(arg1293)
			track26:Stop()
			local Animation27 = Instance.new("Animation")
			Animation27.AnimationId = "rbxassetid://116164572233278"
			local track27 = Animator and Animator:LoadAnimation(Animation27)
			track27.Looped = false
			track27:Play()
			-- [deobf: unrolled loop/chain truncated: 797 more lines of repeated iterations removed]
			end)
																			end)
																		end)
																	end)
																end)
															end)
														end)
													end)
												end)
											end)
										end)
									end)
								end)
							end)
						end)
					end)
				end)
			end)
		end)
		end
	end
end)
local Tab2 = Window:AddTab("Stamina", "battery", "manage your stamina settings")
local LeftGroupbox2 = Tab2:AddLeftGroupbox("Stamina System", "battery")
local RightTabbox = Tab2:AddRightTabbox("zap")
local Tab3 = RightTabbox:AddTab("Stuff")
local Tab4 = RightTabbox:AddTab("Walkspeed")
getgenv().SM_Enabled = false
getgenv().SM_Threshold = 10
RunService.Heartbeat:Connect(function(deltaTime)
end)
Tab3:AddCheckbox("VX_flag_2", {
	Text = "Auto Unsprint",
	Default = false,
	Callback = function(state, arg9)
		getgenv().SM_Threshold = tonumber(state)
	end
})
Tab3:AddInput("VX_flag_3", {
	Text = "Unsprint at Stamina",
	Placeholder = "10",
	Callback = function(state, arg11)
	end
})
getgenv()._disableDirSpeedConn = nil
getgenv().getDirectionalMovement = function(arg12, arg13)
	local SpeedMultipliers = workspace:FindFirstChild("SpeedMultipliers", true)
end
getgenv()._disableDirSpeedConn = nil
Tab3:AddCheckbox("VX_flag_4", {
	Text = "Keep Directional Speed",
	Default = false,
	Callback = function(state, arg15)
		if state then
			local connection7 = RunService.Heartbeat:Connect(function(deltaTime2)
				local SpeedMultipliers4 = workspace:FindFirstChild("SpeedMultipliers", true)
				local DirectionalMovement2 = SpeedMultipliers4 and SpeedMultipliers4:FindFirstChild("DirectionalMovement")
				if DirectionalMovement2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if DirectionalMovement2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				DirectionalMovement2.Value = 1
				end
				end
			end)
			getgenv()._disableDirSpeedConn = connection7
		else
			if connection7 then connection7:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
getgenv()._disableDirMovementEnabled = false
getgenv()._disableDirMovRehookConn = nil
Tab3:AddCheckbox("VX_flag_5", {
	Text = "Remove Movement Lock",
	Default = false,
	Callback = function(state, arg17)
		if state then
			getgenv()._disableDirMovementEnabled = state
			local SpeedMultipliers2 = workspace:FindFirstChild("SpeedMultipliers", true)
			local connection8 = SpeedMultipliers2 and SpeedMultipliers2.ChildAdded:Connect(function(child)
			end)
			getgenv()._disableDirMovConn = connection8
			local DirectionalMovement = SpeedMultipliers2 and SpeedMultipliers2:FindFirstChild("DirectionalMovement")
			if DirectionalMovement then DirectionalMovement:Destroy() end -- [[deobf: guard]]
			local connection9 = workspace.DescendantAdded:Connect(function(descendant)
			end)
			getgenv()._disableDirMovRehookConn = connection9
		else
			getgenv()._disableDirMovementEnabled = false
			if connection8 then connection8:Disconnect() end -- [[deobf: guard — определение в другой области]]
			getgenv()._disableDirMovConn = nil
			if connection9 then connection9:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
task.spawn(function(...)
	local module3 = require(ReplicatedStorage.Systems.Character.Game.Sprinting)
	local module4 = require(ReplicatedStorage.Systems.Player.Miscellaneous.GetPlayerMousePosition)
getgenv()._SharedSprintMod = module3
getgenv()._SharedMouseMod = module4
getgenv().SprintModule = module3
end)
getgenv().SprintDefaults = {}
getgenv().StaminaStats = { MaxStamina = 100, MinStamina = 0, SprintSpeed = 26, StaminaGain = 20, StaminaLoss = 10 }
getgenv().StaminaToggles = {
	MaxStamina = false,
	MinStamina = false,
	SprintSpeed = false,
	StaminaGain = false,
	StaminaLoss = false
}
getgenv().UnlimitedEnabled = false
LeftGroupbox2:AddCheckbox("VX_flag_6", {
	Text = "Unlimited Stamina",
	Default = false,
	Callback = function(state, arg19)
		if state then
			getgenv().UnlimitedEnabled = state
			getgenv().SprintModule.StaminaLoss = 0
		else
			getgenv().UnlimitedEnabled = false
			getgenv().SprintModule.StaminaLoss = getgenv().SprintModule.StaminaLoss
		end
	end
})
LeftGroupbox2:AddCheckbox("VX_flag_7", {
	Text = "Stamina Checker",
	Default = false,
	Callback = function(state, arg21)
		if state then
			local connection10 = Players.PlayerAdded:Connect(function(player)
				player.CharacterAdded:Connect(function(character32)
					task.spawn(function(...)
						task.wait(0.5)
					end)
				end)
				player.Character:GetAttribute("StaminaActive")
			end)
			local players = Players:GetPlayers()
			for k, v3 in pairs(players) do
				local connection11 = v3.CharacterAdded:Connect(function(character)
					task.spawn(function(...)
						task.wait(0.5)
					end)
				end)
			end
		else
			local players2 = Players:GetPlayers()
			for k2, v4 in pairs(players2) do
				local StaminaBillboard = (v4 and v4.Character) and v4.Character:FindFirstChild("StaminaBillboard") or nil -- [[deobf: nil-chain guard]]
				if StaminaBillboard then StaminaBillboard:Destroy() end -- [[deobf: guard]]
				v4.Character:SetAttribute("StaminaActive", nil)
			end
			if connection10 then connection10:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection11 then connection11:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
getgenv().VX_NoStaminaPenaltyConn = nil
LeftGroupbox2:AddCheckbox("VX_flag_8", {
	Text = "No Stamina Penalty",
	Default = false,
	Tooltip = "It removes the delay when you stop and gaining stamina",
	Callback = function(state, arg23)
		if state then
			getgenv().VX_NoStaminaPenalty = state
			local connection12 = RunService.Heartbeat:Connect(function(deltaTime3)
			end)
			getgenv().VX_NoStaminaPenaltyConn = connection12
		else
			getgenv().VX_NoStaminaPenalty = false
			if connection12 then connection12:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
LeftGroupbox2:AddDivider({ MarginBottom = 2, MarginTop = 2 })
LeftGroupbox2:AddCheckbox("VX_flag_9", {
	Text = "Enable Max Stamina",
	Default = false,
	Callback = function(state, arg25)
		if not state then
			getgenv().SprintModule.MaxStamina = getgenv().SprintModule.MaxStamina
		end
	end
})
LeftGroupbox2:AddInput("VX_flag_10", {
	Text = "Max Stamina",
	Placeholder = "100",
	Callback = function(state, arg27)
	end
})
LeftGroupbox2:AddCheckbox("VX_flag_11", {
	Text = "Enable Min Stamina",
	Default = false,
	Callback = function(state, arg29)
		if not state then
			getgenv().SprintModule.MinStamina = getgenv().SprintModule.MinStamina
		end
	end
})
LeftGroupbox2:AddInput("VX_flag_12", {
	Text = "Min Stamina",
	Placeholder = "0",
	Callback = function(state, arg31)
	end
})
LeftGroupbox2:AddCheckbox("VX_flag_13", {
	Text = "Enable Stamina Gain",
	Default = false,
	Callback = function(state, arg33)
		if not state then
			getgenv().SprintModule.StaminaGain = getgenv().SprintModule.StaminaGain
		end
	end
})
LeftGroupbox2:AddInput("VX_flag_14", {
	Text = "Stamina Gain",
	Placeholder = "20",
	Callback = function(state, arg35)
	end
})
LeftGroupbox2:AddCheckbox("VX_flag_15", {
	Text = "Enable Stamina Loss",
	Default = false,
	Callback = function(state, arg37)
		if not state then
			getgenv().SprintModule.StaminaLoss = getgenv().SprintModule.StaminaLoss
		end
	end
})
LeftGroupbox2:AddInput("VX_flag_16", {
	Text = "Stamina Loss",
	Placeholder = "10",
	Callback = function(state, arg39)
	end
})
task.spawn(function(...)
	task.wait(0.1)
	task.wait(0.1)
end)
Tab4:AddCheckbox("VX_flag_17", {
	Text = "Walkspeed Multiplier",
	Default = false,
	Callback = function(state, arg41)
		if state then
			local connection13 = getgenv().SprintModule.SprintToggled:Connect(function(arg42)
				task.defer(function(...)
				end)
			end)
			task.defer(function(...)
				game.Players.LocalPlayer.Character:FindFirstChild("SpeedMultipliers")
				local Sprinting2 = game.Players.LocalPlayer.Character.SpeedMultipliers:FindFirstChild("Sprinting")
				local Humanoid34 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				local attribute2 = Humanoid34 and Humanoid34:GetAttribute("BaseSpeed")
				tween:Cancel()
				getgenv().SprintModule.__currentSpeedTween = nil
				local tween2 = TweenService:Create(Sprinting2, TweenInfo.new(0.75), { Value = ((26 / attribute2) * nil) })
				getgenv().SprintModule.__currentSpeedTween = tween2
				tween2:Play()
				tween2.Completed:Connect(function(playbackState2)
					getgenv().SprintModule.__currentSpeedTween = nil
				end)
			end)
		else
			if connection13 then connection13:Disconnect() end -- [[deobf: guard — определение в другой области]]
			game.Players.LocalPlayer.Character:FindFirstChild("SpeedMultipliers")
			local Sprinting = game.Players.LocalPlayer.Character.SpeedMultipliers:FindFirstChild("Sprinting")
			local Humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local attribute = Humanoid and Humanoid:GetAttribute("BaseSpeed")
			if getgenv().SprintModule.__currentSpeedTween then getgenv().SprintModule.__currentSpeedTween:Cancel() end -- [[deobf: guard]]
			getgenv().SprintModule.__currentSpeedTween = nil
			local tween = TweenService:Create(Sprinting, TweenInfo.new(0.75), { Value = (getgenv().SprintModule.SprintSpeed / attribute) })
			getgenv().SprintModule.__currentSpeedTween = tween
			tween:Play()
			tween.Completed:Connect(function(playbackState)
			end)
		end
	end
})
Tab4:AddSlider("VX_flag_18", {
	Text = "Multiplier",
	Default = 1,
	Max = 5,
	Min = 0.5,
	Rounding = 2,
	Callback = function(state, arg44)
	end
})
local RightGroupbox3 = Tab2:AddRightGroupbox("Speed Changer", "zap")
getgenv().VX_SurvSprintSpeed = 26
getgenv().VX_SurvSprintEnabled = false
getgenv().VX_KillerSprintSpeed = 27
getgenv().VX_KillerSprintEnabled = false
RightGroupbox3:AddInput("VX_flag_19", {
	Text = "Survivor Sprint Speed",
	Default = "26",
	Finished = false,
	Numeric = true,
	Callback = function(state, arg46)
	end
})
RightGroupbox3:AddCheckbox("VX_flag_20", {
	Text = "Enable Survivor Sprint Speed",
	Default = false,
	Callback = function(state, arg48)
		if state then
			getgenv().VX_SurvSprintEnabled = state
			local connection14 = RunService.Heartbeat:Connect(function(deltaTime4)
			end)
			getgenv().VX_SurvSprintConn = connection14
		else
			getgenv().VX_SurvSprintEnabled = false
			if connection14 then connection14:Disconnect() end -- [[deobf: guard — определение в другой области]]
			getgenv().VX_SurvSprintConn = nil
			getgenv().SprintModule.SprintSpeed = 26
		end
	end
})
RightGroupbox3:AddDivider({ MarginBottom = 2, MarginTop = 2 })
RightGroupbox3:AddInput("VX_flag_21", {
	Text = "Killer Sprint Speed",
	Default = "27",
	Finished = false,
	Numeric = true,
	Callback = function(state, arg50)
	end
})
RightGroupbox3:AddCheckbox("VX_flag_22", {
	Text = "Enable Killer Sprint Speed",
	Default = false,
	Callback = function(state, arg52)
		if state then
			getgenv().VX_KillerSprintEnabled = state
			local connection15 = RunService.Heartbeat:Connect(function(deltaTime5)
			end)
			getgenv().VX_KillerSprintConn = connection15
		else
			getgenv().VX_KillerSprintEnabled = false
			if connection15 then connection15:Disconnect() end -- [[deobf: guard — определение в другой области]]
			getgenv().VX_KillerSprintConn = nil
			getgenv().SprintModule.SprintSpeed = 26
		end
	end
})
local Tab5 = Window:AddTab("Visual", "eye", "esp and camera settings")
local LeftTabbox = Tab5:AddLeftTabbox("eye")
local Tab6 = LeftTabbox:AddTab("ESP")
local Tab7 = LeftTabbox:AddTab("Settings")
local RightGroupbox4 = Tab5:AddRightGroupbox("FOV / Camera", "camera")
task.spawn(function(...)
	task.spawn(function(...)
		task.wait(0.5)
		task.wait(0.5)
	end)
	getgenv().esp_targets = {
	{
		color = "colorKiller",
		flag = "killersEnabled",
		health = true,
		key = "killers",
		tag = "VX_ESP_Killer",
		container = function(arg53, arg54)
				local Players2 = workspace:FindFirstChild("Players")
			end
	},
	{
		color = "colorSurvivor",
		flag = "survivorsEnabled",
		health = true,
		key = "survivors",
		tag = "VX_ESP_Survivor",
		container = function(arg55, arg56)
				local Players3 = workspace:FindFirstChild("Players")
			end
	},
	{
		color = "colorFakeNoli",
		flag = "fakeNoliEnabled",
		health = true,
		key = "fake_noli",
		tag = "VX_ESP_FakeNoli",
		container = function(arg53, arg54)
				local Players2 = workspace:FindFirstChild("Players")
			end,
		filter = function(arg57, arg58)
				arg57:FindFirstChild("HumanoidRootPart")
				Players:GetPlayerFromCharacter(arg57)
			end
	},
	{
		color = "colorGenerator",
		flag = "generatorsEnabled",
		health = false,
		key = "generators",
		tag = "VX_ESP_Generator",
		container = function(arg59, arg60)
				local Map = workspace:FindFirstChild("Map")
				local Ingame = Map and Map:FindFirstChild("Ingame")
			end,
		filter = function(arg61, arg62)
			end
	},
	{
		color = "colorItem",
		flag = "itemsEnabled",
		health = false,
		key = "items",
		tag = "VX_ESP_Item",
		container = function(arg59, arg60)
				local Map = workspace:FindFirstChild("Map")
				local Ingame = Map and Map:FindFirstChild("Ingame")
			end,
		filter = function(arg63, arg64)
			end
	}
}
	RunService.Heartbeat:Connect(function(deltaTime6)
	end)
	task.spawn(function(...)
		local Players4 = workspace:FindFirstChild("Players")
		local Killers = Players4 and Players4:FindFirstChild("Killers")
		if Killers then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Killers then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Killers.ChildAdded:Connect(function(child2)
			task.defer(function(...)
			end, {
	color = "colorKiller",
	flag = "killersEnabled",
	health = true,
	key = "killers",
	tag = "VX_ESP_Killer",
	container = function(arg53, arg54)
					local Players2 = workspace:FindFirstChild("Players")
				end
}, child2)
		end)
		end
		end
		if Killers then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Killers then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Killers.ChildRemoved:Connect(function(child3)
			local VX_ESP_Killer22 = child3:FindFirstChild("VX_ESP_Killer")
			if VX_ESP_Killer22 then VX_ESP_Killer22:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Killer_Label22 = child3:FindFirstChild("VX_ESP_Killer_Label")
			if VX_ESP_Killer_Label22 then VX_ESP_Killer_Label22:Destroy() end -- [[deobf: guard]]
		end)
		end
		end
		local children = Killers and Killers:GetChildren()
		for i3, v5 in ipairs(children or {}) do -- [[deobf: guard]]
		end
		local Players5 = workspace:FindFirstChild("Players")
		local Survivors = Players5 and Players5:FindFirstChild("Survivors")
		if Survivors then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Survivors then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Survivors.ChildAdded:Connect(function(child4)
			task.defer(function(...)
			end, {
	color = "colorSurvivor",
	flag = "survivorsEnabled",
	health = true,
	key = "survivors",
	tag = "VX_ESP_Survivor",
	container = function(arg55, arg56)
					local Players3 = workspace:FindFirstChild("Players")
				end
}, child4)
		end)
		end
		end
		if Survivors then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Survivors then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Survivors.ChildRemoved:Connect(function(child5)
			local VX_ESP_Survivor22 = child5:FindFirstChild("VX_ESP_Survivor")
			if VX_ESP_Survivor22 then VX_ESP_Survivor22:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Survivor_Label22 = child5:FindFirstChild("VX_ESP_Survivor_Label")
			if VX_ESP_Survivor_Label22 then VX_ESP_Survivor_Label22:Destroy() end -- [[deobf: guard]]
		end)
		end
		end
		local children2 = Survivors and Survivors:GetChildren()
		for i4, v6 in ipairs(children2 or {}) do -- [[deobf: guard]]
		end
		local Players6 = workspace:FindFirstChild("Players")
		local Killers2 = Players6 and Players6:FindFirstChild("Killers")
		if Killers2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Killers2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Killers2.ChildAdded:Connect(function(child6)
			task.defer(function(...)
			end, {
	color = "colorFakeNoli",
	flag = "fakeNoliEnabled",
	health = true,
	key = "fake_noli",
	tag = "VX_ESP_FakeNoli",
	container = function(arg53, arg54)
					local Players2 = workspace:FindFirstChild("Players")
				end,
	filter = function(arg57, arg58)
					arg57:FindFirstChild("HumanoidRootPart")
					Players:GetPlayerFromCharacter(arg57)
				end
}, child6)
		end)
		end
		end
		if Killers2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Killers2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Killers2.ChildRemoved:Connect(function(child7)
			local VX_ESP_FakeNoli22 = child7:FindFirstChild("VX_ESP_FakeNoli")
			if VX_ESP_FakeNoli22 then VX_ESP_FakeNoli22:Destroy() end -- [[deobf: guard]]
			local VX_ESP_FakeNoli_Label22 = child7:FindFirstChild("VX_ESP_FakeNoli_Label")
			if VX_ESP_FakeNoli_Label22 then VX_ESP_FakeNoli_Label22:Destroy() end -- [[deobf: guard]]
		end)
		end
		end
		local children3 = Killers2 and Killers2:GetChildren()
		for i5, v7 in ipairs(children3 or {}) do -- [[deobf: guard]]
		end
		local Map2 = workspace:FindFirstChild("Map")
		local Ingame2 = Map2 and Map2:FindFirstChild("Ingame")
		local Map3 = Ingame2 and Ingame2:FindFirstChild("Map")
		if Map3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Map3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Map3.ChildAdded:Connect(function(child8)
			task.defer(function(...)
			end, {
	color = "colorGenerator",
	flag = "generatorsEnabled",
	health = false,
	key = "generators",
	tag = "VX_ESP_Generator",
	container = function(arg59, arg60)
					local Map = workspace:FindFirstChild("Map")
					local Ingame = Map and Map:FindFirstChild("Ingame")
				end,
	filter = function(arg61, arg62)
				end
}, child8)
		end)
		end
		end
		if Map3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Map3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Map3.ChildRemoved:Connect(function(child9)
			local VX_ESP_Generator22 = child9:FindFirstChild("VX_ESP_Generator")
			if VX_ESP_Generator22 then VX_ESP_Generator22:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Generator_Label22 = child9:FindFirstChild("VX_ESP_Generator_Label")
			if VX_ESP_Generator_Label22 then VX_ESP_Generator_Label22:Destroy() end -- [[deobf: guard]]
		end)
		end
		end
		local children4 = Map3 and Map3:GetChildren()
		for i6, v8 in ipairs(children4 or {}) do -- [[deobf: guard]]
		end
		local Map4 = workspace:FindFirstChild("Map")
		local Ingame3 = Map4 and Map4:FindFirstChild("Ingame")
		local Map5 = Ingame3 and Ingame3:FindFirstChild("Map")
		if Map5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Map5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Map5.ChildAdded:Connect(function(child10)
			task.defer(function(...)
			end, {
	color = "colorItem",
	flag = "itemsEnabled",
	health = false,
	key = "items",
	tag = "VX_ESP_Item",
	container = function(arg59, arg60)
					local Map = workspace:FindFirstChild("Map")
					local Ingame = Map and Map:FindFirstChild("Ingame")
				end,
	filter = function(arg63, arg64)
				end
}, child10)
		end)
		end
		end
		if Map5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Map5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Map5.ChildRemoved:Connect(function(child11)
			local VX_ESP_Item22 = child11:FindFirstChild("VX_ESP_Item")
			if VX_ESP_Item22 then VX_ESP_Item22:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Item_Label22 = child11:FindFirstChild("VX_ESP_Item_Label")
			if VX_ESP_Item_Label22 then VX_ESP_Item_Label22:Destroy() end -- [[deobf: guard]]
		end)
		end
		end
		local children5 = Map5 and Map5:GetChildren()
		for i7, v9 in ipairs(children5 or {}) do -- [[deobf: guard]]
		end
		task.wait(2)
		local Players7 = workspace:FindFirstChild("Players")
		local Killers3 = Players7 and Players7:FindFirstChild("Killers")
		local children6 = Killers3 and Killers3:GetChildren()
		for i8, v10 in ipairs(children6 or {}) do -- [[deobf: guard]]
		end
		local Players8 = workspace:FindFirstChild("Players")
		local Survivors2 = Players8 and Players8:FindFirstChild("Survivors")
		local children7 = Survivors2 and Survivors2:GetChildren()
		for i9, v11 in ipairs(children7 or {}) do -- [[deobf: guard]]
		end
		local Players9 = workspace:FindFirstChild("Players")
		local Killers4 = Players9 and Players9:FindFirstChild("Killers")
		local children8 = Killers4 and Killers4:GetChildren()
		for i10, v12 in ipairs(children8 or {}) do -- [[deobf: guard]]
		end
		local Map6 = workspace:FindFirstChild("Map")
		local Ingame4 = Map6 and Map6:FindFirstChild("Ingame")
		local Map7 = Ingame4 and Ingame4:FindFirstChild("Map")
		local children9 = Map7 and Map7:GetChildren()
		for i11, v13 in ipairs(children9 or {}) do -- [[deobf: guard]]
		end
		local Map8 = workspace:FindFirstChild("Map")
		local Ingame5 = Map8 and Map8:FindFirstChild("Ingame")
		local Map9 = Ingame5 and Ingame5:FindFirstChild("Map")
		local children10 = Map9 and Map9:GetChildren()
		for i12, v14 in ipairs(children10 or {}) do -- [[deobf: guard]]
		end
		local Players10 = workspace:FindFirstChild("Players")
		local Killers5 = Players10 and Players10:FindFirstChild("Killers")
		if Killers5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Killers5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Killers5.ChildAdded:Connect(function(child12)
			task.defer(function(...)
			end, {
	color = "colorKiller",
	flag = "killersEnabled",
	health = true,
	key = "killers",
	tag = "VX_ESP_Killer",
	container = function(arg53, arg54)
					local Players2 = workspace:FindFirstChild("Players")
				end
}, child12)
		end)
		end
		end
		if Killers5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Killers5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Killers5.ChildRemoved:Connect(function(child13)
			local VX_ESP_Killer23 = child13:FindFirstChild("VX_ESP_Killer")
			if VX_ESP_Killer23 then VX_ESP_Killer23:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Killer_Label23 = child13:FindFirstChild("VX_ESP_Killer_Label")
			if VX_ESP_Killer_Label23 then VX_ESP_Killer_Label23:Destroy() end -- [[deobf: guard]]
		end)
		end
		end
		local children11 = Killers5 and Killers5:GetChildren()
		for i13, v15 in ipairs(children11 or {}) do -- [[deobf: guard]]
		end
		local Players11 = workspace:FindFirstChild("Players")
		local Survivors3 = Players11 and Players11:FindFirstChild("Survivors")
		if Survivors3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Survivors3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Survivors3.ChildAdded:Connect(function(child14)
			task.defer(function(...)
			end, {
	color = "colorSurvivor",
	flag = "survivorsEnabled",
	health = true,
	key = "survivors",
	tag = "VX_ESP_Survivor",
	container = function(arg55, arg56)
					local Players3 = workspace:FindFirstChild("Players")
				end
}, child14)
		end)
		end
		end
		if Survivors3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Survivors3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Survivors3.ChildRemoved:Connect(function(child15)
			local VX_ESP_Survivor23 = child15:FindFirstChild("VX_ESP_Survivor")
			if VX_ESP_Survivor23 then VX_ESP_Survivor23:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Survivor_Label23 = child15:FindFirstChild("VX_ESP_Survivor_Label")
			if VX_ESP_Survivor_Label23 then VX_ESP_Survivor_Label23:Destroy() end -- [[deobf: guard]]
		end)
		end
		end
		local children12 = Survivors3 and Survivors3:GetChildren()
		for i14, v16 in ipairs(children12 or {}) do -- [[deobf: guard]]
		end
		local Players12 = workspace:FindFirstChild("Players")
		local Killers6 = Players12 and Players12:FindFirstChild("Killers")
		if Killers6 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Killers6 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Killers6.ChildAdded:Connect(function(child16)
			task.defer(function(...)
			end, {
	color = "colorFakeNoli",
	flag = "fakeNoliEnabled",
	health = true,
	key = "fake_noli",
	tag = "VX_ESP_FakeNoli",
	container = function(arg53, arg54)
					local Players2 = workspace:FindFirstChild("Players")
				end,
	filter = function(arg57, arg58)
					arg57:FindFirstChild("HumanoidRootPart")
					Players:GetPlayerFromCharacter(arg57)
				end
}, child16)
		end)
		end
		end
		if Killers6 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Killers6 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Killers6.ChildRemoved:Connect(function(child17)
			local VX_ESP_FakeNoli23 = child17:FindFirstChild("VX_ESP_FakeNoli")
			if VX_ESP_FakeNoli23 then VX_ESP_FakeNoli23:Destroy() end -- [[deobf: guard]]
			local VX_ESP_FakeNoli_Label23 = child17:FindFirstChild("VX_ESP_FakeNoli_Label")
			if VX_ESP_FakeNoli_Label23 then VX_ESP_FakeNoli_Label23:Destroy() end -- [[deobf: guard]]
		end)
		end
		end
		local children13 = Killers6 and Killers6:GetChildren()
		for i15, v17 in ipairs(children13 or {}) do -- [[deobf: guard]]
		end
		local Map10 = workspace:FindFirstChild("Map")
		local Ingame6 = Map10 and Map10:FindFirstChild("Ingame")
		local Map11 = Ingame6 and Ingame6:FindFirstChild("Map")
		if Map11 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Map11 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Map11.ChildAdded:Connect(function(child18)
			task.defer(function(...)
			end, {
	color = "colorGenerator",
	flag = "generatorsEnabled",
	health = false,
	key = "generators",
	tag = "VX_ESP_Generator",
	container = function(arg59, arg60)
					local Map = workspace:FindFirstChild("Map")
					local Ingame = Map and Map:FindFirstChild("Ingame")
				end,
	filter = function(arg61, arg62)
				end
}, child18)
		end)
		end
		end
		if Map11 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Map11 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Map11.ChildRemoved:Connect(function(child19)
			local VX_ESP_Generator23 = child19:FindFirstChild("VX_ESP_Generator")
			if VX_ESP_Generator23 then VX_ESP_Generator23:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Generator_Label23 = child19:FindFirstChild("VX_ESP_Generator_Label")
			if VX_ESP_Generator_Label23 then VX_ESP_Generator_Label23:Destroy() end -- [[deobf: guard]]
		end)
		end
		end
		local children14 = Map11 and Map11:GetChildren()
		for i16, v18 in ipairs(children14 or {}) do -- [[deobf: guard]]
		end
		local Map12 = workspace:FindFirstChild("Map")
		local Ingame7 = Map12 and Map12:FindFirstChild("Ingame")
		local Map13 = Ingame7 and Ingame7:FindFirstChild("Map")
		if Map13 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Map13 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Map13.ChildAdded:Connect(function(child20)
			task.defer(function(...)
			end, {
	color = "colorItem",
	flag = "itemsEnabled",
	health = false,
	key = "items",
	tag = "VX_ESP_Item",
	container = function(arg59, arg60)
					local Map = workspace:FindFirstChild("Map")
					local Ingame = Map and Map:FindFirstChild("Ingame")
				end,
	filter = function(arg63, arg64)
				end
}, child20)
		end)
		end
		end
		if Map13 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Map13 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Map13.ChildRemoved:Connect(function(child21)
			local VX_ESP_Item23 = child21:FindFirstChild("VX_ESP_Item")
			if VX_ESP_Item23 then VX_ESP_Item23:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Item_Label23 = child21:FindFirstChild("VX_ESP_Item_Label")
			if VX_ESP_Item_Label23 then VX_ESP_Item_Label23:Destroy() end -- [[deobf: guard]]
		end)
		end
		end
		local children15 = Map13 and Map13:GetChildren()
		for i17, v19 in ipairs(children15 or {}) do -- [[deobf: guard]]
		end
		task.wait(2)
	end)
	getgenv()._esp_refresh = function(arg65, arg66)
		local Players13 = workspace:FindFirstChild("Players")
		local Killers7 = Players13 and Players13:FindFirstChild("Killers")
		local children16 = Killers7 and Killers7:GetChildren()
		for i28, v30 in ipairs(children16 or {}) do -- [[deobf: guard]]
			local VX_ESP_Killer = v30:FindFirstChild("VX_ESP_Killer")
			if VX_ESP_Killer then VX_ESP_Killer:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Killer_Label = v30:FindFirstChild("VX_ESP_Killer_Label")
			if VX_ESP_Killer_Label then VX_ESP_Killer_Label:Destroy() end -- [[deobf: guard]]
		end
		local Players14 = workspace:FindFirstChild("Players")
		local Survivors4 = Players14 and Players14:FindFirstChild("Survivors")
		local children17 = Survivors4 and Survivors4:GetChildren()
		for i29, v31 in ipairs(children17 or {}) do -- [[deobf: guard]]
			local VX_ESP_Survivor = v31:FindFirstChild("VX_ESP_Survivor")
			if VX_ESP_Survivor then VX_ESP_Survivor:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Survivor_Label = v31:FindFirstChild("VX_ESP_Survivor_Label")
			if VX_ESP_Survivor_Label then VX_ESP_Survivor_Label:Destroy() end -- [[deobf: guard]]
		end
		local Players15 = workspace:FindFirstChild("Players")
		local Killers8 = Players15 and Players15:FindFirstChild("Killers")
		local children18 = Killers8 and Killers8:GetChildren()
		for i30, v32 in ipairs(children18 or {}) do -- [[deobf: guard]]
			local VX_ESP_FakeNoli = v32:FindFirstChild("VX_ESP_FakeNoli")
			if VX_ESP_FakeNoli then VX_ESP_FakeNoli:Destroy() end -- [[deobf: guard]]
			local VX_ESP_FakeNoli_Label = v32:FindFirstChild("VX_ESP_FakeNoli_Label")
			if VX_ESP_FakeNoli_Label then VX_ESP_FakeNoli_Label:Destroy() end -- [[deobf: guard]]
		end
		local Map14 = workspace:FindFirstChild("Map")
		local Ingame8 = Map14 and Map14:FindFirstChild("Ingame")
		local Map15 = Ingame8 and Ingame8:FindFirstChild("Map")
		local children19 = Map15 and Map15:GetChildren()
		for i31, v33 in ipairs(children19 or {}) do -- [[deobf: guard]]
			local VX_ESP_Generator = v33:FindFirstChild("VX_ESP_Generator")
			if VX_ESP_Generator then VX_ESP_Generator:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Generator_Label = v33:FindFirstChild("VX_ESP_Generator_Label")
			if VX_ESP_Generator_Label then VX_ESP_Generator_Label:Destroy() end -- [[deobf: guard]]
		end
		local Map16 = workspace:FindFirstChild("Map")
		local Ingame9 = Map16 and Map16:FindFirstChild("Ingame")
		local Map17 = Ingame9 and Ingame9:FindFirstChild("Map")
		local children20 = Map17 and Map17:GetChildren()
		for i32, v34 in ipairs(children20 or {}) do -- [[deobf: guard]]
			local VX_ESP_Item = v34:FindFirstChild("VX_ESP_Item")
			if VX_ESP_Item then VX_ESP_Item:Destroy() end -- [[deobf: guard]]
			local VX_ESP_Item_Label = v34:FindFirstChild("VX_ESP_Item_Label")
			if VX_ESP_Item_Label then VX_ESP_Item_Label:Destroy() end -- [[deobf: guard]]
		end
	end
	local Checkbox = Tab6:AddCheckbox("VX_flag_23", {
	Text = "Killers",
	Default = false,
	Callback = function(state, arg68)
			if state then
				local Players16 = workspace:FindFirstChild("Players")
				local Killers9 = Players16 and Players16:FindFirstChild("Killers")
				local children21 = Killers9 and Killers9:GetChildren()
				for i33, v35 in ipairs(children21 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer2 = v35:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer2 then VX_ESP_Killer2:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label2 = v35:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label2 then VX_ESP_Killer_Label2:Destroy() end -- [[deobf: guard]]
					Players:GetPlayerFromCharacter(v35)
					Players:GetPlayerFromCharacter(v35)
					v35:FindFirstChild("VX_ESP_Killer")
				end
				local Players17 = workspace:FindFirstChild("Players")
				local Survivors5 = Players17 and Players17:FindFirstChild("Survivors")
				local children22 = Survivors5 and Survivors5:GetChildren()
				for i34, v36 in ipairs(children22 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor2 = v36:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor2 then VX_ESP_Survivor2:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label2 = v36:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label2 then VX_ESP_Survivor_Label2:Destroy() end -- [[deobf: guard]]
				end
				local Players18 = workspace:FindFirstChild("Players")
				local Killers10 = Players18 and Players18:FindFirstChild("Killers")
				local children23 = Killers10 and Killers10:GetChildren()
				for i35, v37 in ipairs(children23 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli2 = v37:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli2 then VX_ESP_FakeNoli2:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label2 = v37:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label2 then VX_ESP_FakeNoli_Label2:Destroy() end -- [[deobf: guard]]
				end
				local Map18 = workspace:FindFirstChild("Map")
				local Ingame10 = Map18 and Map18:FindFirstChild("Ingame")
				local Map19 = Ingame10 and Ingame10:FindFirstChild("Map")
				local children24 = Map19 and Map19:GetChildren()
				for i36, v38 in ipairs(children24 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator2 = v38:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator2 then VX_ESP_Generator2:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label2 = v38:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label2 then VX_ESP_Generator_Label2:Destroy() end -- [[deobf: guard]]
				end
				local Map20 = workspace:FindFirstChild("Map")
				local Ingame11 = Map20 and Map20:FindFirstChild("Ingame")
				local Map21 = Ingame11 and Ingame11:FindFirstChild("Map")
				local children25 = Map21 and Map21:GetChildren()
				for i37, v39 in ipairs(children25 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item2 = v39:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item2 then VX_ESP_Item2:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label2 = v39:FindFirstChild("VX_ESP_Item_Label")
				end
					if VX_ESP_Item_Label2 then VX_ESP_Item_Label2:Destroy() end -- [[deobf: guard]]
			else
				local Players19 = workspace:FindFirstChild("Players")
				local Killers11 = Players19 and Players19:FindFirstChild("Killers")
				local children26 = Killers11 and Killers11:GetChildren()
				for i38, v40 in ipairs(children26 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer3 = v40:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer3 then VX_ESP_Killer3:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label3 = v40:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label3 then VX_ESP_Killer_Label3:Destroy() end -- [[deobf: guard]]
				end
				local Players20 = workspace:FindFirstChild("Players")
				local Survivors6 = Players20 and Players20:FindFirstChild("Survivors")
				local children27 = Survivors6 and Survivors6:GetChildren()
				for i39, v41 in ipairs(children27 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor3 = v41:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor3 then VX_ESP_Survivor3:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label3 = v41:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label3 then VX_ESP_Survivor_Label3:Destroy() end -- [[deobf: guard]]
				end
				local Players21 = workspace:FindFirstChild("Players")
				local Killers12 = Players21 and Players21:FindFirstChild("Killers")
				local children28 = Killers12 and Killers12:GetChildren()
				for i40, v42 in ipairs(children28 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli3 = v42:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli3 then VX_ESP_FakeNoli3:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label3 = v42:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label3 then VX_ESP_FakeNoli_Label3:Destroy() end -- [[deobf: guard]]
				end
				local Map22 = workspace:FindFirstChild("Map")
				local Ingame12 = Map22 and Map22:FindFirstChild("Ingame")
				local Map23 = Ingame12 and Ingame12:FindFirstChild("Map")
				local children29 = Map23 and Map23:GetChildren()
				for i41, v43 in ipairs(children29 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator3 = v43:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator3 then VX_ESP_Generator3:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label3 = v43:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label3 then VX_ESP_Generator_Label3:Destroy() end -- [[deobf: guard]]
				end
				local Map24 = workspace:FindFirstChild("Map")
				local Ingame13 = Map24 and Map24:FindFirstChild("Ingame")
				local Map25 = Ingame13 and Ingame13:FindFirstChild("Map")
				local children30 = Map25 and Map25:GetChildren()
				for i42, v44 in ipairs(children30 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item3 = v44:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item3 then VX_ESP_Item3:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label3 = v44:FindFirstChild("VX_ESP_Item_Label")
					if VX_ESP_Item_Label3 then VX_ESP_Item_Label3:Destroy() end -- [[deobf: guard]]
				end
			end
		end
})
	Checkbox:AddColorPicker("VX_flag_24", {
	Title = "Killer Color",
	Default = Color3.fromRGB(255, 130, 130),
	Callback = function(state, arg70)
			if state then
				local Players22 = workspace:FindFirstChild("Players")
				local Killers13 = Players22 and Players22:FindFirstChild("Killers")
				local children31 = Killers13 and Killers13:GetChildren()
				for i43, v45 in ipairs(children31 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer4 = v45:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer4 then VX_ESP_Killer4:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label4 = v45:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label4 then VX_ESP_Killer_Label4:Destroy() end -- [[deobf: guard]]
				end
				local Players23 = workspace:FindFirstChild("Players")
				local Survivors7 = Players23 and Players23:FindFirstChild("Survivors")
				local children32 = Survivors7 and Survivors7:GetChildren()
				for i44, v46 in ipairs(children32 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor4 = v46:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor4 then VX_ESP_Survivor4:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label4 = v46:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label4 then VX_ESP_Survivor_Label4:Destroy() end -- [[deobf: guard]]
				end
				local Players24 = workspace:FindFirstChild("Players")
				local Killers14 = Players24 and Players24:FindFirstChild("Killers")
				local children33 = Killers14 and Killers14:GetChildren()
				for i45, v47 in ipairs(children33 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli4 = v47:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli4 then VX_ESP_FakeNoli4:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label4 = v47:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label4 then VX_ESP_FakeNoli_Label4:Destroy() end -- [[deobf: guard]]
				end
				local Map26 = workspace:FindFirstChild("Map")
				local Ingame14 = Map26 and Map26:FindFirstChild("Ingame")
				local Map27 = Ingame14 and Ingame14:FindFirstChild("Map")
				local children34 = Map27 and Map27:GetChildren()
				for i46, v48 in ipairs(children34 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator4 = v48:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator4 then VX_ESP_Generator4:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label4 = v48:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label4 then VX_ESP_Generator_Label4:Destroy() end -- [[deobf: guard]]
				end
				local Map28 = workspace:FindFirstChild("Map")
				local Ingame15 = Map28 and Map28:FindFirstChild("Ingame")
				local Map29 = Ingame15 and Ingame15:FindFirstChild("Map")
				local children35 = Map29 and Map29:GetChildren()
				for i47, v49 in ipairs(children35 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item4 = v49:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item4 then VX_ESP_Item4:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label4 = v49:FindFirstChild("VX_ESP_Item_Label")
				end
					if VX_ESP_Item_Label4 then VX_ESP_Item_Label4:Destroy() end -- [[deobf: guard]]
			else
				local Players25 = workspace:FindFirstChild("Players")
				local Killers15 = Players25 and Players25:FindFirstChild("Killers")
				local children36 = Killers15 and Killers15:GetChildren()
				for i48, v50 in ipairs(children36 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer5 = v50:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer5 then VX_ESP_Killer5:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label5 = v50:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label5 then VX_ESP_Killer_Label5:Destroy() end -- [[deobf: guard]]
				end
				local Players26 = workspace:FindFirstChild("Players")
				local Survivors8 = Players26 and Players26:FindFirstChild("Survivors")
				local children37 = Survivors8 and Survivors8:GetChildren()
				for i49, v51 in ipairs(children37 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor5 = v51:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor5 then VX_ESP_Survivor5:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label5 = v51:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label5 then VX_ESP_Survivor_Label5:Destroy() end -- [[deobf: guard]]
				end
				local Players27 = workspace:FindFirstChild("Players")
				local Killers16 = Players27 and Players27:FindFirstChild("Killers")
				local children38 = Killers16 and Killers16:GetChildren()
				for i50, v52 in ipairs(children38 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli5 = v52:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli5 then VX_ESP_FakeNoli5:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label5 = v52:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label5 then VX_ESP_FakeNoli_Label5:Destroy() end -- [[deobf: guard]]
				end
				local Map30 = workspace:FindFirstChild("Map")
				local Ingame16 = Map30 and Map30:FindFirstChild("Ingame")
				local Map31 = Ingame16 and Ingame16:FindFirstChild("Map")
				local children39 = Map31 and Map31:GetChildren()
				for i51, v53 in ipairs(children39 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator5 = v53:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator5 then VX_ESP_Generator5:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label5 = v53:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label5 then VX_ESP_Generator_Label5:Destroy() end -- [[deobf: guard]]
				end
				local Map32 = workspace:FindFirstChild("Map")
				local Ingame17 = Map32 and Map32:FindFirstChild("Ingame")
				local Map33 = Ingame17 and Ingame17:FindFirstChild("Map")
				local children40 = Map33 and Map33:GetChildren()
				for i52, v54 in ipairs(children40 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item5 = v54:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item5 then VX_ESP_Item5:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label5 = v54:FindFirstChild("VX_ESP_Item_Label")
					if VX_ESP_Item_Label5 then VX_ESP_Item_Label5:Destroy() end -- [[deobf: guard]]
				end
			end
		end
})
	local Checkbox2 = Tab6:AddCheckbox("VX_flag_25", {
	Text = "Survivors",
	Default = false,
	Callback = function(state, arg72)
			if state then
				local Players28 = workspace:FindFirstChild("Players")
				local Killers17 = Players28 and Players28:FindFirstChild("Killers")
				local children41 = Killers17 and Killers17:GetChildren()
				for i53, v55 in ipairs(children41 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer6 = v55:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer6 then VX_ESP_Killer6:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label6 = v55:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label6 then VX_ESP_Killer_Label6:Destroy() end -- [[deobf: guard]]
				end
				local Players29 = workspace:FindFirstChild("Players")
				local Survivors9 = Players29 and Players29:FindFirstChild("Survivors")
				local children42 = Survivors9 and Survivors9:GetChildren()
				for i54, v56 in ipairs(children42 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor6 = v56:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor6 then VX_ESP_Survivor6:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label6 = v56:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label6 then VX_ESP_Survivor_Label6:Destroy() end -- [[deobf: guard]]
					Players:GetPlayerFromCharacter(v56)
					Players:GetPlayerFromCharacter(v56)
					v56:FindFirstChild("VX_ESP_Survivor")
				end
				local Players30 = workspace:FindFirstChild("Players")
				local Killers18 = Players30 and Players30:FindFirstChild("Killers")
				local children43 = Killers18 and Killers18:GetChildren()
				for i55, v57 in ipairs(children43 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli6 = v57:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli6 then VX_ESP_FakeNoli6:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label6 = v57:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label6 then VX_ESP_FakeNoli_Label6:Destroy() end -- [[deobf: guard]]
				end
				local Map34 = workspace:FindFirstChild("Map")
				local Ingame18 = Map34 and Map34:FindFirstChild("Ingame")
				local Map35 = Ingame18 and Ingame18:FindFirstChild("Map")
				local children44 = Map35 and Map35:GetChildren()
				for i56, v58 in ipairs(children44 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator6 = v58:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator6 then VX_ESP_Generator6:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label6 = v58:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label6 then VX_ESP_Generator_Label6:Destroy() end -- [[deobf: guard]]
				end
				local Map36 = workspace:FindFirstChild("Map")
				local Ingame19 = Map36 and Map36:FindFirstChild("Ingame")
				local Map37 = Ingame19 and Ingame19:FindFirstChild("Map")
				local children45 = Map37 and Map37:GetChildren()
				for i57, v59 in ipairs(children45 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item6 = v59:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item6 then VX_ESP_Item6:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label6 = v59:FindFirstChild("VX_ESP_Item_Label")
				end
					if VX_ESP_Item_Label6 then VX_ESP_Item_Label6:Destroy() end -- [[deobf: guard]]
			else
				local Players31 = workspace:FindFirstChild("Players")
				local Killers19 = Players31 and Players31:FindFirstChild("Killers")
				local children46 = Killers19 and Killers19:GetChildren()
				for i58, v60 in ipairs(children46 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer7 = v60:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer7 then VX_ESP_Killer7:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label7 = v60:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label7 then VX_ESP_Killer_Label7:Destroy() end -- [[deobf: guard]]
				end
				local Players32 = workspace:FindFirstChild("Players")
				local Survivors10 = Players32 and Players32:FindFirstChild("Survivors")
				local children47 = Survivors10 and Survivors10:GetChildren()
				for i59, v61 in ipairs(children47 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor7 = v61:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor7 then VX_ESP_Survivor7:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label7 = v61:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label7 then VX_ESP_Survivor_Label7:Destroy() end -- [[deobf: guard]]
				end
				local Players33 = workspace:FindFirstChild("Players")
				local Killers20 = Players33 and Players33:FindFirstChild("Killers")
				local children48 = Killers20 and Killers20:GetChildren()
				for i60, v62 in ipairs(children48 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli7 = v62:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli7 then VX_ESP_FakeNoli7:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label7 = v62:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label7 then VX_ESP_FakeNoli_Label7:Destroy() end -- [[deobf: guard]]
				end
				local Map38 = workspace:FindFirstChild("Map")
				local Ingame20 = Map38 and Map38:FindFirstChild("Ingame")
				local Map39 = Ingame20 and Ingame20:FindFirstChild("Map")
				local children49 = Map39 and Map39:GetChildren()
				for i61, v63 in ipairs(children49 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator7 = v63:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator7 then VX_ESP_Generator7:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label7 = v63:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label7 then VX_ESP_Generator_Label7:Destroy() end -- [[deobf: guard]]
				end
				local Map40 = workspace:FindFirstChild("Map")
				local Ingame21 = Map40 and Map40:FindFirstChild("Ingame")
				local Map41 = Ingame21 and Ingame21:FindFirstChild("Map")
				local children50 = Map41 and Map41:GetChildren()
				for i62, v64 in ipairs(children50 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item7 = v64:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item7 then VX_ESP_Item7:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label7 = v64:FindFirstChild("VX_ESP_Item_Label")
					if VX_ESP_Item_Label7 then VX_ESP_Item_Label7:Destroy() end -- [[deobf: guard]]
				end
			end
		end
})
	Checkbox2:AddColorPicker("VX_flag_26", {
	Title = "Survivor Color",
	Default = Color3.fromRGB(150, 225, 255),
	Callback = function(state, arg74)
			if state then
				local Players34 = workspace:FindFirstChild("Players")
				local Killers21 = Players34 and Players34:FindFirstChild("Killers")
				local children51 = Killers21 and Killers21:GetChildren()
				for i63, v65 in ipairs(children51 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer8 = v65:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer8 then VX_ESP_Killer8:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label8 = v65:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label8 then VX_ESP_Killer_Label8:Destroy() end -- [[deobf: guard]]
				end
				local Players35 = workspace:FindFirstChild("Players")
				local Survivors11 = Players35 and Players35:FindFirstChild("Survivors")
				local children52 = Survivors11 and Survivors11:GetChildren()
				for i64, v66 in ipairs(children52 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor8 = v66:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor8 then VX_ESP_Survivor8:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label8 = v66:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label8 then VX_ESP_Survivor_Label8:Destroy() end -- [[deobf: guard]]
				end
				local Players36 = workspace:FindFirstChild("Players")
				local Killers22 = Players36 and Players36:FindFirstChild("Killers")
				local children53 = Killers22 and Killers22:GetChildren()
				for i65, v67 in ipairs(children53 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli8 = v67:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli8 then VX_ESP_FakeNoli8:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label8 = v67:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label8 then VX_ESP_FakeNoli_Label8:Destroy() end -- [[deobf: guard]]
				end
				local Map42 = workspace:FindFirstChild("Map")
				local Ingame22 = Map42 and Map42:FindFirstChild("Ingame")
				local Map43 = Ingame22 and Ingame22:FindFirstChild("Map")
				local children54 = Map43 and Map43:GetChildren()
				for i66, v68 in ipairs(children54 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator8 = v68:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator8 then VX_ESP_Generator8:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label8 = v68:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label8 then VX_ESP_Generator_Label8:Destroy() end -- [[deobf: guard]]
				end
				local Map44 = workspace:FindFirstChild("Map")
				local Ingame23 = Map44 and Map44:FindFirstChild("Ingame")
				local Map45 = Ingame23 and Ingame23:FindFirstChild("Map")
				local children55 = Map45 and Map45:GetChildren()
				for i67, v69 in ipairs(children55 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item8 = v69:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item8 then VX_ESP_Item8:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label8 = v69:FindFirstChild("VX_ESP_Item_Label")
				end
					if VX_ESP_Item_Label8 then VX_ESP_Item_Label8:Destroy() end -- [[deobf: guard]]
			else
				local Players37 = workspace:FindFirstChild("Players")
				local Killers23 = Players37 and Players37:FindFirstChild("Killers")
				local children56 = Killers23 and Killers23:GetChildren()
				for i68, v70 in ipairs(children56 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer9 = v70:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer9 then VX_ESP_Killer9:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label9 = v70:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label9 then VX_ESP_Killer_Label9:Destroy() end -- [[deobf: guard]]
				end
				local Players38 = workspace:FindFirstChild("Players")
				local Survivors12 = Players38 and Players38:FindFirstChild("Survivors")
				local children57 = Survivors12 and Survivors12:GetChildren()
				for i69, v71 in ipairs(children57 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor9 = v71:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor9 then VX_ESP_Survivor9:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label9 = v71:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label9 then VX_ESP_Survivor_Label9:Destroy() end -- [[deobf: guard]]
				end
				local Players39 = workspace:FindFirstChild("Players")
				local Killers24 = Players39 and Players39:FindFirstChild("Killers")
				local children58 = Killers24 and Killers24:GetChildren()
				for i70, v72 in ipairs(children58 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli9 = v72:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli9 then VX_ESP_FakeNoli9:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label9 = v72:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label9 then VX_ESP_FakeNoli_Label9:Destroy() end -- [[deobf: guard]]
				end
				local Map46 = workspace:FindFirstChild("Map")
				local Ingame24 = Map46 and Map46:FindFirstChild("Ingame")
				local Map47 = Ingame24 and Ingame24:FindFirstChild("Map")
				local children59 = Map47 and Map47:GetChildren()
				for i71, v73 in ipairs(children59 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator9 = v73:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator9 then VX_ESP_Generator9:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label9 = v73:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label9 then VX_ESP_Generator_Label9:Destroy() end -- [[deobf: guard]]
				end
				local Map48 = workspace:FindFirstChild("Map")
				local Ingame25 = Map48 and Map48:FindFirstChild("Ingame")
				local Map49 = Ingame25 and Ingame25:FindFirstChild("Map")
				local children60 = Map49 and Map49:GetChildren()
				for i72, v74 in ipairs(children60 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item9 = v74:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item9 then VX_ESP_Item9:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label9 = v74:FindFirstChild("VX_ESP_Item_Label")
					if VX_ESP_Item_Label9 then VX_ESP_Item_Label9:Destroy() end -- [[deobf: guard]]
				end
			end
		end
})
	local Checkbox3 = Tab6:AddCheckbox("VX_flag_27", {
	Text = "Generators",
	Default = false,
	Callback = function(state, arg76)
			if state then
				local Players40 = workspace:FindFirstChild("Players")
				local Killers25 = Players40 and Players40:FindFirstChild("Killers")
				local children61 = Killers25 and Killers25:GetChildren()
				for i73, v75 in ipairs(children61 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer10 = v75:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer10 then VX_ESP_Killer10:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label10 = v75:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label10 then VX_ESP_Killer_Label10:Destroy() end -- [[deobf: guard]]
				end
				local Players41 = workspace:FindFirstChild("Players")
				local Survivors13 = Players41 and Players41:FindFirstChild("Survivors")
				local children62 = Survivors13 and Survivors13:GetChildren()
				for i74, v76 in ipairs(children62 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor10 = v76:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor10 then VX_ESP_Survivor10:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label10 = v76:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label10 then VX_ESP_Survivor_Label10:Destroy() end -- [[deobf: guard]]
				end
				local Players42 = workspace:FindFirstChild("Players")
				local Killers26 = Players42 and Players42:FindFirstChild("Killers")
				local children63 = Killers26 and Killers26:GetChildren()
				for i75, v77 in ipairs(children63 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli10 = v77:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli10 then VX_ESP_FakeNoli10:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label10 = v77:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label10 then VX_ESP_FakeNoli_Label10:Destroy() end -- [[deobf: guard]]
				end
				local Map50 = workspace:FindFirstChild("Map")
				local Ingame26 = Map50 and Map50:FindFirstChild("Ingame")
				local Map51 = Ingame26 and Ingame26:FindFirstChild("Map")
				local children64 = Map51 and Map51:GetChildren()
				for i76, v78 in ipairs(children64 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator10 = v78:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator10 then VX_ESP_Generator10:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label10 = v78:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label10 then VX_ESP_Generator_Label10:Destroy() end -- [[deobf: guard]]
					Players:GetPlayerFromCharacter(v78)
				end
				local Map52 = workspace:FindFirstChild("Map")
				local Ingame27 = Map52 and Map52:FindFirstChild("Ingame")
				local Map53 = Ingame27 and Ingame27:FindFirstChild("Map")
				local children65 = Map53 and Map53:GetChildren()
				for i77, v79 in ipairs(children65 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item10 = v79:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item10 then VX_ESP_Item10:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label10 = v79:FindFirstChild("VX_ESP_Item_Label")
				end
					if VX_ESP_Item_Label10 then VX_ESP_Item_Label10:Destroy() end -- [[deobf: guard]]
			else
				local Players43 = workspace:FindFirstChild("Players")
				local Killers27 = Players43 and Players43:FindFirstChild("Killers")
				local children66 = Killers27 and Killers27:GetChildren()
				for i78, v80 in ipairs(children66 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer11 = v80:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer11 then VX_ESP_Killer11:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label11 = v80:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label11 then VX_ESP_Killer_Label11:Destroy() end -- [[deobf: guard]]
				end
				local Players44 = workspace:FindFirstChild("Players")
				local Survivors14 = Players44 and Players44:FindFirstChild("Survivors")
				local children67 = Survivors14 and Survivors14:GetChildren()
				for i79, v81 in ipairs(children67 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor11 = v81:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor11 then VX_ESP_Survivor11:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label11 = v81:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label11 then VX_ESP_Survivor_Label11:Destroy() end -- [[deobf: guard]]
				end
				local Players45 = workspace:FindFirstChild("Players")
				local Killers28 = Players45 and Players45:FindFirstChild("Killers")
				local children68 = Killers28 and Killers28:GetChildren()
				for i80, v82 in ipairs(children68 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli11 = v82:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli11 then VX_ESP_FakeNoli11:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label11 = v82:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label11 then VX_ESP_FakeNoli_Label11:Destroy() end -- [[deobf: guard]]
				end
				local Map54 = workspace:FindFirstChild("Map")
				local Ingame28 = Map54 and Map54:FindFirstChild("Ingame")
				local Map55 = Ingame28 and Ingame28:FindFirstChild("Map")
				local children69 = Map55 and Map55:GetChildren()
				for i81, v83 in ipairs(children69 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator11 = v83:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator11 then VX_ESP_Generator11:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label11 = v83:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label11 then VX_ESP_Generator_Label11:Destroy() end -- [[deobf: guard]]
				end
				local Map56 = workspace:FindFirstChild("Map")
				local Ingame29 = Map56 and Map56:FindFirstChild("Ingame")
				local Map57 = Ingame29 and Ingame29:FindFirstChild("Map")
				local children70 = Map57 and Map57:GetChildren()
				for i82, v84 in ipairs(children70 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item11 = v84:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item11 then VX_ESP_Item11:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label11 = v84:FindFirstChild("VX_ESP_Item_Label")
					if VX_ESP_Item_Label11 then VX_ESP_Item_Label11:Destroy() end -- [[deobf: guard]]
				end
			end
		end
})
	Checkbox3:AddColorPicker("VX_flag_28", {
	Title = "Generator Color",
	Default = Color3.fromRGB(255, 215, 100),
	Callback = function(state, arg78)
			if state then
				local Players46 = workspace:FindFirstChild("Players")
				local Killers29 = Players46 and Players46:FindFirstChild("Killers")
				local children71 = Killers29 and Killers29:GetChildren()
				for i83, v85 in ipairs(children71 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer12 = v85:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer12 then VX_ESP_Killer12:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label12 = v85:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label12 then VX_ESP_Killer_Label12:Destroy() end -- [[deobf: guard]]
				end
				local Players47 = workspace:FindFirstChild("Players")
				local Survivors15 = Players47 and Players47:FindFirstChild("Survivors")
				local children72 = Survivors15 and Survivors15:GetChildren()
				for i84, v86 in ipairs(children72 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor12 = v86:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor12 then VX_ESP_Survivor12:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label12 = v86:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label12 then VX_ESP_Survivor_Label12:Destroy() end -- [[deobf: guard]]
				end
				local Players48 = workspace:FindFirstChild("Players")
				local Killers30 = Players48 and Players48:FindFirstChild("Killers")
				local children73 = Killers30 and Killers30:GetChildren()
				for i85, v87 in ipairs(children73 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli12 = v87:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli12 then VX_ESP_FakeNoli12:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label12 = v87:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label12 then VX_ESP_FakeNoli_Label12:Destroy() end -- [[deobf: guard]]
				end
				local Map58 = workspace:FindFirstChild("Map")
				local Ingame30 = Map58 and Map58:FindFirstChild("Ingame")
				local Map59 = Ingame30 and Ingame30:FindFirstChild("Map")
				local children74 = Map59 and Map59:GetChildren()
				for i86, v88 in ipairs(children74 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator12 = v88:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator12 then VX_ESP_Generator12:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label12 = v88:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label12 then VX_ESP_Generator_Label12:Destroy() end -- [[deobf: guard]]
				end
				local Map60 = workspace:FindFirstChild("Map")
				local Ingame31 = Map60 and Map60:FindFirstChild("Ingame")
				local Map61 = Ingame31 and Ingame31:FindFirstChild("Map")
				local children75 = Map61 and Map61:GetChildren()
				for i87, v89 in ipairs(children75 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item12 = v89:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item12 then VX_ESP_Item12:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label12 = v89:FindFirstChild("VX_ESP_Item_Label")
				end
					if VX_ESP_Item_Label12 then VX_ESP_Item_Label12:Destroy() end -- [[deobf: guard]]
			else
				local Players49 = workspace:FindFirstChild("Players")
				local Killers31 = Players49 and Players49:FindFirstChild("Killers")
				local children76 = Killers31 and Killers31:GetChildren()
				for i88, v90 in ipairs(children76 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer13 = v90:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer13 then VX_ESP_Killer13:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label13 = v90:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label13 then VX_ESP_Killer_Label13:Destroy() end -- [[deobf: guard]]
				end
				local Players50 = workspace:FindFirstChild("Players")
				local Survivors16 = Players50 and Players50:FindFirstChild("Survivors")
				local children77 = Survivors16 and Survivors16:GetChildren()
				for i89, v91 in ipairs(children77 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor13 = v91:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor13 then VX_ESP_Survivor13:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label13 = v91:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label13 then VX_ESP_Survivor_Label13:Destroy() end -- [[deobf: guard]]
				end
				local Players51 = workspace:FindFirstChild("Players")
				local Killers32 = Players51 and Players51:FindFirstChild("Killers")
				local children78 = Killers32 and Killers32:GetChildren()
				for i90, v92 in ipairs(children78 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli13 = v92:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli13 then VX_ESP_FakeNoli13:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label13 = v92:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label13 then VX_ESP_FakeNoli_Label13:Destroy() end -- [[deobf: guard]]
				end
				local Map62 = workspace:FindFirstChild("Map")
				local Ingame32 = Map62 and Map62:FindFirstChild("Ingame")
				local Map63 = Ingame32 and Ingame32:FindFirstChild("Map")
				local children79 = Map63 and Map63:GetChildren()
				for i91, v93 in ipairs(children79 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator13 = v93:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator13 then VX_ESP_Generator13:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label13 = v93:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label13 then VX_ESP_Generator_Label13:Destroy() end -- [[deobf: guard]]
				end
				local Map64 = workspace:FindFirstChild("Map")
				local Ingame33 = Map64 and Map64:FindFirstChild("Ingame")
				local Map65 = Ingame33 and Ingame33:FindFirstChild("Map")
				local children80 = Map65 and Map65:GetChildren()
				for i92, v94 in ipairs(children80 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item13 = v94:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item13 then VX_ESP_Item13:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label13 = v94:FindFirstChild("VX_ESP_Item_Label")
					if VX_ESP_Item_Label13 then VX_ESP_Item_Label13:Destroy() end -- [[deobf: guard]]
				end
			end
		end
})
	local Checkbox4 = Tab6:AddCheckbox("VX_flag_29", {
	Text = "Items",
	Default = false,
	Callback = function(state, arg80)
			if state then
				local Players52 = workspace:FindFirstChild("Players")
				local Killers33 = Players52 and Players52:FindFirstChild("Killers")
				local children81 = Killers33 and Killers33:GetChildren()
				for i93, v95 in ipairs(children81 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer14 = v95:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer14 then VX_ESP_Killer14:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label14 = v95:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label14 then VX_ESP_Killer_Label14:Destroy() end -- [[deobf: guard]]
				end
				local Players53 = workspace:FindFirstChild("Players")
				local Survivors17 = Players53 and Players53:FindFirstChild("Survivors")
				local children82 = Survivors17 and Survivors17:GetChildren()
				for i94, v96 in ipairs(children82 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor14 = v96:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor14 then VX_ESP_Survivor14:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label14 = v96:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label14 then VX_ESP_Survivor_Label14:Destroy() end -- [[deobf: guard]]
				end
				local Players54 = workspace:FindFirstChild("Players")
				local Killers34 = Players54 and Players54:FindFirstChild("Killers")
				local children83 = Killers34 and Killers34:GetChildren()
				for i95, v97 in ipairs(children83 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli14 = v97:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli14 then VX_ESP_FakeNoli14:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label14 = v97:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label14 then VX_ESP_FakeNoli_Label14:Destroy() end -- [[deobf: guard]]
				end
				local Map66 = workspace:FindFirstChild("Map")
				local Ingame34 = Map66 and Map66:FindFirstChild("Ingame")
				local Map67 = Ingame34 and Ingame34:FindFirstChild("Map")
				local children84 = Map67 and Map67:GetChildren()
				for i96, v98 in ipairs(children84 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator14 = v98:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator14 then VX_ESP_Generator14:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label14 = v98:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label14 then VX_ESP_Generator_Label14:Destroy() end -- [[deobf: guard]]
				end
				local Map68 = workspace:FindFirstChild("Map")
				local Ingame35 = Map68 and Map68:FindFirstChild("Ingame")
				local Map69 = Ingame35 and Ingame35:FindFirstChild("Map")
				local children85 = Map69 and Map69:GetChildren()
				for i97, v99 in ipairs(children85 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item14 = v99:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item14 then VX_ESP_Item14:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label14 = v99:FindFirstChild("VX_ESP_Item_Label")
					if VX_ESP_Item_Label14 then VX_ESP_Item_Label14:Destroy() end -- [[deobf: guard]]
				end
					Players:GetPlayerFromCharacter(v99)
			else
				local Players55 = workspace:FindFirstChild("Players")
				local Killers35 = Players55 and Players55:FindFirstChild("Killers")
				local children86 = Killers35 and Killers35:GetChildren()
				for i98, v100 in ipairs(children86 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer15 = v100:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer15 then VX_ESP_Killer15:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label15 = v100:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label15 then VX_ESP_Killer_Label15:Destroy() end -- [[deobf: guard]]
				end
				local Players56 = workspace:FindFirstChild("Players")
				local Survivors18 = Players56 and Players56:FindFirstChild("Survivors")
				local children87 = Survivors18 and Survivors18:GetChildren()
				for i99, v101 in ipairs(children87 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor15 = v101:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor15 then VX_ESP_Survivor15:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label15 = v101:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label15 then VX_ESP_Survivor_Label15:Destroy() end -- [[deobf: guard]]
				end
				local Players57 = workspace:FindFirstChild("Players")
				local Killers36 = Players57 and Players57:FindFirstChild("Killers")
				local children88 = Killers36 and Killers36:GetChildren()
				for i100, v102 in ipairs(children88 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli15 = v102:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli15 then VX_ESP_FakeNoli15:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label15 = v102:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label15 then VX_ESP_FakeNoli_Label15:Destroy() end -- [[deobf: guard]]
				end
				local Map70 = workspace:FindFirstChild("Map")
				local Ingame36 = Map70 and Map70:FindFirstChild("Ingame")
				local Map71 = Ingame36 and Ingame36:FindFirstChild("Map")
				local children89 = Map71 and Map71:GetChildren()
				for i101, v103 in ipairs(children89 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator15 = v103:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator15 then VX_ESP_Generator15:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label15 = v103:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label15 then VX_ESP_Generator_Label15:Destroy() end -- [[deobf: guard]]
				end
				local Map72 = workspace:FindFirstChild("Map")
				local Ingame37 = Map72 and Map72:FindFirstChild("Ingame")
				local Map73 = Ingame37 and Ingame37:FindFirstChild("Map")
				local children90 = Map73 and Map73:GetChildren()
				for i102, v104 in ipairs(children90 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item15 = v104:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item15 then VX_ESP_Item15:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label15 = v104:FindFirstChild("VX_ESP_Item_Label")
					if VX_ESP_Item_Label15 then VX_ESP_Item_Label15:Destroy() end -- [[deobf: guard]]
				end
			end
		end
})
	Checkbox4:AddColorPicker("VX_flag_30", {
	Title = "Item Color",
	Default = Color3.fromRGB(210, 255, 210),
	Callback = function(state, arg82)
			if state then
				local Players58 = workspace:FindFirstChild("Players")
				local Killers37 = Players58 and Players58:FindFirstChild("Killers")
				local children91 = Killers37 and Killers37:GetChildren()
				for i103, v105 in ipairs(children91 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer16 = v105:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer16 then VX_ESP_Killer16:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label16 = v105:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label16 then VX_ESP_Killer_Label16:Destroy() end -- [[deobf: guard]]
				end
				local Players59 = workspace:FindFirstChild("Players")
				local Survivors19 = Players59 and Players59:FindFirstChild("Survivors")
				local children92 = Survivors19 and Survivors19:GetChildren()
				for i104, v106 in ipairs(children92 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor16 = v106:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor16 then VX_ESP_Survivor16:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label16 = v106:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label16 then VX_ESP_Survivor_Label16:Destroy() end -- [[deobf: guard]]
				end
				local Players60 = workspace:FindFirstChild("Players")
				local Killers38 = Players60 and Players60:FindFirstChild("Killers")
				local children93 = Killers38 and Killers38:GetChildren()
				for i105, v107 in ipairs(children93 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli16 = v107:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli16 then VX_ESP_FakeNoli16:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label16 = v107:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label16 then VX_ESP_FakeNoli_Label16:Destroy() end -- [[deobf: guard]]
				end
				local Map74 = workspace:FindFirstChild("Map")
				local Ingame38 = Map74 and Map74:FindFirstChild("Ingame")
				local Map75 = Ingame38 and Ingame38:FindFirstChild("Map")
				local children94 = Map75 and Map75:GetChildren()
				for i106, v108 in ipairs(children94 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator16 = v108:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator16 then VX_ESP_Generator16:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label16 = v108:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label16 then VX_ESP_Generator_Label16:Destroy() end -- [[deobf: guard]]
				end
				local Map76 = workspace:FindFirstChild("Map")
				local Ingame39 = Map76 and Map76:FindFirstChild("Ingame")
				local Map77 = Ingame39 and Ingame39:FindFirstChild("Map")
				local children95 = Map77 and Map77:GetChildren()
				for i107, v109 in ipairs(children95 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item16 = v109:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item16 then VX_ESP_Item16:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label16 = v109:FindFirstChild("VX_ESP_Item_Label")
				end
					if VX_ESP_Item_Label16 then VX_ESP_Item_Label16:Destroy() end -- [[deobf: guard]]
			else
				local Players61 = workspace:FindFirstChild("Players")
				local Killers39 = Players61 and Players61:FindFirstChild("Killers")
				local children96 = Killers39 and Killers39:GetChildren()
				for i108, v110 in ipairs(children96 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer17 = v110:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer17 then VX_ESP_Killer17:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label17 = v110:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label17 then VX_ESP_Killer_Label17:Destroy() end -- [[deobf: guard]]
				end
				local Players62 = workspace:FindFirstChild("Players")
				local Survivors20 = Players62 and Players62:FindFirstChild("Survivors")
				local children97 = Survivors20 and Survivors20:GetChildren()
				for i109, v111 in ipairs(children97 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor17 = v111:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor17 then VX_ESP_Survivor17:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label17 = v111:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label17 then VX_ESP_Survivor_Label17:Destroy() end -- [[deobf: guard]]
				end
				local Players63 = workspace:FindFirstChild("Players")
				local Killers40 = Players63 and Players63:FindFirstChild("Killers")
				local children98 = Killers40 and Killers40:GetChildren()
				for i110, v112 in ipairs(children98 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli17 = v112:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli17 then VX_ESP_FakeNoli17:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label17 = v112:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label17 then VX_ESP_FakeNoli_Label17:Destroy() end -- [[deobf: guard]]
				end
				local Map78 = workspace:FindFirstChild("Map")
				local Ingame40 = Map78 and Map78:FindFirstChild("Ingame")
				local Map79 = Ingame40 and Ingame40:FindFirstChild("Map")
				local children99 = Map79 and Map79:GetChildren()
				for i111, v113 in ipairs(children99 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator17 = v113:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator17 then VX_ESP_Generator17:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label17 = v113:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label17 then VX_ESP_Generator_Label17:Destroy() end -- [[deobf: guard]]
				end
				local Map80 = workspace:FindFirstChild("Map")
				local Ingame41 = Map80 and Map80:FindFirstChild("Ingame")
				local Map81 = Ingame41 and Ingame41:FindFirstChild("Map")
				local children100 = Map81 and Map81:GetChildren()
				for i112, v114 in ipairs(children100 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item17 = v114:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item17 then VX_ESP_Item17:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label17 = v114:FindFirstChild("VX_ESP_Item_Label")
					if VX_ESP_Item_Label17 then VX_ESP_Item_Label17:Destroy() end -- [[deobf: guard]]
				end
			end
		end
})
	local Checkbox5 = Tab6:AddCheckbox("VX_flag_31", {
	Text = "Noli Hallucination",
	Default = false,
	Tooltip = "Highlights fake killers (NPC killers) in the Killers folder",
	Callback = function(state, arg84)
			if state then
				local Players64 = workspace:FindFirstChild("Players")
				local Killers41 = Players64 and Players64:FindFirstChild("Killers")
				local children101 = Killers41 and Killers41:GetChildren()
				for i113, v115 in ipairs(children101 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer18 = v115:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer18 then VX_ESP_Killer18:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label18 = v115:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label18 then VX_ESP_Killer_Label18:Destroy() end -- [[deobf: guard]]
				end
				local Players65 = workspace:FindFirstChild("Players")
				local Survivors21 = Players65 and Players65:FindFirstChild("Survivors")
				local children102 = Survivors21 and Survivors21:GetChildren()
				for i114, v116 in ipairs(children102 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor18 = v116:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor18 then VX_ESP_Survivor18:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label18 = v116:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label18 then VX_ESP_Survivor_Label18:Destroy() end -- [[deobf: guard]]
				end
				local Players66 = workspace:FindFirstChild("Players")
				local Killers42 = Players66 and Players66:FindFirstChild("Killers")
				local children103 = Killers42 and Killers42:GetChildren()
				for i115, v117 in ipairs(children103 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli18 = v117:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli18 then VX_ESP_FakeNoli18:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label18 = v117:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label18 then VX_ESP_FakeNoli_Label18:Destroy() end -- [[deobf: guard]]
					Players:GetPlayerFromCharacter(v117)
					v117:FindFirstChild("HumanoidRootPart")
					Players:GetPlayerFromCharacter(v117)
				end
				local Map82 = workspace:FindFirstChild("Map")
				local Ingame42 = Map82 and Map82:FindFirstChild("Ingame")
				local Map83 = Ingame42 and Ingame42:FindFirstChild("Map")
				local children104 = Map83 and Map83:GetChildren()
				for i116, v118 in ipairs(children104 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator18 = v118:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator18 then VX_ESP_Generator18:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label18 = v118:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label18 then VX_ESP_Generator_Label18:Destroy() end -- [[deobf: guard]]
				end
				local Map84 = workspace:FindFirstChild("Map")
				local Ingame43 = Map84 and Map84:FindFirstChild("Ingame")
				local Map85 = Ingame43 and Ingame43:FindFirstChild("Map")
				local children105 = Map85 and Map85:GetChildren()
				for i117, v119 in ipairs(children105 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item18 = v119:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item18 then VX_ESP_Item18:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label18 = v119:FindFirstChild("VX_ESP_Item_Label")
				end
					if VX_ESP_Item_Label18 then VX_ESP_Item_Label18:Destroy() end -- [[deobf: guard]]
			else
				local Players67 = workspace:FindFirstChild("Players")
				local Killers43 = Players67 and Players67:FindFirstChild("Killers")
				local children106 = Killers43 and Killers43:GetChildren()
				for i118, v120 in ipairs(children106 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer19 = v120:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer19 then VX_ESP_Killer19:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label19 = v120:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label19 then VX_ESP_Killer_Label19:Destroy() end -- [[deobf: guard]]
				end
				local Players68 = workspace:FindFirstChild("Players")
				local Survivors22 = Players68 and Players68:FindFirstChild("Survivors")
				local children107 = Survivors22 and Survivors22:GetChildren()
				for i119, v121 in ipairs(children107 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor19 = v121:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor19 then VX_ESP_Survivor19:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label19 = v121:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label19 then VX_ESP_Survivor_Label19:Destroy() end -- [[deobf: guard]]
				end
				local Players69 = workspace:FindFirstChild("Players")
				local Killers44 = Players69 and Players69:FindFirstChild("Killers")
				local children108 = Killers44 and Killers44:GetChildren()
				for i120, v122 in ipairs(children108 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli19 = v122:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli19 then VX_ESP_FakeNoli19:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label19 = v122:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label19 then VX_ESP_FakeNoli_Label19:Destroy() end -- [[deobf: guard]]
				end
				local Map86 = workspace:FindFirstChild("Map")
				local Ingame44 = Map86 and Map86:FindFirstChild("Ingame")
				local Map87 = Ingame44 and Ingame44:FindFirstChild("Map")
				local children109 = Map87 and Map87:GetChildren()
				for i121, v123 in ipairs(children109 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator19 = v123:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator19 then VX_ESP_Generator19:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label19 = v123:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label19 then VX_ESP_Generator_Label19:Destroy() end -- [[deobf: guard]]
				end
				local Map88 = workspace:FindFirstChild("Map")
				local Ingame45 = Map88 and Map88:FindFirstChild("Ingame")
				local Map89 = Ingame45 and Ingame45:FindFirstChild("Map")
				local children110 = Map89 and Map89:GetChildren()
				for i122, v124 in ipairs(children110 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item19 = v124:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item19 then VX_ESP_Item19:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label19 = v124:FindFirstChild("VX_ESP_Item_Label")
					if VX_ESP_Item_Label19 then VX_ESP_Item_Label19:Destroy() end -- [[deobf: guard]]
				end
			end
		end
})
	Checkbox5:AddColorPicker("VX_flag_32", {
	Title = "Fake Noli Color",
	Default = Color3.fromRGB(255, 0, 255),
	Callback = function(state, arg86)
			if state then
				local Players70 = workspace:FindFirstChild("Players")
				local Killers45 = Players70 and Players70:FindFirstChild("Killers")
				local children111 = Killers45 and Killers45:GetChildren()
				for i123, v125 in ipairs(children111 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer20 = v125:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer20 then VX_ESP_Killer20:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label20 = v125:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label20 then VX_ESP_Killer_Label20:Destroy() end -- [[deobf: guard]]
				end
				local Players71 = workspace:FindFirstChild("Players")
				local Survivors23 = Players71 and Players71:FindFirstChild("Survivors")
				local children112 = Survivors23 and Survivors23:GetChildren()
				for i124, v126 in ipairs(children112 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor20 = v126:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor20 then VX_ESP_Survivor20:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label20 = v126:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label20 then VX_ESP_Survivor_Label20:Destroy() end -- [[deobf: guard]]
				end
				local Players72 = workspace:FindFirstChild("Players")
				local Killers46 = Players72 and Players72:FindFirstChild("Killers")
				local children113 = Killers46 and Killers46:GetChildren()
				for i125, v127 in ipairs(children113 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli20 = v127:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli20 then VX_ESP_FakeNoli20:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label20 = v127:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label20 then VX_ESP_FakeNoli_Label20:Destroy() end -- [[deobf: guard]]
				end
				local Map90 = workspace:FindFirstChild("Map")
				local Ingame46 = Map90 and Map90:FindFirstChild("Ingame")
				local Map91 = Ingame46 and Ingame46:FindFirstChild("Map")
				local children114 = Map91 and Map91:GetChildren()
				for i126, v128 in ipairs(children114 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator20 = v128:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator20 then VX_ESP_Generator20:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label20 = v128:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label20 then VX_ESP_Generator_Label20:Destroy() end -- [[deobf: guard]]
				end
				local Map92 = workspace:FindFirstChild("Map")
				local Ingame47 = Map92 and Map92:FindFirstChild("Ingame")
				local Map93 = Ingame47 and Ingame47:FindFirstChild("Map")
				local children115 = Map93 and Map93:GetChildren()
				for i127, v129 in ipairs(children115 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item20 = v129:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item20 then VX_ESP_Item20:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label20 = v129:FindFirstChild("VX_ESP_Item_Label")
				end
					if VX_ESP_Item_Label20 then VX_ESP_Item_Label20:Destroy() end -- [[deobf: guard]]
			else
				local Players73 = workspace:FindFirstChild("Players")
				local Killers47 = Players73 and Players73:FindFirstChild("Killers")
				local children116 = Killers47 and Killers47:GetChildren()
				for i128, v130 in ipairs(children116 or {}) do -- [[deobf: guard]]
					local VX_ESP_Killer21 = v130:FindFirstChild("VX_ESP_Killer")
					if VX_ESP_Killer21 then VX_ESP_Killer21:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Killer_Label21 = v130:FindFirstChild("VX_ESP_Killer_Label")
					if VX_ESP_Killer_Label21 then VX_ESP_Killer_Label21:Destroy() end -- [[deobf: guard]]
				end
				local Players74 = workspace:FindFirstChild("Players")
				local Survivors24 = Players74 and Players74:FindFirstChild("Survivors")
				local children117 = Survivors24 and Survivors24:GetChildren()
				for i129, v131 in ipairs(children117 or {}) do -- [[deobf: guard]]
					local VX_ESP_Survivor21 = v131:FindFirstChild("VX_ESP_Survivor")
					if VX_ESP_Survivor21 then VX_ESP_Survivor21:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Survivor_Label21 = v131:FindFirstChild("VX_ESP_Survivor_Label")
					if VX_ESP_Survivor_Label21 then VX_ESP_Survivor_Label21:Destroy() end -- [[deobf: guard]]
				end
				local Players75 = workspace:FindFirstChild("Players")
				local Killers48 = Players75 and Players75:FindFirstChild("Killers")
				local children118 = Killers48 and Killers48:GetChildren()
				for i130, v132 in ipairs(children118 or {}) do -- [[deobf: guard]]
					local VX_ESP_FakeNoli21 = v132:FindFirstChild("VX_ESP_FakeNoli")
					if VX_ESP_FakeNoli21 then VX_ESP_FakeNoli21:Destroy() end -- [[deobf: guard]]
					local VX_ESP_FakeNoli_Label21 = v132:FindFirstChild("VX_ESP_FakeNoli_Label")
					if VX_ESP_FakeNoli_Label21 then VX_ESP_FakeNoli_Label21:Destroy() end -- [[deobf: guard]]
				end
				local Map94 = workspace:FindFirstChild("Map")
				local Ingame48 = Map94 and Map94:FindFirstChild("Ingame")
				local Map95 = Ingame48 and Ingame48:FindFirstChild("Map")
				local children119 = Map95 and Map95:GetChildren()
				for i131, v133 in ipairs(children119 or {}) do -- [[deobf: guard]]
					local VX_ESP_Generator21 = v133:FindFirstChild("VX_ESP_Generator")
					if VX_ESP_Generator21 then VX_ESP_Generator21:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Generator_Label21 = v133:FindFirstChild("VX_ESP_Generator_Label")
					if VX_ESP_Generator_Label21 then VX_ESP_Generator_Label21:Destroy() end -- [[deobf: guard]]
				end
				local Map96 = workspace:FindFirstChild("Map")
				local Ingame49 = Map96 and Map96:FindFirstChild("Ingame")
				local Map97 = Ingame49 and Ingame49:FindFirstChild("Map")
				local children120 = Map97 and Map97:GetChildren()
				for i132, v134 in ipairs(children120 or {}) do -- [[deobf: guard]]
					local VX_ESP_Item21 = v134:FindFirstChild("VX_ESP_Item")
					if VX_ESP_Item21 then VX_ESP_Item21:Destroy() end -- [[deobf: guard]]
					local VX_ESP_Item_Label21 = v134:FindFirstChild("VX_ESP_Item_Label")
					if VX_ESP_Item_Label21 then VX_ESP_Item_Label21:Destroy() end -- [[deobf: guard]]
				end
			end
		end
})
	getgenv().GraffitiEspEnabled = false
	getgenv().GraffitiEspHighlights = {}
	getgenv().GraffitiEspLabels = {}
	getgenv().GraffitiEspColor = Color3.fromRGB(255, 230, 100)
	getgenv().UpdateGraffitiEsp = function(arg87, arg88)
		workspace:FindFirstChild("Map")
		local Ingame50 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
		local children121 = Ingame50 and Ingame50:GetChildren()
		for i133, v135 in ipairs(children121 or {}) do -- [[deobf: guard]]
			v135.Name:match("Spray$")
			v135.Name:gsub("Spray$", "")
		end
	end
	task.spawn(function(...)
		task.wait(1)
		workspace:FindFirstChild("Map")
		local Ingame51 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
		local children122 = Ingame51 and Ingame51:GetChildren()
		for i134, v136 in ipairs(children122 or {}) do -- [[deobf: guard]]
			v136.Name:match("Spray$")
			v136.Name:gsub("Spray$", "")
		end
		task.wait(1)
	end)
	local Checkbox6 = Tab6:AddCheckbox("VX_flag_33", {
	Text = "Graffiti",
	Default = false,
	Callback = function(state, arg90)
			if state then
				getgenv().GraffitiEspEnabled = state
				workspace:FindFirstChild("Map")
				local Ingame52 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
				local children123 = Ingame52 and Ingame52:GetChildren()
				for i136, v138 in ipairs(children123 or {}) do -- [[deobf: guard]]
					v138.Name:match("Spray$")
					local result4 = v138.Name:gsub("Spray$", "")
				end
				local Highlight = Instance.new("Highlight")
				Highlight.FillColor = Color3.fromRGB(255, 230, 100)
				Highlight.OutlineColor = Color3.fromRGB(255, 230, 100)
				Highlight.FillTransparency = 0.8
				Highlight.OutlineTransparency = 0.6
				Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				Highlight.Adornee = v138
				Highlight.Parent = workspace
				local BillboardGui = Instance.new("BillboardGui")
				BillboardGui.Adornee = v138
				BillboardGui.Size = UDim2.new(0, 220, 0, 60)
				BillboardGui.StudsOffsetWorldSpace = Vector3.new(0, 3.8, 0)
				BillboardGui.AlwaysOnTop = true
				BillboardGui.MaxDistance = math.huge
				BillboardGui.Parent = v138
			else
				getgenv().GraffitiEspEnabled = false
				workspace:FindFirstChild("Map")
				local Ingame53 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
				local children124 = Ingame53 and Ingame53:GetChildren()
				for i137, v139 in ipairs(children124 or {}) do -- [[deobf: guard]]
					v139.Name:match("Spray$")
					v139.Name:gsub("Spray$", "")
				end
				if Highlight then Highlight:Destroy() end -- [[deobf: guard]]
				if BillboardGui then BillboardGui:Destroy() end -- [[deobf: guard]]
			end
		end
})
	getgenv().GraffitiEspColor = false
	Checkbox6:AddColorPicker("VX_flag_34", {
	Title = "Graffiti Color",
	Default = Color3.fromRGB(255, 230, 100),
	Callback = function(state, arg92)
		end
})
	getgenv().JDQ_FolderESPEnabled = false
	getgenv().JDQ_FolderHighlights = {}
	getgenv().JDQ_ESPConn = nil
	getgenv().JDQ_FolderColor = Color3.fromRGB(255, 255, 255)
	getgenv().JDQ_AddFolderESP = function(arg93, arg94)
		local Highlight2 = Instance.new("Highlight")
		Highlight2.Adornee = arg93
		Highlight2.FillColor = Color3.fromRGB(255, 255, 255)
		Highlight2.FillTransparency = 0.5
		Highlight2.OutlineColor = Color3.fromRGB(255, 255, 255)
		Highlight2.OutlineTransparency = 0
		Highlight2.Parent = arg93
	end
	getgenv().JDQ_RemoveFolderESP = function(arg95, arg96)
	end
	getgenv().JDQ_ESPConn = nil
	local Checkbox7 = Tab6:AddCheckbox("VX_flag_35", {
	Text = "Folders",
	Default = false,
	Callback = function(state, arg98)
			if state then
				getgenv().JDQ_FolderESPEnabled = state
				workspace:GetChildren()
				local connection16 = workspace.ChildAdded:Connect(function(child32)
				end)
				getgenv().JDQ_ESPConn = connection16
			else
				getgenv().JDQ_FolderESPEnabled = false
				if Highlight2 then Highlight2:Destroy() end -- [[deobf: guard]]
				if connection16 then connection16:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	getgenv().JDQ_FolderColor = false
	Checkbox7:AddColorPicker("VX_flag_36", {
	Title = "Folder Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(state, arg100)
		end
})
	task.spawn(function(...)
		task.wait(0.5)
		task.wait(0.5)
	end)
	local Checkbox8 = Tab6:AddCheckbox("VX_flag_37", {
	Text = "Plant Traps",
	Default = false,
	Callback = function(state, arg102)
			if state then
				workspace:FindFirstChild("Map")
				local Ingame54 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
				local children125 = Ingame54 and Ingame54:GetChildren()
				for i138, v140 in ipairs(children125 or {}) do -- [[deobf: guard]]
				end
				workspace:FindFirstChild("Map")
				local Ingame55 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
				local connection17 = Ingame55 and Ingame55.ChildAdded:Connect(function(child33)
				end)
			else
				if connection17 then connection17:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	Checkbox8:AddColorPicker("VX_flag_38", {
	Title = "Plant Color",
	Default = Color3.fromRGB(100, 255, 100),
	Callback = function(state, arg104)
		end
})
	task.spawn(function(...)
		task.wait(0.5)
		task.wait(0.5)
	end)
	local Checkbox9 = Tab6:AddCheckbox("VX_flag_39", {
	Text = "Golem & Azure Body",
	Default = false,
	Callback = function(state, arg106)
			if state then
				workspace:FindFirstChild("Map")
				local Azure = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Azure") or nil -- [[deobf: nil-chain guard]]
				local Highlight3 = Instance.new("Highlight")
				Highlight3.Name = "VX_ESP_GolemAzure"
				Highlight3.FillColor = Color3.fromRGB(100, 180, 255)
				Highlight3.OutlineColor = Color3.fromRGB(100, 180, 255)
				Highlight3.FillTransparency = 0.8
				Highlight3.OutlineTransparency = 0.6
				Highlight3.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				Highlight3.Adornee = Azure
				Highlight3.Parent = Azure
				local BillboardGui2 = Instance.new("BillboardGui")
				BillboardGui2.Name = "VX_ESP_GolemAzure_Label"
				BillboardGui2.AlwaysOnTop = true
				BillboardGui2.Size = UDim2.new(0, 150, 0, 20)
				BillboardGui2.StudsOffsetWorldSpace = Vector3.new(0, 3.8, 0)
				BillboardGui2.Adornee = Azure and Azure.PrimaryPart or nil -- [[deobf: guard]]
				BillboardGui2.Parent = Azure
				workspace:FindFirstChild("Map")
				local Ingame56 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
				local MisterBeast = Ingame56 and Ingame56:FindFirstChild("MisterBeast")
				local Highlight4 = Instance.new("Highlight")
				Highlight4.Name = "VX_ESP_GolemAzure"
				Highlight4.FillColor = Color3.fromRGB(100, 180, 255)
				Highlight4.OutlineColor = Color3.fromRGB(100, 180, 255)
				Highlight4.FillTransparency = 0.8
				Highlight4.OutlineTransparency = 0.6
				Highlight4.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				Highlight4.Adornee = MisterBeast
				Highlight4.Parent = MisterBeast
				local BillboardGui3 = Instance.new("BillboardGui")
				BillboardGui3.Name = "VX_ESP_GolemAzure_Label"
				BillboardGui3.AlwaysOnTop = true
				BillboardGui3.Size = UDim2.new(0, 150, 0, 20)
				BillboardGui3.StudsOffsetWorldSpace = Vector3.new(0, 3.8, 0)
				BillboardGui3.Adornee = MisterBeast and MisterBeast.PrimaryPart or nil -- [[deobf: guard]]
				BillboardGui3.Parent = MisterBeast
			else
				if Highlight3 then Highlight3:Destroy() end -- [[deobf: guard]]
				if BillboardGui2 then BillboardGui2:Destroy() end -- [[deobf: guard]]
				if Highlight4 then Highlight4:Destroy() end -- [[deobf: guard]]
				if BillboardGui3 then BillboardGui3:Destroy() end -- [[deobf: guard]]
			end
		end
})
	Checkbox9:AddColorPicker("VX_flag_40", {
	Title = "Golem & Azure Body Color",
	Default = Color3.fromRGB(100, 180, 255),
	Callback = function(state, arg108)
		end
})
	task.spawn(function(...)
		task.wait(0.5)
		task.wait(0.5)
	end)
	local Checkbox10 = Tab6:AddCheckbox("VX_flag_41", {
	Text = "Sentry & Dispenser",
	Default = false,
	Callback = function(state, arg110)
			if state then
				workspace:FindFirstChild("Map")
				local Ingame57 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
				local BuildermanDispenser = Ingame57 and Ingame57:FindFirstChild("BuildermanDispenser")
				local Highlight5 = Instance.new("Highlight")
				Highlight5.Name = "VX_ESP_SentryDisp"
				Highlight5.FillColor = Color3.fromRGB(255, 80, 80)
				Highlight5.OutlineColor = Color3.fromRGB(255, 80, 80)
				Highlight5.FillTransparency = 0.8
				Highlight5.OutlineTransparency = 0.6
				Highlight5.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				Highlight5.Adornee = BuildermanDispenser
				Highlight5.Parent = BuildermanDispenser
				local BillboardGui4 = Instance.new("BillboardGui")
				BillboardGui4.Name = "VX_ESP_SentryDisp_Label"
				BillboardGui4.AlwaysOnTop = true
				BillboardGui4.Size = UDim2.new(0, 100, 0, 20)
				BillboardGui4.StudsOffsetWorldSpace = Vector3.new(0, 3.8, 0)
				BillboardGui4.Adornee = BuildermanDispenser and BuildermanDispenser.PrimaryPart or nil -- [[deobf: guard]]
				BillboardGui4.Parent = BuildermanDispenser
				local BuildermanSentry = Ingame57 and Ingame57:FindFirstChild("BuildermanSentry")
				local Highlight6 = Instance.new("Highlight")
				Highlight6.Name = "VX_ESP_SentryDisp"
				Highlight6.FillColor = Color3.fromRGB(255, 80, 80)
				Highlight6.OutlineColor = Color3.fromRGB(255, 80, 80)
				Highlight6.FillTransparency = 0.8
				Highlight6.OutlineTransparency = 0.6
				Highlight6.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				Highlight6.Adornee = BuildermanSentry
				Highlight6.Parent = BuildermanSentry
				local BillboardGui5 = Instance.new("BillboardGui")
				BillboardGui5.Name = "VX_ESP_SentryDisp_Label"
				BillboardGui5.AlwaysOnTop = true
				BillboardGui5.Size = UDim2.new(0, 100, 0, 20)
				BillboardGui5.StudsOffsetWorldSpace = Vector3.new(0, 3.8, 0)
				BillboardGui5.Adornee = BuildermanSentry and BuildermanSentry.PrimaryPart or nil -- [[deobf: guard]]
				BillboardGui5.Parent = BuildermanSentry
				workspace:FindFirstChild("Map")
				local Ingame58 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
				local connection18 = Ingame58 and Ingame58.ChildAdded:Connect(function(child34)
				end)
			else
				if Highlight5 then Highlight5:Destroy() end -- [[deobf: guard]]
				if BillboardGui4 then BillboardGui4:Destroy() end -- [[deobf: guard]]
				if Highlight6 then Highlight6:Destroy() end -- [[deobf: guard]]
				if BillboardGui5 then BillboardGui5:Destroy() end -- [[deobf: guard]]
				if connection18 then connection18:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	Checkbox10:AddColorPicker("VX_flag_42", {
	Title = "Sentry & Dispenser Color",
	Default = Color3.fromRGB(255, 80, 80),
	Callback = function(state, arg112)
		end
})
	task.spawn(function(...)
		task.wait(0.5)
		workspace:FindFirstChild("Map")
		local Ingame59 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
		local children126 = Ingame59 and Ingame59:GetChildren()
		for i139, v141 in ipairs(children126 or {}) do -- [[deobf: guard]]
		end
		task.wait(0.5)
		workspace:FindFirstChild("Map")
		local Ingame60 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
		local children127 = Ingame60 and Ingame60:GetChildren()
		for i140, v142 in ipairs(children127 or {}) do -- [[deobf: guard]]
		end
		task.wait(0.5)
	end)
	local Checkbox11 = Tab6:AddCheckbox("VX_flag_43", {
	Text = "Minions",
	Default = false,
	Callback = function(state, arg114)
			if state then
				workspace:FindFirstChild("Map")
				local Ingame61 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
				local children128 = Ingame61 and Ingame61:GetChildren()
				for i142, v144 in ipairs(children128 or {}) do -- [[deobf: guard]]
				end
				workspace:FindFirstChild("Map")
				local Ingame62 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
				local connection19 = Ingame62 and Ingame62.ChildAdded:Connect(function(child35)
				end)
			else
				if connection19 then connection19:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	Checkbox11:AddColorPicker("VX_flag_44", {
	Title = "Minion Color",
	Default = Color3.fromRGB(255, 160, 0),
	Callback = function(state, arg116)
		end
})
	getgenv().VX_DeviceESP_UpdateOffset = function(arg117, arg118)
	end
	Tab6:AddCheckbox("VX_flag_45", {
	Text = "Device ESP",
	Default = false,
	Callback = function(state, arg120)
			if state then
				local players3 = Players:GetPlayers()
				for i143, v145 in ipairs(players3) do
					local Head = v145.Character:WaitForChild("Head", 5)
					Head:FindFirstChild("DeviceESP")
					Head.DeviceESP:Destroy()
					local BillboardGui6 = Instance.new("BillboardGui")
					BillboardGui6.Name = "DeviceESP"
					BillboardGui6.AlwaysOnTop = true
					BillboardGui6.LightInfluence = 0
					BillboardGui6.StudsOffset = Vector3.new(0, 2.8, 0)
					BillboardGui6.Size = UDim2.fromOffset(28, 28)
					BillboardGui6.Parent = Head
					local ImageLabel = Instance.new("ImageLabel")
					ImageLabel.Size = UDim2.new(1, 0, 1, 0)
					ImageLabel.BackgroundTransparency = 1
					ImageLabel.ScaleType = Enum.ScaleType.Fit
					ImageLabel.Parent = BillboardGui6
					v145:GetAttribute("Device")
					ImageLabel.Image = "rbxassetid://89227325753198"
					local attributeChangedSignal = v145:GetAttributeChangedSignal("Device")
					attributeChangedSignal:Connect(function(arg121)
						v145:GetAttribute("Device")
						ImageLabel.Image = "rbxassetid://89227325753198"
					end)
					local connection20 = v145.CharacterAdded:Connect(function(character2)
						local Head2 = character2:WaitForChild("Head", 5)
						Head2:FindFirstChild("DeviceESP")
						Head2.DeviceESP:Destroy()
						local BillboardGui7 = Instance.new("BillboardGui")
						BillboardGui7.Name = "DeviceESP"
						BillboardGui7.AlwaysOnTop = true
						BillboardGui7.LightInfluence = 0
						BillboardGui7.StudsOffset = Vector3.new(0, 2.8, 0)
						BillboardGui7.Size = UDim2.fromOffset(28, 28)
						BillboardGui7.Parent = Head2
						local ImageLabel2 = Instance.new("ImageLabel")
						ImageLabel2.Size = UDim2.new(1, 0, 1, 0)
						ImageLabel2.BackgroundTransparency = 1
						ImageLabel2.ScaleType = Enum.ScaleType.Fit
						ImageLabel2.Parent = BillboardGui7
						v145:GetAttribute("Device")
						ImageLabel2.Image = "rbxassetid://89227325753198"
						local attributeChangedSignal6 = v145:GetAttributeChangedSignal("Device")
						attributeChangedSignal6:Connect(function(arg1051)
							v145:GetAttribute("Device")
							ImageLabel2.Image = "rbxassetid://89227325753198"
						end)
					end)
				end
				local connection21 = Players.PlayerAdded:Connect(function(player2)
					local Head3 = player2.Character:WaitForChild("Head", 5)
					Head3:FindFirstChild("DeviceESP")
					Head3.DeviceESP:Destroy()
					local BillboardGui8 = Instance.new("BillboardGui")
					BillboardGui8.Name = "DeviceESP"
					BillboardGui8.AlwaysOnTop = true
					BillboardGui8.LightInfluence = 0
					BillboardGui8.StudsOffset = Vector3.new(0, 2.8, 0)
					BillboardGui8.Size = UDim2.fromOffset(28, 28)
					BillboardGui8.Parent = Head3
					local ImageLabel3 = Instance.new("ImageLabel")
					ImageLabel3.Size = UDim2.new(1, 0, 1, 0)
					ImageLabel3.BackgroundTransparency = 1
					ImageLabel3.ScaleType = Enum.ScaleType.Fit
					ImageLabel3.Parent = BillboardGui8
					player2:GetAttribute("Device")
					ImageLabel3.Image = "rbxassetid://89227325753198"
					local attributeChangedSignal7 = player2:GetAttributeChangedSignal("Device")
					attributeChangedSignal7:Connect(function(arg1052)
						player2:GetAttribute("Device")
						ImageLabel3.Image = "rbxassetid://89227325753198"
					end)
					player2.CharacterAdded:Connect(function(character33)
						local Head4 = character33:WaitForChild("Head", 5)
						Head4:FindFirstChild("DeviceESP")
						Head4.DeviceESP:Destroy()
						local BillboardGui9 = Instance.new("BillboardGui")
						BillboardGui9.Name = "DeviceESP"
						BillboardGui9.AlwaysOnTop = true
						BillboardGui9.LightInfluence = 0
						BillboardGui9.StudsOffset = Vector3.new(0, 2.8, 0)
						BillboardGui9.Size = UDim2.fromOffset(28, 28)
						BillboardGui9.Parent = Head4
						local ImageLabel4 = Instance.new("ImageLabel")
						ImageLabel4.Size = UDim2.new(1, 0, 1, 0)
						ImageLabel4.BackgroundTransparency = 1
						ImageLabel4.ScaleType = Enum.ScaleType.Fit
						ImageLabel4.Parent = BillboardGui9
						player2:GetAttribute("Device")
						ImageLabel4.Image = "rbxassetid://89227325753198"
						local attributeChangedSignal14 = player2:GetAttributeChangedSignal("Device")
						attributeChangedSignal14:Connect(function(arg1083)
							player2:GetAttribute("Device")
							ImageLabel4.Image = "rbxassetid://89227325753198"
						end)
					end)
				end)
				local connection22 = RunService.RenderStepped:Connect(function(deltaTime7)
					player2.Character:FindFirstChild("Head")
					BillboardGui8.Size = UDim2.fromOffset(28, 28)
					v145.Character:FindFirstChild("Head")
					BillboardGui7.Size = UDim2.fromOffset(28, 28)
				end)
			else
				if connection22 then connection22:Disconnect() end -- [[deobf: guard — определение в другой области]]
				if connection21 then connection21:Disconnect() end -- [[deobf: guard — определение в другой области]]
				if connection20 then connection20:Disconnect() end -- [[deobf: guard — определение в другой области]]
				if BillboardGui6 then BillboardGui6:Destroy() end -- [[deobf: guard]]
			end
		end
})
	Tab6:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	Tab6:AddCheckbox("VX_flag_46", {
	Text = "Show Plants Attack Zone",
	Default = false,
	Callback = function(state, arg123)
			if state then
				getgenv().VX_AzureShowPlantZones = state
				local Map98 = workspace:FindFirstChild("Map")
				local Ingame63 = Map98 and Map98:FindFirstChild("Ingame")
				local descendants3 = Ingame63 and Ingame63:GetDescendants()
				for i144, v146 in ipairs(descendants3 or {}) do -- [[deobf: guard]]
				end
				local connection23 = Ingame63 and Ingame63.DescendantAdded:Connect(function(descendant2)
				end)
				local connection24 = Ingame63 and Ingame63.DescendantRemoving:Connect(function(descendant3)
				end)
			else
				getgenv().VX_AzureShowPlantZones = false
				if connection23 then connection23:Disconnect() end -- [[deobf: guard — определение в другой области]]
				if connection24 then connection24:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	Tab7:AddCheckbox("VX_flag_47", {
	Text = "Chams",
	Default = true,
	Callback = function(state, arg125)
		end
})
	Tab7:AddCheckbox("VX_flag_48", {
	Text = "Tracer",
	Default = false,
	Callback = function(state, arg127)
		end
})
	Tab7:AddDropdown("VX_flag_49", {
	Text = "Tracer Position",
	Default = "Bottom",
	Values = { "Bottom", "Top" },
	Callback = function(state, arg129)
		end
})
	Tab7:AddCheckbox("VX_flag_50", {
	Text = "2D Box",
	Default = false,
	Callback = function(state, arg131)
		end
})
	Tab7:AddCheckbox("VX_flag_51", {
	Text = "Billboards",
	Default = false,
	Callback = function(state, arg133)
		end
})
	Tab7:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	Tab7:AddCheckbox("VX_flag_52", {
	Text = "Distance",
	Default = false,
	Callback = function(state, arg135)
		end
})
	Tab7:AddCheckbox("VX_flag_53", {
	Text = "Name",
	Default = false,
	Callback = function(state, arg137)
		end
})
	Tab7:AddCheckbox("VX_flag_54", {
	Text = "Character",
	Default = true,
	Callback = function(state, arg139)
		end
})
	Tab7:AddCheckbox("VX_flag_55", {
	Text = "Health",
	Default = true,
	Callback = function(state, arg141)
		end
})
	Tab7:AddCheckbox("VX_flag_56", {
	Text = "Role",
	Default = false,
	Callback = function(state, arg143)
		end
})
	Tab7:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	Tab7:AddSlider("VX_flag_57", {
	Text = "Fill Transparency",
	Default = 80,
	Max = 100,
	Min = 0,
	Rounding = 0,
	Callback = function(arg144, arg145)
		getgenv().VX_ESP.fillTransparency = arg144 / 100 -- [[deobf: реконструкция по утечке трейса]]
		end
})
	Tab7:AddSlider("VX_flag_58", {
	Text = "Text Size",
	Default = 15,
	Max = 30,
	Min = 8,
	Rounding = 0,
	Callback = function(state, arg147)
		end
})
	Tab7:AddSlider("VX_flag_59", {
	Text = "Offset",
	Default = 3.8,
	Max = 10,
	Min = 0,
	Rounding = 1,
	Callback = function(state, arg149)
		end
})
	Tab7:AddSlider("VX_flag_60", {
	Text = "Box Thickness",
	Default = 1.5,
	Max = 5,
	Min = 1,
	Rounding = 1,
	Callback = function(state, arg151)
		end
})
	Tab7:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv().VX_ESP = {
	billboardsEnabled = false,
	boxEnabled = false,
	chamsEnabled = true,
	colorFakeNoli = false,
	colorGenerator = false,
	colorItem = false,
	colorKiller = false,
	colorSurvivor = false,
	fakeNoliEnabled = false,
	fillTransparency = 0.8, -- [[deobf: default 80/100, обновляется колбэком VX_flag_57]],
	generatorsEnabled = false,
	healthConns = {},
	itemsEnabled = false,
	killersEnabled = false,
	offset = false,
	progressConns = {},
	showCharacter = false,
	showDistance = false,
	showHealth = false,
	showName = false,
	showRole = false,
	strokeThickness = false,
	survivorsEnabled = false,
	textSize = false,
	tracerEnabled = false,
	tracerPosition = false
}
end)
local TextChatService = game:GetService("TextChatService")
RightGroupbox4:AddSlider("VX_flag_61", {
	Text = "FOV",
	Default = 80,
	Max = 200,
	Min = 20,
	Rounding = 0,
	Callback = function(arg152, arg153)
	end
})
RightGroupbox4:AddCheckbox("VX_flag_62", {
	Text = "Infinite Camera Distance",
	Default = false,
	Callback = function(state, arg155)
		if state then
			Players.LocalPlayer.CameraMaxZoomDistance = 1000000000
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
			local Humanoid2 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
			workspace.CurrentCamera.CameraSubject = Humanoid2
		else
			Players.LocalPlayer.CameraMaxZoomDistance = 20
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
			local Humanoid3 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
			workspace.CurrentCamera.CameraSubject = Humanoid3
		end
	end
})
RightGroupbox4:AddCheckbox("VX_flag_63", {
	Text = "Camera Noclip",
	Default = false,
	Callback = function(state, arg157)
		if state then
			Players.LocalPlayer.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam
		else
			Players.LocalPlayer.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Zoom
		end
	end
})
RightGroupbox4:AddCheckbox("VX_flag_64", {
	Text = "Show Chat Window",
	Default = false,
	Callback = function(state, arg159)
		if state then
			task.spawn(function(...)
				local ChatWindowConfiguration = TextChatService:WaitForChild("ChatWindowConfiguration", 5)
				ChatWindowConfiguration.Enabled = true
			end)
			local connection25 = Players.LocalPlayer.CharacterAdded:Connect(function(character3)
				task.wait(0.8)
				local ChatWindowConfiguration3 = TextChatService:WaitForChild("ChatWindowConfiguration", 5)
				ChatWindowConfiguration3.Enabled = true
			end)
			local connection26 = RunService.Heartbeat:Connect(function(deltaTime8)
			end)
		else
			if connection25 then connection25:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection26 then connection26:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local ChatWindowConfiguration2 = TextChatService:FindFirstChild("ChatWindowConfiguration")
			if ChatWindowConfiguration2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			if ChatWindowConfiguration2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			ChatWindowConfiguration2.Enabled = false
			end
			end
		end
	end
})
RightGroupbox4:AddCheckbox("VX_flag_65", {
	Text = "Always Show Sidebar",
	Default = false,
	Callback = function(state, arg161)
		if state then
			local module5 = require(ReplicatedStorage.Systems.Player.UI.SidebarHandler)
			module5.MenusHidden = false
			Players.LocalPlayer.PlayerGui.MainUI.Sidebar.Visible = true
			local connection27 = RunService.Heartbeat:Connect(function(deltaTime9)
				module5.MenusHidden = false
				Players.LocalPlayer.PlayerGui.MainUI.Sidebar.Visible = true
			end)
		else
			local module6 = require(ReplicatedStorage.Systems.Player.UI.SidebarHandler)
			if connection27 then connection27:Disconnect() end -- [[deobf: guard — определение в другой области]]
			module6.MenusHidden = true
			Players.LocalPlayer.PlayerGui.MainUI.Sidebar.Visible = false
		end
	end
})
RightGroupbox4:AddCheckbox("VX_flag_66", {
	Text = "Full Bright",
	Default = false,
	Callback = function(state, arg163)
		local Lighting = game:GetService("Lighting") -- [[deobf: hoist — else-ветка тоже использует]]
		if state then
			getgenv()._fbOrigBrightness = 1
			getgenv()._fbOrigAmbient = Lighting.Ambient
			getgenv()._fbOrigOutdoor = Lighting.OutdoorAmbient
			getgenv()._fbOrigClockTime = 0
			getgenv()._fbOrigFogEnd = 0
			Lighting.Brightness = 2
			Lighting.Ambient = Color3.fromRGB(178, 178, 178)
			Lighting.OutdoorAmbient = Color3.fromRGB(178, 178, 178)
			Lighting.ClockTime = 12
			Lighting.FogEnd = 100000
			local connection28 = RunService.Heartbeat:Connect(function(deltaTime10)
				Lighting.Brightness = 2
				Lighting.Ambient = Color3.fromRGB(178, 178, 178)
				Lighting.OutdoorAmbient = Color3.fromRGB(178, 178, 178)
				Lighting.ClockTime = 12
				Lighting.FogEnd = 100000
			end)
		else
			if connection28 then connection28:Disconnect() end -- [[deobf: guard — определение в другой области]]
			Lighting.Brightness = 1
			Lighting.Ambient = Lighting.Ambient
			Lighting.OutdoorAmbient = Lighting.OutdoorAmbient
			Lighting.ClockTime = 0
			Lighting.FogEnd = 0
		end
	end
})
RightGroupbox4:AddCheckbox("VX_flag_67", {
	Text = "Anti Lag",
	Default = false,
	Callback = function(state, arg165)
		if state then
			local result5 = settings()
			getgenv()._VX_OrigQuality = result5.Rendering.QualityLevel
			workspace:GetDescendants()
			local result6 = settings()
			result6.Rendering.QualityLevel = Enum.QualityLevel.Level01
			local connection29 = workspace.DescendantAdded:Connect(function(descendant4)
			end)
		else
			if connection29 then connection29:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local result7 = settings()
			result7.Rendering.QualityLevel = getgenv()._VX_OrigQuality -- [[reconstructed: значение сохранено в ON-ветке]]
		end
	end
})
local Tab8 = Window:AddTab("Killers", "swords", "Combat features for killers")
local LeftGroupbox3 = Tab8:AddLeftGroupbox("Azure")
local LeftGroupbox4 = Tab8:AddLeftGroupbox("Noli")
local RightTabbox2 = Tab8:AddRightTabbox()
local Tab9 = RightTabbox2:AddTab("Nosferatu")
local Tab10 = RightTabbox2:AddTab("Settings")
local Tab11 = Window:AddTab("Survivors", "user", "Combat features for survivors")
local LeftTabbox2 = Tab11:AddLeftTabbox()
local Tab12 = LeftTabbox2:AddTab("Chance")
local Tab13 = LeftTabbox2:AddTab("Settings")
getgenv().shotAnimIds = {
	"133491532453922",
	"90499469533503",
	"76649505662612",
	"111313169447787",
	"73921036900313",
	"111384272984267",
	"133607163653602",
	"108014891454394",
	"131189930305001",
	"79350075778160"
}
getgenv().createAnimationBlocker = function(arg166, arg167)
	for i145, v147 in ipairs(arg166) do
	end
end
getgenv().ghostShooter = {
	Destroy = function(arg168, arg169)
	end,
	Disable = function(arg170, arg171)
	end,
	Enable = function(arg172, arg173)
		local Humanoid4 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 8)
		local Animator2 = Humanoid4:FindFirstChildOfClass("Animator")
		if Animator2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Animator2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Animator2.AnimationPlayed:Connect(function(arg174)
		end)
		end
		end
		Players.LocalPlayer.CharacterAdded:Connect(function(character4)
			local Humanoid35 = character4:WaitForChild("Humanoid", 8)
			local Animator24 = Humanoid35:FindFirstChildOfClass("Animator")
			if Animator24 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			if Animator24 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			Animator24.AnimationPlayed:Connect(function(arg1053)
			end)
			end
			end
		end)
	end,
	IsEnabled = function(arg175, arg176)
	end
}
getgenv().active = false
getgenv().aimMode = "Normal"
getgenv().predictionMode = "Velocity"
getgenv().predictionValue = 4
getgenv().spinSpeed = 720
getgenv().movementThreshold = 1
getgenv().aiming = false
getgenv().lastTriggerTime = 0
getgenv().originalWS = nil
getgenv().originalJP = nil
getgenv().originalAutoRotate = nil
getgenv().prevFlintVisibleAim = false
getgenv().aimUseCount = 0
getgenv().aimTargets = { "Slasher", "c00lkidd", "JohnDoe", "1x1x1x1", "Noli", "Nosferatu", "Azure", "Sixer" }
local Stats = game:GetService("Stats")
getgenv().getValidTarget = function(arg177, arg178)
	workspace:FindFirstChild("Players")
	local Killers49 = (workspace and workspace.Players) and workspace.Players:FindFirstChild("Killers") or nil -- [[deobf: nil-chain guard]]
	local Slasher = Killers49 and Killers49:FindFirstChild("Slasher")
	if Slasher then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if Slasher then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	Slasher:FindFirstChild("Humanoid")
	end
	end
end
getgenv().getPingSeconds = function(arg179, arg180)
	Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
end
getgenv().isFlintlockVisible = function(arg181, arg182)
	local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("Flintlock", true)
end
getgenv().getPredictedAimPosPing = function(arg183, arg184)
	Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
end
getgenv().getPredictedAimPosInfrontHRPPing = function(arg185, arg186)
	Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
end
local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid")
local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
Players.LocalPlayer.CharacterAdded:Connect(function(character5)
	character5:WaitForChild("Humanoid")
	character5:WaitForChild("HumanoidRootPart")
end)
RunService.RenderStepped:Connect(function(deltaTime11)
end)
getgenv().storingHitboxEnabled = false
getgenv().storingDelay = 3
local Modules = ReplicatedStorage:WaitForChild("Modules")
local Network = Modules:WaitForChild("Network")
local Network2 = Network:WaitForChild("Network")
Network2:WaitForChild("RemoteEvent")
Tab12:AddCheckbox("VX_flag_68", {
	Text = "Chance Aim",
	Default = false,
	Callback = function(state, arg188)
	end
})
getgenv().aimMode = false
Tab12:AddDropdown("VX_flag_69", {
	Text = "Aim Behavior",
	Default = 1,
	Values = { "Normal", "360" },
	Callback = function(state, arg190)
	end
})
getgenv().predictionMode = false
Tab12:AddDropdown("VX_flag_70", {
	Text = "Prediction Mode",
	Default = 1,
	Values = { "Velocity", "Ping", "Infront HRP", "Infront HRP (Ping Adjust)" },
	Callback = function(state, arg192)
	end
})
Tab12:AddDivider({ MarginBottom = 2, MarginTop = 2 })
getgenv().predictionValue = nil
Tab13:AddSlider("VX_flag_71", {
	Text = "Prediction Strength",
	Default = 4,
	Max = 4,
	Min = 1,
	Rounding = 0,
	Callback = function(state, arg194)
	end
})
getgenv().spinSpeed = nil
Tab13:AddSlider("VX_flag_72", {
	Text = "360 Spin Speed",
	Default = 720,
	Max = 2880,
	Min = 720,
	Rounding = 0,
	Callback = function(state, arg196)
	end
})
Tab12:AddCheckbox("VX_flag_73", {
	Text = "Storing Hitbox Gun",
	Default = false,
	Callback = function(state, arg198)
	end
})
Tab12:AddInput("VX_flag_74", {
	Text = "Store Delay",
	Placeholder = "3",
	Callback = function(arg199, arg200)
	end
})
getgenv().VX_AimTentaclesGrab = false
LeftGroupbox3:AddCheckbox("VX_flag_75", {
	Text = "Aim on Tentacles (Grab)",
	Default = false,
	Callback = function(state, arg202)
		if state then
			getgenv().VX_AimTentaclesGrab = state
			local connection30 = RunService.RenderStepped:Connect(function(deltaTime12)
				local module34 = require(ReplicatedStorage.Modules.Gameplay.Actors)
				for k143, v348 in module34.CurrentActors do
				end
			end)
		else
			getgenv().VX_AimTentaclesGrab = false
			if connection30 then connection30:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
getgenv().VX_AimBlossomGrab = false
LeftGroupbox3:AddCheckbox("VX_flag_76", {
	Text = "Aim on Blossom (Grab)",
	Default = false,
	Callback = function(state, arg204)
		if state then
			getgenv().VX_AimBlossomGrab = state
			local connection31 = RunService.RenderStepped:Connect(function(deltaTime13)
				local module35 = require(ReplicatedStorage.Modules.Gameplay.Actors)
				for k144, v349 in module35.CurrentActors do
				end
			end)
		else
			getgenv().VX_AimBlossomGrab = false
			if connection31 then connection31:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
getgenv().VX_AimSurvivorsGrab = false
local module7 = require(ReplicatedStorage.Modules.Network.Network)
require(ReplicatedStorage.Assets.Killers.Azure.Config)
LeftGroupbox3:AddCheckbox("VX_flag_77", {
	Text = "Aim at Survivors (Grab)",
	Default = false,
	Callback = function(state, arg206)
		if state then
			local __orig_fsc = module7.FireServerConnection -- [[reconstructed: сохранение оригинала]]
			module7.FireServerConnection = function(arg207, arg208)
				getgenv().VX_AimSurvivorsGrab = state
				return __orig_fsc(arg207, arg208, nil) -- [[reconstructed: вызов оригинала]]
			end
		else
			getgenv().VX_AimSurvivorsGrab = false
			module7.FireServerConnection = module7.FireServerConnection
		end
	end
})
LeftGroupbox3:AddDivider({ MarginBottom = 2, MarginTop = 2 })
local VirtualInputManager = game:GetService("VirtualInputManager")
getgenv().VX_AutoDisarmDelay = 0
getgenv().VX_AutoDisarmMode = "Manual"
getgenv().VX_InstallInstantDisarm = function(arg209, arg210)
	local Assets = ReplicatedStorage:WaitForChild("Assets")
	local Killers50 = Assets:WaitForChild("Killers")
	local Azure2 = Killers50:WaitForChild("Azure")
	local Config = Azure2:WaitForChild("Config")
	local cl_WorkaroundModules = Config:WaitForChild("cl_WorkaroundModules")
	local cl_ConstructQTE = cl_WorkaroundModules:WaitForChild("cl_ConstructQTE")
	local module8 = require(cl_ConstructQTE)
	local __orig_new8 = module8.new -- [[reconstructed: сохранение оригинала — без него бесконечная рекурсия]]
	module8.new = function(arg211, arg212)
		local result8 = __orig_new8(arg211, arg212)
		task.defer(function(...)
			result8:AddProgress(100)
		end)
	end
end
getgenv().VX_UninstallInstantDisarm = function(arg213, arg214)
	local Assets2 = ReplicatedStorage:WaitForChild("Assets")
	local Killers51 = Assets2:WaitForChild("Killers")
	local Azure3 = Killers51:WaitForChild("Azure")
	local Config2 = Azure3:WaitForChild("Config")
	local cl_WorkaroundModules2 = Config2:WaitForChild("cl_WorkaroundModules")
	local cl_ConstructQTE2 = cl_WorkaroundModules2:WaitForChild("cl_ConstructQTE")
	local module9 = require(cl_ConstructQTE2)
	module9.new = module8.new
end
LeftGroupbox3:AddCheckbox("VX_flag_78", {
	Text = "Auto Disarm Minigame",
	Default = false,
	Callback = function(state, arg216)
		if state then
			local connection32 = RunService.Heartbeat:Connect(function(deltaTime14)
				local PlayerGui13 = lp:FindFirstChildOfClass("PlayerGui")
				local TemporaryUI5 = PlayerGui13 and PlayerGui13:FindFirstChild("TemporaryUI")
				local QTE3 = TemporaryUI5 and TemporaryUI5:FindFirstChild("QTE")
				local children218 = QTE3 and QTE3:GetChildren()
				for i206, v350 in ipairs(children218 or {}) do -- [[deobf: guard]]
					v350.Name:sub(1, 4)
				end
			end)
		else
			if connection32 then connection32:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
getgenv().VX_AutoDisarmMode = false
LeftGroupbox3:AddDropdown("VX_flag_79", {
	Text = "Disarm Mode",
	Default = 1,
	Values = { "Manual", "Instant" },
	Callback = function(state, arg218)
	end
})
local LeftGroupbox5 = Tab11:AddLeftGroupbox("Jane Doe")
local LeftTabbox3 = Tab11:AddLeftTabbox()
local Tab14 = LeftTabbox3:AddTab("Veeronica")
local Tab15 = LeftTabbox3:AddTab("Settings")
getgenv().VX_Sk8SteerStrength = 60
getgenv().VX_Sk8SteerStrength = false
Tab15:AddSlider("VX_flag_80", {
	Text = "Steer Strength",
	Default = 60,
	Max = 150,
	Min = 30,
	Rounding = 0,
	Callback = function(state, arg220)
	end
})
Tab15:AddDivider({ MarginBottom = 2, MarginTop = 2 })
getgenv().applyHighJump = function(arg221, arg222)
	local module10 = require(ReplicatedStorage.Modules.Gameplay.Actors)
	for k3, v148 in module10.CurrentActors do
	end
end
getgenv().revertHighJump = function(arg223, arg224)
end
Tab15:AddCheckbox("VX_flag_81", {
	Text = "High Sk8 Trick",
	Default = false,
	Callback = function(state, arg226)
		if state then
			getgenv().VX_HighJumpEnabled = state
			getgenv().applyHighJump() -- [[deobf: функция определена в getgenv]]
		else
			getgenv().VX_HighJumpEnabled = false
			getgenv().revertHighJump() -- [[deobf: функция определена в getgenv]]
		end
	end
})
getgenv().VX_HighJumpMult = false
Tab15:AddSlider("VX_flag_82", {
	Text = "How High (Multiplier)",
	Default = 2,
	Max = 4,
	Min = 1,
	Rounding = 2,
	Callback = function(state, arg228)
		if state then
			getgenv().VX_HighJumpMult = state
		end
	end
})
Tab15:AddDivider({ MarginBottom = 2, MarginTop = 2 })
getgenv().AutoPitchKillers = {}
RunService.RenderStepped:Connect(function(deltaTime15)
	local HumanoidRootPart6 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
	local VX_BumperGyro = HumanoidRootPart6 and HumanoidRootPart6:FindFirstChild("VX_BumperGyro")
	if VX_BumperGyro then VX_BumperGyro:Destroy() end -- [[deobf: guard]]
end)
Tab15:AddCheckbox("VX_flag_83", {
	Text = "Super Bumper",
	Default = false,
	Callback = function(state, arg230)
	end
})
Tab15:AddSlider("VX_flag_84", {
	Text = "Pitch Angle",
	Default = 100,
	Max = 100,
	Min = 1,
	Rounding = 0,
	Callback = function(state, arg232)
	end
})
Tab15:AddSlider("VX_flag_85", {
	Text = "Distance Range",
	Default = 20,
	Max = 100,
	Min = 1,
	Rounding = 0,
	Callback = function(state, arg234)
	end
})
local RightTabbox3 = Tab11:AddRightTabbox()
local Tab16 = RightTabbox3:AddTab("007n7")
local Tab17 = RightTabbox3:AddTab("Settings")
local RightGroupbox5 = Tab11:AddRightGroupbox("Dusekkar")
local RightGroupbox6 = Tab11:AddRightGroupbox("Two Time")
task.spawn(function(...)
	local PathfindingService = game:GetService("PathfindingService")
	local Players76 = workspace:WaitForChild("Players", 10)
	Players76:WaitForChild("Survivors", 10)
	local Humanoid5 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid")
	local HumanoidRootPart2 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
	Humanoid5.Died:Connect(function()
	end)
	Players.LocalPlayer.CharacterAdded:Connect(function(character6)
		local Humanoid36 = character6:WaitForChild("Humanoid")
		character6:WaitForChild("HumanoidRootPart")
		Humanoid36.Died:Connect(function()
		end)
	end)
	getgenv().hasLineOfSight = function(arg235, arg236)
		RaycastParams.new().FilterDescendantsInstances = { Players.LocalPlayer.Character }
		RaycastParams.new().FilterType = Enum.RaycastFilterType.Blacklist
		RaycastParams.new().IgnoreWater = true
		workspace:Raycast(arg235, (arg236 - arg235), RaycastParams.new())
	end
	getgenv().Noli_StartOverride = function(arg237, arg238)
		local connection33 = RunService.Heartbeat:Connect(function(deltaTime16)
		end)
	end
	getgenv().Noli_StopOverride = function(arg239, arg240)
		if connection33 then connection33:Disconnect() end -- [[deobf: guard — определение в другой области]]
		HumanoidRootPart2.AssemblyLinearVelocity = Vector3.new(0, HumanoidRootPart2.AssemblyLinearVelocity.Y, 0)
	end
	LeftGroupbox4:AddCheckbox("VX_flag_86", {
	Text = "VoidRush Auto-Target",
	Default = false,
	Callback = function(state, arg242)
		end
})
	LeftGroupbox4:AddDropdown("VX_flag_87", {
	Text = "Target Mode",
	Default = 1,
	Values = { "Nearest", "Lowest HP" },
	Callback = function(state, arg244)
		end
})
	LeftGroupbox4:AddSlider("VX_flag_88", {
	Text = "Dash Speed",
	Default = 80,
	Max = 200,
	Min = 40,
	Rounding = 0,
	Callback = function(state, arg246)
		end
})
	getgenv().VoidstarAutoNovaEnabled = false
	LeftGroupbox4:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	LeftGroupbox4:AddCheckbox("VX_flag_89", {
	Text = "Auto Detonate Nova",
	Default = false,
	Callback = function(state, arg248)
		end
})
	RunService.Heartbeat:Connect(function(deltaTime17)
	end)
end)
task.spawn(function(...)
	Tab9:AddCheckbox("VX_flag_90", {
	Text = "Auto Minigame",
	Default = false,
	Callback = function(state, arg250)
			if state then
				task.spawn(function(...)
					local Modules2 = ReplicatedStorage:WaitForChild("Modules")
					local Network3 = Modules2:WaitForChild("Network")
					local Network4 = Network3:WaitForChild("Network")
					Network4:WaitForChild("RemoteEvent")
					local PlayerGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
					local TemporaryUI = PlayerGui and PlayerGui:FindFirstChild("TemporaryUI")
					local QTE = TemporaryUI and TemporaryUI:FindFirstChild("QTE")
					task.wait(0.3)
					local PlayerGui2 = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
					local TemporaryUI2 = PlayerGui2 and PlayerGui2:FindFirstChild("TemporaryUI")
					local QTE2 = TemporaryUI2 and TemporaryUI2:FindFirstChild("QTE")
					task.wait(0.3)
				end)
			end
		end
})
	Tab9:AddSlider("VX_flag_91", {
	Text = "Fire Delay",
	Default = 0.3,
	Max = 2,
	Min = 0.05,
	Rounding = 2,
	Callback = function(state, arg252)
		end
})
	Tab9:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv().Nos_InfFlightEnabled = false
	getgenv().Nos_DiveControlEnabled = false
	getgenv().Nos_GetActor = function(arg253, arg254)
		local module11 = require(ReplicatedStorage.Modules.Gameplay.Actors)
		for k4, v149 in module11.CurrentActors do
		end
	end
	getgenv().StartNosFlightMods = function(arg255, arg256)
		RunService:UnbindFromRenderStep("NosVX_FlightMods")
		RunService:UnbindFromRenderStep("NosVX_DiveControl")
		RunService:BindToRenderStep("NosVX_FlightMods", 1, function(arg257, arg258)
			local module12 = require(ReplicatedStorage.Modules.Gameplay.Actors)
			for k5, v150 in module12.CurrentActors do
			end
		end)
		RunService:BindToRenderStep("NosVX_DiveControl", 4, function(arg259, arg260)
		end)
	end
	getgenv().StopNosFlightMods = function(arg261, arg262)
		RunService:UnbindFromRenderStep("NosVX_FlightMods")
		RunService:UnbindFromRenderStep("NosVX_DiveControl")
		local module13 = require(ReplicatedStorage.Modules.Gameplay.Actors)
		for k6, v151 in module13.CurrentActors do
		end
	end
	getgenv().Nos_UpdateFlightConn = function(arg263, arg264)
		RunService:UnbindFromRenderStep("NosVX_FlightMods")
		RunService:UnbindFromRenderStep("NosVX_DiveControl")
		local module14 = require(ReplicatedStorage.Modules.Gameplay.Actors)
		for k7, v152 in module14.CurrentActors do
		end
	end
	Tab9:AddCheckbox("VX_flag_92", {
	Text = "Unlimited Flight Duration",
	Default = false,
	Callback = function(state, arg266)
			if state then
				getgenv().Nos_InfFlightEnabled = state
				RunService:UnbindFromRenderStep("NosVX_FlightMods")
				RunService:UnbindFromRenderStep("NosVX_DiveControl")
				RunService:BindToRenderStep("NosVX_FlightMods", 1, function(arg267, arg268)
					local module15 = require(ReplicatedStorage.Modules.Gameplay.Actors)
					for k8, v153 in module15.CurrentActors do
					end
				end)
				RunService:BindToRenderStep("NosVX_DiveControl", 4, function(arg269, arg270)
				end)
			else
				getgenv().Nos_InfFlightEnabled = false
				RunService:UnbindFromRenderStep("NosVX_FlightMods")
				RunService:UnbindFromRenderStep("NosVX_DiveControl")
				local module16 = require(ReplicatedStorage.Modules.Gameplay.Actors)
				for k9, v154 in module16.CurrentActors do
				end
			end
		end
})
	Tab9:AddCheckbox("VX_flag_93", {
	Text = "Dive Control",
	Default = false,
	Callback = function(state, arg272)
			if state then
				getgenv().Nos_DiveControlEnabled = state
				RunService:UnbindFromRenderStep("NosVX_FlightMods")
				RunService:UnbindFromRenderStep("NosVX_DiveControl")
				RunService:BindToRenderStep("NosVX_FlightMods", 1, function(arg273, arg274)
					local module17 = require(ReplicatedStorage.Modules.Gameplay.Actors)
					for k10, v155 in module17.CurrentActors do
					end
				end)
				RunService:BindToRenderStep("NosVX_DiveControl", 4, function(arg275, arg276)
					local module18 = require(ReplicatedStorage.Modules.Gameplay.Actors)
					for k11, v156 in module18.CurrentActors do
					end
				end)
			else
				getgenv().Nos_DiveControlEnabled = false
				RunService:UnbindFromRenderStep("NosVX_FlightMods")
				RunService:UnbindFromRenderStep("NosVX_DiveControl")
				local module19 = require(ReplicatedStorage.Modules.Gameplay.Actors)
				for k12, v157 in module19.CurrentActors do
				end
			end
		end
})
	getgenv().nosSpeed = 6.5
	getgenv().modifyNosSpeed = false
	getgenv().modifyNosSpeed = false
	Tab10:AddCheckbox("VX_flag_94", {
	Text = "Custom Fly Speed",
	Default = false,
	Callback = function(state, arg278)
			if state then
				task.spawn(function(...)
					getgenv().modifyNosSpeed = state
					local NosFlying = workspace.Players.Killers.Nosferatu.SpeedMultipliers:FindFirstChild("NosFlying")
					if NosFlying then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if NosFlying then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					NosFlying.Value = 6.5
					end
					end
					task.wait(0.1)
					local NosFlying2 = workspace.Players.Killers.Nosferatu.SpeedMultipliers:FindFirstChild("NosFlying")
					if NosFlying2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if NosFlying2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					NosFlying2.Value = 6.5
					end
					end
					task.wait(0.1)
				end)
			end
		end
})
	getgenv().nosSpeed = nil
	Tab10:AddSlider("VX_flag_95", {
	Text = "Fly Speed",
	Default = 6.5,
	Max = 20,
	Min = 6.5,
	Rounding = 1,
	Callback = function(state, arg280)
		end
})
end)
task.spawn(function(...)
	local Assets3 = ReplicatedStorage:WaitForChild("Assets")
	local Survivors25 = Assets3:WaitForChild("Survivors")
	local Veeronica = Survivors25:WaitForChild("Veeronica")
	Veeronica:WaitForChild("Behavior")
	getgenv().VX_Sk8SteerStrength = 60
	Players.LocalPlayer.CharacterAdded:Connect(function(character7)
	end)
	getgenv().Sk8ControlConn = nil
	Tab14:AddCheckbox("VX_flag_96", {
	Text = "Sk8 Control",
	Default = false,
	Callback = function(state, arg282)
			if state then
				local connection34 = RunService.RenderStepped:Connect(function(deltaTime18)
					local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
					local Humanoid37 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
					local tracks9 = Humanoid37 and Humanoid37:GetPlayingAnimationTracks()
					for i207, v351 in ipairs(tracks9 or {}) do -- [[deobf: guard]]
						tostring(v351.Animation.AnimationId):match("%d+")
					end
				end)
				getgenv().Sk8ControlConn = connection34
			else
				if connection34 then connection34:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	getgenv().VX_AutoSk8Trick = false
	RunService.Heartbeat:Connect(function(deltaTime19)
	end)
	Tab14:AddCheckbox("VX_flag_97", {
	Text = "Auto Sk8 Trick",
	Default = false,
	Callback = function(state, arg284)
		end
})
	getgenv().VX_BlockSk8Rebound = false
	local __origNc -- [[reconstructed: тело хука потеряно при рендере трейса (VM отложил вызов);]]
	-- [[reconstructed: pass-through — пустое тело возвращало nil для ВСЕХ namecall-ов игры]]
	__origNc = hookmetamethod(game, "__namecall", function(arg285, arg286)
		if getgenv().VX_BlockSk8Rebound then -- TODO: оригинальная логика перехвата (VX_BlockSk8Rebound) не восстановлена
		end
		return __origNc(arg285, arg286)
	end)
	Tab14:AddCheckbox("VX_flag_98", {
	Text = "Anti Rebound",
	Default = false,
	Callback = function(state, arg288)
		end
})
	getgenv().VX_HighJumpMult = 2
	getgenv().VX_HighJumpOrigValue = nil
	require(ReplicatedStorage.Modules.Gameplay.Actors)
	getgenv().VX_Sk8Everywhere = false
	Tab14:AddCheckbox("VX_flag_99", {
	Text = "Sk8 Everywhere",
	Default = false,
	Callback = function(state, arg290)
			if state then
				getgenv().VX_Sk8Everywhere = state
				local connection35 = RunService.Heartbeat:Connect(function(deltaTime20)
				end)
				getgenv()._Sk8EverywhereConn = connection35
			else
				getgenv().VX_Sk8Everywhere = false
				if connection35 then connection35:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv()._Sk8EverywhereConn = nil
				local module20 = require(ReplicatedStorage.Modules.Gameplay.Actors)
				for k13, v158 in module20.CurrentActors do
				end
			end
		end
})
	Tab14:AddCheckbox("VX_flag_100", {
	Text = "Phase on Sk8",
	Default = false,
	Callback = function(state, arg292)
			if state then
				local connection36 = RunService.Heartbeat:Connect(function(deltaTime21)
					local HumanoidRootPart7 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local Players79 = workspace:FindFirstChild("Players", true)
					local Killers56 = Players79 and Players79:FindFirstChild("Killers")
					local children219 = Killers56 and Killers56:GetChildren()
					ReplicatedStorage.Modules.Network.Network.RemoteEvent:FireServer(game.Players.LocalPlayer.Name .. "SkatePhase", { children219[1] })
				end)
			else
				if connection36 then connection36:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	Tab14:AddCheckbox("VX_flag_101", {
	Text = "Force Paint/Wipe Buttons",
	Default = false,
	Callback = function(state, arg294)
			if state then
				local connection37 = RunService.Heartbeat:Connect(function(deltaTime22)
					local PlayerGui14 = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
					local MainUI5 = PlayerGui14 and PlayerGui14:FindFirstChild("MainUI")
					local descendants80 = MainUI5 and MainUI5:GetDescendants()
					for i208, v352 in ipairs(descendants80 or {}) do -- [[deobf: guard]]
					end
				end)
			else
				if connection37 then connection37:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
end)
task.spawn(function(...)
	local module21 = require(ReplicatedStorage.Assets.Survivors.JaneDoe.Behavior)
	module21.Abilities.Crystal.Callback = function(arg295, arg296)
		arg295.Config.Crystal.MinChargeTime = arg295.Config.Crystal.MinChargeTime
		arg295.Config.Crystal.MaxChargeTime = arg295.Config.Crystal.MaxChargeTime
		module21.Abilities.Crystal.Callback(arg295, arg296)
	end
	getgenv().JaneDoe_AutoInstantChargeEnabled = false
	LeftGroupbox5:AddCheckbox("VX_flag_102", {
	Text = "Instant Charge",
	Default = false,
	Callback = function(state, arg298)
			if state then
				getgenv().JaneDoe_AutoInstantChargeEnabled = state
			end
		end
})
	getgenv().JaneDoe_InfHold2Enabled = false
	getgenv().JaneDoe_InfHold2Conn = nil
	getgenv().JaneDoe_InfHold2OldCallback = nil
	getgenv().JaneDoe_InfHold2OldMaxHoldTime = nil
	getgenv().JaneDoe_InfHold2Actor = nil
	getgenv().JaneDoe_PatchInfHold2Actor = function(arg299, arg300)
		getgenv().JaneDoe_InfHold2OldMaxHoldTime = arg299.Config.Crystal.MaximumHoldTime
		arg299.Config.Crystal.MaximumHoldTime = math.huge
		getgenv().JaneDoe_InfHold2Actor = arg299
		getgenv().JaneDoe_InfHold2OldCallback = arg299.Behavior.Abilities.Crystal.Callback
		arg299.Behavior.Abilities.Crystal.Callback = function(arg301, arg302)
			arg299.Behavior.Abilities.Crystal.Callback(arg301, arg302)
		end
	end
	getgenv().StartJaneDoe_InfHold2 = function(arg303, arg304)
		local module22 = require(ReplicatedStorage.Modules.Gameplay.Actors)
		for k14, v159 in module22.CurrentActors do
		end
		local connection38 = RunService.Heartbeat:Connect(function(deltaTime23)
		end)
		getgenv().JaneDoe_InfHold2Conn = connection38
	end
	getgenv().JaneDoe_InfHold2Actor = nil
	getgenv().JaneDoe_InfHold2OldMaxHoldTime = nil
	getgenv().JaneDoe_InfHold2OldCallback = nil
	getgenv().StopJaneDoe_InfHold2 = function(arg305, arg306)
		if connection38 then connection38:Disconnect() end -- [[deobf: guard — определение в другой области]]
		getgenv().JaneDoe_InfHold2Conn = nil
		arg299.Config.Crystal.MaximumHoldTime = arg299.Config.Crystal.MaximumHoldTime
		arg299.Behavior.Abilities.Crystal.Callback = arg299.Behavior.Abilities.Crystal.Callback
	end
	LeftGroupbox5:AddCheckbox("VX_flag_103", {
	Text = "Endless Crystal",
	Default = false,
	Callback = function(state, arg308)
			if state then
				getgenv().JaneDoe_InfHold2Enabled = state
				local module23 = require(ReplicatedStorage.Modules.Gameplay.Actors)
				for k15, v160 in module23.CurrentActors do
				end
				local connection39 = RunService.Heartbeat:Connect(function(deltaTime24)
				end)
				getgenv().JaneDoe_InfHold2Conn = connection39
			else
				getgenv().JaneDoe_InfHold2Enabled = false
				if connection39 then connection39:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().JaneDoe_InfHold2Conn = nil
				getgenv().JaneDoe_InfHold2OldCallback = nil
				getgenv().JaneDoe_InfHold2OldMaxHoldTime = nil
				getgenv().JaneDoe_InfHold2Actor = nil
			end
		end
})
	LeftGroupbox5:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	local Modules3 = ReplicatedStorage:WaitForChild("Modules", 10)
	local Network5 = Modules3:WaitForChild("Network", 10)
	local Network6 = Network5:WaitForChild("Network", 10)
	local RemoteFunction = Network6:WaitForChild("RemoteFunction", 10)
	getgenv()._jdCrystalSA_removePatch = function(arg309, arg310)
	end
	LeftGroupbox5:AddCheckbox("VX_flag_104", {
	Text = "Crystal Silent Aim",
	Default = false,
	Callback = function(state, arg312)
			if state then
				local result9 = getcallbackvalue(RemoteFunction, "OnClientInvoke")
				RemoteFunction.OnClientInvoke = function(arg313, arg314)
					result9(arg313, arg314)
				end
				local connection40 = RunService.Heartbeat:Connect(function(deltaTime25)
					workspace:FindFirstChild("Players")
					local Killers57 = (workspace and workspace.Players) and workspace.Players:FindFirstChild("Killers") or nil -- [[deobf: nil-chain guard]]
					local children220 = Killers57 and Killers57:GetChildren()
					for i209, v353 in ipairs(children220 or {}) do -- [[deobf: guard]]
						v353:FindFirstChild("HumanoidRootPart")
					end
				end)
			else
				RemoteFunction.OnClientInvoke = result9
				if connection40 then connection40:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	LeftGroupbox5:AddSlider("VX_flag_105", {
	Text = "Aim Offset (Y)",
	Default = -0.3,
	Max = 5,
	Min = -5,
	Rounding = 1,
	Callback = function(state, arg316)
		end
})
	LeftGroupbox5:AddSlider("VX_flag_106", {
	Text = "Prediction",
	Default = 0.6,
	Max = 2,
	Min = 0,
	Rounding = 2,
	Callback = function(state, arg318)
		end
})
	LeftGroupbox5:AddSlider("VX_flag_107", {
	Text = "Velocity Smoothing",
	Default = jd_SMOOTH_ALPHA,
	Max = 1,
	Min = 0.01,
	Rounding = 2,
	Tooltip = "0.01 = very smooth (delayed), 1.0 = raw instantaneous",
	Callback = function(state, arg320)
		end
})
	LeftGroupbox5:AddDropdown("VX_flag_108", {
	Text = "Aim Part",
	Default = 1,
	Values = { "HumanoidRootPart", "Head", "UpperTorso" },
	Callback = function(state, arg322)
		end
})
end)
task.spawn(function(...)
	getgenv()._007_autoCloneEnabled = false
	getgenv()._007_detectionRange = 20
	getgenv()._007_M1SoundConns = {}
	getgenv()._007_wallCheck = false
	getgenv()._007_elevCheck = false
	getgenv()._007_cloneDelay = 0
	getgenv()._007_cloneHPEnabled = false
	getgenv()._007_cloneHPThreshold = 30
	Tab16:AddCheckbox("VX_flag_109", {
	Text = "Auto Clone",
	Default = false,
	Callback = function(state, arg324)
		end
})
	getgenv()._007_detectionRange = nil
	Tab16:AddSlider("VX_flag_110", {
	Text = "Detection Range",
	Default = 20,
	Max = 100,
	Min = 5,
	Rounding = 0,
	Callback = function(state, arg326)
		end
})
	Tab17:AddCheckbox("VX_flag_111", {
	Text = "Clone On HP",
	Default = false,
	Callback = function(state, arg328)
		end
})
	Tab17:AddSlider("VX_flag_112", {
	Text = "Clone HP Threshold",
	Default = 30,
	Max = 100,
	Min = 1,
	Rounding = 0,
	Callback = function(state, arg330)
		end
})
	Tab17:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	Tab17:AddSlider("VX_flag_113", {
	Text = "Clone Delay",
	Default = 0,
	Max = 0.5,
	Min = 0,
	Rounding = 2,
	Callback = function(state, arg332)
		end
})
	Tab17:AddCheckbox("VX_flag_114", {
	Text = "Wall Check",
	Default = false,
	Callback = function(state, arg334)
		end
})
	Tab17:AddCheckbox("VX_flag_115", {
	Text = "High Elevation Check",
	Default = false,
	Callback = function(state, arg336)
		end
})
	Tab17:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv()._007_bbPrediction = nil
	Tab17:AddSlider("VX_flag_116", {
	Text = "Prediction",
	Default = 0.2,
	Max = 1,
	Min = 0,
	Rounding = 2,
	Callback = function(state, arg338)
			if state then
				getgenv()._007_bbPrediction = tonumber(state)
			end
		end
})
	getgenv()._007_bbCircleRadius = nil
	Tab17:AddSlider("VX_flag_117", {
	Text = "Circle Radius",
	Default = 5,
	Max = 50,
	Min = 1,
	Rounding = 1,
	Callback = function(state, arg340)
			if state then
				getgenv()._007_bbCircleRadius = tonumber(state)
			end
		end
})
	local Players77 = workspace:FindFirstChild("Players")
	local Killers52 = Players77 and Players77:FindFirstChild("Killers")
	local children129 = Killers52 and Killers52:GetChildren()
	for i146, v161 in ipairs(children129 or {}) do -- [[deobf: guard]]
		task.spawn(function(...)
			task.wait(0.3)
			local descendants4 = v161:GetDescendants()
			for i147, v162 in ipairs(descendants4) do
				getgenv().autoCloneSoundIds = {}
				v162.Played:Connect(function(arg341)
					tostring(v162.SoundId):match("%d+")
				end)
			end
			v161.DescendantAdded:Connect(function(descendant5)
				task.wait()
				descendant5.Played:Connect(function(arg1054)
					tostring(descendant5.SoundId):match("%d+")
				end)
			end)
			local Humanoid6 = v161:FindFirstChildOfClass("Humanoid")
			local Animator3 = Humanoid6 and Humanoid6:FindFirstChildOfClass("Animator")
			if Animator3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			if Animator3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			Animator3.AnimationPlayed:Connect(function(arg342)
			end)
			end
			end
		end)
	end
	if Killers52 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if Killers52 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	Killers52.ChildAdded:Connect(function(child36)
		task.wait(0.5)
		local descendants81 = child36:GetDescendants()
		for i210, v354 in ipairs(descendants81) do
			v354.Played:Connect(function(arg1055)
				tostring(v354.SoundId):match("%d+")
			end)
		end
		child36.DescendantAdded:Connect(function(descendant72)
			task.wait()
			descendant72.Played:Connect(function(arg1084)
				tostring(descendant72.SoundId):match("%d+")
			end)
		end)
		local Humanoid38 = child36:FindFirstChildOfClass("Humanoid")
		local Animator25 = Humanoid38 and Humanoid38:FindFirstChildOfClass("Animator")
		Animator25.AnimationPlayed:Connect(function(arg1056)
		end)
	end)
	end
	end
	if Killers52 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if Killers52 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	Killers52.ChildRemoved:Connect(function(child37)
	end)
	end
	end
	Tab16:AddCheckbox("VX_flag_118", {
	Text = "Auto Coolgui LMS",
	Default = false,
	Callback = function(state, arg344)
			if state then
				local connection41 = RunService.Heartbeat:Connect(function(deltaTime26)
				end)
			else
				if connection41 then connection41:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	getgenv().VX_CancelCoolguiEnabled = false
	Tab16:AddCheckbox("VX_flag_119", {
	Text = "Cancel Coolgui",
	Default = false,
	Callback = function(state, arg346)
			if state then
				getgenv().VX_CancelCoolguiEnabled = state
			else
				getgenv().VX_CancelCoolguiEnabled = false
			end
		end
})
	Tab16:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv()._007_canUseBodyBlock = function(arg347, arg348)
	end
	getgenv()._007_getNearestKillerChar = function(arg349, arg350)
	end
	getgenv()._007_getNearestSurvivorChar = function(arg351, arg352)
	end
	end)
	getgenv()._007_currentTargetMode = "Disabled"
	getgenv()._007_bbBehavior = "Normal"
	getgenv()._007_bbPrediction = 0.2
	getgenv()._007_bbCircleRadius = 5
	getgenv()._007_bbCircleSpeed = 1
	getgenv()._007_bbZigzagAmplitude = 6
	getgenv()._007_bbZigzagFrequency = 2
	getgenv()._007_bbRunDistance = 20
	getgenv()._007_bbStrafeWidth = 4
	getgenv()._007_bbStrafeSpeed = 3
	getgenv()._007_bbAggressiveOffset = 0.5
	getgenv()._007_bbInterceptPrediction = 0.6
	getgenv()._007_getTargetPos = function(arg353, arg354)
	end
	getgenv()._007_MouseModule = nil
	getgenv()._007_OriginalGetMousePos = nil
	getgenv()._007_currentTargetMode = arg355
	getgenv()._007_updateBodyBlock = function(arg355, arg356)
	end
	local WorldModel2 = Instance.new("WorldModel")
	local clone2 = ReplicatedStorage.Assets.Survivors["007n7"].Rig:Clone()
	clone2.Name = "CloneModel"
	local descendants5 = clone2:GetDescendants()
	for i148, v163 in ipairs(descendants5) do
		if v163:IsA("BasePart") then v163.Anchored = false end -- [[deobf: guard — prop валиден только на BasePart]]
	end
	clone2:PivotTo((CFrame.new(-3, 1.4, 0) * CFrame.Angles(0, -1.5707963267948966, 0)))
	clone2.Parent = WorldModel2
	local clone3 = ReplicatedStorage.Assets.Killers.Slasher.Rig:Clone()
	clone3.Name = "KillerModel"
	local descendants6 = clone3:GetDescendants()
	for i149, v164 in ipairs(descendants6) do
		if v164:IsA("BasePart") then v164.Anchored = false end -- [[deobf: guard — prop валиден только на BasePart]]
	end
	clone3:PivotTo((CFrame.new(0, 1.4, 0) * CFrame.Angles(0, -1.5707963267948966, 0)))
	clone3.Parent = WorldModel2
	Tab16:AddViewport("VX_flag_120", { AutoFocus = false, Height = 260, Interactive = false, Object = WorldModel2 })
	task.spawn(function(...)
		task.wait(0.1)
		local CoreGui = game:GetService("CoreGui")
		local descendants7 = CoreGui:GetDescendants()
		for i150, v165 in ipairs(descendants7) do
			v165:FindFirstChild("CloneModel", true)
			v165.CurrentCamera.CFrame = CFrame.new(Vector3.new(0, 2.5, 7), Vector3.new(0, 1.5, 0))
			local CloneModel = v165:FindFirstChild("CloneModel", true)
			local KillerModel = v165:FindFirstChild("KillerModel", true)
			local Humanoid7 = CloneModel and CloneModel:FindFirstChildOfClass("Humanoid")
			local Animator4 = Humanoid7 and Humanoid7:FindFirstChildOfClass("Animator")
			local Animation2 = Instance.new("Animation")
			Animation2.AnimationId = "rbxassetid://131082534135875"
			local track2 = Animator4 and Animator4:LoadAnimation(Animation2)
			if track2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			track2.Looped = true
			end
			local Animation3 = Instance.new("Animation")
			Animation3.AnimationId = "rbxassetid://136252471123500"
			local track3 = Animator4 and Animator4:LoadAnimation(Animation3)
			if track3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			track3.Looped = true
			end
			if track2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			track2:Play()
			end
			local Humanoid8 = KillerModel and KillerModel:FindFirstChildOfClass("Humanoid")
			local Animator5 = Humanoid8 and Humanoid8:FindFirstChildOfClass("Animator")
			local Animation4 = Instance.new("Animation")
			Animation4.AnimationId = "rbxassetid://116050994905421"
			local track4 = Animator5 and Animator5:LoadAnimation(Animation4)
			if track4 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			track4.Looped = true
			end
			if track4 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			track4:Play()
			end
			RunService.Heartbeat:Connect(function(deltaTime27)
				local CloneModel2 = v165:FindFirstChild("CloneModel", true)
				local KillerModel2 = v165:FindFirstChild("KillerModel", true)
				local HumanoidRootPart8 = KillerModel2 and KillerModel2:FindFirstChild("HumanoidRootPart", true)
				if CloneModel2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if CloneModel2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				CloneModel2:PivotTo((CFrame.new((HumanoidRootPart8.Position + Vector3.new(-3, 0, 0))) * CFrame.Angles(0, -1.5707963267948966, 0)))
				end
				end
			end)
		end
	end)
	getgenv()._007_currentTargetMode = "Disabled"
	Tab16:AddCheckbox("VX_flag_121", {
	Text = "Enable BodyBlock",
	Default = false,
	Callback = function(state, arg358)
		end
})
	getgenv()._007_currentTargetMode = false
	Tab16:AddDropdown("VX_flag_122", {
	Text = "BodyBlock Target",
	Default = 1,
	Values = {
		"Killers",
		"Survivors",
		"Yourself",
		"Random Survivor",
		"Nearest Survivor",
		"Lowest HP",
		"Nearest + Lowest HP",
		"Random",
		"Nearest",
		"Closest To Crosshair",
		"Closest To Cursor"
	},
	Callback = function(state, arg360)
		end
})
	getgenv()._007_bbBehavior = false
	Tab16:AddDropdown("VX_flag_123", {
	Text = "BodyBlock Behavior",
	Default = 1,
	Values = {
		"Normal",
		"Zigzag",
		"Run Away",
		"Orbit",
		"Front",
		"Back",
		"Push",
		"Strafe",
		"Mirror",
		"Aggressive",
		"Intercept"
	},
	Callback = function(state, arg362)
		end
})
	task.spawn(function(...)
		task.wait(0.6)
	end)
getgenv().DusekkarHookInitialized = true
getgenv().DusekkarProtectionActive = false
local __origNc -- [[reconstructed: тело хука потеряно при рендере трейса (VM отложил вызов);]]
-- [[reconstructed: pass-through — пустое тело возвращало nil для ВСЕХ namecall-ов игры]]
__origNc = hookmetamethod(game, "__namecall", function(arg363, arg364)
	if getgenv().DusekkarHookInitialized then -- TODO: оригинальная логика перехвата (DusekkarHookInitialized) не восстановлена
	end
	return __origNc(arg363, arg364)
end)
getgenv().EnableDusekkarProtection = function(arg365, arg366)
	task.spawn(function(...)
		getgenv().DusekkarProtectionActive = true
		task.wait(4)
		local Modules4 = ReplicatedStorage:WaitForChild("Modules")
		local Network7 = Modules4:WaitForChild("Network")
		local Network8 = Network7:WaitForChild("Network")
		local RemoteEvent = Network8:WaitForChild("RemoteEvent")
		RemoteEvent:FireServer({ Players.LocalPlayer.Name .. "DusekkarCancel" })
	end)
end
getgenv().DusekkarProtectionActive = false
getgenv().DisableDusekkarProtection = function(arg367, arg368)
end
getgenv().DusekkarProtectionActive = false
RightGroupbox5:AddCheckbox("VX_flag_124", {
	Text = "Unbreakable Protection",
	Default = false,
	Callback = function(state, arg370)
		if state then
			task.spawn(function(...)
				getgenv().DusekkarProtectionActive = true
				task.wait(4)
				local Modules5 = ReplicatedStorage:WaitForChild("Modules")
				local Network9 = Modules5:WaitForChild("Network")
				local Network10 = Network9:WaitForChild("Network")
				local RemoteEvent2 = Network10:WaitForChild("RemoteEvent")
				RemoteEvent2:FireServer({ Players.LocalPlayer.Name .. "DusekkarCancel" })
			end)
		end
	end
})
getgenv().DusekkarInfiniteRangeEnabled = false
RightGroupbox5:AddCheckbox("VX_flag_125", {
	Text = "Infinite Range Protection",
	Default = false,
	Callback = function(state, arg372)
		if state then
			getgenv().DusekkarInfiniteRangeEnabled = state
			local module24 = require(ReplicatedStorage.Assets.Survivors.Dusekkar.Config)
			module24._origSpawnDist = module24._origSpawnDist
			module24._origBeamRange = module24._origBeamRange
			module24.SpawnProtectionEffectMaxDistance = math.huge
			module24.PlasmaBeamHitboxRange = math.huge
		else
			getgenv().DusekkarInfiniteRangeEnabled = false
			local module25 = require(ReplicatedStorage.Assets.Survivors.Dusekkar.Config)
			module25.SpawnProtectionEffectMaxDistance = module25._origSpawnDist
			module25.PlasmaBeamHitboxRange = module25._origBeamRange
		end
	end
})
getgenv().DusekkarWallbangEnabled = false
getgenv().DusekkarWallbangHook = nil
getgenv().DusekkarWallbangEnabled = false
getgenv().DusekkarWallbangHook = nil
RightGroupbox5:AddCheckbox("VX_flag_126", {
	Text = "Protection Wallbang",
	Default = false,
	Callback = function(state, arg374)
		if state then
			local module26 = require(ReplicatedStorage.Modules.Util)
			getgenv().DusekkarWallbangOrig = module26.IsOnScreen -- [[reconstructed: оригинал до хука]]
			local __origIso -- [[reconstructed: тело хука потеряно; pass-through + wallbang-режим]]
			__origIso = hookfunction(module26.IsOnScreen, function(...)
				if getgenv().DusekkarWallbangEnabled then return true end -- TODO: точная логика не восстановлена
				return __origIso(...)
			end)
			getgenv().DusekkarWallbangHook = module26.IsOnScreen
		else
			getgenv().DusekkarWallbangEnabled = state
			local module26 = require(ReplicatedStorage.Modules.Util) -- [[deobf: результат require был отброшен рендером]]
			if module26 and module26.IsOnScreen and getgenv().DusekkarWallbangOrig then hookfunction(module26.IsOnScreen, getgenv().DusekkarWallbangOrig) end -- [[reconstructed: снятие хука — возврат сохранённого оригинала]] -- [[deobf: guard; тело хука не восстановлено — см. TODO]]
		end
	end
})
getgenv().TwoTimeStab = { BehindStuds = 4, Duration = 0.5, Enabled = false, StartDelay = 0.05 }
local Humanoid9 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid")
local Animator6 = Humanoid9:WaitForChild("Animator")
Animator6.AnimationPlayed:Connect(function(arg377)
	tostring(arg377.Animation.AnimationId):gsub("%D", "")
end)
Players.LocalPlayer.CharacterAdded:Connect(function(character8)
	local Humanoid39 = character8:WaitForChild("Humanoid")
	local Animator26 = Humanoid39:WaitForChild("Animator")
	Animator26.AnimationPlayed:Connect(function(arg1057)
		tostring(arg1057.Animation.AnimationId):gsub("%D", "")
	end)
end)
RightGroupbox6:AddCheckbox("VX_flag_127", {
	Text = "TP Stab (OP)",
	Default = false,
	Callback = function(state, arg379)
	end
})
RightGroupbox6:AddSlider("VX_flag_128", {
	Text = "Fire Delay",
	Default = 0.05,
	Max = 0.5,
	Min = 0,
	Rounding = 2,
	Callback = function(state, arg381)
	end
})
RightGroupbox6:AddSlider("VX_flag_129", {
	Text = "Hold Time",
	Default = 0.5,
	Max = 2,
	Min = 0.1,
	Rounding = 1,
	Callback = function(state, arg383)
	end
})
RightGroupbox6:AddSlider("VX_flag_130", {
	Text = "Backdistance",
	Default = 4,
	Max = 10,
	Min = 1,
	Rounding = 1,
	Callback = function(state, arg385)
	end
})
local Tab18 = Window:AddTab("Blatant", "zap", "blatant cheats")
local LeftTabbox4 = Tab18:AddLeftTabbox()
local Tab19 = LeftTabbox4:AddTab("Rage")
local Tab20 = LeftTabbox4:AddTab("Soft")
local LeftGroupbox6 = Tab18:AddLeftGroupbox("Items", "package")
local RightGroupbox7 = Tab18:AddRightGroupbox("Obstacles", "shield")
getgenv().VX_trackedItems = {}
getgenv().VX_pickUpNear = false
getgenv().VX_pickUpAll = false
getgenv().VX_pickUpFilter = "Both"
getgenv().VX_pickUpRange = 10
getgenv().VX_trackedItems = {}
workspace:FindFirstChild("Map")
local Ingame64 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
local descendants8 = Ingame64 and Ingame64:GetDescendants()
for i151, v166 in ipairs(descendants8 or {}) do -- [[deobf: guard]]
	v166:FindFirstChild("ItemRoot")
end
if Ingame64 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
if Ingame64 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
Ingame64.DescendantAdded:Connect(function(descendant6)
	descendant6:FindFirstChild("ItemRoot")
end)
end
end
if Ingame64 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
if Ingame64 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
Ingame64.DescendantRemoving:Connect(function(descendant7)
	descendant7:FindFirstChild("ItemRoot")
end)
end
end
LeftGroupbox6:AddCheckbox("VX_flag_131", {
	Text = "Auto Pickup Drop Items",
	Default = false,
	Callback = function(state, arg387)
		if state then
			getgenv().VX_trackedItems = {}
			workspace:FindFirstChild("Map")
			local Ingame65 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
			local descendants9 = Ingame65 and Ingame65:GetDescendants()
			for i152, v167 in ipairs(descendants9 or {}) do -- [[deobf: guard]]
				v167:FindFirstChild("ItemRoot")
			end
			if Ingame65 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			if Ingame65 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			Ingame65.DescendantAdded:Connect(function(descendant8)
				descendant8:FindFirstChild("ItemRoot")
			end)
			end
			end
			if Ingame65 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			if Ingame65 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			Ingame65.DescendantRemoving:Connect(function(descendant9)
				descendant9:FindFirstChild("ItemRoot")
			end)
			end
			end
		end
	end
})
getgenv().VX_pickUpNear = false
LeftGroupbox6:AddCheckbox("VX_flag_132", {
	Text = "Auto Pick Up Near Items",
	Default = false,
	Callback = function(state, arg389)
		if state then
			task.spawn(function(...)
				getgenv().VX_pickUpNear = state
				task.wait()
				game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				game.Players.LocalPlayer:FindFirstChild("Backpack")
				task.wait()
			end)
		end
	end
})
getgenv().VX_pickUpAll = false
LeftGroupbox6:AddCheckbox("VX_flag_133", {
	Text = "Auto Pick Up All Items",
	Default = false,
	Callback = function(state, arg391)
		if state then
			getgenv().VX_pickUpAll = state
			task.spawn(function(...)
				getgenv().VX_pickUpNear = state
				task.wait()
				game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				game.Players.LocalPlayer:FindFirstChild("Backpack")
				task.wait()
			end)
		end
	end
})
getgenv().VX_pickUpRange = nil
LeftGroupbox6:AddSlider("VX_flag_134", {
	Text = "Pick Up Near Range",
	Default = 10,
	Max = 50,
	Min = 5,
	Rounding = 0,
	Callback = function(state, arg393)
	end
})
getgenv().VX_pickUpFilter = false
LeftGroupbox6:AddDropdown("VX_flag_135", {
	Text = "Item Filter",
	Default = "Both",
	Values = { "Both", "Cola", "Medkit" },
	Callback = function(state, arg395)
	end
})
local RightTabbox4 = Tab18:AddRightTabbox("rotate-cw")
local Tab21 = RightTabbox4:AddTab("Smooth Turning")
local Tab22 = RightTabbox4:AddTab("Settings")
task.spawn(function(...)
	getgenv().DPAnimIDs = {
	["rbxassetid://128414736976503"] = true,
	["rbxassetid://133363345661032"] = true,
	["rbxassetid://139309647473555"] = true
}
	getgenv().IsUsingPursuit = function(arg396, arg397)
		local Humanoid10 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
		local Animator7 = Humanoid10 and Humanoid10:FindFirstChild("Animator")
		local tracks = Animator7 and Animator7:GetPlayingAnimationTracks()
		for i153, v168 in ipairs(tracks or {}) do -- [[deobf: guard]]
		end
	end
	getgenv().DPApplyVelocity = function(arg398, arg399)
		local children130 = arg398:GetChildren()
		for i154, v169 in ipairs(children130) do
			v169.Enabled = false
		end
	end
	getgenv().DemonicPursuitEnabled = false
	getgenv().DemonicPursuitConn = nil
	getgenv().DemonicPursuitConn = nil
	Tab21:AddCheckbox("VX_flag_136", {
	Text = "Demonic Pursuit Redirector",
	Default = false,
	Callback = function(state, arg401)
			if state then
				getgenv().DemonicPursuitEnabled = state
				local connection42 = RunService.Stepped:Connect(function(time, deltaTime28)
				end)
				getgenv().DemonicPursuitConn = connection42
			else
				getgenv().DemonicPursuitEnabled = false
				if connection42 then connection42:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	getgenv().isChargeActive = false
	getgenv().chargeConnection = nil
	getgenv().dashSpeed = 50
	getgenv().chargeControlEnabled = false
	getgenv().stopCharge = function(arg402, arg403)
	end
	getgenv().startCharge = function(arg404, arg405)
		getgenv().isChargeActive = true
		getgenv().chargeSteerDir = nil
		getgenv().chargeConnection = true
		RunService:BindToRenderStep("VX_ChargeSteer", 1001, function(arg406, arg407)
			arg404.AutoRotate = false
			getgenv().chargeSteerDir = Vector3.new(0, 0, -1)
		end)
	end
	task.spawn(function(...)
		game.Players.LocalPlayer.Character:WaitForChild("Humanoid", 5)
		game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 5)
		RunService:UnbindFromRenderStep("VX_ChargeSteer")
		getgenv().isChargeActive = false
		getgenv().chargeConnection = nil
		local SpeedMultipliers3 = game.Players.LocalPlayer.Character:WaitForChild("SpeedMultipliers", 8)
		SpeedMultipliers3.ChildAdded:Connect(function(child38)
		end)
		SpeedMultipliers3.ChildRemoved:Connect(function(child39)
		end)
	end, game.Players.LocalPlayer.Character)
	game.Players.LocalPlayer.CharacterAdded:Connect(function(character9)
		character9:WaitForChild("Humanoid", 5)
		character9:WaitForChild("HumanoidRootPart", 5)
		RunService:UnbindFromRenderStep("VX_ChargeSteer")
		getgenv().chargeConnection = nil
		local SpeedMultipliers5 = character9:WaitForChild("SpeedMultipliers", 8)
		SpeedMultipliers5.ChildAdded:Connect(function(child56)
		end)
		SpeedMultipliers5.ChildRemoved:Connect(function(child57)
		end)
	end)
	Tab21:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	Tab21:AddCheckbox("VX_flag_137", {
	Text = "Charge Redirector",
	Default = false,
	Callback = function(state, arg409)
		end
})
	game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
	game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	game.Players.LocalPlayer.CharacterAdded:Connect(function(character10)
		character10:WaitForChild("Humanoid")
		character10:WaitForChild("HumanoidRootPart")
	end)
	RunService.RenderStepped:Connect(function(deltaTime29)
	end)
	Tab21:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	Tab21:AddCheckbox("VX_flag_138", {
	Text = "VoidRush Redirector",
	Default = false,
	Callback = function(state, arg411)
		end
})
	game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
	game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	game.Players.LocalPlayer.CharacterAdded:Connect(function(character11)
		character11:WaitForChild("Humanoid")
		character11:WaitForChild("HumanoidRootPart")
	end)
	RunService.RenderStepped:Connect(function(deltaTime30)
	end)
	Tab21:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv().VX_ToggleWSORedirector = function(arg412, arg413)
	end
	Tab21:AddCheckbox("VX_flag_139", {
	Text = "Walkspeed Override Redirector",
	Default = false,
	Callback = function(state, arg415)
		end
})
	getgenv().TwoTimeVelocityFix = false
	getgenv().TwoTimeVelocityConn = nil
	getgenv().StartTwoTimeVelocityFix = function(arg416, arg417)
		local connection43 = RunService.Heartbeat:Connect(function(deltaTime31)
		end)
		getgenv().TwoTimeVelocityConn = connection43
	end
	getgenv().TwoTimeVelocityConn = nil
	getgenv().StopTwoTimeVelocityFix = function(arg418, arg419)
		if connection43 then connection43:Disconnect() end -- [[deobf: guard — определение в другой области]]
	end
	Tab21:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv().TwoTimeVelocityConn = nil
	Tab21:AddCheckbox("VX_flag_140", {
	Text = "Crouch Lunge Redirector",
	Default = false,
	Callback = function(state, arg421)
			if state then
				getgenv().TwoTimeVelocityFix = state
				local connection44 = RunService.Heartbeat:Connect(function(deltaTime32)
				end)
				getgenv().TwoTimeVelocityConn = connection44
			else
				getgenv().TwoTimeVelocityFix = false
				if connection44 then connection44:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	getgenv().JaneDoe_HatchetVelocityFix = false
	getgenv().JaneDoe_HatchetVelocityConn = nil
	getgenv().StartJaneDoe_HatchetController = function(arg422, arg423)
		local connection45 = RunService.Heartbeat:Connect(function(deltaTime33)
		end)
		getgenv().JaneDoe_HatchetVelocityConn = connection45
	end
	getgenv().JaneDoe_HatchetVelocityConn = nil
	getgenv().StopJaneDoe_HatchetController = function(arg424, arg425)
		if connection45 then connection45:Disconnect() end -- [[deobf: guard — определение в другой области]]
	end
	Tab21:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv().JaneDoe_HatchetVelocityConn = nil
	Tab21:AddCheckbox("VX_flag_141", {
	Text = "Hatchet Redirector",
	Default = false,
	Callback = function(state, arg427)
			if state then
				getgenv().JaneDoe_HatchetVelocityFix = state
				local connection46 = RunService.Heartbeat:Connect(function(deltaTime34)
				end)
				getgenv().JaneDoe_HatchetVelocityConn = connection46
			else
				getgenv().JaneDoe_HatchetVelocityFix = false
				if connection46 then connection46:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	getgenv().VX_DPSteerStrength = 5
	getgenv().VX_DPSteerStrength = false
	Tab22:AddSlider("VX_flag_142", {
	Text = "Demonic Pursuit Steer Strength",
	Default = 5,
	Max = 10,
	Min = 0,
	Rounding = 2,
	Callback = function(state, arg429)
		end
})
	Tab22:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv().VX_ChargeSteerStrength = 5
	getgenv().VX_ChargeSteerStrength = false
	Tab22:AddSlider("VX_flag_143", {
	Text = "Charge Steer Strength",
	Default = 5,
	Max = 10,
	Min = 0,
	Rounding = 2,
	Callback = function(state, arg431)
		end
})
	Tab22:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv().VX_VoidRushSteerStrength = 5
	getgenv().VX_VoidRushSteerStrength = false
	Tab22:AddSlider("VX_flag_144", {
	Text = "VoidRush Steer Strength",
	Default = 5,
	Max = 10,
	Min = 0,
	Rounding = 2,
	Callback = function(state, arg433)
		end
})
	Tab22:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv().VX_WSOSteerStrength = 5
	getgenv().VX_WSOSteerStrength = false
	Tab22:AddSlider("VX_flag_145", {
	Text = "Walkspeed Override Steer Strength",
	Default = 5,
	Max = 10,
	Min = 0,
	Rounding = 2,
	Callback = function(state, arg435)
		end
})
	Tab22:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv().VX_CrouchLungeSteerStrength = 5
	getgenv().VX_CrouchLungeSteerStrength = false
	Tab22:AddSlider("VX_flag_146", {
	Text = "Crouch Lunge Steer Strength",
	Default = 5,
	Max = 10,
	Min = 0,
	Rounding = 2,
	Callback = function(state, arg437)
		end
})
	Tab22:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	getgenv().VX_HatchetSteerStrength = 5
	getgenv().VX_HatchetSteerStrength = false
	Tab22:AddSlider("VX_flag_147", {
	Text = "Hatchet Steer Strength",
	Default = 5,
	Max = 10,
	Min = 0,
	Rounding = 2,
	Callback = function(state, arg439)
		end
})
end)
task.spawn(function(...)
	getgenv().VX_NoliHookRules = {}
	getgenv().VX_NoliOrigNamecall = nil
	local __origNc -- [[reconstructed: тело хука потеряно при рендере трейса (VM отложил вызов);]]
	-- [[reconstructed: pass-through — пустое тело возвращало nil для ВСЕХ namecall-ов игры]]
	__origNc = hookmetamethod(game, "__namecall", function(arg440, arg441)
		if getgenv().VX_NoliHookRules then -- TODO: оригинальная логика перехвата (VX_NoliHookRules) не восстановлена
		end
		return __origNc(arg440, arg441)
	end)
	-- [[reconstructed: сохранение оригинала см. hookmetamethod выше; pass-through]]
	getgenv().VX_NoliOrigNamecall = function(arg442, arg443)
		return __origNc(arg442, arg443) -- [[reconstructed]]
	end
	RightGroupbox7:AddCheckbox("VX_flag_148", {
	Text = "Anti-Cancel VoidRush",
	Default = false,
	Callback = function(state, arg445)
		end
})
	RightGroupbox7:AddCheckbox("VX_flag_149", {
	Text = "Anti-Cancel Walkspeed",
	Default = false,
	Callback = function(state, arg447)
			if state then
				local connection47 = RunService.Heartbeat:Connect(function(deltaTime35)
				end)
			else
				if connection47 then connection47:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	getgenv().VX_ChargeHookRules = {}
	local __origNc -- [[reconstructed: тело хука потеряно при рендере трейса (VM отложил вызов);]]
	-- [[reconstructed: pass-through — пустое тело возвращало nil для ВСЕХ namecall-ов игры]]
	__origNc = hookmetamethod(game, "__namecall", function(arg448, arg449)
		if getgenv().VX_ChargeHookRules then -- TODO: оригинальная логика перехвата (VX_ChargeHookRules) не восстановлена
		end
		return __origNc(arg448, arg449)
	end)
	-- [[reconstructed: сохранение оригинала см. hookmetamethod выше; pass-through]]
	getgenv().VX_ChargeOrigNamecall = function(arg450, arg451)
		return __origNc(arg450, arg451) -- [[reconstructed]]
	end
	getgenv().EnableChargeIgnore = function(arg452, arg453)
	end
	getgenv().DisableChargeIgnore = function(arg454, arg455)
	end
	RightGroupbox7:AddCheckbox("VX_flag_150", {
	Text = "Anti-Cancel Charge",
	Default = false,
	Callback = function(state, arg457)
		end
})
end)
Tab19:AddCheckbox("VX_flag_151", {
	Text = "Invisibility",
	Default = false,
	Callback = function(state, arg459)
		if state then
			local Humanoid11 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
			local Animation5 = Instance.new("Animation")
			Animation5.AnimationId = "rbxassetid://75804462760596"
			local track5 = Humanoid11 and Humanoid11:LoadAnimation(Animation5)
			if track5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			track5:Play()
			end
			if track5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			track5:AdjustSpeed(0)
			end
			Players.LocalPlayer.CharacterAdded:Connect(function(character12)
				task.wait(0.5)
			end)
		else
			if track5 then track5:Stop() end -- [[deobf: guard — определение в другой ветке]]
		end
	end
})
getgenv().autoDeleteShadowsTI = false
getgenv().antiPuddleConn = nil
getgenv().antiPuddleLastFolder = nil
getgenv().disablePuddleParts = function(arg460, arg461)
	local descendants10 = arg460:GetDescendants()
	for k16, v170 in pairs(descendants10) do
		if v170:IsA("BasePart") then v170.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
	end
end
getgenv().watchPuddleFolder = function(arg462, arg463)
	local descendants11 = arg462:GetDescendants()
	for k17, v171 in pairs(descendants11) do
		if v171:IsA("BasePart") then v171.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
	end
	local connection48 = arg462.DescendantAdded:Connect(function(descendant10)
		if descendant10:IsA("BasePart") then descendant10.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
	end)
	getgenv().antiPuddleConn = connection48
end
getgenv().antiPuddleConn = nil
Tab19:AddCheckbox("VX_flag_152", {
	Text = "Walkable John Doe Puddle",
	Default = false,
	Callback = function(state, arg465)
		if state then
			task.spawn(function(...)
				local __L = {}
				getgenv().autoDeleteShadowsTI = state
				getgenv().antiPuddleLastFolder = nil
				workspace:FindFirstChild("Map")
				__L.Ingame66 = workspace.Map:FindFirstChild("Ingame")
				__L.child = __L.Ingame66:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child
				__L.descendants12 = __L.child:GetDescendants()
				for k18, v172 in pairs(__L.descendants12) do
					if v172:IsA("BasePart") then v172.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if connection48 then connection48:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection49 = __L.child.DescendantAdded:Connect(function(descendant11)
					if descendant11:IsA("BasePart") then descendant11.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection49
				__L.children131 = __L.Ingame66:GetChildren()
				for k19, v173 in pairs(__L.children131) do
					local result10 = v173.Name:lower()
					result10:find("shadow")
					if v173:IsA("BasePart") then v173.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame67 = workspace.Map:FindFirstChild("Ingame")
				__L.child2 = __L.Ingame67:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child2
				__L.descendants13 = __L.child2:GetDescendants()
				for k20, v174 in pairs(__L.descendants13) do
					if v174:IsA("BasePart") then v174.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection49 then __L.connection49:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection50 = __L.child2.DescendantAdded:Connect(function(descendant12)
					if descendant12:IsA("BasePart") then descendant12.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection50
				__L.children132 = __L.Ingame67:GetChildren()
				for k21, v175 in pairs(__L.children132) do
					local result11 = v175.Name:lower()
					result11:find("shadow")
					if v175:IsA("BasePart") then v175.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame68 = workspace.Map:FindFirstChild("Ingame")
				__L.child3 = __L.Ingame68:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child3
				__L.descendants14 = __L.child3:GetDescendants()
				for k22, v176 in pairs(__L.descendants14) do
					if v176:IsA("BasePart") then v176.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection50 then __L.connection50:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection51 = __L.child3.DescendantAdded:Connect(function(descendant13)
					if descendant13:IsA("BasePart") then descendant13.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection51
				__L.children133 = __L.Ingame68:GetChildren()
				for k23, v177 in pairs(__L.children133) do
					local result12 = v177.Name:lower()
					result12:find("shadow")
					if v177:IsA("BasePart") then v177.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame69 = workspace.Map:FindFirstChild("Ingame")
				__L.child4 = __L.Ingame69:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child4
				__L.descendants15 = __L.child4:GetDescendants()
				for k24, v178 in pairs(__L.descendants15) do
					if v178:IsA("BasePart") then v178.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection51 then __L.connection51:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection52 = __L.child4.DescendantAdded:Connect(function(descendant14)
					if descendant14:IsA("BasePart") then descendant14.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection52
				__L.children134 = __L.Ingame69:GetChildren()
				for k25, v179 in pairs(__L.children134) do
					local result13 = v179.Name:lower()
					result13:find("shadow")
					if v179:IsA("BasePart") then v179.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame70 = workspace.Map:FindFirstChild("Ingame")
				__L.child5 = __L.Ingame70:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child5
				__L.descendants16 = __L.child5:GetDescendants()
				for k26, v180 in pairs(__L.descendants16) do
					if v180:IsA("BasePart") then v180.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection52 then __L.connection52:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection53 = __L.child5.DescendantAdded:Connect(function(descendant15)
					if descendant15:IsA("BasePart") then descendant15.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection53
				__L.children135 = __L.Ingame70:GetChildren()
				for k27, v181 in pairs(__L.children135) do
					local result14 = v181.Name:lower()
					result14:find("shadow")
					if v181:IsA("BasePart") then v181.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame71 = workspace.Map:FindFirstChild("Ingame")
				__L.child6 = __L.Ingame71:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child6
				__L.descendants17 = __L.child6:GetDescendants()
				for k28, v182 in pairs(__L.descendants17) do
					if v182:IsA("BasePart") then v182.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection53 then __L.connection53:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection54 = __L.child6.DescendantAdded:Connect(function(descendant16)
					if descendant16:IsA("BasePart") then descendant16.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection54
				__L.children136 = __L.Ingame71:GetChildren()
				for k29, v183 in pairs(__L.children136) do
					local result15 = v183.Name:lower()
					result15:find("shadow")
					if v183:IsA("BasePart") then v183.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame72 = workspace.Map:FindFirstChild("Ingame")
				__L.child7 = __L.Ingame72:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child7
				__L.descendants18 = __L.child7:GetDescendants()
				for k30, v184 in pairs(__L.descendants18) do
					if v184:IsA("BasePart") then v184.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection54 then __L.connection54:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection55 = __L.child7.DescendantAdded:Connect(function(descendant17)
					if descendant17:IsA("BasePart") then descendant17.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection55
				__L.children137 = __L.Ingame72:GetChildren()
				for k31, v185 in pairs(__L.children137) do
					local result16 = v185.Name:lower()
					result16:find("shadow")
					if v185:IsA("BasePart") then v185.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame73 = workspace.Map:FindFirstChild("Ingame")
				__L.child8 = __L.Ingame73:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child8
				__L.descendants19 = __L.child8:GetDescendants()
				for k32, v186 in pairs(__L.descendants19) do
					if v186:IsA("BasePart") then v186.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection55 then __L.connection55:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection56 = __L.child8.DescendantAdded:Connect(function(descendant18)
					if descendant18:IsA("BasePart") then descendant18.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection56
				__L.children138 = __L.Ingame73:GetChildren()
				for k33, v187 in pairs(__L.children138) do
					local result17 = v187.Name:lower()
					result17:find("shadow")
					if v187:IsA("BasePart") then v187.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame74 = workspace.Map:FindFirstChild("Ingame")
				__L.child9 = __L.Ingame74:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child9
				__L.descendants20 = __L.child9:GetDescendants()
				for k34, v188 in pairs(__L.descendants20) do
					if v188:IsA("BasePart") then v188.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection56 then __L.connection56:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection57 = __L.child9.DescendantAdded:Connect(function(descendant19)
					if descendant19:IsA("BasePart") then descendant19.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection57
				__L.children139 = __L.Ingame74:GetChildren()
				for k35, v189 in pairs(__L.children139) do
					local result18 = v189.Name:lower()
					result18:find("shadow")
					if v189:IsA("BasePart") then v189.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame75 = workspace.Map:FindFirstChild("Ingame")
				__L.child10 = __L.Ingame75:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child10
				__L.descendants21 = __L.child10:GetDescendants()
				for k36, v190 in pairs(__L.descendants21) do
					if v190:IsA("BasePart") then v190.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection57 then __L.connection57:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection58 = __L.child10.DescendantAdded:Connect(function(descendant20)
					if descendant20:IsA("BasePart") then descendant20.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection58
				__L.children140 = __L.Ingame75:GetChildren()
				for k37, v191 in pairs(__L.children140) do
					local result19 = v191.Name:lower()
					result19:find("shadow")
					if v191:IsA("BasePart") then v191.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame76 = workspace.Map:FindFirstChild("Ingame")
				__L.child11 = __L.Ingame76:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child11
				__L.descendants22 = __L.child11:GetDescendants()
				for k38, v192 in pairs(__L.descendants22) do
					if v192:IsA("BasePart") then v192.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection58 then __L.connection58:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection59 = __L.child11.DescendantAdded:Connect(function(descendant21)
					if descendant21:IsA("BasePart") then descendant21.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection59
				__L.children141 = __L.Ingame76:GetChildren()
				for k39, v193 in pairs(__L.children141) do
					local result20 = v193.Name:lower()
					result20:find("shadow")
					if v193:IsA("BasePart") then v193.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame77 = workspace.Map:FindFirstChild("Ingame")
				__L.child12 = __L.Ingame77:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child12
				__L.descendants23 = __L.child12:GetDescendants()
				for k40, v194 in pairs(__L.descendants23) do
					if v194:IsA("BasePart") then v194.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection59 then __L.connection59:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection60 = __L.child12.DescendantAdded:Connect(function(descendant22)
					if descendant22:IsA("BasePart") then descendant22.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection60
				__L.children142 = __L.Ingame77:GetChildren()
				for k41, v195 in pairs(__L.children142) do
					local result21 = v195.Name:lower()
					result21:find("shadow")
					if v195:IsA("BasePart") then v195.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame78 = workspace.Map:FindFirstChild("Ingame")
				__L.child13 = __L.Ingame78:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child13
				__L.descendants24 = __L.child13:GetDescendants()
				for k42, v196 in pairs(__L.descendants24) do
					if v196:IsA("BasePart") then v196.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection60 then __L.connection60:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection61 = __L.child13.DescendantAdded:Connect(function(descendant23)
					if descendant23:IsA("BasePart") then descendant23.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection61
				__L.children143 = __L.Ingame78:GetChildren()
				for k43, v197 in pairs(__L.children143) do
					local result22 = v197.Name:lower()
					result22:find("shadow")
					if v197:IsA("BasePart") then v197.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame79 = workspace.Map:FindFirstChild("Ingame")
				__L.child14 = __L.Ingame79:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child14
				__L.descendants25 = __L.child14:GetDescendants()
				for k44, v198 in pairs(__L.descendants25) do
					if v198:IsA("BasePart") then v198.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection61 then __L.connection61:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection62 = __L.child14.DescendantAdded:Connect(function(descendant24)
					if descendant24:IsA("BasePart") then descendant24.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection62
				__L.children144 = __L.Ingame79:GetChildren()
				for k45, v199 in pairs(__L.children144) do
					local result23 = v199.Name:lower()
					result23:find("shadow")
					if v199:IsA("BasePart") then v199.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame80 = workspace.Map:FindFirstChild("Ingame")
				__L.child15 = __L.Ingame80:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child15
				__L.descendants26 = __L.child15:GetDescendants()
				for k46, v200 in pairs(__L.descendants26) do
					if v200:IsA("BasePart") then v200.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection62 then __L.connection62:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection63 = __L.child15.DescendantAdded:Connect(function(descendant25)
					if descendant25:IsA("BasePart") then descendant25.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection63
				__L.children145 = __L.Ingame80:GetChildren()
				for k47, v201 in pairs(__L.children145) do
					local result24 = v201.Name:lower()
					result24:find("shadow")
					if v201:IsA("BasePart") then v201.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame81 = workspace.Map:FindFirstChild("Ingame")
				__L.child16 = __L.Ingame81:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child16
				__L.descendants27 = __L.child16:GetDescendants()
				for k48, v202 in pairs(__L.descendants27) do
					if v202:IsA("BasePart") then v202.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection63 then __L.connection63:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection64 = __L.child16.DescendantAdded:Connect(function(descendant26)
					if descendant26:IsA("BasePart") then descendant26.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection64
				__L.children146 = __L.Ingame81:GetChildren()
				for k49, v203 in pairs(__L.children146) do
					local result25 = v203.Name:lower()
					result25:find("shadow")
					if v203:IsA("BasePart") then v203.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame82 = workspace.Map:FindFirstChild("Ingame")
				__L.child17 = __L.Ingame82:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child17
				__L.descendants28 = __L.child17:GetDescendants()
				for k50, v204 in pairs(__L.descendants28) do
					if v204:IsA("BasePart") then v204.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection64 then __L.connection64:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection65 = __L.child17.DescendantAdded:Connect(function(descendant27)
					if descendant27:IsA("BasePart") then descendant27.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection65
				__L.children147 = __L.Ingame82:GetChildren()
				for k51, v205 in pairs(__L.children147) do
					local result26 = v205.Name:lower()
					result26:find("shadow")
					if v205:IsA("BasePart") then v205.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame83 = workspace.Map:FindFirstChild("Ingame")
				__L.child18 = __L.Ingame83:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child18
				__L.descendants29 = __L.child18:GetDescendants()
				for k52, v206 in pairs(__L.descendants29) do
					if v206:IsA("BasePart") then v206.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection65 then __L.connection65:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection66 = __L.child18.DescendantAdded:Connect(function(descendant28)
					if descendant28:IsA("BasePart") then descendant28.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection66
				__L.children148 = __L.Ingame83:GetChildren()
				for k53, v207 in pairs(__L.children148) do
					local result27 = v207.Name:lower()
					result27:find("shadow")
					if v207:IsA("BasePart") then v207.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame84 = workspace.Map:FindFirstChild("Ingame")
				__L.child19 = __L.Ingame84:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child19
				__L.descendants30 = __L.child19:GetDescendants()
				for k54, v208 in pairs(__L.descendants30) do
					if v208:IsA("BasePart") then v208.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection66 then __L.connection66:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection67 = __L.child19.DescendantAdded:Connect(function(descendant29)
					if descendant29:IsA("BasePart") then descendant29.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection67
				__L.children149 = __L.Ingame84:GetChildren()
				for k55, v209 in pairs(__L.children149) do
					local result28 = v209.Name:lower()
					result28:find("shadow")
					if v209:IsA("BasePart") then v209.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame85 = workspace.Map:FindFirstChild("Ingame")
				__L.child20 = __L.Ingame85:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child20
				__L.descendants31 = __L.child20:GetDescendants()
				for k56, v210 in pairs(__L.descendants31) do
					if v210:IsA("BasePart") then v210.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection67 then __L.connection67:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection68 = __L.child20.DescendantAdded:Connect(function(descendant30)
					if descendant30:IsA("BasePart") then descendant30.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection68
				__L.children150 = __L.Ingame85:GetChildren()
				for k57, v211 in pairs(__L.children150) do
					local result29 = v211.Name:lower()
					result29:find("shadow")
					if v211:IsA("BasePart") then v211.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame86 = workspace.Map:FindFirstChild("Ingame")
				__L.child21 = __L.Ingame86:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child21
				__L.descendants32 = __L.child21:GetDescendants()
				for k58, v212 in pairs(__L.descendants32) do
					if v212:IsA("BasePart") then v212.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection68 then __L.connection68:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection69 = __L.child21.DescendantAdded:Connect(function(descendant31)
					if descendant31:IsA("BasePart") then descendant31.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection69
				__L.children151 = __L.Ingame86:GetChildren()
				for k59, v213 in pairs(__L.children151) do
					local result30 = v213.Name:lower()
					result30:find("shadow")
					if v213:IsA("BasePart") then v213.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame87 = workspace.Map:FindFirstChild("Ingame")
				__L.child22 = __L.Ingame87:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child22
				__L.descendants33 = __L.child22:GetDescendants()
				for k60, v214 in pairs(__L.descendants33) do
					if v214:IsA("BasePart") then v214.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection69 then __L.connection69:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection70 = __L.child22.DescendantAdded:Connect(function(descendant32)
					if descendant32:IsA("BasePart") then descendant32.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection70
				__L.children152 = __L.Ingame87:GetChildren()
				for k61, v215 in pairs(__L.children152) do
					local result31 = v215.Name:lower()
					result31:find("shadow")
					if v215:IsA("BasePart") then v215.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame88 = workspace.Map:FindFirstChild("Ingame")
				__L.child23 = __L.Ingame88:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child23
				__L.descendants34 = __L.child23:GetDescendants()
				for k62, v216 in pairs(__L.descendants34) do
					if v216:IsA("BasePart") then v216.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection70 then __L.connection70:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection71 = __L.child23.DescendantAdded:Connect(function(descendant33)
					if descendant33:IsA("BasePart") then descendant33.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection71
				__L.children153 = __L.Ingame88:GetChildren()
				for k63, v217 in pairs(__L.children153) do
					local result32 = v217.Name:lower()
					result32:find("shadow")
					if v217:IsA("BasePart") then v217.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame89 = workspace.Map:FindFirstChild("Ingame")
				__L.child24 = __L.Ingame89:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child24
				__L.descendants35 = __L.child24:GetDescendants()
				for k64, v218 in pairs(__L.descendants35) do
					if v218:IsA("BasePart") then v218.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection71 then __L.connection71:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection72 = __L.child24.DescendantAdded:Connect(function(descendant34)
					if descendant34:IsA("BasePart") then descendant34.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection72
				__L.children154 = __L.Ingame89:GetChildren()
				for k65, v219 in pairs(__L.children154) do
					local result33 = v219.Name:lower()
					result33:find("shadow")
					if v219:IsA("BasePart") then v219.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame90 = workspace.Map:FindFirstChild("Ingame")
				__L.child25 = __L.Ingame90:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child25
				__L.descendants36 = __L.child25:GetDescendants()
				for k66, v220 in pairs(__L.descendants36) do
					if v220:IsA("BasePart") then v220.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection72 then __L.connection72:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection73 = __L.child25.DescendantAdded:Connect(function(descendant35)
					if descendant35:IsA("BasePart") then descendant35.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection73
				__L.children155 = __L.Ingame90:GetChildren()
				for k67, v221 in pairs(__L.children155) do
					local result34 = v221.Name:lower()
					result34:find("shadow")
					if v221:IsA("BasePart") then v221.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame91 = workspace.Map:FindFirstChild("Ingame")
				__L.child26 = __L.Ingame91:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child26
				__L.descendants37 = __L.child26:GetDescendants()
				for k68, v222 in pairs(__L.descendants37) do
					if v222:IsA("BasePart") then v222.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection73 then __L.connection73:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection74 = __L.child26.DescendantAdded:Connect(function(descendant36)
					if descendant36:IsA("BasePart") then descendant36.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection74
				__L.children156 = __L.Ingame91:GetChildren()
				for k69, v223 in pairs(__L.children156) do
					local result35 = v223.Name:lower()
					result35:find("shadow")
					if v223:IsA("BasePart") then v223.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame92 = workspace.Map:FindFirstChild("Ingame")
				__L.child27 = __L.Ingame92:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child27
				__L.descendants38 = __L.child27:GetDescendants()
				for k70, v224 in pairs(__L.descendants38) do
					if v224:IsA("BasePart") then v224.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection74 then __L.connection74:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection75 = __L.child27.DescendantAdded:Connect(function(descendant37)
					if descendant37:IsA("BasePart") then descendant37.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection75
				__L.children157 = __L.Ingame92:GetChildren()
				for k71, v225 in pairs(__L.children157) do
					local result36 = v225.Name:lower()
					result36:find("shadow")
					if v225:IsA("BasePart") then v225.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame93 = workspace.Map:FindFirstChild("Ingame")
				__L.child28 = __L.Ingame93:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child28
				__L.descendants39 = __L.child28:GetDescendants()
				for k72, v226 in pairs(__L.descendants39) do
					if v226:IsA("BasePart") then v226.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection75 then __L.connection75:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection76 = __L.child28.DescendantAdded:Connect(function(descendant38)
					if descendant38:IsA("BasePart") then descendant38.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection76
				__L.children158 = __L.Ingame93:GetChildren()
				for k73, v227 in pairs(__L.children158) do
					local result37 = v227.Name:lower()
					result37:find("shadow")
					if v227:IsA("BasePart") then v227.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame94 = workspace.Map:FindFirstChild("Ingame")
				__L.child29 = __L.Ingame94:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child29
				__L.descendants40 = __L.child29:GetDescendants()
				for k74, v228 in pairs(__L.descendants40) do
					if v228:IsA("BasePart") then v228.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection76 then __L.connection76:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection77 = __L.child29.DescendantAdded:Connect(function(descendant39)
					if descendant39:IsA("BasePart") then descendant39.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection77
				__L.children159 = __L.Ingame94:GetChildren()
				for k75, v229 in pairs(__L.children159) do
					local result38 = v229.Name:lower()
					result38:find("shadow")
					if v229:IsA("BasePart") then v229.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame95 = workspace.Map:FindFirstChild("Ingame")
				__L.child30 = __L.Ingame95:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child30
				__L.descendants41 = __L.child30:GetDescendants()
				for k76, v230 in pairs(__L.descendants41) do
					if v230:IsA("BasePart") then v230.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection77 then __L.connection77:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection78 = __L.child30.DescendantAdded:Connect(function(descendant40)
					if descendant40:IsA("BasePart") then descendant40.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection78
				__L.children160 = __L.Ingame95:GetChildren()
				for k77, v231 in pairs(__L.children160) do
					local result39 = v231.Name:lower()
					result39:find("shadow")
					if v231:IsA("BasePart") then v231.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame96 = workspace.Map:FindFirstChild("Ingame")
				__L.child31 = __L.Ingame96:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child31
				__L.descendants42 = __L.child31:GetDescendants()
				for k78, v232 in pairs(__L.descendants42) do
					if v232:IsA("BasePart") then v232.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection78 then __L.connection78:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection79 = __L.child31.DescendantAdded:Connect(function(descendant41)
					if descendant41:IsA("BasePart") then descendant41.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection79
				__L.children161 = __L.Ingame96:GetChildren()
				for k79, v233 in pairs(__L.children161) do
					local result40 = v233.Name:lower()
					result40:find("shadow")
					if v233:IsA("BasePart") then v233.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame97 = workspace.Map:FindFirstChild("Ingame")
				__L.child32 = __L.Ingame97:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child32
				__L.descendants43 = __L.child32:GetDescendants()
				for k80, v234 in pairs(__L.descendants43) do
					if v234:IsA("BasePart") then v234.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection79 then __L.connection79:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection80 = __L.child32.DescendantAdded:Connect(function(descendant42)
					if descendant42:IsA("BasePart") then descendant42.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection80
				__L.children162 = __L.Ingame97:GetChildren()
				for k81, v235 in pairs(__L.children162) do
					local result41 = v235.Name:lower()
					result41:find("shadow")
					if v235:IsA("BasePart") then v235.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame98 = workspace.Map:FindFirstChild("Ingame")
				__L.child33 = __L.Ingame98:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child33
				__L.descendants44 = __L.child33:GetDescendants()
				for k82, v236 in pairs(__L.descendants44) do
					if v236:IsA("BasePart") then v236.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection80 then __L.connection80:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection81 = __L.child33.DescendantAdded:Connect(function(descendant43)
					if descendant43:IsA("BasePart") then descendant43.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection81
				__L.children163 = __L.Ingame98:GetChildren()
				for k83, v237 in pairs(__L.children163) do
					local result42 = v237.Name:lower()
					result42:find("shadow")
					if v237:IsA("BasePart") then v237.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame99 = workspace.Map:FindFirstChild("Ingame")
				__L.child34 = __L.Ingame99:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child34
				__L.descendants45 = __L.child34:GetDescendants()
				for k84, v238 in pairs(__L.descendants45) do
					if v238:IsA("BasePart") then v238.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection81 then __L.connection81:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection82 = __L.child34.DescendantAdded:Connect(function(descendant44)
					if descendant44:IsA("BasePart") then descendant44.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection82
				__L.children164 = __L.Ingame99:GetChildren()
				for k85, v239 in pairs(__L.children164) do
					local result43 = v239.Name:lower()
					result43:find("shadow")
					if v239:IsA("BasePart") then v239.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame100 = workspace.Map:FindFirstChild("Ingame")
				__L.child35 = __L.Ingame100:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child35
				__L.descendants46 = __L.child35:GetDescendants()
				for k86, v240 in pairs(__L.descendants46) do
					if v240:IsA("BasePart") then v240.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection82 then __L.connection82:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection83 = __L.child35.DescendantAdded:Connect(function(descendant45)
					if descendant45:IsA("BasePart") then descendant45.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection83
				__L.children165 = __L.Ingame100:GetChildren()
				for k87, v241 in pairs(__L.children165) do
					local result44 = v241.Name:lower()
					result44:find("shadow")
					if v241:IsA("BasePart") then v241.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame101 = workspace.Map:FindFirstChild("Ingame")
				__L.child36 = __L.Ingame101:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child36
				__L.descendants47 = __L.child36:GetDescendants()
				for k88, v242 in pairs(__L.descendants47) do
					if v242:IsA("BasePart") then v242.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection83 then __L.connection83:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection84 = __L.child36.DescendantAdded:Connect(function(descendant46)
					if descendant46:IsA("BasePart") then descendant46.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection84
				__L.children166 = __L.Ingame101:GetChildren()
				for k89, v243 in pairs(__L.children166) do
					local result45 = v243.Name:lower()
					result45:find("shadow")
					if v243:IsA("BasePart") then v243.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame102 = workspace.Map:FindFirstChild("Ingame")
				__L.child37 = __L.Ingame102:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child37
				__L.descendants48 = __L.child37:GetDescendants()
				for k90, v244 in pairs(__L.descendants48) do
					if v244:IsA("BasePart") then v244.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection84 then __L.connection84:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection85 = __L.child37.DescendantAdded:Connect(function(descendant47)
					if descendant47:IsA("BasePart") then descendant47.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection85
				__L.children167 = __L.Ingame102:GetChildren()
				for k91, v245 in pairs(__L.children167) do
					local result46 = v245.Name:lower()
					result46:find("shadow")
					if v245:IsA("BasePart") then v245.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame103 = workspace.Map:FindFirstChild("Ingame")
				__L.child38 = __L.Ingame103:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child38
				__L.descendants49 = __L.child38:GetDescendants()
				for k92, v246 in pairs(__L.descendants49) do
					if v246:IsA("BasePart") then v246.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection85 then __L.connection85:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection86 = __L.child38.DescendantAdded:Connect(function(descendant48)
					if descendant48:IsA("BasePart") then descendant48.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection86
				__L.children168 = __L.Ingame103:GetChildren()
				for k93, v247 in pairs(__L.children168) do
					local result47 = v247.Name:lower()
					result47:find("shadow")
					if v247:IsA("BasePart") then v247.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame104 = workspace.Map:FindFirstChild("Ingame")
				__L.child39 = __L.Ingame104:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child39
				__L.descendants50 = __L.child39:GetDescendants()
				for k94, v248 in pairs(__L.descendants50) do
					if v248:IsA("BasePart") then v248.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection86 then __L.connection86:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection87 = __L.child39.DescendantAdded:Connect(function(descendant49)
					if descendant49:IsA("BasePart") then descendant49.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection87
				__L.children169 = __L.Ingame104:GetChildren()
				for k95, v249 in pairs(__L.children169) do
					local result48 = v249.Name:lower()
					result48:find("shadow")
					if v249:IsA("BasePart") then v249.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame105 = workspace.Map:FindFirstChild("Ingame")
				__L.child40 = __L.Ingame105:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child40
				__L.descendants51 = __L.child40:GetDescendants()
				for k96, v250 in pairs(__L.descendants51) do
					if v250:IsA("BasePart") then v250.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection87 then __L.connection87:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection88 = __L.child40.DescendantAdded:Connect(function(descendant50)
					if descendant50:IsA("BasePart") then descendant50.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection88
				__L.children170 = __L.Ingame105:GetChildren()
				for k97, v251 in pairs(__L.children170) do
					local result49 = v251.Name:lower()
					result49:find("shadow")
					if v251:IsA("BasePart") then v251.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame106 = workspace.Map:FindFirstChild("Ingame")
				__L.child41 = __L.Ingame106:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child41
				__L.descendants52 = __L.child41:GetDescendants()
				for k98, v252 in pairs(__L.descendants52) do
					if v252:IsA("BasePart") then v252.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection88 then __L.connection88:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection89 = __L.child41.DescendantAdded:Connect(function(descendant51)
					if descendant51:IsA("BasePart") then descendant51.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection89
				__L.children171 = __L.Ingame106:GetChildren()
				for k99, v253 in pairs(__L.children171) do
					local result50 = v253.Name:lower()
					result50:find("shadow")
					if v253:IsA("BasePart") then v253.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame107 = workspace.Map:FindFirstChild("Ingame")
				__L.child42 = __L.Ingame107:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child42
				__L.descendants53 = __L.child42:GetDescendants()
				for k100, v254 in pairs(__L.descendants53) do
					if v254:IsA("BasePart") then v254.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection89 then __L.connection89:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection90 = __L.child42.DescendantAdded:Connect(function(descendant52)
					if descendant52:IsA("BasePart") then descendant52.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection90
				__L.children172 = __L.Ingame107:GetChildren()
				for k101, v255 in pairs(__L.children172) do
					local result51 = v255.Name:lower()
					result51:find("shadow")
					if v255:IsA("BasePart") then v255.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame108 = workspace.Map:FindFirstChild("Ingame")
				__L.child43 = __L.Ingame108:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child43
				__L.descendants54 = __L.child43:GetDescendants()
				for k102, v256 in pairs(__L.descendants54) do
					if v256:IsA("BasePart") then v256.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection90 then __L.connection90:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection91 = __L.child43.DescendantAdded:Connect(function(descendant53)
					if descendant53:IsA("BasePart") then descendant53.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection91
				__L.children173 = __L.Ingame108:GetChildren()
				for k103, v257 in pairs(__L.children173) do
					local result52 = v257.Name:lower()
					result52:find("shadow")
					if v257:IsA("BasePart") then v257.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame109 = workspace.Map:FindFirstChild("Ingame")
				__L.child44 = __L.Ingame109:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child44
				__L.descendants55 = __L.child44:GetDescendants()
				for k104, v258 in pairs(__L.descendants55) do
					if v258:IsA("BasePart") then v258.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection91 then __L.connection91:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection92 = __L.child44.DescendantAdded:Connect(function(descendant54)
					if descendant54:IsA("BasePart") then descendant54.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection92
				__L.children174 = __L.Ingame109:GetChildren()
				for k105, v259 in pairs(__L.children174) do
					local result53 = v259.Name:lower()
					result53:find("shadow")
					if v259:IsA("BasePart") then v259.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame110 = workspace.Map:FindFirstChild("Ingame")
				__L.child45 = __L.Ingame110:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child45
				__L.descendants56 = __L.child45:GetDescendants()
				for k106, v260 in pairs(__L.descendants56) do
					if v260:IsA("BasePart") then v260.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection92 then __L.connection92:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection93 = __L.child45.DescendantAdded:Connect(function(descendant55)
					if descendant55:IsA("BasePart") then descendant55.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection93
				__L.children175 = __L.Ingame110:GetChildren()
				for k107, v261 in pairs(__L.children175) do
					local result54 = v261.Name:lower()
					result54:find("shadow")
					if v261:IsA("BasePart") then v261.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame111 = workspace.Map:FindFirstChild("Ingame")
				__L.child46 = __L.Ingame111:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child46
				__L.descendants57 = __L.child46:GetDescendants()
				for k108, v262 in pairs(__L.descendants57) do
					if v262:IsA("BasePart") then v262.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection93 then __L.connection93:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection94 = __L.child46.DescendantAdded:Connect(function(descendant56)
					if descendant56:IsA("BasePart") then descendant56.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection94
				__L.children176 = __L.Ingame111:GetChildren()
				for k109, v263 in pairs(__L.children176) do
					local result55 = v263.Name:lower()
					result55:find("shadow")
					if v263:IsA("BasePart") then v263.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame112 = workspace.Map:FindFirstChild("Ingame")
				__L.child47 = __L.Ingame112:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child47
				__L.descendants58 = __L.child47:GetDescendants()
				for k110, v264 in pairs(__L.descendants58) do
					if v264:IsA("BasePart") then v264.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection94 then __L.connection94:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection95 = __L.child47.DescendantAdded:Connect(function(descendant57)
					if descendant57:IsA("BasePart") then descendant57.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection95
				__L.children177 = __L.Ingame112:GetChildren()
				for k111, v265 in pairs(__L.children177) do
					local result56 = v265.Name:lower()
					result56:find("shadow")
					if v265:IsA("BasePart") then v265.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame113 = workspace.Map:FindFirstChild("Ingame")
				__L.child48 = __L.Ingame113:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child48
				__L.descendants59 = __L.child48:GetDescendants()
				for k112, v266 in pairs(__L.descendants59) do
					if v266:IsA("BasePart") then v266.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection95 then __L.connection95:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection96 = __L.child48.DescendantAdded:Connect(function(descendant58)
					if descendant58:IsA("BasePart") then descendant58.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection96
				__L.children178 = __L.Ingame113:GetChildren()
				for k113, v267 in pairs(__L.children178) do
					local result57 = v267.Name:lower()
					result57:find("shadow")
					if v267:IsA("BasePart") then v267.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame114 = workspace.Map:FindFirstChild("Ingame")
				__L.child49 = __L.Ingame114:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child49
				__L.descendants60 = __L.child49:GetDescendants()
				for k114, v268 in pairs(__L.descendants60) do
					if v268:IsA("BasePart") then v268.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection96 then __L.connection96:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection97 = __L.child49.DescendantAdded:Connect(function(descendant59)
					if descendant59:IsA("BasePart") then descendant59.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection97
				__L.children179 = __L.Ingame114:GetChildren()
				for k115, v269 in pairs(__L.children179) do
					local result58 = v269.Name:lower()
					result58:find("shadow")
					if v269:IsA("BasePart") then v269.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame115 = workspace.Map:FindFirstChild("Ingame")
				__L.child50 = __L.Ingame115:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child50
				__L.descendants61 = __L.child50:GetDescendants()
				for k116, v270 in pairs(__L.descendants61) do
					if v270:IsA("BasePart") then v270.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection97 then __L.connection97:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection98 = __L.child50.DescendantAdded:Connect(function(descendant60)
					if descendant60:IsA("BasePart") then descendant60.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection98
				__L.children180 = __L.Ingame115:GetChildren()
				for k117, v271 in pairs(__L.children180) do
					local result59 = v271.Name:lower()
					result59:find("shadow")
					if v271:IsA("BasePart") then v271.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				__L.Ingame116 = workspace.Map:FindFirstChild("Ingame")
				__L.child51 = __L.Ingame116:FindFirstChild(game.Players.LocalPlayer.Name .. "Shadows")
				getgenv().antiPuddleLastFolder = __L.child51
				__L.descendants62 = __L.child51:GetDescendants()
				for k118, v272 in pairs(__L.descendants62) do
					if v272:IsA("BasePart") then v272.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if __L.connection98 then __L.connection98:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().antiPuddleConn = nil
				__L.connection99 = __L.child51.DescendantAdded:Connect(function(descendant61)
					if descendant61:IsA("BasePart") then descendant61.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end)
				getgenv().antiPuddleConn = __L.connection99
				__L.children181 = __L.Ingame116:GetChildren()
				for k119, v273 in pairs(__L.children181) do
					local result60 = v273.Name:lower()
					result60:find("shadow")
					if v273:IsA("BasePart") then v273.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
			end)
		else
			getgenv().autoDeleteShadowsTI = false
			if connection99 then connection99:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
getgenv()._antiNosPuddleEnabled = false
getgenv()._antiNosPuddleConn = nil
getgenv()._antiNosPuddleConn = nil
Tab19:AddCheckbox("VX_flag_153", {
	Text = "Walkable Nos Puddles",
	Default = false,
	Callback = function(state, arg467)
		if state then
			getgenv()._disableNosPuddleParts = function(arg468, arg469)
				getgenv()._antiNosPuddleEnabled = state
				local descendants63 = arg468:GetDescendants()
				for k120, v274 in pairs(descendants63) do
					if v274:IsA("BasePart") then v274.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				if arg468:IsA("BasePart") then arg468.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
			end
			task.spawn(function(...)
				workspace:FindFirstChild("Map")
				local Ingame117 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
				local children182 = Ingame117 and Ingame117:GetChildren()
				for k121, v275 in pairs(children182 or {}) do -- [[deobf: guard]]
					local result61 = v275.Name:lower()
					result61:match("puddle")
					local descendants64 = v275:GetDescendants()
					for k122, v276 in pairs(descendants64) do
						if v276:IsA("BasePart") then v276.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
					end
					if v275:IsA("BasePart") then v275.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
					local connection100 = v275.DescendantAdded:Connect(function(descendant62)
						if descendant62:IsA("BasePart") then descendant62.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
					end)
					getgenv()._antiNosPuddleConn = connection100
				end
				task.wait(0.5)
				workspace:FindFirstChild("Map")
				local Ingame118 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
				local children183 = Ingame118 and Ingame118:GetChildren()
				for k123, v277 in pairs(children183 or {}) do -- [[deobf: guard]]
					local result62 = v277.Name:lower()
					result62:match("puddle")
					local descendants65 = v277:GetDescendants()
					for k124, v278 in pairs(descendants65) do
						if v278:IsA("BasePart") then v278.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
					end
					if v277:IsA("BasePart") then v277.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				task.wait(0.5)
			end)
		else
			getgenv()._antiNosPuddleEnabled = false
			if connection100 then connection100:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
getgenv().VX_AutoEscapeHook = false
Tab19:AddCheckbox("VX_flag_154", {
	Text = "Auto Escape Bloodhook",
	Default = false,
	Callback = function(state, arg471)
		if state then
			getgenv().VX_AutoEscapeHook = state
			local Modules6 = ReplicatedStorage:WaitForChild("Modules")
			local Network11 = Modules6:WaitForChild("Network")
			local Network12 = Network11:WaitForChild("Network")
			Network12:WaitForChild("RemoteEvent")
			local connection101 = RunService.Heartbeat:Connect(function(deltaTime36)
			end)
		else
			getgenv().VX_AutoEscapeHook = false
			if connection101 then connection101:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
getgenv().stabAnimIds = { "100725497418533", "106086955212611" }
getgenv().crouchStabAnimIds = { "89448354637442", "115194624791339", "119434518007321" }
getgenv().shotAnimIds = {
	"133491532453922",
	"90499469533503",
	"76649505662612",
	"111313169447787",
	"73921036900313",
	"111384272984267",
	"133607163653602",
	"108014891454394",
	"131189930305001",
	"79350075778160"
}
getgenv().slashAnimIds = {
	"105614318732282",
	"121255898612475",
	"98031287364865",
	"131696603025265",
	"119462383658044",
	"77448521277146",
	"122503338277352",
	"110400453990786",
	"108773914369470"
}
getgenv().hatchetAnimIds = { "111918351126361" }
getgenv().crystalAnimIds = { "106527725058030", "139929602101552" }
getgenv().tripwireAnimIds = {
	"97339712737072",
	"123920512025716",
	"130498773808198",
	"122093265676661",
	"77968235994360",
	"86590352475117",
	"72928066575114",
	"87925353650822"
}
getgenv().tripmineAnimIds = { "134027914413177", "74613365376634", "139478062230955", "104325892922988" }
Tab19:AddCheckbox("VX_flag_155", {
	Text = "Ghost Abilities",
	Default = false,
	Callback = function(state, arg473)
		if state then
			getgenv().ghostStabber = {
		Destroy = function(arg474, arg475)
				end,
		Disable = function(arg476, arg477)
				end,
		Enable = function(arg478, arg479)
					local Humanoid12 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 8)
					local Animator8 = Humanoid12:FindFirstChildOfClass("Animator")
					if Animator8 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if Animator8 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					Animator8.AnimationPlayed:Connect(function(arg480)
					end)
					end
					end
					Players.LocalPlayer.CharacterAdded:Connect(function(character13)
						local Humanoid40 = character13:WaitForChild("Humanoid", 8)
						local Animator27 = Humanoid40:FindFirstChildOfClass("Animator")
						if Animator27 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						if Animator27 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						Animator27.AnimationPlayed:Connect(function(arg1058)
						end)
						end
						end
					end)
				end,
		IsEnabled = function(arg481, arg482)
				end
	}
			getgenv().ghostCrouchStabber = {
		Destroy = function(arg483, arg484)
				end,
		Disable = function(arg485, arg486)
				end,
		Enable = function(arg487, arg488)
					local Humanoid13 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 8)
					local Animator9 = Humanoid13:FindFirstChildOfClass("Animator")
					if Animator9 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if Animator9 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					Animator9.AnimationPlayed:Connect(function(arg489)
					end)
					end
					end
					Players.LocalPlayer.CharacterAdded:Connect(function(character14)
						local Humanoid41 = character14:WaitForChild("Humanoid", 8)
						local Animator28 = Humanoid41:FindFirstChildOfClass("Animator")
						if Animator28 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						if Animator28 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						Animator28.AnimationPlayed:Connect(function(arg1059)
						end)
						end
						end
					end)
				end,
		IsEnabled = function(arg490, arg491)
				end
	}
			getgenv().ghostSlasher = {
		Destroy = function(arg492, arg493)
				end,
		Disable = function(arg494, arg495)
				end,
		Enable = function(arg496, arg497)
					local Humanoid14 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 8)
					local Animator10 = Humanoid14:FindFirstChildOfClass("Animator")
					if Animator10 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if Animator10 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					Animator10.AnimationPlayed:Connect(function(arg498)
					end)
					end
					end
					Players.LocalPlayer.CharacterAdded:Connect(function(character15)
						local Humanoid42 = character15:WaitForChild("Humanoid", 8)
						local Animator29 = Humanoid42:FindFirstChildOfClass("Animator")
						if Animator29 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						if Animator29 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						Animator29.AnimationPlayed:Connect(function(arg1060)
						end)
						end
						end
					end)
				end,
		IsEnabled = function(arg499, arg500)
				end
	}
			getgenv().ghostHatchetBlocker = {
		Destroy = function(arg501, arg502)
				end,
		Disable = function(arg503, arg504)
				end,
		Enable = function(arg505, arg506)
					local Humanoid15 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 8)
					local Animator11 = Humanoid15:FindFirstChildOfClass("Animator")
					if Animator11 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if Animator11 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					Animator11.AnimationPlayed:Connect(function(arg507)
					end)
					end
					end
					Players.LocalPlayer.CharacterAdded:Connect(function(character16)
						local Humanoid43 = character16:WaitForChild("Humanoid", 8)
						local Animator30 = Humanoid43:FindFirstChildOfClass("Animator")
						if Animator30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						if Animator30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						Animator30.AnimationPlayed:Connect(function(arg1061)
						end)
						end
						end
					end)
				end,
		IsEnabled = function(arg508, arg509)
				end
	}
			getgenv().ghostCrystalBlocker = {
		Destroy = function(arg510, arg511)
				end,
		Disable = function(arg512, arg513)
				end,
		Enable = function(arg514, arg515)
					local Humanoid16 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 8)
					local Animator12 = Humanoid16:FindFirstChildOfClass("Animator")
					if Animator12 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if Animator12 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					Animator12.AnimationPlayed:Connect(function(arg516)
					end)
					end
					end
					Players.LocalPlayer.CharacterAdded:Connect(function(character17)
						local Humanoid44 = character17:WaitForChild("Humanoid", 8)
						local Animator31 = Humanoid44:FindFirstChildOfClass("Animator")
						if Animator31 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						if Animator31 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						Animator31.AnimationPlayed:Connect(function(arg1062)
						end)
						end
						end
					end)
				end,
		IsEnabled = function(arg517, arg518)
				end
	}
			getgenv().ghostTripwireBlocker = {
		Destroy = function(arg519, arg520)
				end,
		Disable = function(arg521, arg522)
				end,
		Enable = function(arg523, arg524)
					local Humanoid17 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 8)
					local Animator13 = Humanoid17:FindFirstChildOfClass("Animator")
					if Animator13 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if Animator13 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					Animator13.AnimationPlayed:Connect(function(arg525)
					end)
					end
					end
					Players.LocalPlayer.CharacterAdded:Connect(function(character18)
						local Humanoid45 = character18:WaitForChild("Humanoid", 8)
						local Animator32 = Humanoid45:FindFirstChildOfClass("Animator")
						if Animator32 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						if Animator32 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						Animator32.AnimationPlayed:Connect(function(arg1063)
						end)
						end
						end
					end)
				end,
		IsEnabled = function(arg526, arg527)
				end
	}
			getgenv().ghostTripmineBlocker = {
		Destroy = function(arg528, arg529)
				end,
		Disable = function(arg530, arg531)
				end,
		Enable = function(arg532, arg533)
					local Humanoid18 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 8)
					local Animator14 = Humanoid18:FindFirstChildOfClass("Animator")
					if Animator14 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if Animator14 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					Animator14.AnimationPlayed:Connect(function(arg534)
					end)
					end
					end
					Players.LocalPlayer.CharacterAdded:Connect(function(character19)
						local Humanoid46 = character19:WaitForChild("Humanoid", 8)
						local Animator33 = Humanoid46:FindFirstChildOfClass("Animator")
						if Animator33 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						if Animator33 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
						Animator33.AnimationPlayed:Connect(function(arg1064)
						end)
						end
						end
					end)
				end,
		IsEnabled = function(arg535, arg536)
				end
	}
		end
	end
})
getgenv().SkateFarm = { Connections = {}, Enabled = false, Initialized = true }
Tab19:AddCheckbox("VX_flag_156", {
	Text = "Sk8 Farm",
	Default = false,
	Callback = function(arg537, arg538)
		local __origNc -- [[reconstructed: тело хука потеряно при рендере трейса (VM отложил вызов);]]
		-- [[reconstructed: pass-through — пустое тело возвращало nil для ВСЕХ namecall-ов игры]]
		__origNc = hookmetamethod(game, "__namecall", function(arg539, arg540)
			return __origNc(arg539, arg540)
		end)
		task.wait()
		local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("Skateboard")
		task.wait()
	end
})
Players.LocalPlayer.CharacterAdded:Connect(function(character20)
end)
Tab19:AddCheckbox("VX_flag_157", {
	Text = "NOS KILL ALL FARM",
	Default = false,
	Disabled = true,
	DisabledTooltip = "Patched (For Now)",
	Risky = true,
	Callback = function(state, arg542)
	end
})
getgenv().BloxySpeed = { Cooldown = 3, Enabled = false, Level = 2 }
getgenv().BloxyPlayers = Players
getgenv().BloxyRS = ReplicatedStorage
getgenv().BloxyRunService = RunService
getgenv().BloxyLocalPlayer = Players.LocalPlayer
getgenv().BloxyAnimId = "rbxassetid://102123566838185"
getgenv().BloxyStatuses = ReplicatedStorage.Modules.Gameplay.Statuses
getgenv().BloxyStatusContainer = ReplicatedStorage.Modules.Gameplay.Statuses.StatusContainer
getgenv().BloxyStatusDisplay = ReplicatedStorage.Modules.Gameplay.Statuses.StatusDisplay
getgenv().BloxySchematics = ReplicatedStorage.Modules.Schematics
getgenv().BloxyAnimConn = nil
getgenv().BloxyHumanoid = nil
getgenv().BloxyCurrentTrack = nil
getgenv().BloxyIsBoosting = false
getgenv().BloxyIsCooldown = false
getgenv().BloxyIsWaiting = false
getgenv().BloxyRoman = {
	{ 1000, "M" },
	{ 900, "CM" },
	{ 500, "D" },
	{ 400, "CD" },
	{ 100, "C" },
	{ 90, "XC" },
	{ 50, "L" },
	{ 40, "XL" },
	{ 10, "X" },
	{ 9, "IX" },
	{ 5, "V" },
	{ 4, "IV" },
	{ 1, "I" }
}
getgenv().BloxyToRoman = function(arg543, arg544)
end
getgenv().BloxyFmtTime = function(arg545, arg546)
end
getgenv().BloxyShowStatus = function(arg547, arg548)
	local MainUI = Players.LocalPlayer.PlayerGui:FindFirstChild("MainUI")
	local StatusContainer = MainUI and MainUI:FindFirstChild("StatusContainer")
	if StatusContainer then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if StatusContainer then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	StatusContainer.Parent = MainUI
	end
	end
	StatusContainer[arg547]:Destroy()
	local clone4 = ReplicatedStorage.Modules.Gameplay.Statuses.StatusDisplay:Clone()
	clone4.Name = arg547
	clone4.Title.Text = arg547 .. " "
end
getgenv().BloxyClick = function(arg549, arg550)
	local MainUI2 = Players.LocalPlayer.PlayerGui:FindFirstChild("MainUI")
	local Backpack = MainUI2 and MainUI2:FindFirstChild("Backpack")
end
getgenv().BloxyReset = function(arg551, arg552)
	getgenv().BloxyCurrentTrack = nil
end
getgenv().BloxyOnAnim = function(arg553, arg554)
end
getgenv().BloxyStartLoop = function(arg555, arg556)
	local connection102 = RunService.Heartbeat:Connect(function(deltaTime37)
		local __hum = getgenv().BloxyHumanoid -- [[reconstructed: оригинал держал humanoid в genv]]
		if __hum then
			local tracks10 = __hum:GetPlayingAnimationTracks()
		for k145, v355 in tracks10 do
		end
		end
	end)
	getgenv().BloxyAnimConn = connection102
end
getgenv().BloxyOnCharacter = function(arg557, arg558)
	getgenv().BloxyCurrentTrack = nil
	local Humanoid19 = arg557:WaitForChild("Humanoid", 5)
	getgenv().BloxyHumanoid = Humanoid19
end
getgenv().BloxyCurrentTrack = nil
local Humanoid20 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 5)
getgenv().BloxyHumanoid = Humanoid20
Players.LocalPlayer.CharacterAdded:Connect(function(character21)
	getgenv().BloxyCurrentTrack = nil
	getgenv().BloxyHumanoid = character21:WaitForChild("Humanoid", 5) -- [[reconstructed]]
end)
Tab20:AddCheckbox("VX_flag_158", {
	Text = "Unli Bloxy Cola",
	Default = false,
	Callback = function(state, arg560)
		if state then
			getgenv().BloxyCurrentTrack = nil
			local __hum158 = Players.LocalPlayer.Character and Players.LocalPlayer.Character:WaitForChild("Humanoid", 5) -- [[reconstructed]]
			if __hum158 then getgenv().BloxyHumanoid = __hum158 end
			if getgenv().BloxyAnimConn then getgenv().BloxyAnimConn:Disconnect() end
			local connection103 = RunService.Heartbeat:Connect(function(deltaTime38)
				local __humLoop = getgenv().BloxyHumanoid -- [[reconstructed: оригинал держал humanoid в genv]]
				if __humLoop then
					local tracks11 = __humLoop:GetPlayingAnimationTracks()
					for k146, v356 in tracks11 do
					end
				end
			end)
			getgenv().BloxyAnimConn = connection103 -- [[reconstructed: присвоение стояло в else — не в той ветке]]
		else
			if getgenv().BloxyAnimConn then getgenv().BloxyAnimConn:Disconnect() end
			getgenv().BloxyAnimConn = nil
		end
	end
})
Tab20:AddSlider("VX_flag_159", {
	Text = "Speed Level",
	Default = 2,
	Max = 20,
	Min = 1,
	Rounding = 0,
	Callback = function(state, arg562)
	end
})
Tab20:AddSlider("VX_flag_160", {
	Text = "Cooldown",
	Default = 3,
	Max = 10,
	Min = 1,
	Rounding = 0,
	Callback = function(state, arg564)
	end
})
local RightTabbox5 = Tab18:AddRightTabbox("locate-fixed")
local Tab23 = RightTabbox5:AddTab("Hitbox")
local Tab24 = RightTabbox5:AddTab("Settings")
task.spawn(function(...)
	local Modules7 = ReplicatedStorage:WaitForChild("Modules", 10)
	local Network13 = Modules7:WaitForChild("Network", 10)
	local Network14 = Network13:WaitForChild("Network", 10)
	local RemoteEvent3 = Network14:WaitForChild("RemoteEvent", 10)
	getgenv()._VX_RemoteEvent = RemoteEvent3 -- [[deobf: проброс через genv — колбэк вне spawn]]
end)
Tab23:AddCheckbox("VX_flag_161", {
	Text = "Hitbox Expander",
	Default = false,
	Callback = function(state, arg566)
		if state then
			local RemoteEvent3 = getgenv()._VX_RemoteEvent -- [[deobf: из spawn выше]]
			if not RemoteEvent3 then return end -- [[deobf: guard]]
			local connection104 = RemoteEvent3.OnClientEvent:Connect(function(arg567)
			end)
		else
			if connection104 then connection104:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
Tab23:AddSlider("VX_flag_162", {
	Text = "Hitbox Studs",
	Default = 50,
	Max = 500,
	Min = 0,
	Rounding = 0,
	Callback = function(state, arg569)
	end
})
Tab24:AddDropdown("VX_flag_163", {
	Text = "Lunge Direction",
	Default = "Look",
	Values = { "Look", "Nearest Survivor" },
	Callback = function(state, arg571)
	end
})
Tab24:AddDropdown("VX_flag_164", {
	Text = "Target Part",
	Default = "HumanoidRootPart",
	Values = { "HumanoidRootPart", "Head", "Torso" },
	Callback = function(state, arg573)
	end
})
Tab24:AddSlider("VX_flag_165", {
	Text = "Hitbox Prediction",
	Default = 0,
	Max = 100,
	Min = 0,
	Rounding = 0,
	Callback = function(state, arg575)
	end
})
Tab24:AddSlider("VX_flag_166", {
	Text = "Hitbox Strength",
	Default = 1,
	Max = 3,
	Min = 0.5,
	Rounding = 2,
	Callback = function(state, arg577)
	end
})
local Tab25 = Window:AddTab("Auto Block", "shield", "auto block features")
local LeftTabbox5 = Tab25:AddLeftTabbox()
local Tab26 = LeftTabbox5:AddTab("Auto-Block")
local Tab27 = LeftTabbox5:AddTab("Settings")
local Tab28 = LeftTabbox5:AddTab("Delay")
local RightTabbox6 = Tab25:AddRightTabbox()
local Tab29 = RightTabbox6:AddTab("Other")
local Tab30 = RightTabbox6:AddTab("Techs")
getgenv().autoBlockMode = "Normal"
getgenv().autoBlockEnabled = false
Tab26:AddCheckbox("VX_flag_167", {
	Text = "Auto Block",
	Default = false,
	Callback = function(state, arg579)
		if state then
			getgenv().autoBlockEnabled = state
		end
	end
})
Tab26:AddCheckbox("VX_flag_168", {
	Text = "Auto Punch",
	Default = false,
	Callback = function(arg580, arg581)
		getgenv().autoPunchEnabled = arg580
	end
})
Tab26:AddDivider({ MarginBottom = 2, MarginTop = 2 })
Tab26:AddSlider("VX_flag_169", {
	Text = "Detection Range",
	Default = 12,
	Max = 100,
	Min = 1,
	Rounding = 1,
	Callback = function(state, arg583)
		if state then
			getgenv().baseDetectionRange = tonumber(state)
			getgenv().detectionRange = tonumber(state)
		end
	end
})
getgenv().showAutoBlockKillerRadius = false
Tab26:AddCheckbox("VX_flag_170", {
	Text = "Show Detection Range",
	Default = false,
	Callback = function(arg584, arg585)
		getgenv().showAutoBlockKillerRadius = arg584
	end
})
getgenv().showPredictedHitbox = false
Tab26:AddCheckbox("VX_flag_171", {
	Text = "Show Predicted Hitbox",
	Default = false,
	Callback = function(arg586, arg587)
		getgenv().showPredictedHitbox = arg586
	end
})
Tab28:AddSlider("VX_flag_172", {
	Text = "Punch Delay",
	Default = 0,
	Max = 0.5,
	Min = 0,
	Rounding = 2,
	Callback = function(arg588, arg589)
	end
})
getgenv().trigger_ignore_window = nil
Tab28:AddSlider("VX_flag_173", {
	Text = "Ignore Animation/Sound",
	Default = 0.5,
	Max = 2,
	Min = 0,
	Rounding = 2,
	Callback = function(state, arg591)
		if state then
			getgenv().trigger_ignore_window = tonumber(state)
		end
	end
})
Tab28:AddDivider({ MarginBottom = 2, MarginTop = 2 })
Tab28:AddLabel("Per-Killer Block Delay (0 = no delay)", true)
Tab28:AddSlider("VX_flag_174", {
	Text = "Slasher Delay",
	Default = 0,
	Max = 0.5,
	Min = 0,
	Rounding = 2,
	Callback = function(arg592, arg593)
	end
})
Tab28:AddSlider("VX_flag_175", {
	Text = "c00lkidd Delay",
	Default = 0,
	Max = 0.5,
	Min = 0,
	Rounding = 2,
	Callback = function(arg594, arg595)
	end
})
Tab28:AddSlider("VX_flag_176", {
	Text = "JohnDoe Delay",
	Default = 0,
	Max = 0.5,
	Min = 0,
	Rounding = 2,
	Callback = function(arg596, arg597)
	end
})
Tab28:AddSlider("VX_flag_177", {
	Text = "1x1x1x1 Delay",
	Default = 0,
	Max = 0.5,
	Min = 0,
	Rounding = 2,
	Callback = function(arg598, arg599)
	end
})
Tab28:AddSlider("VX_flag_178", {
	Text = "Noli Delay",
	Default = 0,
	Max = 0.5,
	Min = 0,
	Rounding = 2,
	Callback = function(arg600, arg601)
	end
})
Tab28:AddSlider("VX_flag_179", {
	Text = "Nosferatu Delay",
	Default = 0,
	Max = 0.5,
	Min = 0,
	Rounding = 2,
	Callback = function(arg602, arg603)
	end
})
Tab28:AddSlider("VX_flag_180", {
	Text = "Azure Delay",
	Default = 0,
	Max = 0.5,
	Min = 0,
	Rounding = 2,
	Callback = function(arg604, arg605)
	end
})
Tab28:AddSlider("VX_flag_181", {
	Text = "Sixer Delay",
	Default = 0,
	Max = 0.5,
	Min = 0,
	Rounding = 2,
	Callback = function(arg606, arg607)
	end
})
getgenv().autoBlockRangeMode = false
Tab27:AddDropdown("VX_flag_182", {
	Text = "Range Mode",
	Default = "Inside/Outside",
	Values = { "Inside", "Inside/Outside" },
	Callback = function(state, arg609)
		if state then
			getgenv().autoBlockRangeMode = state
		end
	end
})
Tab27:AddDivider({ MarginBottom = 2, MarginTop = 2 })
getgenv().hitboxDraggingEnabled = false
Tab30:AddCheckbox("VX_flag_183", {
	Text = "HDT",
	Default = false,
	Callback = function(arg610, arg611)
		getgenv().hitboxDraggingEnabled = arg610
	end
})
Tab30:AddInput("VX_flag_184", {
	Text = "HDT Speed",
	Placeholder = "5.6",
	Callback = function(arg612, arg613)
	end
})
Tab30:AddInput("VX_flag_185", {
	Text = "HDT Delay",
	Placeholder = "0.3",
	Callback = function(arg614, arg615)
	end
})
Tab30:AddInput("VX_flag_186", {
	Text = "HDT Detection Range",
	Placeholder = "6",
	Callback = function(arg616, arg617)
	end
})
getgenv().verifyFacingCheck = false
Tab27:AddCheckbox("VX_flag_187", {
	Text = "Facing Check",
	Default = false,
	Callback = function(state, arg619)
		if state then
			getgenv().verifyFacingCheck = state
		end
	end
})
getgenv().showVisionRange = false
Tab27:AddCheckbox("VX_flag_188", {
	Text = "Show Facing Check",
	Default = false,
	Callback = function(arg620, arg621)
		getgenv().showVisionRange = arg620
	end
})
getgenv().visionRange = nil
Tab27:AddSlider("VX_flag_189", {
	Text = "Vision Range",
	Default = 15,
	Max = 30,
	Min = 5,
	Rounding = 0,
	Callback = function(state, arg623)
		if state then
			getgenv().visionRange = tonumber(state)
		end
	end
})
getgenv().visionAngle = nil
Tab27:AddSlider("VX_flag_190", {
	Text = "Vision Angle",
	Default = 90,
	Max = 180,
	Min = 30,
	Rounding = 0,
	Callback = function(state, arg625)
		if state then
			getgenv().visionAngle = tonumber(state)
		end
	end
})
Tab27:AddDivider({ MarginBottom = 2, MarginTop = 2 })
getgenv().wallCheckESPEnabled = false
getgenv().wallCheckESPConn = nil
getgenv().wallCheckBeam = nil
getgenv().wallCheckBeamA0 = nil
getgenv().wallCheckBeamA1 = nil
getgenv().wallCheckSavedBrickColor = nil
getgenv().wallCheckSelectMode = false
getgenv().wallCheckMouseConn = nil
getgenv().isWallBlocking = function(arg626, arg627)
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
end
getgenv().createWallCheckBeam = function(arg628, arg629)
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
end
getgenv().destroyWallCheckBeam = function(arg630, arg631)
end
getgenv().startWallCheckESP = function(arg632, arg633)
	local connection105 = RunService.RenderStepped:Connect(function(deltaTime39)
	end)
	getgenv().wallCheckESPConn = connection105
end
getgenv().wallCheckESPConn = nil
getgenv().stopWallCheckESP = function(arg634, arg635)
	if connection105 then connection105:Disconnect() end -- [[deobf: guard — определение в другой области]]
end
getgenv().autoBlockLOS = false
Tab27:AddCheckbox("VX_flag_191", {
	Text = "Wall Check",
	Default = false,
	Callback = function(state, arg637)
		if state then
			getgenv().autoBlockLOS = state
		end
	end
})
getgenv().wallCheckESPConn = nil
Tab27:AddCheckbox("VX_flag_192", {
	Text = "Wall Check ESP",
	Default = false,
	Callback = function(state, arg639)
		if state then
			getgenv().wallCheckESPEnabled = state
			local connection106 = RunService.RenderStepped:Connect(function(deltaTime40)
			end)
			getgenv().wallCheckESPConn = connection106
		else
			getgenv().wallCheckESPEnabled = false
			if connection106 then connection106:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
Tab27:AddDivider({ MarginBottom = 2, MarginTop = 2 })
Tab27:AddLabel("<font color=\"#add8e6\">If the killer is higher than your character and uses M1 it wont block so you wont waste your ability</font>", true)
getgenv().elevationCheckEnabled = false
Tab27:AddCheckbox("VX_flag_193", {
	Text = "High Elevation Check",
	Default = false,
	Callback = function(state, arg641)
		if state then
			getgenv().elevationCheckEnabled = state
		end
	end
})
Tab27:AddDivider({ MarginBottom = 2, MarginTop = 2 })
getgenv().hitboxPredictionEnabled = false
Tab27:AddCheckbox("VX_flag_194", {
	Text = "Hitbox Prediction",
	Default = true,
	Callback = function(state, arg643)
		if state then
			getgenv().hitboxPredictionEnabled = state
		end
	end
})
getgenv().flickDetectionEnabled = false
Tab27:AddCheckbox("VX_flag_195", {
	Text = "Flick Detection",
	Default = true,
	Callback = function(arg644, arg645)
		getgenv().flickDetectionEnabled = arg644
	end
})
getgenv().flick_angle_threshold = nil
Tab27:AddSlider("VX_flag_196", {
	Text = "Flick Angle Threshold",
	Default = 90,
	Max = 170,
	Min = 30,
	Rounding = 0,
	Callback = function(state, arg647)
		if state then
			getgenv().flick_angle_threshold = tonumber(state)
		end
	end
})
getgenv().dynamicDelayEnabled = false
Tab27:AddCheckbox("VX_flag_197", {
	Text = "Dynamic Delay",
	Default = true,
	Callback = function(state, arg649)
		if state then
			getgenv().dynamicDelayEnabled = state
		end
	end
})
getgenv().blockM1Only = false
Tab27:AddCheckbox("VX_flag_198", {
	Text = "Block M1 Only",
	Default = false,
	Callback = function(state, arg651)
		if state then
			getgenv().blockM1Only = state
		end
	end
})
getgenv().blockReadyCheckEnabled = false
Tab27:AddCheckbox("VX_flag_199", {
	Text = "Block Ready Check",
	Default = true,
	Callback = function(state, arg653)
		if state then
			getgenv().blockReadyCheckEnabled = state
		end
	end
})
Tab27:AddDivider({ MarginBottom = 2, MarginTop = 2 })
getgenv().antiBaitWalkEnabled = false
Tab27:AddCheckbox("VX_flag_200", {
	Text = "Zone if killer walks",
	Default = false,
	Callback = function(state, arg655)
		if state then
			getgenv().antiBaitWalkEnabled = state
		end
	end
})
getgenv().antiBaitIdleEnabled = false
Tab27:AddCheckbox("VX_flag_201", {
	Text = "Zone if killer stands",
	Default = false,
	Callback = function(state, arg657)
		if state then
			getgenv().antiBaitIdleEnabled = state
		end
	end
})
getgenv().antiBaitIdleRange = nil
Tab27:AddSlider("VX_flag_202", {
	Text = "Stand Zone Range",
	Default = 18,
	Max = 100,
	Min = 1,
	Rounding = 0,
	Callback = function(state, arg659)
		if state then
			getgenv().antiBaitIdleRange = tonumber(state)
		end
	end
})
getgenv().antiBaitWalkRange = nil
Tab27:AddSlider("VX_flag_203", {
	Text = "Walk Zone Range",
	Default = 18,
	Max = 100,
	Min = 1,
	Rounding = 0,
	Callback = function(state, arg661)
		if state then
			getgenv().antiBaitWalkRange = tonumber(state)
		end
	end
})
getgenv().blockAnimIds = {
	"98105697395689",
	"115706752305794",
	"72182155407310",
	"95802026624883",
	"96959123077498",
	"72722244508749",
	"138407964761603",
	"117173212095661"
}
getgenv().punchAnimIds = {
	"108911997126897",
	"82137285150006",
	"129843313690921",
	"140703210927645",
	"136007065400978",
	"86096387000557",
	"87259391926321",
	"86709774283672",
	"72685103823181"
}
getgenv().ghostBlocker = {
	AddId = function(arg662, arg663)
		getgenv().createAnimationBlocker = function(arg664, arg665)
			for i155, v281 in ipairs(arg664) do
			end
		end
		tostring(arg662):match("%d+")
	end,
	Destroy = function(arg666, arg667)
	end,
	Disable = function(arg668, arg669)
	end,
	Enable = function(arg670, arg671)
		local Humanoid22 = player.Character:WaitForChild("Humanoid", 8)
		local Animator15 = Humanoid22:FindFirstChildOfClass("Animator")
		local connection107 = Animator15 and Animator15.AnimationPlayed:Connect(function(arg672)
		end)
		local tracks2 = Animator15 and Animator15:GetPlayingAnimationTracks()
		for i156, v282 in ipairs(tracks2 or {}) do -- [[deobf: guard]]
			tostring(v282.Animation.AnimationId):match("%d+")
			task.defer(function(...)
			end)
		end
		local attributeChangedSignal2 = player.Character:GetAttributeChangedSignal("SkinName")
		local connection108 = attributeChangedSignal2:Connect(function(arg673)
			task.wait(0.3)
			if connection111 then connection111:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection112 then connection112:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid48 = player.Character:WaitForChild("Humanoid", 8)
			local Animator34 = Humanoid48:FindFirstChildOfClass("Animator")
			local connection141 = Animator34 and Animator34.AnimationPlayed:Connect(function(arg1065)
			end)
			local attributeChangedSignal8 = player.Character:GetAttributeChangedSignal("SkinName")
			local connection142 = attributeChangedSignal8:Connect(function(arg1066)
				task.wait(0.3)
				if connection149 then connection149:Disconnect() end -- [[deobf: guard — определение в другой области]]
				if connection150 then connection150:Disconnect() end -- [[deobf: guard — определение в другой области]]
				local Humanoid58 = player.Character:WaitForChild("Humanoid", 8)
				local Animator42 = Humanoid58:FindFirstChildOfClass("Animator")
				local connection153 = Animator42 and Animator42.AnimationPlayed:Connect(function(arg1085)
				end)
				local attributeChangedSignal15 = player.Character:GetAttributeChangedSignal("SkinName")
				local connection154 = attributeChangedSignal15:Connect(function(arg1086)
					task.wait(0.3)
					if connection161 then connection161:Disconnect() end -- [[deobf: guard — определение в другой области]]
					if connection162 then connection162:Disconnect() end -- [[deobf: guard — определение в другой области]]
					local Humanoid64 = player.Character:WaitForChild("Humanoid", 8)
					local Animator48 = Humanoid64:FindFirstChildOfClass("Animator")
					local connection165 = Animator48 and Animator48.AnimationPlayed:Connect(function(arg1099)
					end)
					local attributeChangedSignal21 = player.Character:GetAttributeChangedSignal("SkinName")
					local connection166 = attributeChangedSignal21:Connect(function(arg1100)
						task.wait(0.3)
						if connection173 then connection173:Disconnect() end -- [[deobf: guard — определение в другой области]]
						if connection174 then connection174:Disconnect() end -- [[deobf: guard — определение в другой области]]
						local Humanoid70 = player.Character:WaitForChild("Humanoid", 8)
						local Animator54 = Humanoid70:FindFirstChildOfClass("Animator")
						local connection177 = Animator54 and Animator54.AnimationPlayed:Connect(function(arg1112)
						end)
						local attributeChangedSignal27 = player.Character:GetAttributeChangedSignal("SkinName")
						local connection178 = attributeChangedSignal27:Connect(function(arg1113)
							task.wait(0.3)
							if connection185 then connection185:Disconnect() end -- [[deobf: guard — определение в другой области]]
							if connection186 then connection186:Disconnect() end -- [[deobf: guard — определение в другой области]]
							local Humanoid76 = player.Character:WaitForChild("Humanoid", 8)
							local Animator60 = Humanoid76:FindFirstChildOfClass("Animator")
							local connection189 = Animator60 and Animator60.AnimationPlayed:Connect(function(arg1125)
							end)
							local attributeChangedSignal33 = player.Character:GetAttributeChangedSignal("SkinName")
							local connection190 = attributeChangedSignal33:Connect(function(arg1126)
								task.wait(0.3)
								if connection197 then connection197:Disconnect() end -- [[deobf: guard — определение в другой области]]
								if connection198 then connection198:Disconnect() end -- [[deobf: guard — определение в другой области]]
								local Humanoid82 = player.Character:WaitForChild("Humanoid", 8)
								local Animator66 = Humanoid82:FindFirstChildOfClass("Animator")
								local connection201 = Animator66 and Animator66.AnimationPlayed:Connect(function(arg1138)
								end)
								local attributeChangedSignal39 = player.Character:GetAttributeChangedSignal("SkinName")
								local connection202 = attributeChangedSignal39:Connect(function(arg1139)
									task.wait(0.3)
									if connection209 then connection209:Disconnect() end -- [[deobf: guard — определение в другой области]]
									if connection210 then connection210:Disconnect() end -- [[deobf: guard — определение в другой области]]
									local Humanoid88 = player.Character:WaitForChild("Humanoid", 8)
									local Animator72 = Humanoid88:FindFirstChildOfClass("Animator")
									local connection213 = Animator72 and Animator72.AnimationPlayed:Connect(function(arg1151)
									end)
									local attributeChangedSignal45 = player.Character:GetAttributeChangedSignal("SkinName")
									local connection214 = attributeChangedSignal45:Connect(function(arg1152)
										task.wait(0.3)
										if connection221 then connection221:Disconnect() end -- [[deobf: guard — определение в другой области]]
										if connection222 then connection222:Disconnect() end -- [[deobf: guard — определение в другой области]]
										local Humanoid94 = player.Character:WaitForChild("Humanoid", 8)
										local Animator78 = Humanoid94:FindFirstChildOfClass("Animator")
										local connection225 = Animator78 and Animator78.AnimationPlayed:Connect(function(arg1164)
										end)
										local attributeChangedSignal51 = player.Character:GetAttributeChangedSignal("SkinName")
										local connection226 = attributeChangedSignal51:Connect(function(arg1165)
											task.wait(0.3)
											if connection233 then connection233:Disconnect() end -- [[deobf: guard — определение в другой области]]
											if connection234 then connection234:Disconnect() end -- [[deobf: guard — определение в другой области]]
											local Humanoid100 = player.Character:WaitForChild("Humanoid", 8)
											local Animator84 = Humanoid100:FindFirstChildOfClass("Animator")
											local connection237 = Animator84 and Animator84.AnimationPlayed:Connect(function(arg1177)
											end)
											local attributeChangedSignal57 = player.Character:GetAttributeChangedSignal("SkinName")
											local connection238 = attributeChangedSignal57:Connect(function(arg1178)
												task.wait(0.3)
												if connection245 then connection245:Disconnect() end -- [[deobf: guard — определение в другой области]]
												if connection246 then connection246:Disconnect() end -- [[deobf: guard — определение в другой области]]
												local Humanoid106 = player.Character:WaitForChild("Humanoid", 8)
												local Animator90 = Humanoid106:FindFirstChildOfClass("Animator")
												local connection249 = Animator90 and Animator90.AnimationPlayed:Connect(function(arg1190)
												end)
												local attributeChangedSignal63 = player.Character:GetAttributeChangedSignal("SkinName")
												local connection250 = attributeChangedSignal63:Connect(function(arg1191)
													task.wait(0.3)
													if connection257 then connection257:Disconnect() end -- [[deobf: guard — определение в другой области]]
													if connection258 then connection258:Disconnect() end -- [[deobf: guard — определение в другой области]]
													local Humanoid112 = player.Character:WaitForChild("Humanoid", 8)
													local Animator96 = Humanoid112:FindFirstChildOfClass("Animator")
													local connection261 = Animator96 and Animator96.AnimationPlayed:Connect(function(arg1203)
													end)
													local attributeChangedSignal69 = player.Character:GetAttributeChangedSignal("SkinName")
													local connection262 = attributeChangedSignal69:Connect(function(arg1204)
														task.wait(0.3)
														if connection269 then connection269:Disconnect() end -- [[deobf: guard — определение в другой области]]
														if connection270 then connection270:Disconnect() end -- [[deobf: guard — определение в другой области]]
														local Humanoid118 = player.Character:WaitForChild("Humanoid", 8)
														local Animator102 = Humanoid118:FindFirstChildOfClass("Animator")
														local connection273 = Animator102 and Animator102.AnimationPlayed:Connect(function(arg1216)
														end)
														local attributeChangedSignal75 = player.Character:GetAttributeChangedSignal("SkinName")
														local connection274 = attributeChangedSignal75:Connect(function(arg1217)
															task.wait(0.3)
															if connection281 then connection281:Disconnect() end -- [[deobf: guard — определение в другой области]]
															if connection282 then connection282:Disconnect() end -- [[deobf: guard — определение в другой области]]
															local Humanoid124 = player.Character:WaitForChild("Humanoid", 8)
															local Animator108 = Humanoid124:FindFirstChildOfClass("Animator")
															local connection285 = Animator108 and Animator108.AnimationPlayed:Connect(function(arg1229)
															end)
															local attributeChangedSignal81 = player.Character:GetAttributeChangedSignal("SkinName")
															local connection286 = attributeChangedSignal81:Connect(function(arg1230)
																task.wait(0.3)
																if connection293 then connection293:Disconnect() end -- [[deobf: guard — определение в другой области]]
																if connection294 then connection294:Disconnect() end -- [[deobf: guard — определение в другой области]]
																local Humanoid130 = player.Character:WaitForChild("Humanoid", 8)
																local Animator114 = Humanoid130:FindFirstChildOfClass("Animator")
																local connection297 = Animator114 and Animator114.AnimationPlayed:Connect(function(arg1242)
																end)
																local attributeChangedSignal87 = player.Character:GetAttributeChangedSignal("SkinName")
																local connection298 = attributeChangedSignal87:Connect(function(arg1243)
																	task.wait(0.3)
																	if connection305 then connection305:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	if connection306 then connection306:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	local Humanoid136 = player.Character:WaitForChild("Humanoid", 8)
																	local Animator120 = Humanoid136:FindFirstChildOfClass("Animator")
																	local connection309 = Animator120 and Animator120.AnimationPlayed:Connect(function(arg1255)
																	end)
																	local attributeChangedSignal93 = player.Character:GetAttributeChangedSignal("SkinName")
																	local connection310 = attributeChangedSignal93:Connect(function(arg1256)
																		task.wait(0.3)
																		if connection317 then connection317:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		if connection318 then connection318:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		local Humanoid142 = player.Character:WaitForChild("Humanoid", 8)
																		local Animator126 = Humanoid142:FindFirstChildOfClass("Animator")
																		local connection321 = Animator126 and Animator126.AnimationPlayed:Connect(function(arg1268)
																		end)
																		local attributeChangedSignal99 = player.Character:GetAttributeChangedSignal("SkinName")
																		local connection322 = attributeChangedSignal99:Connect(function(arg1269)
																			task.wait(0.3)
																			if connection329 then connection329:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			if connection330 then connection330:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			local Humanoid148 = player.Character:WaitForChild("Humanoid", 8)
																			local Animator132 = Humanoid148:FindFirstChildOfClass("Animator")
																			local connection333 = Animator132 and Animator132.AnimationPlayed:Connect(function(arg1281)
																			end)
																			local attributeChangedSignal105 = player.Character:GetAttributeChangedSignal("SkinName")
																			local connection334 = attributeChangedSignal105:Connect(function(arg1282)
			task.wait(0.3)
			if connection341 then connection341:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection342 then connection342:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid154 = player.Character:WaitForChild("Humanoid", 8)
			local Animator138 = Humanoid154:FindFirstChildOfClass("Animator")
			local connection345 = Animator138 and Animator138.AnimationPlayed:Connect(function(arg1294)
			end)
			local attributeChangedSignal111 = player.Character:GetAttributeChangedSignal("SkinName")
			-- [deobf: unrolled loop/chain truncated: 1007 more lines of repeated iterations removed]
																			end)
																		end)
																	end)
																end)
															end)
														end)
													end)
												end)
											end)
										end)
									end)
								end)
							end)
						end)
					end)
				end)
			end)
		end)
		player.CharacterAdded:Connect(function(character22)
			task.wait(0.3)
			if connection141 then connection141:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection142 then connection142:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid49 = character22:WaitForChild("Humanoid", 8)
			local Animator35 = Humanoid49:FindFirstChildOfClass("Animator")
			local connection143 = Animator35 and Animator35.AnimationPlayed:Connect(function(arg1067)
			end)
			local attributeChangedSignal9 = character22:GetAttributeChangedSignal("SkinName")
			local connection144 = attributeChangedSignal9:Connect(function(arg1068)
				task.wait(0.3)
				if connection153 then connection153:Disconnect() end -- [[deobf: guard — определение в другой области]]
				if connection154 then connection154:Disconnect() end -- [[deobf: guard — определение в другой области]]
				local Humanoid59 = character22:WaitForChild("Humanoid", 8)
				local Animator43 = Humanoid59:FindFirstChildOfClass("Animator")
				local connection155 = Animator43 and Animator43.AnimationPlayed:Connect(function(arg1087)
				end)
				local attributeChangedSignal16 = character22:GetAttributeChangedSignal("SkinName")
				local connection156 = attributeChangedSignal16:Connect(function(arg1088)
					task.wait(0.3)
					if connection165 then connection165:Disconnect() end -- [[deobf: guard — определение в другой области]]
					if connection166 then connection166:Disconnect() end -- [[deobf: guard — определение в другой области]]
					local Humanoid65 = character22:WaitForChild("Humanoid", 8)
					local Animator49 = Humanoid65:FindFirstChildOfClass("Animator")
					local connection167 = Animator49 and Animator49.AnimationPlayed:Connect(function(arg1101)
					end)
					local attributeChangedSignal22 = character22:GetAttributeChangedSignal("SkinName")
					local connection168 = attributeChangedSignal22:Connect(function(arg1102)
						task.wait(0.3)
						if connection177 then connection177:Disconnect() end -- [[deobf: guard — определение в другой области]]
						if connection178 then connection178:Disconnect() end -- [[deobf: guard — определение в другой области]]
						local Humanoid71 = character22:WaitForChild("Humanoid", 8)
						local Animator55 = Humanoid71:FindFirstChildOfClass("Animator")
						local connection179 = Animator55 and Animator55.AnimationPlayed:Connect(function(arg1114)
						end)
						local attributeChangedSignal28 = character22:GetAttributeChangedSignal("SkinName")
						local connection180 = attributeChangedSignal28:Connect(function(arg1115)
							task.wait(0.3)
							if connection189 then connection189:Disconnect() end -- [[deobf: guard — определение в другой области]]
							if connection190 then connection190:Disconnect() end -- [[deobf: guard — определение в другой области]]
							local Humanoid77 = character22:WaitForChild("Humanoid", 8)
							local Animator61 = Humanoid77:FindFirstChildOfClass("Animator")
							local connection191 = Animator61 and Animator61.AnimationPlayed:Connect(function(arg1127)
							end)
							local attributeChangedSignal34 = character22:GetAttributeChangedSignal("SkinName")
							local connection192 = attributeChangedSignal34:Connect(function(arg1128)
								task.wait(0.3)
								if connection201 then connection201:Disconnect() end -- [[deobf: guard — определение в другой области]]
								if connection202 then connection202:Disconnect() end -- [[deobf: guard — определение в другой области]]
								local Humanoid83 = character22:WaitForChild("Humanoid", 8)
								local Animator67 = Humanoid83:FindFirstChildOfClass("Animator")
								local connection203 = Animator67 and Animator67.AnimationPlayed:Connect(function(arg1140)
								end)
								local attributeChangedSignal40 = character22:GetAttributeChangedSignal("SkinName")
								local connection204 = attributeChangedSignal40:Connect(function(arg1141)
									task.wait(0.3)
									if connection213 then connection213:Disconnect() end -- [[deobf: guard — определение в другой области]]
									if connection214 then connection214:Disconnect() end -- [[deobf: guard — определение в другой области]]
									local Humanoid89 = character22:WaitForChild("Humanoid", 8)
									local Animator73 = Humanoid89:FindFirstChildOfClass("Animator")
									local connection215 = Animator73 and Animator73.AnimationPlayed:Connect(function(arg1153)
									end)
									local attributeChangedSignal46 = character22:GetAttributeChangedSignal("SkinName")
									local connection216 = attributeChangedSignal46:Connect(function(arg1154)
										task.wait(0.3)
										if connection225 then connection225:Disconnect() end -- [[deobf: guard — определение в другой области]]
										if connection226 then connection226:Disconnect() end -- [[deobf: guard — определение в другой области]]
										local Humanoid95 = character22:WaitForChild("Humanoid", 8)
										local Animator79 = Humanoid95:FindFirstChildOfClass("Animator")
										local connection227 = Animator79 and Animator79.AnimationPlayed:Connect(function(arg1166)
										end)
										local attributeChangedSignal52 = character22:GetAttributeChangedSignal("SkinName")
										local connection228 = attributeChangedSignal52:Connect(function(arg1167)
											task.wait(0.3)
											if connection237 then connection237:Disconnect() end -- [[deobf: guard — определение в другой области]]
											if connection238 then connection238:Disconnect() end -- [[deobf: guard — определение в другой области]]
											local Humanoid101 = character22:WaitForChild("Humanoid", 8)
											local Animator85 = Humanoid101:FindFirstChildOfClass("Animator")
											local connection239 = Animator85 and Animator85.AnimationPlayed:Connect(function(arg1179)
											end)
											local attributeChangedSignal58 = character22:GetAttributeChangedSignal("SkinName")
											local connection240 = attributeChangedSignal58:Connect(function(arg1180)
												task.wait(0.3)
												if connection249 then connection249:Disconnect() end -- [[deobf: guard — определение в другой области]]
												if connection250 then connection250:Disconnect() end -- [[deobf: guard — определение в другой области]]
												local Humanoid107 = character22:WaitForChild("Humanoid", 8)
												local Animator91 = Humanoid107:FindFirstChildOfClass("Animator")
												local connection251 = Animator91 and Animator91.AnimationPlayed:Connect(function(arg1192)
												end)
												local attributeChangedSignal64 = character22:GetAttributeChangedSignal("SkinName")
												local connection252 = attributeChangedSignal64:Connect(function(arg1193)
													task.wait(0.3)
													if connection261 then connection261:Disconnect() end -- [[deobf: guard — определение в другой области]]
													if connection262 then connection262:Disconnect() end -- [[deobf: guard — определение в другой области]]
													local Humanoid113 = character22:WaitForChild("Humanoid", 8)
													local Animator97 = Humanoid113:FindFirstChildOfClass("Animator")
													local connection263 = Animator97 and Animator97.AnimationPlayed:Connect(function(arg1205)
													end)
													local attributeChangedSignal70 = character22:GetAttributeChangedSignal("SkinName")
													local connection264 = attributeChangedSignal70:Connect(function(arg1206)
														task.wait(0.3)
														if connection273 then connection273:Disconnect() end -- [[deobf: guard — определение в другой области]]
														if connection274 then connection274:Disconnect() end -- [[deobf: guard — определение в другой области]]
														local Humanoid119 = character22:WaitForChild("Humanoid", 8)
														local Animator103 = Humanoid119:FindFirstChildOfClass("Animator")
														local connection275 = Animator103 and Animator103.AnimationPlayed:Connect(function(arg1218)
														end)
														local attributeChangedSignal76 = character22:GetAttributeChangedSignal("SkinName")
														local connection276 = attributeChangedSignal76:Connect(function(arg1219)
															task.wait(0.3)
															if connection285 then connection285:Disconnect() end -- [[deobf: guard — определение в другой области]]
															if connection286 then connection286:Disconnect() end -- [[deobf: guard — определение в другой области]]
															local Humanoid125 = character22:WaitForChild("Humanoid", 8)
															local Animator109 = Humanoid125:FindFirstChildOfClass("Animator")
															local connection287 = Animator109 and Animator109.AnimationPlayed:Connect(function(arg1231)
															end)
															local attributeChangedSignal82 = character22:GetAttributeChangedSignal("SkinName")
															local connection288 = attributeChangedSignal82:Connect(function(arg1232)
																task.wait(0.3)
																if connection297 then connection297:Disconnect() end -- [[deobf: guard — определение в другой области]]
																if connection298 then connection298:Disconnect() end -- [[deobf: guard — определение в другой области]]
																local Humanoid131 = character22:WaitForChild("Humanoid", 8)
																local Animator115 = Humanoid131:FindFirstChildOfClass("Animator")
																local connection299 = Animator115 and Animator115.AnimationPlayed:Connect(function(arg1244)
																end)
																local attributeChangedSignal88 = character22:GetAttributeChangedSignal("SkinName")
																local connection300 = attributeChangedSignal88:Connect(function(arg1245)
																	task.wait(0.3)
																	if connection309 then connection309:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	if connection310 then connection310:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	local Humanoid137 = character22:WaitForChild("Humanoid", 8)
																	local Animator121 = Humanoid137:FindFirstChildOfClass("Animator")
																	local connection311 = Animator121 and Animator121.AnimationPlayed:Connect(function(arg1257)
																	end)
																	local attributeChangedSignal94 = character22:GetAttributeChangedSignal("SkinName")
																	local connection312 = attributeChangedSignal94:Connect(function(arg1258)
																		task.wait(0.3)
																		if connection321 then connection321:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		if connection322 then connection322:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		local Humanoid143 = character22:WaitForChild("Humanoid", 8)
																		local Animator127 = Humanoid143:FindFirstChildOfClass("Animator")
																		local connection323 = Animator127 and Animator127.AnimationPlayed:Connect(function(arg1270)
																		end)
																		local attributeChangedSignal100 = character22:GetAttributeChangedSignal("SkinName")
																		local connection324 = attributeChangedSignal100:Connect(function(arg1271)
																			task.wait(0.3)
																			if connection333 then connection333:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			if connection334 then connection334:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			local Humanoid149 = character22:WaitForChild("Humanoid", 8)
																			local Animator133 = Humanoid149:FindFirstChildOfClass("Animator")
																			local connection335 = Animator133 and Animator133.AnimationPlayed:Connect(function(arg1283)
																			end)
																			local attributeChangedSignal106 = character22:GetAttributeChangedSignal("SkinName")
																			local connection336 = attributeChangedSignal106:Connect(function(arg1284)
			task.wait(0.3)
			if connection345 then connection345:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection346 then connection346:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid155 = character22:WaitForChild("Humanoid", 8)
			local Animator139 = Humanoid155:FindFirstChildOfClass("Animator")
			local connection347 = Animator139 and Animator139.AnimationPlayed:Connect(function(arg1296)
			end)
			local attributeChangedSignal112 = character22:GetAttributeChangedSignal("SkinName")
			-- [deobf: unrolled loop/chain truncated: 1007 more lines of repeated iterations removed]
																			end)
																		end)
																	end)
																end)
															end)
														end)
													end)
												end)
											end)
										end)
									end)
								end)
							end)
						end)
					end)
				end)
			end)
		end)
	end,
	IsEnabled = function(arg674, arg675)
	end
}
getgenv().ghostPuncher = {
	AddId = function(arg676, arg677)
		tostring(arg676):match("%d+")
	end,
	Destroy = function(arg678, arg679)
	end,
	Disable = function(arg680, arg681)
	end,
	Enable = function(arg682, arg683)
		local Humanoid23 = player.Character:WaitForChild("Humanoid", 8)
		local Animator16 = Humanoid23:FindFirstChildOfClass("Animator")
		local connection109 = Animator16 and Animator16.AnimationPlayed:Connect(function(arg684)
		end)
		local tracks3 = Animator16 and Animator16:GetPlayingAnimationTracks()
		for i157, v283 in ipairs(tracks3 or {}) do -- [[deobf: guard]]
			tostring(v283.Animation.AnimationId):match("%d+")
			task.defer(function(...)
			end)
		end
		local attributeChangedSignal3 = player.Character:GetAttributeChangedSignal("SkinName")
		local connection110 = attributeChangedSignal3:Connect(function(arg685)
			task.wait(0.3)
			if connection113 then connection113:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection114 then connection114:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid50 = player.Character:WaitForChild("Humanoid", 8)
			local Animator36 = Humanoid50:FindFirstChildOfClass("Animator")
			local connection145 = Animator36 and Animator36.AnimationPlayed:Connect(function(arg1069)
			end)
			local attributeChangedSignal10 = player.Character:GetAttributeChangedSignal("SkinName")
			local connection146 = attributeChangedSignal10:Connect(function(arg1070)
				task.wait(0.3)
				if connection151 then connection151:Disconnect() end -- [[deobf: guard — определение в другой области]]
				if connection152 then connection152:Disconnect() end -- [[deobf: guard — определение в другой области]]
				local Humanoid60 = player.Character:WaitForChild("Humanoid", 8)
				local Animator44 = Humanoid60:FindFirstChildOfClass("Animator")
				local connection157 = Animator44 and Animator44.AnimationPlayed:Connect(function(arg1089)
				end)
				local attributeChangedSignal17 = player.Character:GetAttributeChangedSignal("SkinName")
				local connection158 = attributeChangedSignal17:Connect(function(arg1090)
					task.wait(0.3)
					if connection163 then connection163:Disconnect() end -- [[deobf: guard — определение в другой области]]
					if connection164 then connection164:Disconnect() end -- [[deobf: guard — определение в другой области]]
					local Humanoid66 = player.Character:WaitForChild("Humanoid", 8)
					local Animator50 = Humanoid66:FindFirstChildOfClass("Animator")
					local connection169 = Animator50 and Animator50.AnimationPlayed:Connect(function(arg1103)
					end)
					local attributeChangedSignal23 = player.Character:GetAttributeChangedSignal("SkinName")
					local connection170 = attributeChangedSignal23:Connect(function(arg1104)
						task.wait(0.3)
						if connection175 then connection175:Disconnect() end -- [[deobf: guard — определение в другой области]]
						if connection176 then connection176:Disconnect() end -- [[deobf: guard — определение в другой области]]
						local Humanoid72 = player.Character:WaitForChild("Humanoid", 8)
						local Animator56 = Humanoid72:FindFirstChildOfClass("Animator")
						local connection181 = Animator56 and Animator56.AnimationPlayed:Connect(function(arg1116)
						end)
						local attributeChangedSignal29 = player.Character:GetAttributeChangedSignal("SkinName")
						local connection182 = attributeChangedSignal29:Connect(function(arg1117)
							task.wait(0.3)
							if connection187 then connection187:Disconnect() end -- [[deobf: guard — определение в другой области]]
							if connection188 then connection188:Disconnect() end -- [[deobf: guard — определение в другой области]]
							local Humanoid78 = player.Character:WaitForChild("Humanoid", 8)
							local Animator62 = Humanoid78:FindFirstChildOfClass("Animator")
							local connection193 = Animator62 and Animator62.AnimationPlayed:Connect(function(arg1129)
							end)
							local attributeChangedSignal35 = player.Character:GetAttributeChangedSignal("SkinName")
							local connection194 = attributeChangedSignal35:Connect(function(arg1130)
								task.wait(0.3)
								if connection199 then connection199:Disconnect() end -- [[deobf: guard — определение в другой области]]
								if connection200 then connection200:Disconnect() end -- [[deobf: guard — определение в другой области]]
								local Humanoid84 = player.Character:WaitForChild("Humanoid", 8)
								local Animator68 = Humanoid84:FindFirstChildOfClass("Animator")
								local connection205 = Animator68 and Animator68.AnimationPlayed:Connect(function(arg1142)
								end)
								local attributeChangedSignal41 = player.Character:GetAttributeChangedSignal("SkinName")
								local connection206 = attributeChangedSignal41:Connect(function(arg1143)
									task.wait(0.3)
									if connection211 then connection211:Disconnect() end -- [[deobf: guard — определение в другой области]]
									if connection212 then connection212:Disconnect() end -- [[deobf: guard — определение в другой области]]
									local Humanoid90 = player.Character:WaitForChild("Humanoid", 8)
									local Animator74 = Humanoid90:FindFirstChildOfClass("Animator")
									local connection217 = Animator74 and Animator74.AnimationPlayed:Connect(function(arg1155)
									end)
									local attributeChangedSignal47 = player.Character:GetAttributeChangedSignal("SkinName")
									local connection218 = attributeChangedSignal47:Connect(function(arg1156)
										task.wait(0.3)
										if connection223 then connection223:Disconnect() end -- [[deobf: guard — определение в другой области]]
										if connection224 then connection224:Disconnect() end -- [[deobf: guard — определение в другой области]]
										local Humanoid96 = player.Character:WaitForChild("Humanoid", 8)
										local Animator80 = Humanoid96:FindFirstChildOfClass("Animator")
										local connection229 = Animator80 and Animator80.AnimationPlayed:Connect(function(arg1168)
										end)
										local attributeChangedSignal53 = player.Character:GetAttributeChangedSignal("SkinName")
										local connection230 = attributeChangedSignal53:Connect(function(arg1169)
											task.wait(0.3)
											if connection235 then connection235:Disconnect() end -- [[deobf: guard — определение в другой области]]
											if connection236 then connection236:Disconnect() end -- [[deobf: guard — определение в другой области]]
											local Humanoid102 = player.Character:WaitForChild("Humanoid", 8)
											local Animator86 = Humanoid102:FindFirstChildOfClass("Animator")
											local connection241 = Animator86 and Animator86.AnimationPlayed:Connect(function(arg1181)
											end)
											local attributeChangedSignal59 = player.Character:GetAttributeChangedSignal("SkinName")
											local connection242 = attributeChangedSignal59:Connect(function(arg1182)
												task.wait(0.3)
												if connection247 then connection247:Disconnect() end -- [[deobf: guard — определение в другой области]]
												if connection248 then connection248:Disconnect() end -- [[deobf: guard — определение в другой области]]
												local Humanoid108 = player.Character:WaitForChild("Humanoid", 8)
												local Animator92 = Humanoid108:FindFirstChildOfClass("Animator")
												local connection253 = Animator92 and Animator92.AnimationPlayed:Connect(function(arg1194)
												end)
												local attributeChangedSignal65 = player.Character:GetAttributeChangedSignal("SkinName")
												local connection254 = attributeChangedSignal65:Connect(function(arg1195)
													task.wait(0.3)
													if connection259 then connection259:Disconnect() end -- [[deobf: guard — определение в другой области]]
													if connection260 then connection260:Disconnect() end -- [[deobf: guard — определение в другой области]]
													local Humanoid114 = player.Character:WaitForChild("Humanoid", 8)
													local Animator98 = Humanoid114:FindFirstChildOfClass("Animator")
													local connection265 = Animator98 and Animator98.AnimationPlayed:Connect(function(arg1207)
													end)
													local attributeChangedSignal71 = player.Character:GetAttributeChangedSignal("SkinName")
													local connection266 = attributeChangedSignal71:Connect(function(arg1208)
														task.wait(0.3)
														if connection271 then connection271:Disconnect() end -- [[deobf: guard — определение в другой области]]
														if connection272 then connection272:Disconnect() end -- [[deobf: guard — определение в другой области]]
														local Humanoid120 = player.Character:WaitForChild("Humanoid", 8)
														local Animator104 = Humanoid120:FindFirstChildOfClass("Animator")
														local connection277 = Animator104 and Animator104.AnimationPlayed:Connect(function(arg1220)
														end)
														local attributeChangedSignal77 = player.Character:GetAttributeChangedSignal("SkinName")
														local connection278 = attributeChangedSignal77:Connect(function(arg1221)
															task.wait(0.3)
															if connection283 then connection283:Disconnect() end -- [[deobf: guard — определение в другой области]]
															if connection284 then connection284:Disconnect() end -- [[deobf: guard — определение в другой области]]
															local Humanoid126 = player.Character:WaitForChild("Humanoid", 8)
															local Animator110 = Humanoid126:FindFirstChildOfClass("Animator")
															local connection289 = Animator110 and Animator110.AnimationPlayed:Connect(function(arg1233)
															end)
															local attributeChangedSignal83 = player.Character:GetAttributeChangedSignal("SkinName")
															local connection290 = attributeChangedSignal83:Connect(function(arg1234)
																task.wait(0.3)
																if connection295 then connection295:Disconnect() end -- [[deobf: guard — определение в другой области]]
																if connection296 then connection296:Disconnect() end -- [[deobf: guard — определение в другой области]]
																local Humanoid132 = player.Character:WaitForChild("Humanoid", 8)
																local Animator116 = Humanoid132:FindFirstChildOfClass("Animator")
																local connection301 = Animator116 and Animator116.AnimationPlayed:Connect(function(arg1246)
																end)
																local attributeChangedSignal89 = player.Character:GetAttributeChangedSignal("SkinName")
																local connection302 = attributeChangedSignal89:Connect(function(arg1247)
																	task.wait(0.3)
																	if connection307 then connection307:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	if connection308 then connection308:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	local Humanoid138 = player.Character:WaitForChild("Humanoid", 8)
																	local Animator122 = Humanoid138:FindFirstChildOfClass("Animator")
																	local connection313 = Animator122 and Animator122.AnimationPlayed:Connect(function(arg1259)
																	end)
																	local attributeChangedSignal95 = player.Character:GetAttributeChangedSignal("SkinName")
																	local connection314 = attributeChangedSignal95:Connect(function(arg1260)
																		task.wait(0.3)
																		if connection319 then connection319:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		if connection320 then connection320:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		local Humanoid144 = player.Character:WaitForChild("Humanoid", 8)
																		local Animator128 = Humanoid144:FindFirstChildOfClass("Animator")
																		local connection325 = Animator128 and Animator128.AnimationPlayed:Connect(function(arg1272)
																		end)
																		local attributeChangedSignal101 = player.Character:GetAttributeChangedSignal("SkinName")
																		local connection326 = attributeChangedSignal101:Connect(function(arg1273)
																			task.wait(0.3)
																			if connection331 then connection331:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			if connection332 then connection332:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			local Humanoid150 = player.Character:WaitForChild("Humanoid", 8)
																			local Animator134 = Humanoid150:FindFirstChildOfClass("Animator")
																			local connection337 = Animator134 and Animator134.AnimationPlayed:Connect(function(arg1285)
																			end)
																			local attributeChangedSignal107 = player.Character:GetAttributeChangedSignal("SkinName")
																			local connection338 = attributeChangedSignal107:Connect(function(arg1286)
			task.wait(0.3)
			if connection343 then connection343:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection344 then connection344:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid156 = player.Character:WaitForChild("Humanoid", 8)
			local Animator140 = Humanoid156:FindFirstChildOfClass("Animator")
			local connection349 = Animator140 and Animator140.AnimationPlayed:Connect(function(arg1298)
			end)
			local attributeChangedSignal113 = player.Character:GetAttributeChangedSignal("SkinName")
			-- [deobf: unrolled loop/chain truncated: 1007 more lines of repeated iterations removed]
																			end)
																		end)
																	end)
																end)
															end)
														end)
													end)
												end)
											end)
										end)
									end)
								end)
							end)
						end)
					end)
				end)
			end)
		end)
		player.CharacterAdded:Connect(function(character23)
			task.wait(0.3)
			if connection145 then connection145:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection146 then connection146:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid51 = character23:WaitForChild("Humanoid", 8)
			local Animator37 = Humanoid51:FindFirstChildOfClass("Animator")
			local connection147 = Animator37 and Animator37.AnimationPlayed:Connect(function(arg1071)
			end)
			local attributeChangedSignal11 = character23:GetAttributeChangedSignal("SkinName")
			local connection148 = attributeChangedSignal11:Connect(function(arg1072)
				task.wait(0.3)
				if connection157 then connection157:Disconnect() end -- [[deobf: guard — определение в другой области]]
				if connection158 then connection158:Disconnect() end -- [[deobf: guard — определение в другой области]]
				local Humanoid61 = character23:WaitForChild("Humanoid", 8)
				local Animator45 = Humanoid61:FindFirstChildOfClass("Animator")
				local connection159 = Animator45 and Animator45.AnimationPlayed:Connect(function(arg1091)
				end)
				local attributeChangedSignal18 = character23:GetAttributeChangedSignal("SkinName")
				local connection160 = attributeChangedSignal18:Connect(function(arg1092)
					task.wait(0.3)
					if connection169 then connection169:Disconnect() end -- [[deobf: guard — определение в другой области]]
					if connection170 then connection170:Disconnect() end -- [[deobf: guard — определение в другой области]]
					local Humanoid67 = character23:WaitForChild("Humanoid", 8)
					local Animator51 = Humanoid67:FindFirstChildOfClass("Animator")
					local connection171 = Animator51 and Animator51.AnimationPlayed:Connect(function(arg1105)
					end)
					local attributeChangedSignal24 = character23:GetAttributeChangedSignal("SkinName")
					local connection172 = attributeChangedSignal24:Connect(function(arg1106)
						task.wait(0.3)
						if connection181 then connection181:Disconnect() end -- [[deobf: guard — определение в другой области]]
						if connection182 then connection182:Disconnect() end -- [[deobf: guard — определение в другой области]]
						local Humanoid73 = character23:WaitForChild("Humanoid", 8)
						local Animator57 = Humanoid73:FindFirstChildOfClass("Animator")
						local connection183 = Animator57 and Animator57.AnimationPlayed:Connect(function(arg1118)
						end)
						local attributeChangedSignal30 = character23:GetAttributeChangedSignal("SkinName")
						local connection184 = attributeChangedSignal30:Connect(function(arg1119)
							task.wait(0.3)
							if connection193 then connection193:Disconnect() end -- [[deobf: guard — определение в другой области]]
							if connection194 then connection194:Disconnect() end -- [[deobf: guard — определение в другой области]]
							local Humanoid79 = character23:WaitForChild("Humanoid", 8)
							local Animator63 = Humanoid79:FindFirstChildOfClass("Animator")
							local connection195 = Animator63 and Animator63.AnimationPlayed:Connect(function(arg1131)
							end)
							local attributeChangedSignal36 = character23:GetAttributeChangedSignal("SkinName")
							local connection196 = attributeChangedSignal36:Connect(function(arg1132)
								task.wait(0.3)
								if connection205 then connection205:Disconnect() end -- [[deobf: guard — определение в другой области]]
								if connection206 then connection206:Disconnect() end -- [[deobf: guard — определение в другой области]]
								local Humanoid85 = character23:WaitForChild("Humanoid", 8)
								local Animator69 = Humanoid85:FindFirstChildOfClass("Animator")
								local connection207 = Animator69 and Animator69.AnimationPlayed:Connect(function(arg1144)
								end)
								local attributeChangedSignal42 = character23:GetAttributeChangedSignal("SkinName")
								local connection208 = attributeChangedSignal42:Connect(function(arg1145)
									task.wait(0.3)
									if connection217 then connection217:Disconnect() end -- [[deobf: guard — определение в другой области]]
									if connection218 then connection218:Disconnect() end -- [[deobf: guard — определение в другой области]]
									local Humanoid91 = character23:WaitForChild("Humanoid", 8)
									local Animator75 = Humanoid91:FindFirstChildOfClass("Animator")
									local connection219 = Animator75 and Animator75.AnimationPlayed:Connect(function(arg1157)
									end)
									local attributeChangedSignal48 = character23:GetAttributeChangedSignal("SkinName")
									local connection220 = attributeChangedSignal48:Connect(function(arg1158)
										task.wait(0.3)
										if connection229 then connection229:Disconnect() end -- [[deobf: guard — определение в другой области]]
										if connection230 then connection230:Disconnect() end -- [[deobf: guard — определение в другой области]]
										local Humanoid97 = character23:WaitForChild("Humanoid", 8)
										local Animator81 = Humanoid97:FindFirstChildOfClass("Animator")
										local connection231 = Animator81 and Animator81.AnimationPlayed:Connect(function(arg1170)
										end)
										local attributeChangedSignal54 = character23:GetAttributeChangedSignal("SkinName")
										local connection232 = attributeChangedSignal54:Connect(function(arg1171)
											task.wait(0.3)
											if connection241 then connection241:Disconnect() end -- [[deobf: guard — определение в другой области]]
											if connection242 then connection242:Disconnect() end -- [[deobf: guard — определение в другой области]]
											local Humanoid103 = character23:WaitForChild("Humanoid", 8)
											local Animator87 = Humanoid103:FindFirstChildOfClass("Animator")
											local connection243 = Animator87 and Animator87.AnimationPlayed:Connect(function(arg1183)
											end)
											local attributeChangedSignal60 = character23:GetAttributeChangedSignal("SkinName")
											local connection244 = attributeChangedSignal60:Connect(function(arg1184)
												task.wait(0.3)
												if connection253 then connection253:Disconnect() end -- [[deobf: guard — определение в другой области]]
												if connection254 then connection254:Disconnect() end -- [[deobf: guard — определение в другой области]]
												local Humanoid109 = character23:WaitForChild("Humanoid", 8)
												local Animator93 = Humanoid109:FindFirstChildOfClass("Animator")
												local connection255 = Animator93 and Animator93.AnimationPlayed:Connect(function(arg1196)
												end)
												local attributeChangedSignal66 = character23:GetAttributeChangedSignal("SkinName")
												local connection256 = attributeChangedSignal66:Connect(function(arg1197)
													task.wait(0.3)
													if connection265 then connection265:Disconnect() end -- [[deobf: guard — определение в другой области]]
													if connection266 then connection266:Disconnect() end -- [[deobf: guard — определение в другой области]]
													local Humanoid115 = character23:WaitForChild("Humanoid", 8)
													local Animator99 = Humanoid115:FindFirstChildOfClass("Animator")
													local connection267 = Animator99 and Animator99.AnimationPlayed:Connect(function(arg1209)
													end)
													local attributeChangedSignal72 = character23:GetAttributeChangedSignal("SkinName")
													local connection268 = attributeChangedSignal72:Connect(function(arg1210)
														task.wait(0.3)
														if connection277 then connection277:Disconnect() end -- [[deobf: guard — определение в другой области]]
														if connection278 then connection278:Disconnect() end -- [[deobf: guard — определение в другой области]]
														local Humanoid121 = character23:WaitForChild("Humanoid", 8)
														local Animator105 = Humanoid121:FindFirstChildOfClass("Animator")
														local connection279 = Animator105 and Animator105.AnimationPlayed:Connect(function(arg1222)
														end)
														local attributeChangedSignal78 = character23:GetAttributeChangedSignal("SkinName")
														local connection280 = attributeChangedSignal78:Connect(function(arg1223)
															task.wait(0.3)
															if connection289 then connection289:Disconnect() end -- [[deobf: guard — определение в другой области]]
															if connection290 then connection290:Disconnect() end -- [[deobf: guard — определение в другой области]]
															local Humanoid127 = character23:WaitForChild("Humanoid", 8)
															local Animator111 = Humanoid127:FindFirstChildOfClass("Animator")
															local connection291 = Animator111 and Animator111.AnimationPlayed:Connect(function(arg1235)
															end)
															local attributeChangedSignal84 = character23:GetAttributeChangedSignal("SkinName")
															local connection292 = attributeChangedSignal84:Connect(function(arg1236)
																task.wait(0.3)
																if connection301 then connection301:Disconnect() end -- [[deobf: guard — определение в другой области]]
																if connection302 then connection302:Disconnect() end -- [[deobf: guard — определение в другой области]]
																local Humanoid133 = character23:WaitForChild("Humanoid", 8)
																local Animator117 = Humanoid133:FindFirstChildOfClass("Animator")
																local connection303 = Animator117 and Animator117.AnimationPlayed:Connect(function(arg1248)
																end)
																local attributeChangedSignal90 = character23:GetAttributeChangedSignal("SkinName")
																local connection304 = attributeChangedSignal90:Connect(function(arg1249)
																	task.wait(0.3)
																	if connection313 then connection313:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	if connection314 then connection314:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	local Humanoid139 = character23:WaitForChild("Humanoid", 8)
																	local Animator123 = Humanoid139:FindFirstChildOfClass("Animator")
																	local connection315 = Animator123 and Animator123.AnimationPlayed:Connect(function(arg1261)
																	end)
																	local attributeChangedSignal96 = character23:GetAttributeChangedSignal("SkinName")
																	local connection316 = attributeChangedSignal96:Connect(function(arg1262)
																		task.wait(0.3)
																		if connection325 then connection325:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		if connection326 then connection326:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		local Humanoid145 = character23:WaitForChild("Humanoid", 8)
																		local Animator129 = Humanoid145:FindFirstChildOfClass("Animator")
																		local connection327 = Animator129 and Animator129.AnimationPlayed:Connect(function(arg1274)
																		end)
																		local attributeChangedSignal102 = character23:GetAttributeChangedSignal("SkinName")
																		local connection328 = attributeChangedSignal102:Connect(function(arg1275)
																			task.wait(0.3)
																			if connection337 then connection337:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			if connection338 then connection338:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			local Humanoid151 = character23:WaitForChild("Humanoid", 8)
																			local Animator135 = Humanoid151:FindFirstChildOfClass("Animator")
																			local connection339 = Animator135 and Animator135.AnimationPlayed:Connect(function(arg1287)
																			end)
																			local attributeChangedSignal108 = character23:GetAttributeChangedSignal("SkinName")
																			local connection340 = attributeChangedSignal108:Connect(function(arg1288)
			task.wait(0.3)
			if connection349 then connection349:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection350 then connection350:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid157 = character23:WaitForChild("Humanoid", 8)
			local Animator141 = Humanoid157:FindFirstChildOfClass("Animator")
			local connection351 = Animator141 and Animator141.AnimationPlayed:Connect(function(arg1300)
			end)
			local attributeChangedSignal114 = character23:GetAttributeChangedSignal("SkinName")
			-- [deobf: unrolled loop/chain truncated: 1007 more lines of repeated iterations removed]
																			end)
																		end)
																	end)
																end)
															end)
														end)
													end)
												end)
											end)
										end)
									end)
								end)
							end)
						end)
					end)
				end)
			end)
		end)
	end,
	IsEnabled = function(arg686, arg687)
	end
}
Tab29:AddCheckbox("VX_flag_204", {
	Text = "Ghost Block",
	Default = false,
	Callback = function(state, arg689)
		local player = Players.LocalPlayer -- [[reconstructed: определение утеряно при рендере]]
		if state then
			if connection107 then connection107:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection108 then connection108:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid24 = player.Character:WaitForChild("Humanoid", 8)
			local Animator17 = Humanoid24:FindFirstChildOfClass("Animator")
			local connection111 = Animator17 and Animator17.AnimationPlayed:Connect(function(arg690)
			end)
			local tracks4 = Animator17 and Animator17:GetPlayingAnimationTracks()
			for i158, v284 in ipairs(tracks4 or {}) do -- [[deobf: guard]]
				tostring(v284.Animation.AnimationId):match("%d+")
				task.defer(function(...)
				end)
			end
			local attributeChangedSignal4 = player.Character:GetAttributeChangedSignal("SkinName")
			local connection112 = attributeChangedSignal4:Connect(function(arg691)
				task.wait(0.3)
				if connection143 then connection143:Disconnect() end -- [[deobf: guard — определение в другой области]]
				if connection144 then connection144:Disconnect() end -- [[deobf: guard — определение в другой области]]
				local Humanoid52 = player.Character:WaitForChild("Humanoid", 8)
				local Animator38 = Humanoid52:FindFirstChildOfClass("Animator")
				local connection149 = Animator38 and Animator38.AnimationPlayed:Connect(function(arg1073)
				end)
				local attributeChangedSignal12 = player.Character:GetAttributeChangedSignal("SkinName")
				local connection150 = attributeChangedSignal12:Connect(function(arg1074)
					task.wait(0.3)
					if connection155 then connection155:Disconnect() end -- [[deobf: guard — определение в другой области]]
					if connection156 then connection156:Disconnect() end -- [[deobf: guard — определение в другой области]]
					local Humanoid62 = player.Character:WaitForChild("Humanoid", 8)
					local Animator46 = Humanoid62:FindFirstChildOfClass("Animator")
					local connection161 = Animator46 and Animator46.AnimationPlayed:Connect(function(arg1093)
					end)
					local attributeChangedSignal19 = player.Character:GetAttributeChangedSignal("SkinName")
					local connection162 = attributeChangedSignal19:Connect(function(arg1094)
						task.wait(0.3)
						if connection167 then connection167:Disconnect() end -- [[deobf: guard — определение в другой области]]
						if connection168 then connection168:Disconnect() end -- [[deobf: guard — определение в другой области]]
						local Humanoid68 = player.Character:WaitForChild("Humanoid", 8)
						local Animator52 = Humanoid68:FindFirstChildOfClass("Animator")
						local connection173 = Animator52 and Animator52.AnimationPlayed:Connect(function(arg1107)
						end)
						local attributeChangedSignal25 = player.Character:GetAttributeChangedSignal("SkinName")
						local connection174 = attributeChangedSignal25:Connect(function(arg1108)
							task.wait(0.3)
							if connection179 then connection179:Disconnect() end -- [[deobf: guard — определение в другой области]]
							if connection180 then connection180:Disconnect() end -- [[deobf: guard — определение в другой области]]
							local Humanoid74 = player.Character:WaitForChild("Humanoid", 8)
							local Animator58 = Humanoid74:FindFirstChildOfClass("Animator")
							local connection185 = Animator58 and Animator58.AnimationPlayed:Connect(function(arg1120)
							end)
							local attributeChangedSignal31 = player.Character:GetAttributeChangedSignal("SkinName")
							local connection186 = attributeChangedSignal31:Connect(function(arg1121)
								task.wait(0.3)
								if connection191 then connection191:Disconnect() end -- [[deobf: guard — определение в другой области]]
								if connection192 then connection192:Disconnect() end -- [[deobf: guard — определение в другой области]]
								local Humanoid80 = player.Character:WaitForChild("Humanoid", 8)
								local Animator64 = Humanoid80:FindFirstChildOfClass("Animator")
								local connection197 = Animator64 and Animator64.AnimationPlayed:Connect(function(arg1133)
								end)
								local attributeChangedSignal37 = player.Character:GetAttributeChangedSignal("SkinName")
								local connection198 = attributeChangedSignal37:Connect(function(arg1134)
									task.wait(0.3)
									if connection203 then connection203:Disconnect() end -- [[deobf: guard — определение в другой области]]
									if connection204 then connection204:Disconnect() end -- [[deobf: guard — определение в другой области]]
									local Humanoid86 = player.Character:WaitForChild("Humanoid", 8)
									local Animator70 = Humanoid86:FindFirstChildOfClass("Animator")
									local connection209 = Animator70 and Animator70.AnimationPlayed:Connect(function(arg1146)
									end)
									local attributeChangedSignal43 = player.Character:GetAttributeChangedSignal("SkinName")
									local connection210 = attributeChangedSignal43:Connect(function(arg1147)
										task.wait(0.3)
										if connection215 then connection215:Disconnect() end -- [[deobf: guard — определение в другой области]]
										if connection216 then connection216:Disconnect() end -- [[deobf: guard — определение в другой области]]
										local Humanoid92 = player.Character:WaitForChild("Humanoid", 8)
										local Animator76 = Humanoid92:FindFirstChildOfClass("Animator")
										local connection221 = Animator76 and Animator76.AnimationPlayed:Connect(function(arg1159)
										end)
										local attributeChangedSignal49 = player.Character:GetAttributeChangedSignal("SkinName")
										local connection222 = attributeChangedSignal49:Connect(function(arg1160)
											task.wait(0.3)
											if connection227 then connection227:Disconnect() end -- [[deobf: guard — определение в другой области]]
											if connection228 then connection228:Disconnect() end -- [[deobf: guard — определение в другой области]]
											local Humanoid98 = player.Character:WaitForChild("Humanoid", 8)
											local Animator82 = Humanoid98:FindFirstChildOfClass("Animator")
											local connection233 = Animator82 and Animator82.AnimationPlayed:Connect(function(arg1172)
											end)
											local attributeChangedSignal55 = player.Character:GetAttributeChangedSignal("SkinName")
											local connection234 = attributeChangedSignal55:Connect(function(arg1173)
												task.wait(0.3)
												if connection239 then connection239:Disconnect() end -- [[deobf: guard — определение в другой области]]
												if connection240 then connection240:Disconnect() end -- [[deobf: guard — определение в другой области]]
												local Humanoid104 = player.Character:WaitForChild("Humanoid", 8)
												local Animator88 = Humanoid104:FindFirstChildOfClass("Animator")
												local connection245 = Animator88 and Animator88.AnimationPlayed:Connect(function(arg1185)
												end)
												local attributeChangedSignal61 = player.Character:GetAttributeChangedSignal("SkinName")
												local connection246 = attributeChangedSignal61:Connect(function(arg1186)
													task.wait(0.3)
													if connection251 then connection251:Disconnect() end -- [[deobf: guard — определение в другой области]]
													if connection252 then connection252:Disconnect() end -- [[deobf: guard — определение в другой области]]
													local Humanoid110 = player.Character:WaitForChild("Humanoid", 8)
													local Animator94 = Humanoid110:FindFirstChildOfClass("Animator")
													local connection257 = Animator94 and Animator94.AnimationPlayed:Connect(function(arg1198)
													end)
													local attributeChangedSignal67 = player.Character:GetAttributeChangedSignal("SkinName")
													local connection258 = attributeChangedSignal67:Connect(function(arg1199)
														task.wait(0.3)
														if connection263 then connection263:Disconnect() end -- [[deobf: guard — определение в другой области]]
														if connection264 then connection264:Disconnect() end -- [[deobf: guard — определение в другой области]]
														local Humanoid116 = player.Character:WaitForChild("Humanoid", 8)
														local Animator100 = Humanoid116:FindFirstChildOfClass("Animator")
														local connection269 = Animator100 and Animator100.AnimationPlayed:Connect(function(arg1211)
														end)
														local attributeChangedSignal73 = player.Character:GetAttributeChangedSignal("SkinName")
														local connection270 = attributeChangedSignal73:Connect(function(arg1212)
															task.wait(0.3)
															if connection275 then connection275:Disconnect() end -- [[deobf: guard — определение в другой области]]
															if connection276 then connection276:Disconnect() end -- [[deobf: guard — определение в другой области]]
															local Humanoid122 = player.Character:WaitForChild("Humanoid", 8)
															local Animator106 = Humanoid122:FindFirstChildOfClass("Animator")
															local connection281 = Animator106 and Animator106.AnimationPlayed:Connect(function(arg1224)
															end)
															local attributeChangedSignal79 = player.Character:GetAttributeChangedSignal("SkinName")
															local connection282 = attributeChangedSignal79:Connect(function(arg1225)
																task.wait(0.3)
																if connection287 then connection287:Disconnect() end -- [[deobf: guard — определение в другой области]]
																if connection288 then connection288:Disconnect() end -- [[deobf: guard — определение в другой области]]
																local Humanoid128 = player.Character:WaitForChild("Humanoid", 8)
																local Animator112 = Humanoid128:FindFirstChildOfClass("Animator")
																local connection293 = Animator112 and Animator112.AnimationPlayed:Connect(function(arg1237)
																end)
																local attributeChangedSignal85 = player.Character:GetAttributeChangedSignal("SkinName")
																local connection294 = attributeChangedSignal85:Connect(function(arg1238)
																	task.wait(0.3)
																	if connection299 then connection299:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	if connection300 then connection300:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	local Humanoid134 = player.Character:WaitForChild("Humanoid", 8)
																	local Animator118 = Humanoid134:FindFirstChildOfClass("Animator")
																	local connection305 = Animator118 and Animator118.AnimationPlayed:Connect(function(arg1250)
																	end)
																	local attributeChangedSignal91 = player.Character:GetAttributeChangedSignal("SkinName")
																	local connection306 = attributeChangedSignal91:Connect(function(arg1251)
																		task.wait(0.3)
																		if connection311 then connection311:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		if connection312 then connection312:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		local Humanoid140 = player.Character:WaitForChild("Humanoid", 8)
																		local Animator124 = Humanoid140:FindFirstChildOfClass("Animator")
																		local connection317 = Animator124 and Animator124.AnimationPlayed:Connect(function(arg1263)
																		end)
																		local attributeChangedSignal97 = player.Character:GetAttributeChangedSignal("SkinName")
																		local connection318 = attributeChangedSignal97:Connect(function(arg1264)
																			task.wait(0.3)
																			if connection323 then connection323:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			if connection324 then connection324:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			local Humanoid146 = player.Character:WaitForChild("Humanoid", 8)
																			local Animator130 = Humanoid146:FindFirstChildOfClass("Animator")
																			local connection329 = Animator130 and Animator130.AnimationPlayed:Connect(function(arg1276)
																			end)
																			local attributeChangedSignal103 = player.Character:GetAttributeChangedSignal("SkinName")
																			local connection330 = attributeChangedSignal103:Connect(function(arg1277)
			task.wait(0.3)
			if connection335 then connection335:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection336 then connection336:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid152 = player.Character:WaitForChild("Humanoid", 8)
			local Animator136 = Humanoid152:FindFirstChildOfClass("Animator")
			local connection341 = Animator136 and Animator136.AnimationPlayed:Connect(function(arg1289)
			end)
			local attributeChangedSignal109 = player.Character:GetAttributeChangedSignal("SkinName")
			-- [deobf: unrolled loop/chain truncated: 1017 more lines of repeated iterations removed]
																			end)
																		end)
																	end)
																end)
															end)
														end)
													end)
												end)
											end)
										end)
									end)
								end)
							end)
						end)
					end)
				end)
			end)
		end
	end
})
Tab29:AddCheckbox("VX_flag_205", {
	Text = "Ghost Punch",
	Default = false,
	Callback = function(state, arg693)
		local player = Players.LocalPlayer -- [[reconstructed: определение утеряно при рендере]]
		if state then
			if connection109 then connection109:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection110 then connection110:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid25 = player.Character:WaitForChild("Humanoid", 8)
			local Animator18 = Humanoid25:FindFirstChildOfClass("Animator")
			local connection113 = Animator18 and Animator18.AnimationPlayed:Connect(function(arg694)
			end)
			local tracks5 = Animator18 and Animator18:GetPlayingAnimationTracks()
			for i159, v285 in ipairs(tracks5 or {}) do -- [[deobf: guard]]
				tostring(v285.Animation.AnimationId):match("%d+")
				task.defer(function(...)
				end)
			end
			local attributeChangedSignal5 = player.Character:GetAttributeChangedSignal("SkinName")
			local connection114 = attributeChangedSignal5:Connect(function(arg695)
				task.wait(0.3)
				if connection147 then connection147:Disconnect() end -- [[deobf: guard — определение в другой области]]
				if connection148 then connection148:Disconnect() end -- [[deobf: guard — определение в другой области]]
				local Humanoid53 = player.Character:WaitForChild("Humanoid", 8)
				local Animator39 = Humanoid53:FindFirstChildOfClass("Animator")
				local connection151 = Animator39 and Animator39.AnimationPlayed:Connect(function(arg1075)
				end)
				local attributeChangedSignal13 = player.Character:GetAttributeChangedSignal("SkinName")
				local connection152 = attributeChangedSignal13:Connect(function(arg1076)
					task.wait(0.3)
					if connection159 then connection159:Disconnect() end -- [[deobf: guard — определение в другой области]]
					if connection160 then connection160:Disconnect() end -- [[deobf: guard — определение в другой области]]
					local Humanoid63 = player.Character:WaitForChild("Humanoid", 8)
					local Animator47 = Humanoid63:FindFirstChildOfClass("Animator")
					local connection163 = Animator47 and Animator47.AnimationPlayed:Connect(function(arg1095)
					end)
					local attributeChangedSignal20 = player.Character:GetAttributeChangedSignal("SkinName")
					local connection164 = attributeChangedSignal20:Connect(function(arg1096)
						task.wait(0.3)
						if connection171 then connection171:Disconnect() end -- [[deobf: guard — определение в другой области]]
						if connection172 then connection172:Disconnect() end -- [[deobf: guard — определение в другой области]]
						local Humanoid69 = player.Character:WaitForChild("Humanoid", 8)
						local Animator53 = Humanoid69:FindFirstChildOfClass("Animator")
						local connection175 = Animator53 and Animator53.AnimationPlayed:Connect(function(arg1109)
						end)
						local attributeChangedSignal26 = player.Character:GetAttributeChangedSignal("SkinName")
						local connection176 = attributeChangedSignal26:Connect(function(arg1110)
							task.wait(0.3)
							if connection183 then connection183:Disconnect() end -- [[deobf: guard — определение в другой области]]
							if connection184 then connection184:Disconnect() end -- [[deobf: guard — определение в другой области]]
							local Humanoid75 = player.Character:WaitForChild("Humanoid", 8)
							local Animator59 = Humanoid75:FindFirstChildOfClass("Animator")
							local connection187 = Animator59 and Animator59.AnimationPlayed:Connect(function(arg1122)
							end)
							local attributeChangedSignal32 = player.Character:GetAttributeChangedSignal("SkinName")
							local connection188 = attributeChangedSignal32:Connect(function(arg1123)
								task.wait(0.3)
								if connection195 then connection195:Disconnect() end -- [[deobf: guard — определение в другой области]]
								if connection196 then connection196:Disconnect() end -- [[deobf: guard — определение в другой области]]
								local Humanoid81 = player.Character:WaitForChild("Humanoid", 8)
								local Animator65 = Humanoid81:FindFirstChildOfClass("Animator")
								local connection199 = Animator65 and Animator65.AnimationPlayed:Connect(function(arg1135)
								end)
								local attributeChangedSignal38 = player.Character:GetAttributeChangedSignal("SkinName")
								local connection200 = attributeChangedSignal38:Connect(function(arg1136)
									task.wait(0.3)
									if connection207 then connection207:Disconnect() end -- [[deobf: guard — определение в другой области]]
									if connection208 then connection208:Disconnect() end -- [[deobf: guard — определение в другой области]]
									local Humanoid87 = player.Character:WaitForChild("Humanoid", 8)
									local Animator71 = Humanoid87:FindFirstChildOfClass("Animator")
									local connection211 = Animator71 and Animator71.AnimationPlayed:Connect(function(arg1148)
									end)
									local attributeChangedSignal44 = player.Character:GetAttributeChangedSignal("SkinName")
									local connection212 = attributeChangedSignal44:Connect(function(arg1149)
										task.wait(0.3)
										if connection219 then connection219:Disconnect() end -- [[deobf: guard — определение в другой области]]
										if connection220 then connection220:Disconnect() end -- [[deobf: guard — определение в другой области]]
										local Humanoid93 = player.Character:WaitForChild("Humanoid", 8)
										local Animator77 = Humanoid93:FindFirstChildOfClass("Animator")
										local connection223 = Animator77 and Animator77.AnimationPlayed:Connect(function(arg1161)
										end)
										local attributeChangedSignal50 = player.Character:GetAttributeChangedSignal("SkinName")
										local connection224 = attributeChangedSignal50:Connect(function(arg1162)
											task.wait(0.3)
											if connection231 then connection231:Disconnect() end -- [[deobf: guard — определение в другой области]]
											if connection232 then connection232:Disconnect() end -- [[deobf: guard — определение в другой области]]
											local Humanoid99 = player.Character:WaitForChild("Humanoid", 8)
											local Animator83 = Humanoid99:FindFirstChildOfClass("Animator")
											local connection235 = Animator83 and Animator83.AnimationPlayed:Connect(function(arg1174)
											end)
											local attributeChangedSignal56 = player.Character:GetAttributeChangedSignal("SkinName")
											local connection236 = attributeChangedSignal56:Connect(function(arg1175)
												task.wait(0.3)
												if connection243 then connection243:Disconnect() end -- [[deobf: guard — определение в другой области]]
												if connection244 then connection244:Disconnect() end -- [[deobf: guard — определение в другой области]]
												local Humanoid105 = player.Character:WaitForChild("Humanoid", 8)
												local Animator89 = Humanoid105:FindFirstChildOfClass("Animator")
												local connection247 = Animator89 and Animator89.AnimationPlayed:Connect(function(arg1187)
												end)
												local attributeChangedSignal62 = player.Character:GetAttributeChangedSignal("SkinName")
												local connection248 = attributeChangedSignal62:Connect(function(arg1188)
													task.wait(0.3)
													if connection255 then connection255:Disconnect() end -- [[deobf: guard — определение в другой области]]
													if connection256 then connection256:Disconnect() end -- [[deobf: guard — определение в другой области]]
													local Humanoid111 = player.Character:WaitForChild("Humanoid", 8)
													local Animator95 = Humanoid111:FindFirstChildOfClass("Animator")
													local connection259 = Animator95 and Animator95.AnimationPlayed:Connect(function(arg1200)
													end)
													local attributeChangedSignal68 = player.Character:GetAttributeChangedSignal("SkinName")
													local connection260 = attributeChangedSignal68:Connect(function(arg1201)
														task.wait(0.3)
														if connection267 then connection267:Disconnect() end -- [[deobf: guard — определение в другой области]]
														if connection268 then connection268:Disconnect() end -- [[deobf: guard — определение в другой области]]
														local Humanoid117 = player.Character:WaitForChild("Humanoid", 8)
														local Animator101 = Humanoid117:FindFirstChildOfClass("Animator")
														local connection271 = Animator101 and Animator101.AnimationPlayed:Connect(function(arg1213)
														end)
														local attributeChangedSignal74 = player.Character:GetAttributeChangedSignal("SkinName")
														local connection272 = attributeChangedSignal74:Connect(function(arg1214)
															task.wait(0.3)
															if connection279 then connection279:Disconnect() end -- [[deobf: guard — определение в другой области]]
															if connection280 then connection280:Disconnect() end -- [[deobf: guard — определение в другой области]]
															local Humanoid123 = player.Character:WaitForChild("Humanoid", 8)
															local Animator107 = Humanoid123:FindFirstChildOfClass("Animator")
															local connection283 = Animator107 and Animator107.AnimationPlayed:Connect(function(arg1226)
															end)
															local attributeChangedSignal80 = player.Character:GetAttributeChangedSignal("SkinName")
															local connection284 = attributeChangedSignal80:Connect(function(arg1227)
																task.wait(0.3)
																if connection291 then connection291:Disconnect() end -- [[deobf: guard — определение в другой области]]
																if connection292 then connection292:Disconnect() end -- [[deobf: guard — определение в другой области]]
																local Humanoid129 = player.Character:WaitForChild("Humanoid", 8)
																local Animator113 = Humanoid129:FindFirstChildOfClass("Animator")
																local connection295 = Animator113 and Animator113.AnimationPlayed:Connect(function(arg1239)
																end)
																local attributeChangedSignal86 = player.Character:GetAttributeChangedSignal("SkinName")
																local connection296 = attributeChangedSignal86:Connect(function(arg1240)
																	task.wait(0.3)
																	if connection303 then connection303:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	if connection304 then connection304:Disconnect() end -- [[deobf: guard — определение в другой области]]
																	local Humanoid135 = player.Character:WaitForChild("Humanoid", 8)
																	local Animator119 = Humanoid135:FindFirstChildOfClass("Animator")
																	local connection307 = Animator119 and Animator119.AnimationPlayed:Connect(function(arg1252)
																	end)
																	local attributeChangedSignal92 = player.Character:GetAttributeChangedSignal("SkinName")
																	local connection308 = attributeChangedSignal92:Connect(function(arg1253)
																		task.wait(0.3)
																		if connection315 then connection315:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		if connection316 then connection316:Disconnect() end -- [[deobf: guard — определение в другой области]]
																		local Humanoid141 = player.Character:WaitForChild("Humanoid", 8)
																		local Animator125 = Humanoid141:FindFirstChildOfClass("Animator")
																		local connection319 = Animator125 and Animator125.AnimationPlayed:Connect(function(arg1265)
																		end)
																		local attributeChangedSignal98 = player.Character:GetAttributeChangedSignal("SkinName")
																		local connection320 = attributeChangedSignal98:Connect(function(arg1266)
																			task.wait(0.3)
																			if connection327 then connection327:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			if connection328 then connection328:Disconnect() end -- [[deobf: guard — определение в другой области]]
																			local Humanoid147 = player.Character:WaitForChild("Humanoid", 8)
																			local Animator131 = Humanoid147:FindFirstChildOfClass("Animator")
																			local connection331 = Animator131 and Animator131.AnimationPlayed:Connect(function(arg1278)
																			end)
																			local attributeChangedSignal104 = player.Character:GetAttributeChangedSignal("SkinName")
																			local connection332 = attributeChangedSignal104:Connect(function(arg1279)
			task.wait(0.3)
			if connection339 then connection339:Disconnect() end -- [[deobf: guard — определение в другой области]]
			if connection340 then connection340:Disconnect() end -- [[deobf: guard — определение в другой области]]
			local Humanoid153 = player.Character:WaitForChild("Humanoid", 8)
			local Animator137 = Humanoid153:FindFirstChildOfClass("Animator")
			local connection343 = Animator137 and Animator137.AnimationPlayed:Connect(function(arg1291)
			end)
			local attributeChangedSignal110 = player.Character:GetAttributeChangedSignal("SkinName")
			-- [deobf: unrolled loop/chain truncated: 1017 more lines of repeated iterations removed]
																			end)
																		end)
																	end)
																end)
															end)
														end)
													end)
												end)
											end)
										end)
									end)
								end)
							end)
						end)
					end)
				end)
			end)
		end
	end
})
Tab29:AddDivider({ MarginBottom = 2, MarginTop = 2 })
getgenv().pingGuiEnabled = false
getgenv().pingGuiScreenGui = nil
getgenv().pingGuiConnection = nil
getgenv().createPingGui = function(arg696, arg697)
	local PlayerGui3 = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(0, 12)
	UICorner.Parent = Frame2
	local UIStroke = Instance.new("UIStroke")
	UIStroke.Color = Color3.fromRGB(100, 100, 255)
	UIStroke.Thickness = 1.5
	UIStroke.Transparency = 0.6
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Parent = Frame2
	local UIGradient = Instance.new("UIGradient")
	UIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 70)), ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 40)) })
	UIGradient.Rotation = 90
	UIGradient.Parent = Frame2
	getgenv().pingGuiScreenGui = ScreenGui3
	local connection115 = RunService.Heartbeat:Connect(function(deltaTime41)
		local networkPing = game.Players.LocalPlayer:GetNetworkPing()
	end)
	getgenv().pingGuiConnection = connection115
end
getgenv().pingGuiScreenGui = nil
getgenv().destroyPingGui = function(arg698, arg699)
	if connection115 then connection115:Disconnect() end -- [[deobf: guard — определение в другой области]]
	getgenv().pingGuiConnection = nil
end
getgenv().pingGuiScreenGui = nil
Tab29:AddCheckbox("VX_flag_206", {
	Text = "Show Ping",
	Default = false,
	Callback = function(state, arg701)
		if state then
			getgenv().pingGuiEnabled = state
			local PlayerGui4 = game.Players.LocalPlayer:WaitForChild("PlayerGui")
			local UICorner2 = Instance.new("UICorner")
			UICorner2.CornerRadius = UDim.new(0, 12)
			UICorner2.Parent = Frame3
			local UIStroke2 = Instance.new("UIStroke")
			UIStroke2.Color = Color3.fromRGB(100, 100, 255)
			UIStroke2.Thickness = 1.5
			UIStroke2.Transparency = 0.6
			UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke2.Parent = Frame3
			local UIGradient2 = Instance.new("UIGradient")
			UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 70)), ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 40)) })
			UIGradient2.Rotation = 90
			UIGradient2.Parent = Frame3
			getgenv().pingGuiScreenGui = ScreenGui4
			local connection116 = RunService.Heartbeat:Connect(function(deltaTime42)
				local networkPing2 = game.Players.LocalPlayer:GetNetworkPing()
			end)
			getgenv().pingGuiConnection = connection116
		else
			getgenv().pingGuiEnabled = false
			if connection116 then connection116:Disconnect() end -- [[deobf: guard — определение в другой области]]
			getgenv().pingGuiConnection = nil
		end
	end
})
Tab29:AddDivider({ MarginBottom = 2, MarginTop = 2 })
Tab29:AddCheckbox("VX_flag_207", {
	Text = "Aim Punch",
	Default = false,
	Callback = function(arg702, arg703)
		getgenv().aimPunchActive = arg702
	end
})
getgenv().aimPunchMode = false
Tab29:AddDropdown("VX_flag_208", {
	Text = "Aim Mode",
	Default = "HRP",
	Values = { "HRP", "CamLock" },
	Callback = function(state, arg705)
		if state then
			getgenv().aimPunchMode = state
		end
	end
})
getgenv().aimPunchDelay = 0
Tab29:AddSlider("VX_flag_209", {
	Text = "Aim Punch Delay",
	Default = 0,
	Max = 1,
	Min = 0,
	Rounding = 2,
	Tooltip = "Delay in seconds before aim punch activates after punch is detected",
	Callback = function(state, arg707)
		if state then
			getgenv().aimPunchDelay = tonumber(state)
		end
	end
})
getgenv().aimPunchDuration = 0.8
Tab29:AddSlider("VX_flag_210", {
	Text = "Aim Punch Duration",
	Default = 0.8,
	Max = 2,
	Min = 0.1,
	Rounding = 2,
	Tooltip = "How long aim punch stays active after punch is detected",
	Callback = function(state, arg709)
		if state then
			getgenv().aimPunchDuration = tonumber(state)
		end
	end
})
Tab29:AddDivider({ MarginBottom = 2, MarginTop = 2 })
getgenv().VX_AutoParryEnabled = false
getgenv().VX_AutoParryKiller = "Slasher"
getgenv().VX_ParryRemote = "404 Error"
getgenv().Error404Range = 14
getgenv().Error404AutoParryEnabled = false
getgenv()._ERR404_CONNS = {}
getgenv()._ERR404_SOUNDHOOKS = {}
getgenv()._ERR404_TRIGGERED = {}
getgenv().RAGING_RANGE = 19
getgenv().RAGING_ENABLED = false
getgenv().RAGING_COOLDOWN = 5
getgenv()._RAGING_CONNS = {}
getgenv()._RAGING_TRIGGERED = {}
getgenv().Players = Players
getgenv().ReplicatedStorage = ReplicatedStorage
getgenv().lp = Players.LocalPlayer
getgenv()._RAGING_TRIGGERED = {}
getgenv()._ERR404_SOUNDHOOKS = {}
getgenv()._ERR404_CONNS = {}
getgenv()._RAGING_CONNS = {}
getgenv()._ERR404_TRIGGERED = {}
Tab29:AddCheckbox("VX_flag_211", {
	Text = "Auto Parry",
	Default = false,
	Callback = function(state, arg711)
		if state then
			getgenv()._RAGING_TRIGGERED = {}
			getgenv()._ERR404_SOUNDHOOKS = {}
			getgenv().RAGING_ENABLED = true
			getgenv().VX_AutoParryEnabled = state
			getgenv()._ERR404_CONNS = {}
			getgenv()._RAGING_CONNS = {}
			getgenv()._ERR404_TRIGGERED = {}
			local descendants66 = game:GetDescendants()
			for i160, v286 in ipairs(descendants66) do
				v286:GetAttribute("_VX_RAGING_HOOKED")
			end
			local connection117 = game.DescendantAdded:Connect(function(descendant63)
				descendant63:GetAttribute("_VX_RAGING_HOOKED")
			end)
		else
			getgenv().VX_AutoParryEnabled = false
			if connection117 then connection117:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
getgenv()._RAGING_TRIGGERED = {}
getgenv()._ERR404_SOUNDHOOKS = {}
getgenv().VX_AutoParryKiller = false
getgenv()._ERR404_CONNS = {}
getgenv()._RAGING_CONNS = {}
getgenv()._ERR404_TRIGGERED = {}
Tab29:AddDropdown("VX_flag_212", {
	Text = "Killer",
	Default = "Slasher",
	Values = { "Slasher", "John Doe" },
	Callback = function(state, arg713)
	end
})
getgenv().VX_ParryRemote = false
Tab29:AddDropdown("VX_flag_213", {
	Text = "Parry Mode JD",
	Default = "404 Error",
	Values = { "404 Error", "Corrupt Energy" },
	Callback = function(state, arg715)
	end
})
Tab29:AddInput("VX_flag_214", {
	Text = "Detection Range",
	Placeholder = "5 - 50",
	Callback = function(state, arg717)
		local __range = tonumber(state) -- [[reconstructed: строки утекли в соседний колбэк при рендере]]
		if __range then
			getgenv().RAGING_RANGE = math.clamp(__range, 5, 50)
			getgenv().Error404Range = math.clamp(__range, 5, 50)
		end
	end
})
getgenv().RunService = RunService
getgenv().Workspace = workspace
local Modules8 = ReplicatedStorage:WaitForChild("Modules")
local Network15 = Modules8:WaitForChild("Network")
local Network16 = Network15:WaitForChild("Network")
local RemoteEvent4 = Network16:WaitForChild("RemoteEvent")
getgenv().testRemote = RemoteEvent4
getgenv().blockAction = "UseActorAbility"
getgenv().blockData = { buffer.create(10) }
getgenv().punchAction = "UseActorAbility"
getgenv().punchData = { buffer.create(10) }
local Players78 = workspace:WaitForChild("Players")
local Killers53 = Players78:WaitForChild("Killers")
getgenv().KillersFolder = Killers53
getgenv().autoBlockRangeMode = "Inside/Outside"
getgenv().blockDelayPerKiller = {}
getgenv().elevationKillerHigherThreshold = 3
getgenv().elevationIAmHigherThreshold = 3
getgenv().antiBaitWalkRange = 18
getgenv().antiBaitIdleRange = 18
getgenv().killerRadiusAdornments = {}
getgenv().visionRange = 15
getgenv().visionAngle = 90
getgenv().dynamicDelayEnabled = true
getgenv().hitboxPredictionEnabled = true
getgenv().flickDetectionEnabled = true
getgenv().trigger_ignore_window = 0.5
getgenv().attack_window = 0.6
getgenv()._ab_last_trigger = {}
getgenv().ab_debug = false
getgenv().ab_log = function(arg718, arg719)
end
getgenv().AB_TEST_FIRE = function(arg720, arg721)
	RemoteEvent4:FireServer("UseActorAbility", { buffer.create(10) })
	print("[VX-AB] manual test fire sent")
end
getgenv().AB_DUMP_SOUNDS = function(arg722, arg723)
	print("[VX-AB] --- sounds currently on killer models ---")
	local children184 = Killers53:GetChildren()
	for i161, v287 in ipairs(children184) do
		local descendants67 = v287:GetDescendants()
		for i162, v288 in ipairs(descendants67) do
			print("[VX-AB] " .. v287.Name .. " | " .. tostring(v288.SoundId) .. " | playing=function: 0x0000556ddd6fbc20")
		end
	end
	print("[VX-AB] --- known trigger table ---")
end
getgenv().AB_STATUS = function(arg724, arg725)
	print("[VX-AB] enabled=false")
	print("[VX-AB] prediction=true")
	print("[VX-AB] flick=true")
	print("[VX-AB] readyCheck=false")
	print("[VX-AB] m1Only=false")
	print("[VX-AB] range=" .. tostring(tonumber(state)))
	print("[VX-AB] hookedSounds=nil")
	print("[VX-AB] soundHooks count=0")
	Killers53:GetChildren()
	print("[VX-AB] killers in folder=1")
	print("[VX-AB] aimTargets=Slasher, c00lkidd, JohnDoe, 1x1x1x1, Noli, Nosferatu, Azure, Sixer")
end
getgenv().facingCheckMode = "Killer Facing Me"
getgenv().aimTargets = {}
local children185 = Killers53:GetChildren()
for i163, v289 in ipairs(children185) do
end
Killers53.ChildAdded:Connect(function(child40)
end)
Killers53.ChildRemoved:Connect(function(child41)
end)
getgenv().Camera = workspace.CurrentCamera
getgenv().aimPunchMode = "HRP"
getgenv().aimPunchRotSpeed = 1
getgenv().punchPrediction = 4
getgenv().punchAiming = false
getgenv().punchLastTriggerTime = 0
getgenv().originalWS = nil
getgenv().originalJP = nil
getgenv().originalAutoRotate = nil
getgenv().aimConnection = nil
getgenv().trackedPunchAnims = {
	["105458270463374"] = true,
	["106860049270347"] = true,
	["108196996477620"] = true,
	["108807732150251"] = true,
	["109667959938617"] = true,
	["118298475669935"] = true,
	["125403313786645"] = true,
	["126830014841198"] = true,
	["129843313690921"] = true,
	["129921445546291"] = true,
	["130958529065375"] = true,
	["136007065400978"] = true,
	["138040001965654"] = true,
	["140703210927645"] = true,
	["74707328554358"] = true,
	["78440860685556"] = true,
	["81905101227053"] = true,
	["86096387000557"] = true,
	["86709774283672"] = true,
	["87259391926321"] = true,
	["92567970681901"] = true,
	["94958041603347"] = true
}
getgenv().getValidKillerTarget = function(arg726, arg727)
	local child52 = Killers53:FindFirstChild(v289.Name)
end
getgenv()._aimPunchCleanup = function(arg728, arg729)
	getgenv().originalWS = nil
	getgenv().originalJP = nil
	getgenv().originalAutoRotate = nil
end
getgenv().setupAimPunch = function(arg730, arg731)
end
RunService.RenderStepped:Connect(function(deltaTime43)
	local Humanoid54 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
	local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
	local tracks12 = Humanoid54 and Humanoid54:GetPlayingAnimationTracks()
	for k147, v357 in pairs(tracks12 or {}) do -- [[deobf: guard]]
		tostring(v357.Animation.AnimationId):match("%d+")
	end
end)
Players.LocalPlayer.CharacterAdded:Connect(function(character24)
	getgenv().originalWS = nil
	getgenv().originalJP = nil
	getgenv().originalAutoRotate = nil
end)
getgenv()._abSpeedCache = {}
getgenv().soundHooks = {}
getgenv()._soundStartedOutOfRange = {}
getgenv().lastAnimBlockFire = {}
getgenv()._animStartedOutOfRange = {}
getgenv()._soundStartedOutOfBox = {}
getgenv()._animStartedOutOfBox = {}
getgenv().visionCenterPart = nil
getgenv().visionLeftPart = nil
getgenv().visionRightPart = nil
getgenv().visionLeftToKiller = nil
getgenv().visionRightToKiller = nil
getgenv().visionLeftToCenter = nil
getgenv().visionCenterToRight = nil
getgenv().isInDetectionRange = function(arg732, arg733)
end
getgenv().hasAutoBlockLOS = function(arg734, arg735)
end
getgenv().checkVisionCone = function(arg736, arg737)
	local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
	local child53 = Killers53:FindFirstChild(v289.Name)
end
getgenv().cleanupVisionCone = function(arg738, arg739)
end
getgenv().IsKiller = function(arg740, arg741)
end
getgenv().updateVisionCone = function(arg742, arg743)
end
RunService.Heartbeat:Connect(function(deltaTime44)
end)
getgenv().killerSoundIds = {
	["1x1x1x1"] = {
		["115026634746636"] = true,
		["117173212095661"] = true,
		["119089145505438"] = true,
		["119942598489800"] = true,
		["121954639447247"] = true,
		["128856426573270"] = true,
		["135319730390518"] = true,
		["74809026448465"] = true,
		["85853080745515"] = true,
		["95079963655241"] = true,
		["98111231282218"] = true
	},
	Azure = { ["133709029886490"] = true },
	JohnDoe = {
		["105204810054381"] = true,
		["123923371062204"] = true,
		["131123355704017"] = true,
		["140242176732868"] = true,
		["86174610237192"] = true,
		["98675142200448"] = true
	},
	Noli = {
		["108610718831698"] = true,
		["109348678063422"] = true,
		["112395455254818"] = true,
		["114742322778642"] = true,
		["115678417928765"] = true,
		["128367348686124"] = true,
		["131406927389838"] = true,
		["136323728355613"] = true,
		["89004992452376"] = true,
		["96117920303138"] = true
	},
	Nosferatu = { ["104910828105172"] = true, ["119664480754070"] = true },
	ShedletskyFunny = { ["117173212095661"] = true },
	Sixer = {
		["108651070773439"] = true,
		["117231507259853"] = true,
		["119583605486352"] = true,
		["125213046326879"] = true,
		["127557531826290"] = true,
		["71805956520207"] = true,
		["74842815979546"] = true,
		["79980897195554"] = true
	},
	c00lkidd = {
		["105516183226360"] = true,
		["113413858159336"] = true,
		["124234993291213"] = true,
		["128195973631079"] = true,
		["75330693422988"] = true,
		["80516583309685"] = true,
		["82221759983649"] = true,
		["84307400688050"] = true,
		["98733709078792"] = true
	}
}
getgenv().autoCloneSoundIds = {
	["1x1x1x1"] = {
		["101199185291628"] = true,
		["115026634746636"] = true,
		["117173212095661"] = true,
		["119089145505438"] = true,
		["119942598489800"] = true,
		["121954639447247"] = true,
		["128856426573270"] = true,
		["135319730390518"] = true,
		["74809026448465"] = true,
		["85853080745515"] = true,
		["95079963655241"] = true,
		["98111231282218"] = true
	},
	Azure = { ["133709029886490"] = true },
	JohnDoe = {
		["105204810054381"] = true,
		["123923371062204"] = true,
		["131123355704017"] = true,
		["140242176732868"] = true,
		["86174610237192"] = true,
		["98675142200448"] = true
	},
	Noli = {
		["108610718831698"] = true,
		["109348678063422"] = true,
		["112395455254818"] = true,
		["114742322778642"] = true,
		["115678417928765"] = true,
		["128367348686124"] = true,
		["131406927389838"] = true,
		["136323728355613"] = true,
		["89004992452376"] = true,
		["89315669689903"] = true,
		["96117920303138"] = true
	},
	Nosferatu = { ["104910828105172"] = true, ["119664480754070"] = true },
	Plants = { ["77394486355187"] = true },
	Sixer = {
		["101553872555606"] = true,
		["101698569375359"] = true,
		["108651070773439"] = true,
		["117231507259853"] = true,
		["119583605486352"] = true,
		["125213046326879"] = true,
		["127557531826290"] = true,
		["139996647355899"] = true,
		["71805956520207"] = true,
		["74842815979546"] = true,
		["79980897195554"] = true,
		["96594507550917"] = true
	},
	Slasher = {
		["102228729296384"] = true,
		["105840448036441"] = true,
		["107444859834748"] = true,
		["107875832752356"] = true,
		["108907358619313"] = true,
		["110372418055226"] = true,
		["112063718195851"] = true,
		["112809109188560"] = true,
		["116468089135195"] = true,
		["116581754553533"] = true,
		["120749612844426"] = true,
		["124903763333174"] = true,
		["127793641088496"] = true,
		["136728245733659"] = true,
		["71310583817000"] = true,
		["72425554233832"] = true,
		["76959687420003"] = true,
		["86494585504534"] = true,
		["86833981571073"] = true,
		["90222552005724"] = true,
		["94317217837143"] = true
	},
	c00lkidd = {
		["103772923355314"] = true,
		["105516183226360"] = true,
		["107615371478270"] = true,
		["113413858159336"] = true,
		["121369993837377"] = true,
		["124234993291213"] = true,
		["128028377470509"] = true,
		["128195973631079"] = true,
		["134883911849369"] = true,
		["75330693422988"] = true,
		["79391273191671"] = true,
		["80516583309685"] = true,
		["81292728088654"] = true,
		["82221759983649"] = true,
		["84307400688050"] = true,
		["98733709078792"] = true
	}
}
getgenv().killerAnimIds = {
	Slasher = {
		["106860049270347"] = true,
		["108196996477620"] = true,
		["109667959938617"] = true,
		["118298475669935"] = true,
		["125403313786645"] = true,
		["126830014841198"] = true,
		["130958529065375"] = true,
		["94958041603347"] = true
	}
}
getgenv().autoBlockTriggerSounds = {}
getgenv().autoBlockTriggerAnimations = {}
getgenv().extractNumericSoundId = function(arg744, arg745)
	tostring(arg744.SoundId):match("%d+")
end
getgenv().extractNumericAnimationId = function(arg746, arg747)
	tostring(arg746.Animation.AnimationId):match("%d+")
end
getgenv().getSoundWorldPosition = function(arg748, arg749)
	arg748.Parent:FindFirstChild("HumanoidRootPart")
end
getgenv().activeHDT = {}
getgenv().Dspeed = 5.6
getgenv().Ddelay = 0.3
getgenv().HDT_DETECT_RADIUS = 6
getgenv().setHRPVelocitySafe = function(arg750, arg751)
	arg750.AssemblyLinearVelocity = arg751
end
getgenv().isBlockReady = function(arg752, arg753)
	local PlayerGui5 = (Players and Players.LocalPlayer) and Players.LocalPlayer:FindFirstChild("PlayerGui") or nil -- [[deobf: nil-chain guard]]
	local MainUI3 = PlayerGui5 and PlayerGui5:FindFirstChild("MainUI")
	local AbilityContainer = MainUI3 and MainUI3:FindFirstChild("AbilityContainer")
	local Block = AbilityContainer and AbilityContainer:FindFirstChild("Block")
	local CooldownTime = Block and Block:FindFirstChild("CooldownTime")
	if CooldownTime then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if CooldownTime then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	CooldownTime.Text:match("[%d%.]+")
	end
	end
end
getgenv().get_ping_seconds = function(arg754, arg755)
	Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
end
getgenv().killer_hitbox_data = {
	["1x1x1x1"] = { height = 3, range = 8, width = 3, windup = { CorruptEnergy = 0.45, Slash = 0.35 } },
	Azure = { height = 3, range = 8, width = 3, windup = { CarvingSlash = 0.25 } },
	JohnDoe = { height = 3, range = 8, width = 3, windup = { Lacerate = 0.35, Slash = 0.4 } },
	Noli = { height = 2.5, range = 7.5, width = 2.5, windup = { Stab = 0.3, VoidRush = 0.3 } },
	Nosferatu = { height = 3, range = 8, width = 3, windup = { Slash = 0.25 } },
	Sixer = { height = 2.5, range = 7.5, width = 2.5, windup = { Punch = 0.15 } },
	Slasher = { height = 3, range = 9, width = 3, windup = { Behead = 0.5, GashingWound = 1, Slash = 0.2 } },
	c00lkidd = { height = 2.5, range = 7, width = 2.5, windup = { Punch = 0.1, WalkspeedOverride = 0.2 } }
}
getgenv().m1_abilities = { CarvingSlash = true, Lacerate = true, Punch = true, Slash = true, Stab = true }
getgenv().unblockable_abilities = { InfernalCry = true, VoidRush = true, WalkspeedOverride = true }
getgenv().is_m1_ability = function(arg756, arg757)
end
getgenv().is_guest1337_unblockable = function(arg758, arg759)
end
getgenv().resolve_ability_name = function(arg760, arg761)
	local Humanoid26 = arg760:FindFirstChildOfClass("Humanoid")
	local Animator19 = Humanoid26 and Humanoid26:FindFirstChildOfClass("Animator")
	local tracks6 = Animator19 and Animator19:GetPlayingAnimationTracks()
	for i164, v290 in ipairs(tracks6 or {}) do -- [[deobf: guard]]
	end
end
getgenv().get_windup = function(arg762, arg763)
end
getgenv()._ab_qhb_hist = {}
getgenv().measure_qhb_velocity = function(arg764, arg765)
	arg764:FindFirstChild("QueryHitbox")
end
getgenv().predict_hitbox_cframe = function(arg766, arg767)
	arg766:FindFirstChild("HumanoidRootPart")
	arg766:FindFirstChild("QueryHitbox")
	arg766:FindFirstChild("QueryHitbox")
end
getgenv().calculate_block_delay = function(arg768, arg769)
	Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
	arg768:FindFirstChild("HumanoidRootPart")
end
getgenv().facing_history = {}
getgenv().flick_angle_threshold = 90
getgenv().detect_flick = function(arg770, arg771)
	arg770:FindFirstChild("HumanoidRootPart")
	arg770:FindFirstChild("QueryHitbox")
end
RunService.Heartbeat:Connect(function(deltaTime45)
end)
getgenv().predicted_hit_would_reach = function(arg772, arg773)
	arg772:FindFirstChild("HumanoidRootPart")
	arg772:FindFirstChild("QueryHitbox")
	arg772:FindFirstChild("QueryHitbox")
end
getgenv().should_skip_block = function(arg774, arg775)
	arg774:FindFirstChild("HumanoidRootPart")
	arg774:FindFirstChild("QueryHitbox")
end
getgenv().fire_block = function(arg776, arg777)
end
getgenv().hdtIsBlockTriggered = function(arg778, arg779)
	local Humanoid27 = arg778:FindFirstChildOfClass("Humanoid")
	local tracks7 = Humanoid27 and Humanoid27:GetPlayingAnimationTracks()
	for i165, v291 in ipairs(tracks7 or {}) do -- [[deobf: guard]]
		tostring(v291.Animation.AnimationId):match("%d+")
	end
	local descendants68 = arg778:GetDescendants()
	for i166, v292 in ipairs(descendants68) do
		tostring(v292.SoundId):match("%d+")
	end
end
RunService.Heartbeat:Connect(function(deltaTime46)
end)
getgenv().getBlockDelayForKiller = function(arg780, arg781)
	Killers53:GetChildren()
end
getgenv().attemptAutoBlockForSound = function(arg782, arg783)
end
getgenv().getKillerModelFromSound = function(arg784, arg785)
	arg784.Parent:FindFirstChild("HumanoidRootPart")
end
getgenv().hookSound = function(arg786, arg787)
	local changedSignal = arg786:GetPropertyChangedSignal("IsPlaying")
	changedSignal:Connect(function(arg788)
		local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
		arg786.Parent:FindFirstChild("HumanoidRootPart")
		task.spawn(function(...)
			task.wait(0.05)
			task.wait(0.05)
		end)
	end)
	local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
	arg786.Parent:FindFirstChild("HumanoidRootPart")
	task.spawn(function(...)
		task.wait(0.05)
		task.wait(0.05)
	end)
end
getgenv().hookDescendantSounds = function(arg789, arg790)
	local descendants69 = arg789:GetDescendants()
	for i167, v293 in ipairs(descendants69) do
		local changedSignal2 = v293:GetPropertyChangedSignal("IsPlaying")
		changedSignal2:Connect(function(arg791)
			local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
			v293.Parent:FindFirstChild("HumanoidRootPart")
			task.spawn(function(...)
				task.wait(0.05)
				task.wait(0.05)
			end)
		end)
		local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
		v293.Parent:FindFirstChild("HumanoidRootPart")
		task.spawn(function(...)
			task.wait(0.05)
			task.wait(0.05)
		end)
	end
	arg789.DescendantAdded:Connect(function(descendant64)
		local changedSignal4 = descendant64:GetPropertyChangedSignal("IsPlaying")
		changedSignal4:Connect(function(arg1077)
			local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
			descendant64.Parent:FindFirstChild("HumanoidRootPart")
			task.spawn(function(...)
				task.wait(0.05)
				task.wait(0.05)
			end)
		end)
		local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
		descendant64.Parent:FindFirstChild("HumanoidRootPart")
		task.spawn(function(...)
			task.wait(0.05)
			task.wait(0.05)
		end)
	end)
end
local children186 = Killers53:GetChildren()
for i168, v294 in ipairs(children186) do
	local descendants70 = v294:GetDescendants()
	for i169, v295 in ipairs(descendants70) do
		local changedSignal3 = v295:GetPropertyChangedSignal("IsPlaying")
		changedSignal3:Connect(function(arg792)
			local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
			v295.Parent:FindFirstChild("HumanoidRootPart")
			task.spawn(function(...)
				task.wait(0.05)
				task.wait(0.05)
			end)
		end)
		local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
		v295.Parent:FindFirstChild("HumanoidRootPart")
		task.spawn(function(...)
			task.wait(0.05)
			task.wait(0.05)
		end)
	end
	v294.DescendantAdded:Connect(function(descendant65)
		local changedSignal5 = descendant65:GetPropertyChangedSignal("IsPlaying")
		changedSignal5:Connect(function(arg1078)
			local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
			descendant65.Parent:FindFirstChild("HumanoidRootPart")
			task.spawn(function(...)
				task.wait(0.05)
				task.wait(0.05)
			end)
		end)
		local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
		descendant65.Parent:FindFirstChild("HumanoidRootPart")
		task.spawn(function(...)
			task.wait(0.05)
			task.wait(0.05)
		end)
	end)
	local Humanoid28 = v294:FindFirstChildOfClass("Humanoid")
	local Animator20 = Humanoid28 and Humanoid28:FindFirstChildOfClass("Animator")
	if Animator20 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if Animator20 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	Animator20.AnimationPlayed:Connect(function(arg793)
		tostring(arg793.Animation.AnimationId):match("%d+")
	end)
	end
	end
end
Killers53.ChildAdded:Connect(function(child42)
	local descendants82 = child42:GetDescendants()
	for i211, v358 in ipairs(descendants82) do
		local changedSignal6 = v358:GetPropertyChangedSignal("IsPlaying")
		changedSignal6:Connect(function(arg1079)
			local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
			v358.Parent:FindFirstChild("HumanoidRootPart")
			task.spawn(function(...)
				task.wait(0.05)
				task.wait(0.05)
			end)
		end)
		local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
		v358.Parent:FindFirstChild("HumanoidRootPart")
		task.spawn(function(...)
			task.wait(0.05)
			task.wait(0.05)
		end)
	end
	child42.DescendantAdded:Connect(function(descendant73)
		local changedSignal7 = descendant73:GetPropertyChangedSignal("IsPlaying")
		changedSignal7:Connect(function(arg1097)
			local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
			descendant73.Parent:FindFirstChild("HumanoidRootPart")
			task.spawn(function(...)
				task.wait(0.05)
				task.wait(0.05)
			end)
		end)
		local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
		descendant73.Parent:FindFirstChild("HumanoidRootPart")
		task.spawn(function(...)
			task.wait(0.05)
			task.wait(0.05)
		end)
	end)
	local Humanoid55 = child42:FindFirstChildOfClass("Humanoid")
	local Animator40 = Humanoid55 and Humanoid55:FindFirstChildOfClass("Animator")
	if Animator40 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if Animator40 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	Animator40.AnimationPlayed:Connect(function(arg1080)
		tostring(arg1080.Animation.AnimationId):match("%d+")
	end)
	end
	end
end)
RunService.Heartbeat:Connect(function(deltaTime47)
end)
RunService.RenderStepped:Connect(function(deltaTime48)
end)
RunService.Heartbeat:Connect(function(deltaTime49)
end)
getgenv().predBoxAdornments = {}
RunService.RenderStepped:Connect(function(deltaTime50)
end)
getgenv().AutoPunch = { Cooldown = 0.15, Enabled = false, TrueDash = false }
getgenv()._autoPunchLastFire = 0
getgenv()._autoPunchDetectedAt = 0
local connection118 = RunService.RenderStepped:Connect(function(deltaTime51)
end)
getgenv()._autoPunchConn = connection118
local Tab31 = Window:AddTab("Aim", "crosshair", "aim assist features")
local LeftTabbox6 = Tab31:AddLeftTabbox()
local Tab32 = LeftTabbox6:AddTab("Aimbot")
local Tab33 = LeftTabbox6:AddTab("Settings")
local RightTabbox7 = Tab31:AddRightTabbox()
local Tab34 = RightTabbox7:AddTab("Silent Aim")
local Tab35 = RightTabbox7:AddTab("Settings")
getgenv().SA_Prediction = 0
Tab35:AddSlider("VX_flag_215", {
	Text = "Prediction Strength",
	Default = 0,
	Max = 20,
	Min = 0,
	Rounding = 1,
	Callback = function(state, arg795)
		if state then
			getgenv().SA_Prediction = tonumber(state)
		end
	end
})
getgenv().SilentAimMode = false
Tab35:AddDropdown("VX_flag_216", {
	Text = "Target Aiming",
	Default = 1,
	Values = { "Nearest", "Lowest HP", "Closest To Cursor" },
	Callback = function(state, arg797)
		if state then
			getgenv().SilentAimMode = state
		end
	end
})
getgenv().VX_AimbotEnabled = false
getgenv().VX_AimbotTarget = "1x1x1x1"
getgenv().VX_AimbotDelay = 0
getgenv().VX_AimbotLastFired = 0
getgenv().VX_AimbotSmoothing = 0.2
getgenv().VX_AimbotPriority = "Nearest"
getgenv().VX_AimbotPrediction = 0
getgenv().VX_AimbotMaxDistance = math.huge
getgenv().VX_AimbotFaceSameDirection = false
getgenv().VX_BezierEnabled = false
getgenv().VX_BezierActive = false
getgenv().VX_BezierLineParts = {}
getgenv().VX_BezierSphere = nil
getgenv().VX_BezierColor = Color3.fromRGB(30, 150, 255)
getgenv().VX_BezierObjs = nil
getgenv().VX_SpawnBezierVisualizer = function(arg798, arg799)
end
getgenv().VX_ClearBezierInstant = function(arg800, arg801)
end
getgenv().VX_ClearBezierShatter = function(arg802, arg803)
end
getgenv().VX_Azure_Slash = true
getgenv().VX_Azure_Pummeling = true
getgenv().VX_Azure_GolemShockwave = true
getgenv().VX_Azure_GolemFissure = true
getgenv().VX_AzureAnimIds = {}
getgenv().VX_AzureSoundIds = {}
getgenv().VX_1x1_Entanglement = true
getgenv().VX_1x1_MassInfection = true
getgenv().VX_1x1_Slash = true
getgenv().VX_1x1AnimIds = {}
getgenv().VX_1x1SoundIds = {}
getgenv().VX_Slasher_Behead = true
getgenv().VX_Slasher_GashingWound = true
getgenv().VX_Slasher_Slash = true
getgenv().VX_SlasherAnimIds = {}
getgenv().VX_SlasherSoundIds = {}
getgenv().VX_mergeKillerIds = function(arg804, arg805)
	getgenv().autoCloneAnimIds = {}
	for i170, v296 in ipairs(arg805) do
	end
end
getgenv().VX_JohnDoe_CorruptEnergy = true
getgenv().VX_JohnDoe_Slash = true
getgenv().VX_JohnDoeAnimIds = {}
getgenv().VX_JohnDoeSoundIds = {}
getgenv().VX_C00lkidd_WalkspeedOverride = true
getgenv().VX_C00lkidd_Punch = true
getgenv().VX_C00lkiddAnimIds = {}
getgenv().VX_C00lkiddSoundIds = {}
getgenv().VX_Noli_VoidRush = true
getgenv().VX_Noli_Stab = true
getgenv().VX_NoliAnimIds = {}
getgenv().VX_NoliSoundIds = {}
getgenv().VX_Nos_Uppercut = true
getgenv().VX_Nos_Slash = true
getgenv().VX_NosAnimIds = {}
getgenv().VX_NosSoundIds = {}
getgenv().VX_Shedletsky_Slash = true
getgenv().VX_ShedletskyAnimIds = {}
getgenv().VX_ShedletskySoundIds = {}
getgenv().VX_Elliot_ThrowPizza = true
getgenv().VX_ElliotAnimIds = {}
getgenv().VX_ElliotSoundIds = {}
getgenv().VX_ElliotAimMode = "Nearest Survivor"
getgenv().VX_JaneDoe_Axe = true
getgenv().VX_JaneDoeAnimIds = {}
getgenv().VX_JaneDoeSoundIds = {}
getgenv().VX_TwoTime_Stab = true
getgenv().VX_TwoTimeAnimIds = {}
getgenv().VX_TwoTimeSoundIds = {}
getgenv().VX_Sixer_DemonicPursuit = true
getgenv().VX_Sixer_InfernalCry = true
getgenv().VX_Sixer_Slash = true
getgenv().VX_SixerAnimIds = {}
getgenv().VX_SixerSoundIds = {}
getgenv().VX_AimbotSurvivorConn = nil
getgenv().VX_AimbotSurvivorHRPConn = nil
getgenv().VX_AimbotDelayActive = false
getgenv().VX_AimbotWasActive = false
getgenv().VX_AimbotBestHRP = nil
getgenv().VX_AimbotPredictedPos = nil
local connection119 = RunService.RenderStepped:Connect(function(deltaTime52)
	getgenv().VX_AimbotBestHRP = nil
	getgenv().VX_AimbotPredictedPos = nil
end)
getgenv().VX_AimbotSurvivorConn = connection119
local connection120 = RunService.Heartbeat:Connect(function(deltaTime53)
	getgenv().VX_AimbotBestHRP = nil
	getgenv().VX_AimbotPredictedPos = nil
end)
getgenv().VX_AimbotSurvivorHRPConn = connection120
local connection121 = RunService.Heartbeat:Connect(function(deltaTime54)
end)
getgenv()._VX_BezierHookConn = connection121
Tab32:AddCheckbox("VX_flag_217", {
	Text = "Aimbot",
	Default = false,
	Callback = function(state, arg807)
	end
})
getgenv().VX_3DAimbot = { Enabled = false, Entanglement = true, Gun = true, MassInfection = true, Uppercut = true }
Tab32:AddCheckbox("VX_flag_218", {
	Text = "3D Aimbot",
	Default = false,
	Callback = function(state, arg809)
		if state then
			local connection122 = RunService.Heartbeat:Connect(function(deltaTime55)
			end)
			local Dialog = Window:AddDialog("VX_3DAimbotCfgDlg_1700005573.8214118", {
		Title = "3D Aimbot Config",
		Description = "Choose which abilities trigger the 3D aimbot.",
		AutoDismiss = false,
		FooterButtons = {
			Apply = {
				Title = "Apply",
				Order = 2,
				Variant = "Primary",
				Callback = function(arg810, arg811)
							getgenv().VX_NosSoundIds = {}
							getgenv().VX_NosAnimIds = {}
							require(ReplicatedStorage.Assets.Killers.Nosferatu.Config)
							ReplicatedStorage:FindFirstChild("Assets")
							ReplicatedStorage.Assets:FindFirstChild("Skins")
							ReplicatedStorage.Assets.Skins:FindFirstChild("Killers")
							local Nosferatu = ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("Nosferatu")
							local children187 = Nosferatu and Nosferatu:GetChildren()
							for i171, v297 in ipairs(children187 or {}) do -- [[deobf: guard]]
								local Config3 = v297:FindFirstChild("Config")
								require(Config3)
							end
							getgenv().VX_1x1AnimIds = {}
							getgenv().VX_1x1_3DAnimIds = {}
							getgenv().VX_1x1SoundIds = {}
							require(ReplicatedStorage.Assets.Killers["1x1x1x1"].Config)
							ReplicatedStorage:FindFirstChild("Assets")
							ReplicatedStorage.Assets:FindFirstChild("Skins")
							ReplicatedStorage.Assets.Skins:FindFirstChild("Killers")
							local v1x1x1x1 = ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("1x1x1x1")
							local children188 = v1x1x1x1 and v1x1x1x1:GetChildren()
							for i172, v298 in ipairs(children188 or {}) do -- [[deobf: guard]]
								local Config4 = v298:FindFirstChild("Config")
								require(Config4)
							end
						end
			}
		},
		OutsideClickDismiss = true
	})
			getgenv().VX_Nos_Uppercut = false
			Dialog:AddToggle("VX_3D_Uppercut", {
		Text = "Uppercut  (Nosferatu)",
		Default = true,
		Callback = function(state, arg813)
				end
	})
			getgenv().VX_1x1_MassInfection = false
			Dialog:AddToggle("VX_3D_MassInfection", {
		Text = "MassInfection  (1x1x1x1)",
		Default = true,
		Callback = function(state, arg815)
				end
	})
			getgenv().VX_1x1_Entanglement = false
			Dialog:AddToggle("VX_3D_Entanglement", {
		Text = "Entanglement  (1x1x1x1)",
		Default = true,
		Callback = function(state, arg817)
				end
	})
			Dialog:AddToggle("VX_3D_Gun", {
		Text = "Gun  (Chance)",
		Default = true,
		Callback = function(state, arg819)
				end
	})
			getgenv().VX_AimbotDuration = nil
			Dialog:AddSlider("VX_VX_3D_AimbotDuration", {
		Text = "Aimbot Duration",
		Default = 0,
		Max = 5,
		Min = 0,
		Rounding = 1,
		Callback = function(state, arg821)
					if state then
						getgenv().VX_AimbotDuration = tonumber(state)
					end
				end
	})
			Dialog:AddSlider("VX_VX_3D_AimbotDelay", {
		Text = "Aimbot Delay",
		Default = 0,
		Max = 2,
		Min = 0,
		Rounding = 2,
		Suffix = "s",
		Callback = function(state, arg823)
				end
	})
		else
			if connection122 then connection122:Disconnect() end -- [[deobf: guard — определение в другой области]]
		end
	end
})
Tab32:AddCheckbox("VX_flag_219", {
	Text = "Face Same Direction",
	Default = false,
	Callback = function(state, arg825)
	end
})
getgenv().VX_AimbotFallbackEnabled = true
getgenv().VX_AimbotFallbackEnabled = false
Tab32:AddCheckbox("VX_flag_220", {
	Text = "Aim Without Ability Check",
	Default = true,
	Callback = function(state, arg827)
	end
})
Tab32:AddCheckbox("VX_flag_221", {
	Text = "Curve Visualizer",
	Default = false,
	Callback = function(state, arg829)
	end
})
getgenv().VX_AimbotTargets = {}
local Dropdown = Tab32:AddDropdown("VX_flag_222", {
	Text = "Select Characters",
	Default = {
		"Azure",
		"1x1x1x1",
		"c00lkidd",
		"Slasher",
		"John Doe",
		"Noli",
		"Sixer",
		"Nosferatu",
		"Shedletsky",
		"Elliot",
		"Jane Doe",
		"Two Time"
	},
	Multi = true,
	Values = {
		"Azure",
		"1x1x1x1",
		"c00lkidd",
		"Slasher",
		"John Doe",
		"Noli",
		"Sixer",
		"Nosferatu",
		"Shedletsky",
		"Elliot",
		"Jane Doe",
		"Two Time"
	}
})
Dropdown:OnChanged(function(arg830, arg831)
	local activeValues = Dropdown:GetActiveValues()
	for i173, v299 in ipairs(activeValues) do
		getgenv().VX_AimbotTargets = { [v299] = true }
	end
	getgenv().VX_AimbotTarget = activeValues[1]
end)
getgenv().VX_TwoTimeSoundIds = {}
getgenv().VX_TwoTimeAnimIds = {
	"100725497418533",
	"106086955212611",
	"107640065977686",
	"77119710693654",
	"112902284724598",
	"89448354637442",
	"115194624791339",
	"119434518007321"
}
task.spawn(function(...)
	getgenv().VX_AzureSoundIds = {}
	getgenv().VX_AzureAnimIds = {}
	require(ReplicatedStorage.Assets.Killers.Azure.Config)
	ReplicatedStorage:FindFirstChild("Assets")
	ReplicatedStorage.Assets:FindFirstChild("Skins")
	ReplicatedStorage.Assets.Skins:FindFirstChild("Killers")
	local Azure4 = ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("Azure")
	local children189 = Azure4 and Azure4:GetChildren()
	for i174, v300 in ipairs(children189 or {}) do -- [[deobf: guard]]
		local Config5 = v300:FindFirstChild("Config")
		require(Config5)
	end
	getgenv().VX_1x1_3DAnimIds = {}
	getgenv().VX_1x1SoundIds = {}
	getgenv().VX_1x1AnimIds = {}
	require(ReplicatedStorage.Assets.Killers["1x1x1x1"].Config)
	ReplicatedStorage:FindFirstChild("Assets")
	ReplicatedStorage.Assets:FindFirstChild("Skins")
	ReplicatedStorage.Assets.Skins:FindFirstChild("Killers")
	local v1x1x1x12 = ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("1x1x1x1")
	local children190 = v1x1x1x12 and v1x1x1x12:GetChildren()
	for i175, v301 in ipairs(children190 or {}) do -- [[deobf: guard]]
		local Config6 = v301:FindFirstChild("Config")
		require(Config6)
	end
	getgenv().VX_SlasherSoundIds = {}
	getgenv().VX_SlasherAnimIds = {}
	require(ReplicatedStorage.Assets.Killers.Slasher.Config)
	ReplicatedStorage:FindFirstChild("Assets")
	ReplicatedStorage.Assets:FindFirstChild("Skins")
	ReplicatedStorage.Assets.Skins:FindFirstChild("Killers")
	local Slasher2 = ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("Slasher")
	local children191 = Slasher2 and Slasher2:GetChildren()
	for i176, v302 in ipairs(children191 or {}) do -- [[deobf: guard]]
		local Config7 = v302:FindFirstChild("Config")
		require(Config7)
	end
	getgenv().VX_JohnDoeAnimIds = {}
	getgenv().VX_JohnDoeSoundIds = {}
	require(ReplicatedStorage.Assets.Killers.JohnDoe.Config)
	ReplicatedStorage:FindFirstChild("Assets")
	ReplicatedStorage.Assets:FindFirstChild("Skins")
	ReplicatedStorage.Assets.Skins:FindFirstChild("Killers")
	local JohnDoe = ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("JohnDoe")
	local children192 = JohnDoe and JohnDoe:GetChildren()
	for i177, v303 in ipairs(children192 or {}) do -- [[deobf: guard]]
		local Config8 = v303:FindFirstChild("Config")
		require(Config8)
	end
	getgenv().VX_C00lkiddAnimIds = {}
	getgenv().VX_C00lkiddSoundIds = {}
	require(ReplicatedStorage.Assets.Killers.c00lkidd.Config)
	ReplicatedStorage:FindFirstChild("Assets")
	ReplicatedStorage.Assets:FindFirstChild("Skins")
	ReplicatedStorage.Assets.Skins:FindFirstChild("Killers")
	local c00lkidd = ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("c00lkidd")
	local children193 = c00lkidd and c00lkidd:GetChildren()
	for i178, v304 in ipairs(children193 or {}) do -- [[deobf: guard]]
		local Config9 = v304:FindFirstChild("Config")
		require(Config9)
	end
	getgenv().VX_NoliSoundIds = {}
	getgenv().VX_NoliAnimIds = {}
	require(ReplicatedStorage.Assets.Killers.Noli.Config)
	ReplicatedStorage:FindFirstChild("Assets")
	ReplicatedStorage.Assets:FindFirstChild("Skins")
	ReplicatedStorage.Assets.Skins:FindFirstChild("Killers")
	local Noli = ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("Noli")
	local children194 = Noli and Noli:GetChildren()
	for i179, v305 in ipairs(children194 or {}) do -- [[deobf: guard]]
		local Config10 = v305:FindFirstChild("Config")
		require(Config10)
	end
	getgenv().VX_ShedletskyAnimIds = {}
	getgenv().VX_ShedletskySoundIds = {}
	require(ReplicatedStorage.Assets.Survivors.Shedletsky.Config)
	ReplicatedStorage:FindFirstChild("Assets")
	ReplicatedStorage.Assets:FindFirstChild("Skins")
	ReplicatedStorage.Assets.Skins:FindFirstChild("Survivors")
	local Shedletsky = ReplicatedStorage.Assets.Skins.Survivors:FindFirstChild("Shedletsky")
	local children195 = Shedletsky and Shedletsky:GetChildren()
	for i180, v306 in ipairs(children195 or {}) do -- [[deobf: guard]]
		local Config11 = v306:FindFirstChild("Config")
		require(Config11)
	end
	getgenv().VX_ElliotAnimIds = {}
	getgenv().VX_ElliotSoundIds = {}
	require(ReplicatedStorage.Assets.Survivors.Elliot.Config)
	ReplicatedStorage:FindFirstChild("Assets")
	ReplicatedStorage.Assets:FindFirstChild("Skins")
	ReplicatedStorage.Assets.Skins:FindFirstChild("Survivors")
	local Elliot = ReplicatedStorage.Assets.Skins.Survivors:FindFirstChild("Elliot")
	local children196 = Elliot and Elliot:GetChildren()
	for i181, v307 in ipairs(children196 or {}) do -- [[deobf: guard]]
		local Config12 = v307:FindFirstChild("Config")
		require(Config12)
	end
	getgenv().VX_JaneDoeSoundIds = {}
	getgenv().VX_JaneDoeAnimIds = {}
	require(ReplicatedStorage.Assets.Survivors.JaneDoe.Config)
	ReplicatedStorage:FindFirstChild("Assets")
	ReplicatedStorage.Assets:FindFirstChild("Skins")
	ReplicatedStorage.Assets.Skins:FindFirstChild("Survivors")
	local JaneDoe = ReplicatedStorage.Assets.Skins.Survivors:FindFirstChild("JaneDoe")
	local children197 = JaneDoe and JaneDoe:GetChildren()
	for i182, v308 in ipairs(children197 or {}) do -- [[deobf: guard]]
		local Config13 = v308:FindFirstChild("Config")
		require(Config13)
	end
	getgenv().VX_NosSoundIds = {}
	getgenv().VX_NosAnimIds = {}
	require(ReplicatedStorage.Assets.Killers.Nosferatu.Config)
	ReplicatedStorage:FindFirstChild("Assets")
	ReplicatedStorage.Assets:FindFirstChild("Skins")
	ReplicatedStorage.Assets.Skins:FindFirstChild("Killers")
	local Nosferatu2 = ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("Nosferatu")
	local children198 = Nosferatu2 and Nosferatu2:GetChildren()
	for i183, v309 in ipairs(children198 or {}) do -- [[deobf: guard]]
		local Config14 = v309:FindFirstChild("Config")
		require(Config14)
	end
	getgenv().VX_SixerSoundIds = {}
	getgenv().VX_SixerAnimIds = {}
	require(ReplicatedStorage.Assets.Killers.Sixer.Config)
	ReplicatedStorage:FindFirstChild("Assets")
	ReplicatedStorage.Assets:FindFirstChild("Skins")
	ReplicatedStorage.Assets.Skins:FindFirstChild("Killers")
	local Sixer = ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("Sixer")
	local children199 = Sixer and Sixer:GetChildren()
	for i184, v310 in ipairs(children199 or {}) do -- [[deobf: guard]]
		local Config15 = v310:FindFirstChild("Config")
		require(Config15)
	end
end)
getgenv().VX_AimbotWallCheckMode = "Off"
getgenv().VX_AimbotMode = "Both"
getgenv().VX_AimbotMode = false
Tab32:AddDropdown("VX_flag_223", {
	Text = "Aimbot Mode",
	Default = 3,
	Values = { "Camera", "HRP", "Both" },
	Callback = function(state, arg833)
	end
})
getgenv().VX_AimbotWallCheckMode = false
Tab32:AddDropdown("VX_flag_224", {
	Text = "Wall Check",
	Default = 1,
	Values = { "Off", "Camera", "Character" },
	Callback = function(state, arg835)
	end
})
getgenv().VX_ElliotAimMode = false
Tab33:AddDropdown("VX_flag_225", {
	Text = "Elliot Target",
	Default = "Nearest Survivor",
	Values = { "Nearest Survivor", "Lowest HP", "Closest to Cursor" },
	Callback = function(state, arg837)
	end
})
getgenv().VX_AimbotPriority = false
Tab33:AddDropdown("VX_flag_226", {
	Text = "Priority",
	Default = 1,
	Values = { "Nearest", "Closest to Cursor" },
	Callback = function(state, arg839)
	end
})
Tab33:AddSlider("VX_flag_227", {
	Text = "Aim Delay",
	Default = 0,
	Max = 2,
	Min = 0,
	Rounding = 2,
	Suffix = "s",
	Callback = function(state, arg841)
	end
})
Tab33:AddSlider("VX_flag_228", {
	Text = "Aim Speed",
	Default = 20,
	Max = 100,
	Min = 1,
	Rounding = 0,
	Suffix = "%",
	Callback = function(state, arg843)
	end
})
Tab33:AddSlider("VX_flag_229", {
	Text = "Prediction",
	Default = 0,
	Max = 20,
	Min = 0,
	Rounding = 1,
	Suffix = " frames",
	Callback = function(state, arg845)
	end
})
local Label = Tab33:AddLabel("Visualizer Color")
getgenv().VX_BezierColor = false
Label:AddColorPicker("VX_flag_230", {
	Title = "Visualizer Color",
	Default = Color3.fromRGB(30, 150, 255),
	Callback = function(state, arg847)
	end
})
Tab33:AddSlider("VX_flag_231", {
	Text = "Aimbot Distance",
	Default = 100,
	Max = 100,
	Min = 10,
	Rounding = 0,
	Suffix = " studs",
	Callback = function(arg848, arg849)
	end
})
task.spawn(function(...)
	local module4 = require(ReplicatedStorage.Systems.Player.Miscellaneous.GetPlayerMousePosition) -- [[deobf: восстановлен локальный require]]
	getgenv().MouseModule = module4
	getgenv().OriginalGetMousePos = getgenv().MouseModule.GetMousePos
	getgenv().SilentAimEnabled = false
	getgenv().SilentAimMode = "Nearest"
	getgenv().AllowedCharacters = {}
	getgenv().SA_AimPart = "HumanoidRootPart"
	getgenv().SA_CrosshairRadius = 120
	getgenv().SA_CrosshairCircle = nil
	getgenv().SA_CrosshairCircleConn = nil
	getgenv().CanUseSilentAim = function(arg850, arg851)
	end
	getgenv().SA_GetAimPosition = function(arg852, arg853)
		arg852:FindFirstChild("HumanoidRootPart")
	end
	getgenv().GetNearestKiller = function(arg854, arg855)
		local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
		workspace:FindFirstChild("Players")
		local Killers54 = (workspace and workspace.Players) and workspace.Players:FindFirstChild("Killers") or nil -- [[deobf: nil-chain guard]]
		local children200 = Killers54 and Killers54:GetChildren()
		for k127, v311 in pairs(children200 or {}) do -- [[deobf: guard]]
			v311:FindFirstChild("HumanoidRootPart")
		end
	end
	getgenv().GetNearestSurvivor = function(arg856, arg857)
		local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
		workspace:FindFirstChild("Players")
		local Survivors26 = (workspace and workspace.Players) and workspace.Players:FindFirstChild("Survivors") or nil -- [[deobf: nil-chain guard]]
		local children201 = Survivors26 and Survivors26:GetChildren()
		for k128, v312 in pairs(children201 or {}) do -- [[deobf: guard]]
			v312:FindFirstChild("HumanoidRootPart")
		end
	end
	getgenv().GetNearestLowestHPSurvivor = function(arg858, arg859)
		local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
		workspace:FindFirstChild("Players")
		local Survivors27 = (workspace and workspace.Players) and workspace.Players:FindFirstChild("Survivors") or nil -- [[deobf: nil-chain guard]]
		local children202 = Survivors27 and Survivors27:GetChildren()
		for k129, v313 in pairs(children202 or {}) do -- [[deobf: guard]]
			v313:FindFirstChild("HumanoidRootPart")
		end
		local children203 = Survivors27 and Survivors27:GetChildren()
		for k130, v314 in pairs(children203 or {}) do -- [[deobf: guard]]
			v314:FindFirstChild("HumanoidRootPart")
			v314:FindFirstChildOfClass("Humanoid")
		end
	end
	getgenv().GetCrosshairScreenPos = function(arg860, arg861)
	end
	getgenv().SA_GetClosestToCrosshair = function(arg862, arg863)
		workspace:FindFirstChild("Players")
		local Survivors28 = (workspace and workspace.Players) and workspace.Players:FindFirstChild("Survivors") or nil -- [[deobf: nil-chain guard]]
		workspace:FindFirstChild("Players")
		local Killers55 = (workspace and workspace.Players) and workspace.Players:FindFirstChild("Killers") or nil -- [[deobf: nil-chain guard]]
		local children204 = Survivors28 and Survivors28:GetChildren()
		for k131, v315 in pairs(children204 or {}) do -- [[deobf: guard]]
			local HumanoidRootPart3 = v315:FindFirstChild("HumanoidRootPart")
			workspace.CurrentCamera:WorldToViewportPoint(HumanoidRootPart3.Position)
		end
		local children205 = Killers55 and Killers55:GetChildren()
		for k132, v316 in pairs(children205 or {}) do -- [[deobf: guard]]
			local HumanoidRootPart4 = v316:FindFirstChild("HumanoidRootPart")
			workspace.CurrentCamera:WorldToViewportPoint(HumanoidRootPart4.Position)
		end
	end
	getgenv().StartSA_CrosshairCircle = function(arg864, arg865)
		local UIStroke3 = Instance.new("UIStroke")
		UIStroke3.Color = Color3.fromRGB(255, 200, 0)
		UIStroke3.Thickness = 1.5
		UIStroke3.Transparency = 0.4
		UIStroke3.Parent = Frame4
		local UICorner3 = Instance.new("UICorner")
		UICorner3.CornerRadius = UDim.new(1, 0)
		UICorner3.Parent = Frame4
		getgenv().SA_CrosshairCircle = ScreenGui5
		local connection123 = RunService.RenderStepped:Connect(function(deltaTime56)
			local GuiService = game:GetService("GuiService")
			local guiInset = GuiService:GetGuiInset()
		end)
		getgenv().SA_CrosshairCircleConn = connection123
	end
	getgenv().SA_CrosshairCircle = nil
	getgenv().StopSA_CrosshairCircle = function(arg866, arg867)
		if connection123 then connection123:Disconnect() end -- [[deobf: guard — определение в другой области]]
		getgenv().SA_CrosshairCircleConn = nil
	end
	getgenv().StartSA_FOVCircle = function(arg868, arg869)
	end
	getgenv().StopSA_FOVCircle = function(arg870, arg871)
	end
	getgenv().UpdateSilentAim = function(arg872, arg873)
	end
	Players.LocalPlayer.CharacterAdded:Connect(function(character25)
	end)
	Tab34:AddCheckbox("VX_flag_232", {
	Text = "Enable Silent Aim",
	Default = false,
	Callback = function(state, arg875)
			if state then
				getgenv().MouseModule.GetMousePos = function(arg876, arg877)
					getgenv().SilentAimEnabled = state
					workspace:FindFirstChild("Players")
					local Survivors29 = (workspace and workspace.Players) and workspace.Players:FindFirstChild("Survivors") or nil -- [[deobf: nil-chain guard]]
					local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
					local children206 = Survivors29 and Survivors29:GetChildren()
					for k133, v317 in pairs(children206 or {}) do -- [[deobf: guard]]
					end
				end
			else
				getgenv().SilentAimEnabled = false
				getgenv().MouseModule.GetMousePos = getgenv().MouseModule.GetMousePos
			end
		end
})
	getgenv().AllowedCharacters = {}
	Tab34:AddDropdown("VX_flag_233", {
	Text = "Which Character",
	Default = { "Dusekkar", "Nosferatu", "c00lkidd", "Noli", "Jane Doe", "Sixer", "Azure" },
	Multi = true,
	Values = { "Dusekkar", "Nosferatu", "c00lkidd", "Noli", "Jane Doe", "Sixer", "Azure" },
	Callback = function(arg878, arg879)
			getgenv().AllowedCharacters = {}
			for i185, v318 in ipairs(arg878) do
			end
		end
})
	local objects = game:GetObjects("rbxassetid://9983142905")
	local obj71 = objects and objects[1] -- [[deobf: guard на случай незагрузившегося ассета]]
	local descendants71 = obj71 and obj71:GetDescendants() or {}
	for i186, v319 in ipairs(descendants71) do
		if v319:IsA("BasePart") then v319.Anchored = true end -- [[deobf: guard — prop валиден только на BasePart]]
		v319.Color = Color3.fromRGB(138, 138, 138)
		v319.Transparency = 0
	end
	local descendants72 = obj71 and obj71:GetDescendants() or {}
	for i187, v320 in ipairs(descendants72) do
		v320.Color = Color3.fromRGB(138, 138, 138)
	end
	local Torso2 = obj71 and obj71:FindFirstChild("Torso", true)
	if Torso2 then Torso2.Color = Color3.fromRGB(115, 201, 115) end
	Tab34:AddViewport("VX_flag_234", { Focused = true, Height = 260, Interactive = false, Object = obj71 })
	task.spawn(function(...)
		local CoreGui = game:GetService("CoreGui") -- [[deobf: восстановлено определение, потерянное при рендере]]
		task.wait(0.1)
		local descendants73 = CoreGui:GetDescendants()
		for i188, v321 in ipairs(descendants73) do
			v321:FindFirstChildOfClass("WorldModel")
		end
		Players.LocalPlayer.PlayerGui:GetDescendants()
		task.wait(0.1)
	end)
	Tab34:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	Tab34:AddLabel("This automatically swaps the target from killer to survivor for Jane Doe and Dusekkar!", true)
	getgenv().SA_SwapEnabled = false
	getgenv().SA_SwapActive = false
	getgenv().SA_DoSwap = function(arg880, arg881)
		result:Notify({ Title = "Swap Target", Description = "Only usable as JaneDoe or Dusekkar!", Duration = 2 })
	end
	getgenv().SA_SyncBtn = function(arg882, arg883)
		arg882.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	end
	Tab34:AddCheckbox("VX_flag_235", {
	Text = "Target Swap",
	Default = false,
	Callback = function(state, arg885)
		end
})
	getgenv().SA_SwapTargetMode = "Nearest"
	getgenv().SA_SwapTargetMode = false
	Tab34:AddDropdown("VX_flag_236", {
	Text = "Target Swap Target",
	Default = "Nearest",
	Tooltip = "How the swap target is selected when swapping",
	Values = { "Nearest", "Lowest HP", "Closest to Cursor" },
	Callback = function(state, arg887)
		end
})
	local Label2 = Tab34:AddLabel("Swap Target Keybind")
	Label2:AddKeyPicker("VX_flag_237", {
	Text = "Swap Target Keybind",
	Default = "F",
	Mode = "Press",
	Callback = function(state, arg889)
		end
})
	Tab34:AddCheckbox("VX_flag_238", {
	Text = "Swap Target GUI (Mobile)",
	Default = false,
	Callback = function(state, arg891)
			if state then
				result:Notify({ Title = "Swap Target GUI", Description = "Enable Target Swap first!", Duration = 3 })
			end
		end
})
end)
local Tab36 = Window:AddTab("Generators", "battery-charging", "generator esp and solver")
local LeftTabbox7 = Tab36:AddLeftTabbox("battery-charging")
local Tab37 = LeftTabbox7:AddTab("Generators")
local Tab38 = LeftTabbox7:AddTab("Settings")
local Tab39 = LeftTabbox7:AddTab("Difficulty")
local RightTabbox8 = Tab36:AddRightTabbox()
local Tab40 = RightTabbox8:AddTab("Solver")
local Tab41 = RightTabbox8:AddTab("Settings")
local Modules9 = ReplicatedStorage:FindFirstChild("Modules")
local Minigames = Modules9 and Modules9:FindFirstChild("Minigames")
local FlowGameManager = Minigames and Minigames:FindFirstChild("FlowGameManager")
local FlowGame = FlowGameManager and FlowGameManager:FindFirstChild("FlowGame")
local module27 = require(FlowGame)
local __orig_new27 = module27.new -- [[reconstructed: сохранение оригинала]]
module27.new = function(arg892, arg893)
	return __orig_new27(arg892, arg893)
end
Tab40:AddToggle("VX_flag_239", {
	Text = "Automatic Solver",
	Default = false,
	Callback = function(state, arg895)
	end
})
Tab41:AddToggle("VX_flag_240", {
	Text = "Incorrect Paths",
	Default = false,
	Callback = function(state, arg897)
	end
})
Tab41:AddSlider("VX_flag_241", {
	Text = "Mistake Chance",
	Default = 30,
	Max = 100,
	Min = 0,
	Rounding = 0,
	Callback = function(arg898, arg899)
	end
})
Tab40:AddSlider("VX_flag_242", {
	Text = "Min Solve Speed",
	Default = 4,
	Max = 20,
	Min = 1,
	Rounding = 0,
	Callback = function(arg900, arg901)
	end
})
Tab40:AddSlider("VX_flag_243", {
	Text = "Max Solve Speed",
	Default = 4,
	Max = 20,
	Min = 1,
	Rounding = 0,
	Callback = function(arg902, arg903)
	end
})
task.spawn(function(...)
	-- [deobf: one mangled UI block (checkbox "Auto Gen" + its nested GUI code) removed:
	--   the trace renderer mis-nested this region]
	task.spawn(function(...)
		task.wait(0.1)
		task.wait(0.1)
	end)
	getgenv().VX_GenKeybindEnabled = true
	getgenv().VX_GenKeybindKey = Enum.KeyCode.X
	Tab38:AddInput("VX_flag_249", {
	Text = "Gen Keybind",
	Placeholder = "X",
	Callback = function(state, arg915)
		end
})
	UserInputService.InputBegan:Connect(function(input4, gameProcessed4)
	end)
	getgenv().HintEnabled = false
	getgenv().currentPuzzle = nil
	getgenv().HintOpacity = 0.4
	getgenv().LineThickness = 30
	getgenv().fh_hooked = true
	local Modules10 = ReplicatedStorage:FindFirstChild("Modules")
	local Minigames2 = Modules10 and Modules10:FindFirstChild("Minigames")
	local FlowGameManager2 = Minigames2 and Minigames2:FindFirstChild("FlowGameManager")
	local FlowGame2 = FlowGameManager2 and FlowGameManager2:FindFirstChild("FlowGame")
	local module28 = require(FlowGame2)
	local __orig_new28 = module28.new -- [[reconstructed: сохранение оригинала — без него бесконечная рекурсия]]
	module28.new = function(arg916, arg917)
		local result63 = __orig_new28(arg916, arg917)
		getgenv().currentPuzzle = result63
		result63.gridFrame.AncestryChanged:Connect(function(child43, parent)
		end)
	end
	Tab38:AddCheckbox("VX_flag_250", {
	Text = "Generator Helper",
	Default = false,
	Callback = function(state, arg919)
			local result63 = getgenv().currentPuzzle -- [[deobf: из хука module28.new]]
			if not result63 then return end -- [[deobf: нет активной головоломки]]
			if state then
				getgenv().HintEnabled = state
				local children207 = result63.gridFrame:GetChildren()
				for i190, v323 in ipairs(children207) do
					local Effects = v323:FindFirstChild("Effects")
					local HintFX = Effects and Effects:FindFirstChild("HintFX")
					if HintFX then HintFX:Destroy() end -- [[deobf: guard]]
				end
				for i191, v324 in ipairs(result63.Solution) do
					for i192, v325 in ipairs(v324) do
					end
					for i193, v326 in ipairs(v324) do
				end
					end
			else
				getgenv().HintEnabled = false
				local children208 = result63.gridFrame:GetChildren()
				for i194, v327 in ipairs(children208) do
					local Effects2 = v327:FindFirstChild("Effects")
					local HintFX2 = Effects2 and Effects2:FindFirstChild("HintFX")
					if HintFX2 then HintFX2:Destroy() end -- [[deobf: guard]]
				end
			end
		end
})
	getgenv().GeneratorSize = { Current = 6, Enabled = false }
	Tab39:AddCheckbox("VX_flag_251", {
	Text = "Generator Difficulty",
	Default = false,
	Callback = function(state, arg921)
			if state then
				workspace:FindFirstChild("Map")
				workspace.Map:FindFirstChild("Ingame")
				local Map99 = workspace.Map.Ingame:FindFirstChild("Map")
				local children209 = Map99 and Map99:GetChildren()
				for k134, v328 in pairs(children209 or {}) do -- [[deobf: guard]]
				end
			end
		end
})
	Tab39:AddInput("VX_flag_252", {
	Text = "Difficulty (2–30)",
	Placeholder = "2–30",
	Callback = function(state, arg923)
		end
})
	Tab38:AddCheckbox("VX_flag_253", {
	Text = "Hide Generator UI",
	Default = false,
	Callback = function(state, arg925)
			if state then
				getgenv().CloseGeneratorsUI = state
				local PuzzleUI = Players.LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI")
				local TemporaryUI3 = Players.LocalPlayer.PlayerGui:FindFirstChild("TemporaryUI")
				local BackgroundUI = TemporaryUI3 and TemporaryUI3:FindFirstChild("BackgroundUI")
				if PuzzleUI then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if PuzzleUI then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				PuzzleUI.Enabled = false
				end
				end
				if BackgroundUI then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if BackgroundUI then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				BackgroundUI.Enabled = false
				end
				end
				local connection124 = RunService.Heartbeat:Connect(function(deltaTime57)
				end)
				getgenv().CloseGeneratorsUILoop = connection124
			else
				getgenv().CloseGeneratorsUI = false
				if connection124 then connection124:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv().CloseGeneratorsUILoop = nil
				local PuzzleUI2 = Players.LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI")
				local TemporaryUI4 = Players.LocalPlayer.PlayerGui:FindFirstChild("TemporaryUI")
				local BackgroundUI2 = TemporaryUI4 and TemporaryUI4:FindFirstChild("BackgroundUI")
				if PuzzleUI2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if PuzzleUI2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				PuzzleUI2.Enabled = true
				end
				end
				if BackgroundUI2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if BackgroundUI2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				BackgroundUI2.Enabled = true
				end
				end
			end
		end
})
	getgenv().autoEnterGenEnabled = false
	getgenv().autoEnterGenEnabled = false
	Tab38:AddCheckbox("VX_flag_254", {
	Text = "Auto Enter Generator",
	Default = false,
	Tooltip = "Automatically enters a generator when standing at one",
	Callback = function(state, arg927)
			if state then
				task.spawn(function(...)
					getgenv().autoEnterGenEnabled = state
					task.wait(0.2)
					local Map100 = workspace:FindFirstChild("Map")
					local Ingame119 = Map100 and Map100:FindFirstChild("Ingame")
					local Map101 = Ingame119 and Ingame119:FindFirstChild("Map")
					local children210 = Map101 and Map101:GetChildren()
					for k135, v329 in pairs(children210 or {}) do -- [[deobf: guard]]
					end
					task.wait(0.2)
				end)
			end
		end
})
end)
local Tab42 = Window:AddTab("Misc", "package", "miscellaneous features")
local LeftGroupbox7 = Tab42:AddLeftGroupbox("Other Stuff", "package")
local RightTabbox9 = Tab42:AddRightTabbox("shield-check")
local Tab43 = RightTabbox9:AddTab("UI")
local Tab44 = RightTabbox9:AddTab("Spoofer")
local LeftGroupbox8 = Tab42:AddLeftGroupbox("Anti", "ban")
local RightGroupbox8 = Tab42:AddRightGroupbox("Anti Slow", "shield-off")
task.spawn(function(...)
	getgenv()._antiBloodHookEnabled = false
	getgenv()._antiBloodHookConn = nil
	getgenv()._antiBloodHookOriginalFire = nil
	getgenv()._antiBloodHookOriginalFire = nil
	LeftGroupbox8:AddCheckbox("VX_flag_255", {
	Text = "Anti BloodHook",
	Default = false,
	Callback = function(state, arg929)
			if state then
				getgenv()._antiBloodHookEnabled = state
				local module29 = require(ReplicatedStorage.Modules.Network.Network)
				getgenv()._antiBloodHookOriginalFire = module7.FireServerConnection
				module29.FireServerConnection = function(arg930, arg931)
					arg930:FireServerConnection(arg931, nil)
				end
				local connection125 = RunService.Heartbeat:Connect(function(deltaTime58)
				end)
				getgenv()._antiBloodHookConn = connection125
			else
				getgenv()._antiBloodHookEnabled = false
				if connection125 then connection125:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv()._antiBloodHookConn = nil
				local module30 = require(ReplicatedStorage.Modules.Network.Network)
				module30.FireServerConnection = module7.FireServerConnection
			end
		end
})
	getgenv()._anti007n7CloneEnabled = false
	getgenv()._anti007n7CloneConn = nil
	getgenv()._anti007n7CloneConn = nil
	LeftGroupbox8:AddCheckbox("VX_flag_256", {
	Text = "Anti 007n7 Clone",
	Default = false,
	Callback = function(state, arg933)
			if state then
				getgenv()._anti007n7CloneEnabled = state
				local Map102 = workspace:FindFirstChild("Map")
				local Ingame120 = Map102 and Map102:FindFirstChild("Ingame")
				local v007n7 = Ingame120 and Ingame120:FindFirstChild("007n7")
				if v007n7 then v007n7:Destroy() end -- [[deobf: guard]]
				local Map103 = workspace:FindFirstChild("Map")
				local Ingame121 = Map103 and Map103:FindFirstChild("Ingame")
				local connection126 = Ingame121 and Ingame121.ChildAdded:Connect(function(child44)
				end)
				getgenv()._anti007n7CloneConn = connection126
				task.spawn(function(...)
					local Map104 = workspace:FindFirstChild("Map")
					local Ingame122 = Map104 and Map104:FindFirstChild("Ingame")
					local v007n72 = Ingame122 and Ingame122:FindFirstChild("007n7")
					if v007n72 then v007n72:Destroy() end -- [[deobf: guard]]
					task.wait(0.5)
					local Map105 = workspace:FindFirstChild("Map")
					local Ingame123 = Map105 and Map105:FindFirstChild("Ingame")
					local v007n73 = Ingame123 and Ingame123:FindFirstChild("007n7")
					if v007n73 then v007n73:Destroy() end -- [[deobf: guard]]
					task.wait(0.5)
				end)
			else
				getgenv()._anti007n7CloneEnabled = false
				if connection126 then connection126:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	getgenv()._antiPlantsNovaEnabled = false
	getgenv()._antiPlantsNovaConn = nil
	getgenv()._antiPlantsNovaConn = nil
	LeftGroupbox8:AddCheckbox("VX_flag_257", {
	Text = "Anti Plants and Nova",
	Default = false,
	Callback = function(state, arg935)
			if state then
				getgenv()._antiPlantsNovaEnabled = state
				local connection127 = RunService.Heartbeat:Connect(function(deltaTime59)
				end)
				getgenv()._antiPlantsNovaConn = connection127
			else
				getgenv()._antiPlantsNovaEnabled = false
				if connection127 then connection127:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	getgenv()._antiNosPuddleConn = nil
	getgenv().NoliDeleting = false
	getgenv().NoliConnection = nil
	getgenv().NoliConnection = nil
	LeftGroupbox8:AddCheckbox("VX_flag_258", {
	Text = "Anti Fake Noli",
	Default = false,
	Callback = function(state, arg937)
			if state then
				getgenv().NoliDeleting = state
				local connection128 = RunService.Heartbeat:Connect(function(deltaTime60)
					workspace:FindFirstChild("Players")
					local Killers58 = (workspace and workspace.Players) and workspace.Players:FindFirstChild("Killers") or nil -- [[deobf: nil-chain guard]]
					local children222 = Killers58 and Killers58:GetChildren()
					for k149, v360 in pairs(children222 or {}) do -- [[deobf: guard]]
					end
				end)
				getgenv().NoliConnection = connection128
			else
				getgenv().NoliDeleting = false
				if connection128 then connection128:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	getgenv().GeneratorDeleting = false
	getgenv().GeneratorConnection = nil
	getgenv().GeneratorConnection = nil
	LeftGroupbox8:AddCheckbox("VX_flag_259", {
	Text = "Anti Fake Generator",
	Default = false,
	Callback = function(state, arg939)
			if state then
				getgenv().GeneratorDeleting = state
				local connection129 = RunService.Heartbeat:Connect(function(deltaTime61)
					workspace:FindFirstChild("Map")
					local Ingame124 = (workspace and workspace.Map) and workspace.Map:FindFirstChild("Ingame") or nil -- [[deobf: nil-chain guard]]
					local children223 = Ingame124 and Ingame124:GetChildren()
					for k150, v361 in pairs(children223 or {}) do -- [[deobf: guard]]
					end
				end)
				getgenv().GeneratorConnection = connection129
			else
				getgenv().GeneratorDeleting = false
				if connection129 then connection129:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	LeftGroupbox8:AddCheckbox("VX_flag_260", {
	Text = "Anti Slow Fall",
	Default = false,
	Callback = function(state, arg941)
			if state then
				local connection130 = game.Players.LocalPlayer.CharacterAdded:Connect(function(character26)
					character26:GetAttribute("NoFallSlow")
				end)
				game.Players.LocalPlayer.Character:GetAttribute("NoFallSlow")
			else
				if connection130 then connection130:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	getgenv()._antiSentrySlowOriginalApply = nil
	getgenv()._antiSentrySlowOriginalApply = nil
	LeftGroupbox8:AddCheckbox("VX_flag_261", {
	Text = "Anti Sentry Slow",
	Default = false,
	Callback = function(state, arg943)
			if state then
				local module31 = require(ReplicatedStorage.Modules.Gameplay.Statuses)
				getgenv()._antiSentrySlowOriginalApply = module31.ApplyStatus
				module31.ApplyStatus = function(arg944, arg945)
				end
					return getgenv()._antiSentrySlowOriginalApply(arg944, arg945, nil, nil) -- [[reconstructed: вызов сохранённого оригинала вместо self-рекурсии]]
			else
				local module32 = require(ReplicatedStorage.Modules.Gameplay.Statuses)
				module32.ApplyStatus = getgenv()._antiSentrySlowOriginalApply -- [[reconstructed: восстановление сохранённого оригинала]]
			end
		end
})
	local Modules11 = ReplicatedStorage:WaitForChild("Modules")
	local Schematics = Modules11:WaitForChild("Schematics")
	LeftGroupbox8:AddCheckbox("VX_flag_262", {
	Text = "Anti Stun",
	Default = false,
	Callback = function(state, arg947)
			if state then
				local Stunned = Schematics:FindFirstChild("Stunned", true)
				if Stunned then Stunned:Destroy() end -- [[deobf: guard]]
				local connection131 = RunService.Heartbeat:Connect(function(deltaTime62)
					local Stunned2 = Schematics:FindFirstChild("Stunned", true)
					if Stunned2 then Stunned2:Destroy() end -- [[deobf: guard]]
				end)
			else
				if connection131 then connection131:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	local Modules12 = ReplicatedStorage:WaitForChild("Modules")
	local Schematics2 = Modules12:WaitForChild("Schematics")
	local StatusEffects = Schematics2:WaitForChild("StatusEffects")
	local Blindness = StatusEffects:WaitForChild("Blindness", 10)
	require(Blindness)
	local SurvivorExclusive = StatusEffects:WaitForChild("SurvivorExclusive", 10)
	local Subspaced = SurvivorExclusive:WaitForChild("Subspaced", 10)
	require(Subspaced)
	local Slowness = StatusEffects:WaitForChild("Slowness", 10)
	require(Slowness)
end)
task.spawn(function(...)
	getgenv().VX_KillerDoorsEnabled = false
	getgenv()._killerDoorConns = {}
	LeftGroupbox7:AddCheckbox("VX_flag_263", {
	Text = "Disable Killer Doors Collision",
	Default = false,
	Callback = function(state, arg949)
			if state then
				getgenv().VX_KillerDoorsEnabled = state
				workspace:FindFirstChild("Map")
				workspace.Map:FindFirstChild("Ingame")
				workspace.Map.Ingame:FindFirstChild("Map")
				workspace.Map.Ingame.Map:FindFirstChild("MapBoundaries")
				local KillerDoors = workspace.Map.Ingame.Map.MapBoundaries:FindFirstChild("KillerDoors")
				local descendants74 = KillerDoors and KillerDoors:GetDescendants()
				for i195, v331 in ipairs(descendants74 or {}) do -- [[deobf: guard]]
					if v331:IsA("BasePart") then v331.CanCollide = false end -- [[deobf: guard — prop валиден только на BasePart]]
					if v331:IsA("BasePart") then v331.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
				end
				workspace:FindFirstChild("Map")
				workspace.Map:FindFirstChild("Ingame")
				workspace.Map.Ingame:FindFirstChild("Map")
				workspace.Map.Ingame.Map:FindFirstChild("MapBoundaries")
				local KillerDoors2 = workspace.Map.Ingame.Map.MapBoundaries:FindFirstChild("KillerDoors")
				local connection132 = KillerDoors2 and KillerDoors2.DescendantAdded:Connect(function(descendant66)
				end)
				task.spawn(function(...)
					workspace:FindFirstChild("Map")
					workspace.Map:FindFirstChild("Ingame")
					workspace.Map.Ingame:FindFirstChild("Map")
					workspace.Map.Ingame.Map:FindFirstChild("MapBoundaries")
					local KillerDoors3 = workspace.Map.Ingame.Map.MapBoundaries:FindFirstChild("KillerDoors")
					local descendants75 = KillerDoors3 and KillerDoors3:GetDescendants()
					for i196, v332 in ipairs(descendants75 or {}) do -- [[deobf: guard]]
						if v332:IsA("BasePart") then v332.CanCollide = false end -- [[deobf: guard — prop валиден только на BasePart]]
						if v332:IsA("BasePart") then v332.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
					end
					if connection132 then connection132:Disconnect() end -- [[deobf: guard — определение в другой области]]
					workspace:FindFirstChild("Map")
					workspace.Map:FindFirstChild("Ingame")
					workspace.Map.Ingame:FindFirstChild("Map")
					workspace.Map.Ingame.Map:FindFirstChild("MapBoundaries")
					local KillerDoors4 = workspace.Map.Ingame.Map.MapBoundaries:FindFirstChild("KillerDoors")
					local connection133 = KillerDoors4 and KillerDoors4.DescendantAdded:Connect(function(descendant67)
					end)
					task.wait(0.5)
					workspace:FindFirstChild("Map")
					workspace.Map:FindFirstChild("Ingame")
					workspace.Map.Ingame:FindFirstChild("Map")
					workspace.Map.Ingame.Map:FindFirstChild("MapBoundaries")
					local KillerDoors5 = workspace.Map.Ingame.Map.MapBoundaries:FindFirstChild("KillerDoors")
					local descendants76 = KillerDoors5 and KillerDoors5:GetDescendants()
					for i197, v333 in ipairs(descendants76 or {}) do -- [[deobf: guard]]
						if v333:IsA("BasePart") then v333.CanCollide = false end -- [[deobf: guard — prop валиден только на BasePart]]
						if v333:IsA("BasePart") then v333.CanTouch = false end -- [[deobf: guard — prop валиден только на BasePart]]
					end
					if connection133 then connection133:Disconnect() end -- [[deobf: guard — определение в другой области]]
					workspace:FindFirstChild("Map")
					workspace.Map:FindFirstChild("Ingame")
					workspace.Map.Ingame:FindFirstChild("Map")
					workspace.Map.Ingame.Map:FindFirstChild("MapBoundaries")
					local KillerDoors6 = workspace.Map.Ingame.Map.MapBoundaries:FindFirstChild("KillerDoors")
					if KillerDoors6 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if KillerDoors6 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					KillerDoors6.DescendantAdded:Connect(function(descendant68)
					end)
					end
					end
					task.wait(0.5)
				end)
			else
				getgenv().VX_KillerDoorsEnabled = false
				workspace:FindFirstChild("Map")
				workspace.Map:FindFirstChild("Ingame")
				workspace.Map.Ingame:FindFirstChild("Map")
				workspace.Map.Ingame.Map:FindFirstChild("MapBoundaries")
				local KillerDoors7 = workspace.Map.Ingame.Map.MapBoundaries:FindFirstChild("KillerDoors")
				local descendants77 = KillerDoors7 and KillerDoors7:GetDescendants()
				for i199, v335 in ipairs(descendants77 or {}) do -- [[deobf: guard]]
					if v335:IsA("BasePart") then v335.CanCollide = true end -- [[deobf: guard — prop валиден только на BasePart]]
					if v335:IsA("BasePart") then v335.CanTouch = true end -- [[deobf: guard — prop валиден только на BasePart]]
				end
			end
		end
})
	LeftGroupbox7:AddCheckbox("VX_flag_264", {
	Text = "Allow Jump",
	Default = false,
	Callback = function(state, arg951)
			if state then
				_G.mhhmmm2 = state
				task.spawn(function(...)
					task.wait()
					local Humanoid29 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("Humanoid")
					if Humanoid29 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if Humanoid29 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					Humanoid29.UseJumpPower = true
					end
					end
					if Humanoid29 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if Humanoid29 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					Humanoid29.JumpPower = 50
					end
					end
					task.wait()
				end)
			else
				task.spawn(function(...)
					_G.mhhmmm2 = false
					task.wait()
				end)
			end
		end
})
	LeftGroupbox7:AddCheckbox("VX_flag_265", {
	Text = "Noclip Walls",
	Default = false,
	Callback = function(state, arg953)
			if state then
				_G.nokia = state
				task.spawn(function(...)
					task.wait()
					local children211 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):GetChildren()
					for i200, v336 in ipairs(children211) do
					end
					task.wait()
					local children212 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):GetChildren()
					for i201, v337 in ipairs(children212) do
					end
					task.wait()
				end)
			else
				task.spawn(function(...)
					_G.nokia = false
					task.wait()
				end)
			end
		end
})
end)
task.spawn(function(...)
	local PlayerGui8 = Players.LocalPlayer:WaitForChild("PlayerGui")
	getgenv().VX_ProtectEnabled = false
	getgenv()._hiddenStatsCache = {}
	getgenv()._hiddenStatsCache = {}
	Tab43:AddCheckbox("VX_flag_266", {
	Text = "See Hidden Stats",
	Default = false,
	Callback = function(state, arg955)
			if state then
				getgenv()._hiddenStatsCache = {}
				local players4 = game.Players:GetPlayers()
				for i203, v339 in ipairs(players4) do
					v339:FindFirstChild("PlayerData")
					v339.PlayerData:FindFirstChild("Settings")
					local Privacy = v339.PlayerData.Settings:FindFirstChild("Privacy")
					local HideSurvivorWins = Privacy and Privacy:FindFirstChild("HideSurvivorWins")
					if HideSurvivorWins then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if HideSurvivorWins then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					HideSurvivorWins.Value = false
					end
					end
					local HidePlaytime = Privacy and Privacy:FindFirstChild("HidePlaytime")
					if HidePlaytime then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					if HidePlaytime then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
					HidePlaytime.Value = false
					end
					end
					local HideKillerWins = Privacy and Privacy:FindFirstChild("HideKillerWins")
					if HideKillerWins then HideKillerWins.Value = false end -- [[deobf: перенесено внутрь цикла (mis-nest)]]
				end
			else
			local players5 = Players:GetPlayers() -- [[reconstructed: зеркальный обход, восстановление скрытия]]
			for i204, v340 in ipairs(players5) do
				local PlayerData5 = v340:FindFirstChild("PlayerData")
				local Privacy5 = PlayerData5 and PlayerData5:FindFirstChild("Settings") and PlayerData5.Settings:FindFirstChild("Privacy")
				if Privacy5 then
					local HideSurvivorWins5 = Privacy5 and Privacy5:FindFirstChild("HideSurvivorWins")
					if HideSurvivorWins5 then HideSurvivorWins5.Value = true end
					local HidePlaytime5 = Privacy5 and Privacy5:FindFirstChild("HidePlaytime")
					if HidePlaytime5 then HidePlaytime5.Value = true end
					local HideKillerWins5 = Privacy5 and Privacy5:FindFirstChild("HideKillerWins")
					if HideKillerWins5 then HideKillerWins5.Value = true end
				end
			end
			end
		end
})
	Tab43:AddCheckbox("VX_flag_267", {
	Text = "Vexsaken Protections",
	Default = false,
	Callback = function(state, arg957)
			if state then
				getgenv().VX_ProtectEnabled = state
				local descendants78 = PlayerGui8:GetDescendants()
				for i204, v340 in ipairs(descendants78) do
				end
				local connection134 = PlayerGui8.DescendantAdded:Connect(function(descendant70)
				end)
				local connection135 = RunService.Heartbeat:Connect(function(deltaTime63)
				end)
			else
				getgenv().VX_ProtectEnabled = false
				if connection134 then connection134:Disconnect() end -- [[deobf: guard — определение в другой области]]
				if connection135 then connection135:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	ReplicatedStorage:FindFirstChild("Modules")
	ReplicatedStorage.Modules:FindFirstChild("Network")
	local module33 = require(ReplicatedStorage.Modules.Network.Network)
	local lastInputType = UserInputService:GetLastInputType()
	lastInputType.Name:find("Gamepad")
	Tab44:AddDropdown("VX_flag_268", {
	Text = "Device Spoofer",
	Values = { "Console", "Mobile", "PC", "Unknown" },
	Callback = function(state, arg959)
			if state then
				module33:FireServerConnection("SetDevice", "REMOTE_EVENT", state)
			else
				module33:FireServerConnection("SetDevice", "REMOTE_EVENT", false)
			end
		end
})
	Tab44:AddDropdown("VX_flag_269", {
	Text = "Timer Position",
	Default = 2,
	Values = { "Left", "Middle", "Right" },
	Callback = function(state, arg961)
			if state then
				local PlayerGui9 = Players.LocalPlayer:WaitForChild("PlayerGui")
				local RoundTimer = PlayerGui9:WaitForChild("RoundTimer", 10)
				local Main = RoundTimer:WaitForChild("Main", 10)
				Main.Position = UDim2.new(0.5, 0, -0.018, 0)
			else
				local PlayerGui10 = Players.LocalPlayer:WaitForChild("PlayerGui")
				local RoundTimer2 = PlayerGui10:WaitForChild("RoundTimer", 10)
				local Main2 = RoundTimer2:WaitForChild("Main", 10)
				Main2.Position = UDim2.new(0.5, 0, -0.018, 0)
			end
		end
})
	task.spawn(function(...)
		local PlayerGui11 = Players.LocalPlayer:WaitForChild("PlayerGui")
		local RoundTimer3 = PlayerGui11:WaitForChild("RoundTimer", 10)
		local Main3 = RoundTimer3:WaitForChild("Main", 10)
		Main3.Position = UDim2.new(0.5, 0, -0.018, 0)
	end)
	Players.LocalPlayer.CharacterAdded:Connect(function(character27)
	end)
	task.spawn(function(...)
		local PlayerGui12 = Players.LocalPlayer:WaitForChild("PlayerGui")
		local MainUI4 = PlayerGui12:WaitForChild("MainUI")
		local Spectate = MainUI4:WaitForChild("Spectate")
		local Username = Spectate:WaitForChild("Username")
		local clone5 = Username:Clone()
		clone5.Name = "FalseUser"
		clone5.Visible = false
		clone5.Parent = Spectate
		Tab43:AddInput("VX_flag_270", {
	Text = "Custom Spectate Username",
	Placeholder = "Enter username",
	Callback = function(state, arg963)
				Username.Visible = false
				if state then
					clone5.Text = state
				else
					clone5.Text = false
				end
				clone5.Visible = true
			end
})
	end)
end)
task.spawn(function(...)
	workspace:FindFirstChild("Players")
	local Survivors30 = (workspace and workspace.Players) and workspace.Players:FindFirstChild("Survivors") or nil -- [[deobf: nil-chain guard]]
	RightGroupbox8:AddCheckbox("VX_flag_271", {
	Text = "Anti Speed Slowness",
	Default = false,
	Callback = function(state, arg965)
			if state then
				local children213 = Survivors30 and Survivors30:GetChildren()
				for k137, v341 in pairs(children213 or {}) do -- [[deobf: guard]]
					v341:GetAttribute("Username")
				end
				if Survivors30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if Survivors30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				Survivors30.ChildAdded:Connect(function(child45)
					task.wait(0.1)
					child45:GetAttribute("Username")
				end)
				end
				end
			end
		end
})
	RightGroupbox8:AddCheckbox("VX_flag_272", {
	Text = "Anti Slow Builderman",
	Default = false,
	Callback = function(state, arg967)
			if state then
				local children214 = Survivors30 and Survivors30:GetChildren()
				for k138, v342 in pairs(children214 or {}) do -- [[deobf: guard]]
					v342:GetAttribute("Username")
				end
				if Survivors30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if Survivors30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				Survivors30.ChildAdded:Connect(function(child46)
					task.wait(0.1)
					child46:GetAttribute("Username")
				end)
				end
				end
			end
		end
})
	getgenv()._AntiSlowSkills_HatchetConn = nil
	RightGroupbox8:AddCheckbox("VX_flag_273", {
	Text = "Anti Slow Skills",
	Default = false,
	Callback = function(state, arg969)
			if state then
				local children215 = Survivors30 and Survivors30:GetChildren()
				for k139, v343 in pairs(children215 or {}) do -- [[deobf: guard]]
					v343:GetAttribute("Username")
				end
				if Survivors30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if Survivors30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				Survivors30.ChildAdded:Connect(function(child47)
					task.wait(0.1)
					child47:GetAttribute("Username")
				end)
				end
				end
				local descendants79 = game:GetDescendants()
				for k140, v344 in pairs(descendants79) do
				end
				local connection136 = game.DescendantAdded:Connect(function(descendant71)
				end)
				getgenv()._AntiSlowSkills_HatchetConn = connection136
			else
				if connection136 then connection136:Disconnect() end -- [[deobf: guard — определение в другой области]]
			end
		end
})
	RightGroupbox8:AddCheckbox("VX_flag_274", {
	Text = "Anti Slow Items",
	Default = false,
	Callback = function(state, arg971)
			if state then
				local children216 = Survivors30 and Survivors30:GetChildren()
				for k141, v345 in pairs(children216 or {}) do -- [[deobf: guard]]
					v345:GetAttribute("Username")
				end
				if Survivors30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if Survivors30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				Survivors30.ChildAdded:Connect(function(child48)
					task.wait(0.1)
					child48:GetAttribute("Username")
				end)
				end
				end
			end
		end
})
	RightGroupbox8:AddCheckbox("VX_flag_275", {
	Text = "Anti Slow Emotes",
	Default = false,
	Callback = function(state, arg973)
			if state then
				local children217 = Survivors30 and Survivors30:GetChildren()
				for k142, v346 in pairs(children217 or {}) do -- [[deobf: guard]]
					v346:GetAttribute("Username")
				end
				if Survivors30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if Survivors30 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				Survivors30.ChildAdded:Connect(function(child49)
					task.wait(0.1)
					child49:GetAttribute("Username")
				end)
				end
				end
			end
		end
})
end)
local Tab45 = Window:AddTab("Fun", "smile", "Fun features to use")
local LeftGroupbox9 = Tab45:AddLeftGroupbox("Animations", "person-standing")
local RightGroupbox9 = Tab45:AddRightGroupbox("Free Emotes", "person-standing")
local LeftTabbox8 = Tab45:AddLeftTabbox("music")
local Tab46 = LeftTabbox8:AddTab("Music")
local Tab47 = LeftTabbox8:AddTab("Settings")
task.spawn(function(...)
	local MarketplaceService = game:GetService("MarketplaceService")
	getgenv().MarketplaceService = MarketplaceService
	getgenv().player = Players.LocalPlayer
	getgenv().replacementAnimations = {
	idle = "rbxassetid://134624270247120",
	run = "rbxassetid://115946474977409",
	walk = "rbxassetid://132377038617766"
}
	getgenv().animationNameCache = {}
	getgenv()._animReplaceState = {}
	getgenv().fakeinjuredanimation = false
	getgenv().parseAssetId = function(arg974, arg975)
		tostring(arg974):match("(%d+)")
	end
	getgenv().getAnimationNameFromId = function(arg976, arg977)
		MarketplaceService:GetProductInfo(arg976, Enum.InfoType.Asset)
	end
	getgenv().playReplacementAnimation = function(arg978, arg979)
	end
	getgenv().disconnectIfAlive = function(arg980, arg981)
	end
	getgenv().setupCharacter = function(arg982, arg983)
		local Humanoid30 = arg982:WaitForChild("Humanoid")
		local Animator21 = Humanoid30:FindFirstChildOfClass("Animator")
		RunService.Heartbeat:Connect(function(deltaTime64)
		end)
		if Animator21 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Animator21 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Animator21.AnimationPlayed:Connect(function(arg984)
		end)
		end
		end
	end
	Players.LocalPlayer.CharacterRemoving:Connect(function(character28)
	end)
	local Humanoid31 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid")
	local Animator22 = Humanoid31:FindFirstChildOfClass("Animator")
	RunService.Heartbeat:Connect(function(deltaTime65)
	end)
	if Animator22 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if Animator22 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	Animator22.AnimationPlayed:Connect(function(arg985)
	end)
	end
	end
	Players.LocalPlayer.CharacterAdded:Connect(function(character29)
		local Humanoid56 = character29:WaitForChild("Humanoid")
		local Animator41 = Humanoid56:FindFirstChildOfClass("Animator")
		RunService.Heartbeat:Connect(function(deltaTime67)
		end)
		if Animator41 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if Animator41 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		Animator41.AnimationPlayed:Connect(function(arg1081)
		end)
		end
		end
	end)
	LeftGroupbox9:AddCheckbox("VX_flag_276", {
	Text = "Fake Injured",
	Default = false,
	Callback = function(state, arg987)
		end
})
	getgenv()._007_movementEnabled = false
	LeftGroupbox9:AddCheckbox("VX_flag_277", {
	Text = "Fake Clone",
	Default = false,
	Callback = function(state, arg989)
		end
})
	getgenv()._customAnim_enabled = false
	getgenv()._customAnim_selected = {
	Name = "Sancho",
	Idle = "rbxassetid://134912704311964",
	Run = "rbxassetid://75409814098993",
	Walk = "rbxassetid://95213748170889"
}
	getgenv()._customAnim_conn = nil
	getgenv()._customAnim_runTrack = nil
	getgenv()._customAnim_walkTrack = nil
	getgenv()._customAnim_idleTrack = nil
	LeftGroupbox9:AddCheckbox("VX_flag_278", {
	Text = "Enable Custom Animations",
	Default = false,
	Callback = function(state, arg991)
			if state then
				getgenv()._customAnim_enabled = state
				local Humanoid32 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
				local _ = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
				getgenv()._customAnim_idleTrack = nil
				getgenv()._customAnim_walkTrack = nil
				getgenv()._customAnim_runTrack = nil
				local Animation6 = Instance.new("Animation")
				Animation6.AnimationId = "rbxassetid://134912704311964"
				local Animation7 = Instance.new("Animation")
				Animation7.AnimationId = "rbxassetid://95213748170889"
				local Animation8 = Instance.new("Animation")
				Animation8.AnimationId = "rbxassetid://75409814098993"
				local track6 = Humanoid32 and Humanoid32:LoadAnimation(Animation6)
				getgenv()._customAnim_idleTrack = track6
				local track7 = Humanoid32 and Humanoid32:LoadAnimation(Animation7)
				getgenv()._customAnim_walkTrack = track7
				local track8 = Humanoid32 and Humanoid32:LoadAnimation(Animation8)
				getgenv()._customAnim_runTrack = track8
				local Animator23 = Humanoid32 and Humanoid32:FindFirstChildOfClass("Animator")
				local tracks8 = Animator23 and Animator23:GetPlayingAnimationTracks()
				for i205, v347 in ipairs(tracks8 or {}) do -- [[deobf: guard]]
					v347:Stop(0)
				end
				local connection137 = RunService.Heartbeat:Connect(function(deltaTime66)
				end)
				getgenv()._customAnim_conn = connection137
				Players.LocalPlayer.CharacterAdded:Connect(function(character30)
					task.wait(0.2)
				end)
			else
				getgenv()._customAnim_enabled = false
				if connection137 then connection137:Disconnect() end -- [[deobf: guard — определение в другой области]]
				getgenv()._customAnim_conn = nil
				if track6 then track6:Stop(0) end -- [[deobf: guard — определение в другой ветке]]
				if track6 then track6:Destroy() end -- [[deobf: guard — определение в другой ветке]]
				if track7 then track7:Stop(0) end -- [[deobf: guard — определение в другой ветке]]
				if track7 then track7:Destroy() end -- [[deobf: guard — определение в другой ветке]]
				if track8 then track8:Stop(0) end -- [[deobf: guard — определение в другой ветке]]
				if track8 then track8:Destroy() end -- [[deobf: guard — определение в другой ветке]]
			end
		end
})
	LeftGroupbox9:AddDropdown("VX_flag_279", {
	Text = "Character",
	Default = 1,
	Values = { "Sancho", "Herobrine", "Sukuna", "Erlking", "Martial Artist" },
	Callback = function(state, arg993)
		end
})
end)
task.spawn(function(...)
	local Humanoid33 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 8)
	local HumanoidRootPart5 = (Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart", 8)
	Humanoid33:FindFirstChildOfClass("Animator")
	Players.LocalPlayer.CharacterAdded:Connect(function(character31)
		local Humanoid57 = character31:WaitForChild("Humanoid", 8)
		character31:WaitForChild("HumanoidRootPart", 8)
		Humanoid57:FindFirstChildOfClass("Animator")
	end)
	getgenv()._selectedEmote = "Shucks"
	RightGroupbox9:AddDropdown("VX_flag_280", {
	Text = "Play Removed Emote",
	Default = 1,
	Values = { "Shucks", "Subterfuge", "I Miss The Quiet", "Silly Billy" },
	Callback = function(state, arg995)
		end
})
	RightGroupbox9:AddDivider({ MarginBottom = 2, MarginTop = 2 })
	RightGroupbox9:AddDropdown("VX_flag_281", {
	Text = "Purchasable Emotes",
	Default = 1,
	Values = { "Hakari", "Bang Bang Bang", "Locked", "Encore", "Rambunctious", "Metroman", "Sukuna" },
	Callback = function(state, arg997)
		end
})
	RightGroupbox9:AddCheckbox("VX_flag_282", {
	Text = "Play / Stop Emote",
	Default = false,
	Callback = function(state, arg999)
			if not state then
				if HumanoidRootPart5 then HumanoidRootPart5.Anchored = false end -- [[deobf: guard]]
			end
		end
})
end)
getgenv().MusicPlayers = Players
getgenv().MusicRunService = RunService
getgenv().MusicLocalPlayer = Players.LocalPlayer
getgenv().musicDownloadCache = {}
getgenv().currentPreviewSound = nil
getgenv().isToggleOn = false
getgenv().selectedSong = "A GRAVE SOUL (Default Lms Song)"
getgenv().customSongUrl = nil
getgenv().originalSongId = nil
getgenv().lastLMSApplied = nil
getgenv().lmsProcessing = false
getgenv().lmsConnections = {}
getgenv().isLobbyToggleOn = false
getgenv().selectedLobbySong = "Lost Media"
getgenv().customLobbyUrl = nil
getgenv().originalLobbySongId = nil
getgenv().lastLobbyApplied = nil
getgenv().lobbyProcessing = false
getgenv().lobbyConnections = {}
getgenv().ambienceToggleOn = false
getgenv().selectedAmbienceTrack = "Gaiety Golden Age"
getgenv().customAmbienceUrl = nil
getgenv().originalAmbienceId = nil
getgenv().lastAmbienceApplied = nil
getgenv().processingAmbience = false
getgenv().ambienceConnections = {}
getgenv().ambienceDownloadCache = {}
getgenv().lmsTracks = {
	["A GRAVE SOUL (Default Lms Song)"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/A%20GRAVE%20SOUL%20(NOW,%20RUN)%20%5BAll%20Killers%20Vs%20All%20Survivors%5D.mp3",
	Burnout = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Burnout%20(Diva%20Vs%20Ghoul).mp3",
	["Close To Me"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Close%20To%20Me%20(Annihilation%20Vs%20Friend).mp3",
	Compass = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Obsession%20(Gasharpoon%20Vs%20All).MP3",
	["Creation Of Hatred"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Creation%20Of%20Hatred%20(1X4%20Vs%20Shedletsky).mp3",
	["DEAD RINGER - (Guest 666 vs Noob)"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/DEAD%20RINGER%20-%20(Guest%20666%20vs%20Noob).mp3",
	["Deep Sleep"] = "https://github.com/articbeatles0-ship-it/fuckyouretard/raw/refs/heads/main/Chimes%20of%20the%20Lucid%20(Deep%20Sleep%20Jason)%20%20FORSAKEN%20OST.mp3",
	["ORDER UP (Elliot VS c00lkidd)"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/ORDER%20UP%20-%20(Elliot%20VS%20c00lkidd).mp3",
	["Perpetuity (DOD Killer vs. DOD Survivor)"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Perpetuity%20(DOD%20Killer%20vs.%20DOD%20Survivor).mp3",
	Plead = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Plead%20(c00lkidd%20Vs%20007n7).mp3",
	SMILE = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/SMILE%20(Cupcakes%20Vs%20All).mp3",
	["Through Patches of Violet"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Through%20Patches%20of%20Violet%20(Hacklord%20vs%20The%20Heartbroken).mp3",
	Vanity = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Vanity%20(Vanity%20Jason%20Vs%20All).mp3"
}
getgenv().lobbyTracks = {
	["Living Tombstone"] = "https://github.com/articbeatles0-ship-it/fuckyouretard/raw/refs/heads/main/My%20Ordinary%20Life-The%20Living%20Tombstone.mp3",
	["Lost Media"] = "https://github.com/articbeatles0-ship-it/fuckyouretard/raw/refs/heads/main/Mysterious%20Place.mp3",
	["Lost Media 2"] = "https://github.com/articbeatles0-ship-it/fuckyouretard/raw/refs/heads/main/Uwa!!%20So%20Temperate.mp3",
	["Stardew Valley"] = "https://github.com/articbeatles0-ship-it/fuckyouretard/raw/refs/heads/main/Stardew%20Valley%20OST%20-%20Summer%20(Nature's%20Crescendo).mp3"
}
getgenv().ambienceTracks = {
	["Duran Duran"] = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770286207958_Duran_Duran_-_INVISIBLE.mp3",
	Duvet = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770285812645_Boa_-_Duvet_Official_Video.mp3",
	["Gaiety Golden Age"] = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770285763068_Gaiety_in_the_Golden_Age.mp3",
	["Gas Gas Gas"] = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770285982265_Muffled_eurobeat_Gas_gas_gas.mp3",
	["My Way"] = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770285838090_My_Way_2008_Remastered.mp3",
	["Subway Surfers"] = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770286248497_Subway_Surfers_OST_Extended.mp3"
}
getgenv().musicFolderPath = "Vexsaken/Music/Themes"
getgenv().ambienceFolderPath = "Vexsaken/Music/Ambience"
makefolder("Vexsaken")
makefolder("Vexsaken/Music")
makefolder("Vexsaken/Music/Themes")
makefolder("Vexsaken/Music/Ambience")
getgenv().MusicDownloadTrack = function(arg1000, arg1001)
	local result64 = arg1000:gsub("[^%w]", "_")
	local response4 = http_request({ Method = "GET", Url = arg1001 })
	writefile("Vexsaken/Music/Themes" .. "/" .. result64 .. ".mp3", response4.Body)
end
getgenv().MusicGetLastSurvivor = function(arg1002, arg1003)
	local Themes = workspace:FindFirstChild("Themes")
end
getgenv().MusicGetLobby = function(arg1004, arg1005)
	local Themes2 = workspace:FindFirstChild("Themes")
end
getgenv().MusicGetMapAmbience = function(arg1006, arg1007)
	local Themes3 = workspace:FindFirstChild("Themes")
end
getgenv().MusicPlayPreview = function(arg1008, arg1009)
	task.spawn(function(...)
		local result65 = arg1008:gsub("[^%w]", "_")
		local response5 = http_request({ Method = "GET", Url = arg1009 })
		writefile("Vexsaken/Music/Themes" .. "/" .. result65 .. ".mp3", response5.Body)
		local Sound = Instance.new("Sound")
		Sound.SoundId = "rbxasset://<proxy>"
		Sound.Volume = 0.5
		Sound.Parent = workspace
		getgenv().currentPreviewSound = Sound
		Sound:Play()
		getgenv().currentPreviewSound = nil
		task.spawn(function(...)
			task.wait(0.2)
			task.wait(1.5)
			if Sound then Sound:Destroy() end -- [[deobf: guard]]
		end)
	end)
end
getgenv().MusicStopPreview = function(arg1010, arg1011)
end
getgenv().MusicSetLMS = function(arg1012, arg1013)
	getgenv().lmsProcessing = false
	task.spawn(function(...)
		getgenv().lmsProcessing = true
		local Themes4 = workspace:FindFirstChild("Themes")
		local LastSurvivor = Themes4 and Themes4:FindFirstChild("LastSurvivor")
		getgenv().originalSongId = LastSurvivor.SoundId
		local response6 = http_request({ Method = "GET", Url = arg1012 })
		writefile("Vexsaken/Music/Themes/Custom_LMS.mp3", response6.Body)
		if LastSurvivor then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if LastSurvivor then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		LastSurvivor.SoundId = "rbxasset://Vexsaken/Music/Themes/Custom_LMS.mp3"
		end
		end
		if LastSurvivor then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if LastSurvivor then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		LastSurvivor:Play()
		end
		end
		getgenv().lastLMSApplied = "Custom"
		task.wait(0.5)
	end)
end
getgenv().MusicSetupLMSMonitor = function(arg1014, arg1015)
	getgenv().lmsConnections = {}
	local Themes5 = workspace:FindFirstChild("Themes")
	local connection138 = Themes5 and Themes5.ChildAdded:Connect(function(child50)
	end)
end
getgenv().MusicSetLobby = function(arg1016, arg1017)
	getgenv().lobbyProcessing = false
	task.spawn(function(...)
		getgenv().lobbyProcessing = true
		local Themes6 = workspace:FindFirstChild("Themes")
		local oldLobby = Themes6 and Themes6:FindFirstChild("oldLobby")
		getgenv().originalLobbySongId = oldLobby.SoundId
		local response7 = http_request({ Method = "GET", Url = arg1016 })
		writefile("Vexsaken/Music/Themes/Custom_Lobby.mp3", response7.Body)
		if oldLobby then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if oldLobby then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		oldLobby.SoundId = "rbxasset://Vexsaken/Music/Themes/Custom_Lobby.mp3"
		end
		end
		if oldLobby then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if oldLobby then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		oldLobby:Play()
		end
		end
		getgenv().lastLobbyApplied = "Custom"
		task.wait(0.5)
	end)
end
getgenv().MusicSetupLobbyMonitor = function(arg1018, arg1019)
	getgenv().lobbyConnections = {}
	local Themes7 = workspace:FindFirstChild("Themes")
	local connection139 = Themes7 and Themes7.ChildAdded:Connect(function(child51)
	end)
end
getgenv().MusicSetAmbience = function(arg1020, arg1021)
	getgenv().processingAmbience = false
	task.spawn(function(...)
		getgenv().processingAmbience = true
		local Themes8 = workspace:FindFirstChild("Themes")
		local MapAmbience = Themes8 and Themes8:FindFirstChild("MapAmbience")
		getgenv().originalAmbienceId = MapAmbience.SoundId
		local response8 = http_request({ Method = "GET", Url = arg1020 })
		writefile("Vexsaken/Music/Ambience/Custom_Ambience.mp3", response8.Body)
		if MapAmbience then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if MapAmbience then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		MapAmbience.SoundId = "rbxasset://Vexsaken/Music/Ambience/Custom_Ambience.mp3"
		end
		end
		if MapAmbience then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if MapAmbience then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		MapAmbience:Play()
		end
		end
		getgenv().lastAmbienceApplied = "Custom"
	end)
end
getgenv().lastAmbienceApplied = nil
getgenv().originalAmbienceId = nil
getgenv().MusicRestoreAmbience = function(arg1022, arg1023)
	local Themes9 = workspace:FindFirstChild("Themes")
	local MapAmbience2 = Themes9 and Themes9:FindFirstChild("MapAmbience")
	if MapAmbience2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if MapAmbience2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	MapAmbience2.SoundId = MapAmbience.SoundId
	end
	end
	if MapAmbience2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if MapAmbience2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	MapAmbience2:Play()
	end
	end
end
getgenv().MusicSetupAmbienceMonitor = function(arg1024, arg1025)
	getgenv().ambienceConnections = {}
	local Themes10 = workspace:FindFirstChild("Themes")
	local connection140 = Themes10 and Themes10.ChildAdded:Connect(function(child52)
	end)
end
task.spawn(function(...)
	task.wait(2)
	if connection138 then connection138:Disconnect() end -- [[deobf: guard, определение в другой области]]
	getgenv().lmsConnections = {}
	local Themes11 = workspace:FindFirstChild("Themes")
	if Themes11 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if Themes11 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	Themes11.ChildAdded:Connect(function(child53)
	end)
	end
	end
	if connection139 then connection139:Disconnect() end -- [[deobf: guard, определение в другой области]]
	getgenv().lobbyConnections = {}
	local Themes12 = workspace:FindFirstChild("Themes")
	if Themes12 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if Themes12 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	Themes12.ChildAdded:Connect(function(child54)
	end)
	end
	end
	if connection140 then connection140:Disconnect() end -- [[deobf: guard, определение в другой области]]
	getgenv().ambienceConnections = {}
	local Themes13 = workspace:FindFirstChild("Themes")
	if Themes13 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	if Themes13 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
	Themes13.ChildAdded:Connect(function(child55)
	end)
	end
	end
end)
getgenv().originalSongId = nil
Tab46:AddCheckbox("VX_flag_283", {
	Text = "Custom LMS Theme",
	Default = false,
	Callback = function(state, arg1027)
		if state then
			getgenv().isToggleOn = state
			local Themes14 = workspace:FindFirstChild("Themes")
			getgenv().lmsProcessing = false
			task.spawn(function(...)
				getgenv().lmsProcessing = true
				local Themes15 = workspace:FindFirstChild("Themes")
				local LastSurvivor2 = Themes15 and Themes15:FindFirstChild("LastSurvivor")
				local response9 = http_request({
		Method = "GET",
		Url = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/A%20GRAVE%20SOUL%20(NOW,%20RUN)%20%5BAll%20Killers%20Vs%20All%20Survivors%5D.mp3"
	})
				writefile("Vexsaken/Music/Themes/A_GRAVE_SOUL__Default_Lms_Song_.mp3", response9.Body)
				getgenv().originalSongId = LastSurvivor2.SoundId -- [[reconstructed: сохранение оригинала перед заменой]]
				if LastSurvivor2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if LastSurvivor2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				LastSurvivor2.SoundId = "rbxasset://Vexsaken/Music/Themes/A_GRAVE_SOUL__Default_Lms_Song_.mp3"
				end
				end
				if LastSurvivor2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if LastSurvivor2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				LastSurvivor2:Play()
				end
				end
				getgenv().lastLMSApplied = "A GRAVE SOUL (Default Lms Song)"
				task.wait(0.5)
			end)
		else
			getgenv().isToggleOn = false
			local Themes16 = workspace:FindFirstChild("Themes")
			local LastSurvivor3 = Themes16 and Themes16:FindFirstChild("LastSurvivor")
			getgenv().lastLMSApplied = nil
			if LastSurvivor3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			if LastSurvivor3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			LastSurvivor3.SoundId = getgenv().originalSongId or LastSurvivor3.SoundId -- [[reconstructed]]
			end
			end
			if LastSurvivor3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			if LastSurvivor3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			LastSurvivor3:Play()
			end
			end
		end
	end
})
getgenv().lastAmbienceApplied = nil
getgenv().originalAmbienceId = nil
Tab46:AddCheckbox("VX_flag_284", {
	Text = "Custom Map Theme",
	Default = false,
	Callback = function(state, arg1029)
		if state then
			getgenv().processingAmbience = false
			task.spawn(function(...)
				getgenv().ambienceToggleOn = state
				getgenv().processingAmbience = true
				local Themes17 = workspace:FindFirstChild("Themes")
				local MapAmbience3 = Themes17 and Themes17:FindFirstChild("MapAmbience")
				getgenv().originalAmbienceId = MapAmbience3.SoundId
				local response10 = http_request({
		Method = "GET",
		Url = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770285763068_Gaiety_in_the_Golden_Age.mp3"
	})
				writefile("Vexsaken/Music/Ambience/Gaiety_Golden_Age.mp3", response10.Body)
				if MapAmbience3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if MapAmbience3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				MapAmbience3.SoundId = "rbxasset://Vexsaken/Music/Ambience/Gaiety_Golden_Age.mp3"
				end
				end
				if MapAmbience3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if MapAmbience3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				MapAmbience3:Play()
				end
				end
				getgenv().lastAmbienceApplied = "Gaiety Golden Age"
			end)
		else
			getgenv().ambienceToggleOn = false
			local Themes18 = workspace:FindFirstChild("Themes")
			local MapAmbience4 = Themes18 and Themes18:FindFirstChild("MapAmbience")
			if MapAmbience4 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			if MapAmbience4 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			MapAmbience4.SoundId = getgenv().originalAmbienceId or MapAmbience4.SoundId -- [[reconstructed]]
			end
			end
			if MapAmbience4 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			if MapAmbience4 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			MapAmbience4:Play()
			end
			end
		end
	end
})
getgenv().originalLobbySongId = nil
Tab46:AddCheckbox("VX_flag_285", {
	Text = "Custom Lobby Theme",
	Default = false,
	Callback = function(state, arg1031)
		if state then
			getgenv().isLobbyToggleOn = state
			local Themes19 = workspace:FindFirstChild("Themes")
			getgenv().lobbyProcessing = false
			task.spawn(function(...)
				getgenv().lobbyProcessing = true
				local Themes20 = workspace:FindFirstChild("Themes")
				local oldLobby2 = Themes20 and Themes20:FindFirstChild("oldLobby")
				local response11 = http_request({
		Method = "GET",
		Url = "https://github.com/articbeatles0-ship-it/fuckyouretard/raw/refs/heads/main/Mysterious%20Place.mp3"
	})
				writefile("Vexsaken/Music/Themes/Lost_Media_Lobby.mp3", response11.Body)
				if oldLobby2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if oldLobby2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				oldLobby2.SoundId = "rbxasset://Vexsaken/Music/Themes/Lost_Media_Lobby.mp3"
				end
				end
				if oldLobby2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				if oldLobby2 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
				oldLobby2:Play()
				end
				end
				getgenv().lastLobbyApplied = "Lost Media"
				task.wait(0.5)
			end)
		else
			getgenv().isLobbyToggleOn = false
			local Themes21 = workspace:FindFirstChild("Themes")
			local oldLobby3 = Themes21 and Themes21:FindFirstChild("oldLobby")
			getgenv().lastLobbyApplied = nil
			if oldLobby3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			if oldLobby3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			oldLobby3.SoundId = getgenv().originalLobbySongId or oldLobby3.SoundId -- [[reconstructed]]
			end
			end
			if oldLobby3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			if oldLobby3 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
			oldLobby3:Play()
			end
			end
		end
	end
})
Tab46:AddDivider({ MarginBottom = 2, MarginTop = 2 })
Tab46:AddLabel("Add your custom theme on\nCustom Link to use it,\nleave it blank to remove it.")
Tab47:AddDropdown("VX_flag_286", {
	Text = "LMS Track",
	Default = 1,
	Values = {
		"A GRAVE SOUL (Default Lms Song)",
		"Burnout",
		"Close To Me",
		"Compass",
		"Creation Of Hatred",
		"DEAD RINGER - (Guest 666 vs Noob)",
		"Deep Sleep",
		"ORDER UP (Elliot VS c00lkidd)",
		"Perpetuity (DOD Killer vs. DOD Survivor)",
		"Plead",
		"SMILE",
		"Through Patches of Violet",
		"Vanity"
	},
	Callback = function(state, arg1033)
		if state then
			getgenv().selectedSong = state
		else
			getgenv().selectedSong = false
		end
		getgenv().customSongUrl = nil
		getgenv().lastLMSApplied = nil
	end
})
Tab47:AddDropdown("VX_flag_287", {
	Text = "Map Theme Track",
	Default = 3,
	Values = { "Duran Duran", "Duvet", "Gaiety Golden Age", "Gas Gas Gas", "My Way", "Subway Surfers" },
	Callback = function(state, arg1035)
		if state then
			getgenv().selectedAmbienceTrack = state
		else
			getgenv().selectedAmbienceTrack = false
		end
		getgenv().customAmbienceUrl = nil
		getgenv().lastAmbienceApplied = nil
	end
})
Tab47:AddDropdown("VX_flag_288", {
	Text = "Lobby Track",
	Default = 2,
	Values = { "Living Tombstone", "Lost Media", "Lost Media 2", "Stardew Valley" },
	Callback = function(state, arg1037)
		if state then
			getgenv().selectedLobbySong = state
		else
			getgenv().selectedLobbySong = false
		end
		getgenv().customLobbyUrl = nil
		getgenv().lastLobbyApplied = nil
	end
})
getgenv().ambienceDownloadCache = {}
getgenv().musicDownloadCache = {}
Tab47:AddInput("VX_flag_289", {
	Text = "Custom Link",
	Placeholder = "raw.githubusercontent.com/...",
	Callback = function(arg1038, arg1039)
		arg1038:match("^https?://")
	end
})
Tab47:AddSlider("VX_flag_290", {
	Text = "Volume",
	Default = 100,
	Max = 100,
	Min = 0,
	Rounding = 0,
	Callback = function(arg1040, arg1041)
		local Themes22 = workspace:FindFirstChild("Themes")
		local LastSurvivor4 = Themes22 and Themes22:FindFirstChild("LastSurvivor")
		local Themes23 = workspace:FindFirstChild("Themes")
		local oldLobby4 = Themes23 and Themes23:FindFirstChild("oldLobby")
		local Themes24 = workspace:FindFirstChild("Themes")
		local MapAmbience5 = Themes24 and Themes24:FindFirstChild("MapAmbience")
		if LastSurvivor4 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if LastSurvivor4 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		LastSurvivor4.Volume = (tonumber(arg1040) / 100)
		end
		end
		if oldLobby4 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if oldLobby4 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		oldLobby4.Volume = (tonumber(arg1040) / 100)
		end
		end
		if MapAmbience5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		if MapAmbience5 then -- [[deobf: guard — объекта может не быть (лобби/не в раунде)]]
		MapAmbience5.Volume = (tonumber(arg1040) / 100)
		end
		end
	end
})
local Tab48 = Window:AddTab("UI Settings", "settings", "theme and config management")
result2:SetLibrary(result)
result2:IgnoreThemeSettings()
result2:SetIgnoreIndexes({ "MenuKeybind" })
result2:SetFolder("Vexsaken")
result2:BuildConfigSection(Tab48)
result2:LoadAutoloadConfig()
result3:SetLibrary(result)
result3:SetFolder("Vexsaken")
result3:SetDefaultTheme({
	AccentColor = Color3.fromRGB(140, 80, 255),
	BackgroundColor = Color3.fromRGB(11, 8, 22),
	FontColor = Color3.fromRGB(230, 220, 255),
	MainColor = Color3.fromRGB(18, 14, 32),
	OutlineColor = Color3.fromRGB(35, 18, 65)
})
result3:ApplyToTab(Tab48)
result3:LoadDefault()
local RightGroupbox10 = Tab48:AddRightGroupbox("Interface", "sliders-horizontal")
RightGroupbox10:AddCheckbox("VX_flag_291", {
	Text = "Custom Cursor",
	Default = false,
	Tooltip = "Enables the Obsidian-styled cursor",
	Callback = function(state, arg1043)
		if state then
			result.ShowCustomCursor = state
		else
			result.ShowCustomCursor = false
		end
	end
})
RightGroupbox10:AddDropdown("VX_flag_292", {
	Text = "Notification Side",
	Default = "Right",
	Tooltip = "Which side of the screen notifications appear on",
	Values = { "Left", "Right" },
	Callback = function(state, arg1045)
		if state then
			result:SetNotifySide(state)
		else
			result:SetNotifySide(false)
		end
	end
})
RightGroupbox10:AddSlider("VX_flag_293", {
	Text = "DPI Scale",
	Default = 100,
	Max = 150,
	Min = 75,
	Rounding = 0,
	Tooltip = "Scales the entire UI (100 = normal)",
	Callback = function(state, arg1047)
		if state then
			result:SetDPIScale(tonumber(state))
		else
			result:SetDPIScale(nil)
		end
	end
})
RightGroupbox10:AddDropdown("VX_flag_294", {
	Text = "Font",
	Default = "GothamMedium",
	Tooltip = "Font used across the entire UI",
	Values = {
		"GothamMedium",
		"Gotham",
		"GothamBold",
		"GothamBlack",
		"Arial",
		"ArialBold",
		"Roboto",
		"SourceSans",
		"SourceSansBold",
		"Code"
	},
	Callback = function(state, arg1049)
		if state then
			result:SetFont(Enum.Font[state])
		end
	end
})
RightGroupbox10:AddDivider({ MarginBottom = 2, MarginTop = 2 })
local Label3 = RightGroupbox10:AddLabel("Menu Keybind")
Label3:AddKeyPicker("MenuKeybind", { Text = "Toggle menu keybind", Default = "P", NoUI = true })
result.ToggleKeybind = result.Options.MenuKeybind -- [[deobf: Options/Toggles живут на библиотеке, не в глобалах]]
