local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local lib2, lib3, v, fn

do
    local v2 = lib:CreateLoading({
        Title = "Vexsaken",
        Icon = "rbxassetid://106047893866515",
        TotalSteps = 7,
        ShowSidebar = true,
    })

    v2.Sidebar:AddLabel("<font color=\"rgb(140, 80, 255)\">Vexsaken 6.7</font>", true)
    v2.Sidebar:AddLabel("<font color=\"rgb(180, 180, 180)\">by Sphynx / Luna</font>", true)
    v2.Sidebar:AddDivider()
    v2.Sidebar:AddLabel("Press <font color=\"rgb(140,80,255)\">P</font> to toggle the menu once loaded.", true)
    v2:SetMessage("Downloading modules...")
    v2:SetDescription("Fetching SaveManager...")
    lib2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
    v2:SetCurrentStep(1)
    task.wait(0.2)
    v2:SetDescription("Fetching ThemeManager...")
    lib3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
    v2:SetCurrentStep(2)
    task.wait(0.2)
    v2:SetMessage("Resolving services...")
    v2:SetDescription("Getting game services...")
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    game:GetService("RunService")
    game:GetService("TweenService")
    game:GetService("UserInputService")
    v2:SetCurrentStep(3)
    task.wait(0.2)
    v2:SetMessage("Waiting for player...")
    v2:SetDescription("Waiting for LocalPlayer...")
    local localPlayer = Players.LocalPlayer
    local localPlayer2 = localPlayer

    if not localPlayer then
        Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
        localPlayer2 = Players.LocalPlayer
    end

    v2:SetCurrentStep(4)
    task.wait(0.1)
    v2:SetDescription("Waiting for character...")

    if not localPlayer2.Character then
        localPlayer2.CharacterAdded:Wait()
    end

    v2:SetCurrentStep(5)
    task.wait(0.1)
    v2:SetMessage("Loading game assets...")
    v2:SetDescription("Waiting for Systems...")

    pcall(function()
        ReplicatedStorage:WaitForChild("Systems", 15)
    end)

    v2:SetDescription("Waiting for Modules...")

    pcall(function()
        ReplicatedStorage:WaitForChild("Modules", 15)
    end)

    v2:SetDescription("Waiting for Assets...")

    pcall(function()
        ReplicatedStorage:WaitForChild("Assets", 15)
    end)

    v2:SetCurrentStep(6)
    task.wait(0.2)
    v2:SetMessage("Pre-caching modules...")
    v2:SetDescription("Caching Sprinting module...")

    pcall(function()
        getgenv()._SharedSprintMod = require(ReplicatedStorage.Systems.Character.Game.Sprinting)
    end)

    v2:SetDescription("Caching Mouse module...")

    pcall(function()
        getgenv()._SharedMouseMod = require(ReplicatedStorage.Systems.Player.Miscellaneous.GetPlayerMousePosition)
    end)

    v2:SetCurrentStep(7)
    task.wait(0.3)
    v2:SetMessage("Done!")
    v2:SetDescription("Launching Vexsaken...")
    task.wait(0.4)
    v2:Continue()

    v = lib:CreateWindow({
        Title = "Vexsaken",
        Icon = "rbxassetid://106047893866515",
        Footer = "Vexsaken 6.7 [ Revamped ]",
        Center = true,
        AutoShow = true,
        Folder = "Vexsaken",
        ToggleKeybind = Enum.KeyCode.P,
    })

    local n = 0

    fn = function()
        n = n + 1
        return "VX_flag_" .. n
    end

    local Home = v:AddTab("Home", "house")
    local Welcome = Home:AddLeftGroupbox("Welcome", "boxes")
    local Credits = Home:AddRightGroupbox("Credits", "info")
    local Contributors = Home:AddRightGroupbox("Contributors", "users")
    Credits:AddLabel("<font color=\"rgb(255, 221, 0)\">Sphynx/Luna - (Owner)</font>\n\n⚠ This script is heavily inspired by Fartsaken\n\nI want to be transparent and give credit where it's due. This script is heavily inspired by Fartsaken. Many of the ideas, features, and the overall direction were influenced by their work. Although I developed this script myself and added my own ideas and improvements, I want to acknowledge the Fartsaken developers for inspiring this project. This is my own interpretation and is not intended to copy or replace the original.", true)
    Contributors:AddLabel("<font color=\"rgb(180, 180, 180)\">Coro - (Co-Owner/Former Developer)</font>", true)
    Contributors:AddLabel("<font color=\"rgb(100, 149, 237)\">Veux67 - (Helper/Best Friend)</font>", true)
    Contributors:AddLabel("<font color=\"rgb(255, 80, 80)\">Cryptic - (Helper/Friend)</font>", true)

    Welcome:AddButton({
        Text = "Copy Vexsaken Invite",
        Func = function()
            pcall(function()
                setclipboard("https://discord.gg/CuxSmrgDKD")
            end)

            lib:Notify({
                Title = "Copied!",
                Description = "discord.gg/CuxSmrgDKD",
                Duration = 3,
            })
        end,
    })

    local localPlayer3 = game:GetService("Players").LocalPlayer
    local character = localPlayer3.Character
    local result = character or localPlayer3.CharacterAdded:Wait()
    result.Archivable = true
    local clone = result:Clone()

    for i, descendant in ipairs(clone:GetDescendants()) do
        if descendant:IsA("Sound") or descendant:IsA("BaseScript") then
            descendant:Destroy()
        end
    end

    clone:MoveTo(Vector3.new(0, 0, 0))
    local humanoidRootPart = clone:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart then
        humanoidRootPart.Anchored = true
    end

    local worldModel = Instance.new("WorldModel")
    clone.Parent = worldModel

    Welcome:AddViewport("anjmviewport", {
        Object = worldModel,
        Camera = Instance.new("Camera"),
        Interactive = true,
        AutoFocus = true,
        Height = 200,
    })

    Welcome:AddLabel("🟢 Vexsaken 6.7", true)

    local tbl = {
        "rbxassetid://139133319221924",
        "rbxassetid://78992923796168",
        "rbxassetid://109894892784471",
        "rbxassetid://120476797927055",
        "rbxassetid://135096417373947",
        "rbxassetid://87793550167629",
        "rbxassetid://121015083880066",
        "rbxassetid://116164572233278",
    }

    task.spawn(function()
        local v3
        task.wait(0.2)
        local v4 = nil

        for i, descendant in ipairs(lib.ScreenGui:GetDescendants()) do
            if descendant:IsA("ViewportFrame") then
                v4 = descendant
                break
            end
            continue
        end

        if v4 then
            local model = v4.WorldModel:FindFirstChildOfClass("Model")

            if model then
                local currentCamera = v4.CurrentCamera
                local torso = model:FindFirstChild("Torso")
                local upperTorso = torso or model:FindFirstChild("UpperTorso")

                if currentCamera and upperTorso then
                    local cframe = CFrame.new
                    local n2 = upperTorso.Position + upperTorso.CFrame.LookVector * 5.5 + Vector3.new(0, 0.5, 0)
                    local position = upperTorso.Position
                    local vector = Vector3.new(0, 0.2, 0)
                    v3 = vector
                    currentCamera.CFrame = cframe(n2, position + vector)
                end

                local animator = model.Humanoid:FindFirstChildOfClass("Animator")
                local animator2 = animator or Instance.new("Animator", model.Humanoid)
                local v5 = nil
                local v6 = nil;

                (function()
                    if v6 then
                        pcall(function()
                            v6:Stop()
                        end)
                    end

                    local n2

                    repeat
                        n2 = math.random(1, #tbl)
                    until n2 ~= v5 or #tbl == 1

                    v5 = n2
                    local animation = Instance.new("Animation")
                    animation.AnimationId = tbl[n2]
                    local v7 = animator2:LoadAnimation(animation)
                    v7.Looped = false
                    v7:Play()
                    v6 = v7

                    v7.Stopped:Connect(function()
                        v3()
                    end)
                end)()
            end
        end
    end)

    local Stamina = v:AddTab("Stamina", "battery", "manage your stamina settings")
    local v3 = Stamina:AddLeftGroupbox("Stamina System", "battery")
    local zap = Stamina:AddRightTabbox("zap")
    local Stuff = zap:AddTab("Stuff")
    local Speed = zap:AddTab("Speed")
    getgenv().SM_Enabled = false
    getgenv().SM_Threshold = 10

    local function fn2()
        local localPlayer4 = game:GetService("Players").LocalPlayer
        local playerGui = localPlayer4 and localPlayer4:FindFirstChild("PlayerGui")
        local amount = playerGui and playerGui:FindFirstChild("TemporaryUI") and playerGui.TemporaryUI:FindFirstChild("PlayerInfo") and playerGui.TemporaryUI.PlayerInfo:FindFirstChild("Bars") and playerGui.TemporaryUI.PlayerInfo.Bars:FindFirstChild("Stamina") and playerGui.TemporaryUI.PlayerInfo.Bars.Stamina:FindFirstChild("Amount")
        if not amount then
            return nil
        end
        local match, v4 = amount.Text:match("(%d+)%s*/%s*(%d+)")
        return tonumber(match), tonumber(v4)
    end

    local function fn3()
        local sharedSprintMod = getgenv()._SharedSprintMod
        local sprintModule = sharedSprintMod or getgenv().SprintModule
        if not sprintModule then
            return
        end

        pcall(function()
            sprintModule.IsSprinting = false
            sprintModule.__sprintedEvent:Fire(false)
        end)
    end

    game:GetService("RunService").Heartbeat:Connect(function()
        if not getgenv().SM_Enabled then
            return
        end
        local v4 = fn2()
        if not v4 then
            return
        end

        if v4 <= getgenv().SM_Threshold then
            local sharedSprintMod = getgenv()._SharedSprintMod
            local sprintModule = sharedSprintMod or getgenv().SprintModule
            if not sprintModule then
                return
            end

            if sprintModule.IsSprinting then
                fn3()

                task.delay(2, function()
                    pcall(function()
                        sprintModule.CanSprint = true
                    end)
                end)
            end
        end
    end)

    Stuff:AddCheckbox(fn(), {
        Text = "Auto Unsprint",
        Default = false,
        Callback = function(smEnabled)
            getgenv().SM_Enabled = smEnabled
        end,
    })

    Stuff:AddInput(fn(), {
        Text = "Unsprint at Stamina",
        Placeholder = "10",
        Callback = function(arg)
            local smThreshold = tonumber(arg)

            if smThreshold then
                getgenv().SM_Threshold = smThreshold
            end
        end,
    })

    local genv = getgenv()
    local disableDirSpeedConn = getgenv()._disableDirSpeedConn
    local v4 = disableDirSpeedConn or nil
    genv._disableDirSpeedConn = v4

    getgenv().getDirectionalMovement = function()
        local speedMultipliers = workspace:FindFirstChild("SpeedMultipliers", true)
        if not speedMultipliers then
            return nil
        end
        return speedMultipliers:FindFirstChild("DirectionalMovement")
    end

    Stuff:AddCheckbox(fn(), {
        Text = "Keep Directional Speed",
        Default = false,
        Callback = function(arg)
            if getgenv()._disableDirSpeedConn then
                getgenv()._disableDirSpeedConn:Disconnect()
                getgenv()._disableDirSpeedConn = nil
            end

            if arg then
                getgenv()._disableDirSpeedConn = game:GetService("RunService").Heartbeat:Connect(function()
                    local v5 = getgenv().getDirectionalMovement()

                    if v5 and v5:IsA("NumberValue") then
                        v5.Value = 1
                    end
                end)
            end
        end,
    })

    local genv2 = getgenv()
    local disableDirMovementEnabled = getgenv()._disableDirMovementEnabled
    local disableDirMovementEnabled2 = disableDirMovementEnabled or false
    genv2._disableDirMovementEnabled = disableDirMovementEnabled2

    Stuff:AddCheckbox(fn(), {
        Text = "Remove Movement Lock",
        Default = false,
        Callback = function(disableDirMovementEnabled3)
            getgenv()._disableDirMovementEnabled = disableDirMovementEnabled3

            if disableDirMovementEnabled3 then
                local function fn4()
                    local speedMultipliers = workspace:FindFirstChild("SpeedMultipliers", true)

                    if speedMultipliers then
                        if getgenv()._disableDirMovConn then
                            getgenv()._disableDirMovConn:Disconnect()
                        end

                        getgenv()._disableDirMovConn = speedMultipliers.ChildAdded:Connect(function(child)
                            if child.Name == "DirectionalMovement" and getgenv()._disableDirMovementEnabled then
                                child:Destroy()
                            end
                        end)

                        local directionalMovement = speedMultipliers:FindFirstChild("DirectionalMovement")

                        if directionalMovement then
                            directionalMovement:Destroy()
                        end
                    end
                end

                fn4()

                if getgenv()._disableDirMovRehookConn then
                    getgenv()._disableDirMovRehookConn:Disconnect()
                end

                getgenv()._disableDirMovRehookConn = workspace.DescendantAdded:Connect(function(descendant)
                    if descendant.Name == "SpeedMultipliers" and getgenv()._disableDirMovementEnabled then
                        fn4()
                    end
                end)
            else
                if getgenv()._disableDirMovConn then
                    getgenv()._disableDirMovConn:Disconnect()
                    getgenv()._disableDirMovConn = nil
                end

                if getgenv()._disableDirMovRehookConn then
                    getgenv()._disableDirMovRehookConn:Disconnect()
                    getgenv()._disableDirMovRehookConn = nil
                end
            end
        end,
    })

    task.spawn(function()
        local ok, result2 = pcall(function()
            return require(game:GetService("ReplicatedStorage").Systems.Character.Game.Sprinting)
        end)

        local ok2, result3 = pcall(function()
            return require(game:GetService("ReplicatedStorage").Systems.Player.Miscellaneous.GetPlayerMousePosition)
        end)

        local genv3 = getgenv()
        local sharedSprintMod = ok and result2 or {}
        genv3._SharedSprintMod = sharedSprintMod
        local genv4 = getgenv()
        local v5 = ok2 and result3 or nil
        genv4._SharedMouseMod = v5
    end)

    while not getgenv()._SharedSprintMod do
        task.wait()
    end

    getgenv().SprintModule = getgenv()._SharedSprintMod
    getgenv().SprintDefaults = {}

    getgenv().StaminaStats = {
        MaxStamina = 100,
        MinStamina = 0,
        StaminaGain = 20,
        StaminaLoss = 10,
        SprintSpeed = 26,
    }

    getgenv().StaminaToggles = {
        MaxStamina = false,
        MinStamina = false,
        StaminaGain = false,
        StaminaLoss = false,
        SprintSpeed = false,
    }

    getgenv().UnlimitedEnabled = false

    local function fn4(arg)
        if getgenv().SprintDefaults[arg] == nil then
            getgenv().SprintDefaults[arg] = getgenv().SprintModule[arg]
        end
    end

    v3:AddCheckbox(fn(), {
        Text = "Unlimited Stamina",
        Default = false,
        Callback = function(unlimitedEnabled)
            if unlimitedEnabled then
                fn4("StaminaLoss")
            end

            getgenv().UnlimitedEnabled = unlimitedEnabled
            local sprintModule = getgenv().SprintModule
            local staminaLoss = unlimitedEnabled and 0 or getgenv().SprintDefaults.StaminaLoss
            sprintModule.StaminaLoss = staminaLoss
        end,
    })

    local flag = false
    local tbl2 = {}
    local tbl3 = {}

    v3:AddCheckbox(fn(), {
        Text = "Stamina Checker",
        Default = false,
        Callback = function(arg)
            flag = arg
            local Players2 = game:GetService("Players")
            local ReplicatedStorage2 = game:GetService("ReplicatedStorage")
            local localPlayer4 = Players2.LocalPlayer

            if not arg then
                for k, player_ in pairs(Players2:GetPlayers()) do
                    if player_.Character then
                        local staminaBillboard = player_.Character:FindFirstChild("StaminaBillboard")

                        if staminaBillboard then
                            staminaBillboard:Destroy()
                        end

                        player_.Character:SetAttribute("StaminaActive", nil)
                    end
                end

                for k, v5 in pairs(tbl2) do
                    if v5 and v5.Connected then
                        v5:Disconnect()
                    end
                end

                tbl2 = {}
                tbl3 = {}
                return
            end

            local tbl4 = {
                MaxStamina = 100,
                StaminaLossPerSec = 10,
                StaminaGainPerSec = 20,
            }

            local function fn5(arg2)
                local humanoidRootPart2 = arg2:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart2 then
                    return 0
                end
                local now = tick()
                local vector = Vector3.new(humanoidRootPart2.Position.X, 0, humanoidRootPart2.Position.Z)

                if not tbl3[arg2] then
                    tbl3[arg2] = {
                        lastPosition = vector,
                        lastTime = now,
                        speedHistory = {},
                        smoothedSpeed = 0,
                    }

                    return 0
                end

                local v5 = tbl3[arg2]
                local n2 = now - v5.lastTime

                if n2 > 0.01 then
                    table.insert(v5.speedHistory, (vector - v5.lastPosition).Magnitude / n2)

                    while #v5.speedHistory > 5 do
                        table.remove(v5.speedHistory, 1)
                    end

                    local n3 = 0

                    for i, v6 in ipairs(v5.speedHistory) do
                        n3 = n3 + v6
                    end

                    v5.smoothedSpeed = n3 / #v5.speedHistory
                    v5.lastPosition = vector
                    v5.lastTime = now
                end

                return v5.smoothedSpeed
            end

            local function fn6(arg2)
                local tbl5 = {}
                local assets = ReplicatedStorage2:WaitForChild("Assets")
                local v5 = assets:WaitForChild("Killers"):FindFirstChild(arg2.Name)
                local v6 = v5 or assets:WaitForChild("Survivors"):FindFirstChild(arg2.Name)
                local config = v6 and v6:FindFirstChild("Config")

                local ok, result2 = pcall(function()
                    local module = config and require(config)
                    return module
                end)

                if ok and result2 then
                    local maxStamina = result2.MaxStamina
                    local maxStamina2 = maxStamina or tbl4.MaxStamina
                    tbl5.MaxStamina = maxStamina2
                    local staminaLoss = result2.StaminaLoss
                    local staminaDrain = staminaLoss or result2.StaminaDrain or tbl4.StaminaLossPerSec
                    tbl5.StaminaLossPerSec = staminaDrain
                    local staminaGain = result2.StaminaGain
                    local staminaGainPerSec = staminaGain or tbl4.StaminaGainPerSec
                    tbl5.StaminaGainPerSec = staminaGainPerSec
                else
                    tbl5.MaxStamina = tbl4.MaxStamina
                    tbl5.StaminaLossPerSec = tbl4.StaminaLossPerSec
                    tbl5.StaminaGainPerSec = tbl4.StaminaGainPerSec
                end

                tbl5.LossTick = tbl5.StaminaLossPerSec * 0.01
                tbl5.GainTick = tbl5.StaminaGainPerSec * 0.01
                return tbl5
            end

            local function createTextLabel(parent)
                local head

                repeat
                    head = parent:FindFirstChild("Head")
                    task.wait(0.1)
                until head or not parent.Parent or not flag

                if not head or not flag then
                    return nil
                end

                if parent:FindFirstChild("StaminaBillboard") then
                    return parent.StaminaBillboard:FindFirstChild("StaminaText")
                end
                local billboardGui = Instance.new("BillboardGui")
                billboardGui.Name = "StaminaBillboard"
                billboardGui.Adornee = head
                billboardGui.Size = UDim2.new(4, 0, 1, 0)
                billboardGui.StudsOffset = Vector3.new(0, 3, 0)
                billboardGui.AlwaysOnTop = true
                billboardGui.ResetOnSpawn = false
                billboardGui.Parent = parent
                local textLabel = Instance.new("TextLabel")
                textLabel.Name = "StaminaText"
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
                textLabel.TextScaled = true
                textLabel.FontFace = Font.new("rbxasset://fonts/families/Sarpanch.json", Enum.FontWeight.Bold)
                textLabel.Text = "100"
                textLabel.TextStrokeTransparency = 0
                textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                textLabel.Parent = billboardGui
                return textLabel
            end

            local function fn7(arg2)
                if arg2:GetAttribute("StaminaActive") then
                    return
                end
                arg2:SetAttribute("StaminaActive", true)
                local humanoid = arg2:WaitForChild("Humanoid", 10)
                local v5 = fn6(arg2)
                local maxStamina = v5.MaxStamina
                local lossTick = v5.LossTick
                local gainTick = v5.GainTick
                local v6 = createTextLabel(arg2)

                if humanoid and v6 then
                    local n2 = maxStamina
                    local flag2 = false
                    local n3 = 0
                    local n4 = 0

                    task.spawn(function()
                        while arg2.Parent and humanoid.Health > 0 and flag do
                            task.wait(0.01)
                            if not v6.Parent then
                                break
                            end
                            local flag3 = fn5(arg2) >= 20

                            if flag3 then
                                n4 = 0.1
                                n2 = n2 - lossTick

                                if n2 <= 0 then
                                    n2 = 0
                                    flag2 = true
                                    n3 = 2
                                end
                            elseif n4 > 0 then
                                n4 = n4 - 0.01
                            elseif flag2 then
                                n3 = n3 - 0.01

                                if n3 <= 0 then
                                    n3 = 0
                                    flag2 = false
                                end
                            else
                                n2 = n2 + gainTick
                            end

                            n2 = math.clamp(n2, 0, maxStamina)
                            v6.Text = string.format("%d", math.floor(n2))

                            if flag2 then
                                local color = math.sin(tick() * 10) > 0 and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(150, 0, 0)
                                v6.TextColor3 = color
                            else
                                local n5 = n2 / maxStamina
                                local color = n5 > 0.63 and Color3.fromRGB(100, 255, 150) or n5 > 0.27 and Color3.fromRGB(255, 220, 100) or Color3.fromRGB(255, 80, 80)
                                v6.TextColor3 = color
                            end
                        end

                        arg2:SetAttribute("StaminaActive", nil)

                        if v6 and v6.Parent and v6.Parent.Parent then
                            v6.Parent:Destroy()
                        end

                        tbl3[arg2] = nil
                    end)

                    return
                end

                arg2:SetAttribute("StaminaActive", nil)
            end

            local function fn8(player_)
                table.insert(tbl2, player_.CharacterAdded:Connect(function(character2)
                    task.spawn(function()
                        task.wait(0.5)

                        if flag then
                            fn7(character2)
                        end
                    end)
                end))

                if player_.Character then
                    fn7(player_.Character)
                end
            end

            table.insert(tbl2, Players2.PlayerAdded:Connect(fn8))

            for k, player_ in pairs(Players2:GetPlayers()) do
                fn8(player_)
            end
        end,
    })

    v3:AddDivider()

    local function fn5(arg, arg2, arg3, arg4)
        arg:AddCheckbox(fn(), {
            Text = "Enable " .. arg2,
            Default = false,
            Callback = function(arg5)
                if arg5 then
                    fn4(arg3)
                end

                getgenv().StaminaToggles[arg3] = arg5

                if not arg5 then
                    getgenv().SprintModule[arg3] = getgenv().SprintDefaults[arg3]
                end
            end,
        })

        arg:AddInput(fn(), {
            Text = arg2,
            Placeholder = tostring(arg4),
            Callback = function(arg5)
                local num = tonumber(arg5)

                if num and not getgenv().UnlimitedEnabled then
                    getgenv().StaminaStats[arg3] = num
                end
            end,
        })
    end

    fn5(v3, "Max Stamina", "MaxStamina", 100)
    fn5(v3, "Min Stamina", "MinStamina", 0)
    fn5(v3, "Stamina Gain", "StaminaGain", 20)
    fn5(v3, "Stamina Loss", "StaminaLoss", 10)
    fn5(v3, "Sprint Speed", "SprintSpeed", 26)

    task.spawn(function()
        while task.wait(0.1) do
            local staminaToggles = getgenv().StaminaToggles
            local staminaStats = getgenv().StaminaStats
            local sprintModule = getgenv().SprintModule

            if getgenv().UnlimitedEnabled or staminaToggles.MaxStamina or staminaToggles.MinStamina or staminaToggles.StaminaGain or staminaToggles.StaminaLoss or staminaToggles.SprintSpeed then
                if staminaToggles.MaxStamina then
                    sprintModule.MaxStamina = staminaStats.MaxStamina
                end

                if staminaToggles.MinStamina then
                    sprintModule.MinStamina = staminaStats.MinStamina
                end

                if staminaToggles.StaminaGain then
                    sprintModule.StaminaGain = staminaStats.StaminaGain
                end

                if staminaToggles.SprintSpeed then
                    sprintModule.SprintSpeed = staminaStats.SprintSpeed
                end

                if getgenv().UnlimitedEnabled then
                    sprintModule.StaminaLoss = 0
                elseif staminaToggles.StaminaLoss then
                    sprintModule.StaminaLoss = staminaStats.StaminaLoss
                end
            end
        end
    end)

    local flag2 = false
    local n2 = 1
    local connection = nil
    local TweenService = game:GetService("TweenService")

    local function fn6(arg, arg2, arg3)
        if arg.__currentSpeedTween then
            arg.__currentSpeedTween:Cancel()
            arg.__currentSpeedTween = nil
        end

        local tween = TweenService:Create(arg2, TweenInfo.new(0.75), {Value = arg3})
        arg.__currentSpeedTween = tween
        tween:Play()

        tween.Completed:Connect(function()
            if arg.__currentSpeedTween == tween then
                arg.__currentSpeedTween = nil
            end
        end)
    end

    local function fn7(arg)
        task.defer(function()
            local sharedSprintMod = getgenv()._SharedSprintMod
            local sprintModule = sharedSprintMod or getgenv().SprintModule
            if not sprintModule then
                return
            end
            local character2 = game.Players.LocalPlayer.Character
            if not character2 then
                return
            end
            local speedMultipliers = character2:FindFirstChild("SpeedMultipliers")
            local sprinting = speedMultipliers and character2.SpeedMultipliers:FindFirstChild("Sprinting")
            if not sprinting then
                return
            end
            local humanoid = character2:FindFirstChildOfClass("Humanoid")
            local attribute = humanoid and humanoid:GetAttribute("BaseSpeed") or 16
            local n3 = arg and sprintModule.SprintSpeed / attribute or n2
            fn6(sprintModule, sprinting, n3)
        end)
    end

    local function fn8()
        if connection then
            connection:Disconnect()
            connection = nil
        end

        local sharedSprintMod = getgenv()._SharedSprintMod
        local sprintModule = sharedSprintMod or getgenv().SprintModule

        if sprintModule and sprintModule.SprintToggled then
            connection = sprintModule.SprintToggled:Connect(fn7)
            fn7(sprintModule.IsSprinting)
        end
    end

    local function fn9()
        if connection then
            connection:Disconnect()
            connection = nil
        end

        local sharedSprintMod = getgenv()._SharedSprintMod
        local sprintModule = sharedSprintMod or getgenv().SprintModule
        if not sprintModule then
            return
        end
        local character2 = game.Players.LocalPlayer.Character
        if not character2 then
            return
        end
        local speedMultipliers = character2:FindFirstChild("SpeedMultipliers")
        local sprinting = speedMultipliers and character2.SpeedMultipliers:FindFirstChild("Sprinting")
        if not sprinting then
            return
        end
        local humanoid = character2:FindFirstChildOfClass("Humanoid")
        local attribute = humanoid and humanoid:GetAttribute("BaseSpeed") or 16
        local isSprinting = sprintModule.IsSprinting
        local n3 = isSprinting and sprintModule.SprintSpeed / attribute or 1
        fn6(sprintModule, sprinting, n3)
    end

    Speed:AddCheckbox(fn(), {
        Text = "Walkspeed Multiplier",
        Default = false,
        Callback = function(arg)
            flag2 = arg

            if arg then
                fn8()
            else
                fn9()
            end
        end,
    })

    Speed:AddSlider(fn(), {
        Text = "Multiplier",
        Min = 0.5,
        Max = 5,
        Default = 1,
        Rounding = 2,
        Callback = function(arg)
            n2 = tonumber(arg)

            if flag2 then
                local sharedSprintMod = getgenv()._SharedSprintMod
                local sprintModule = sharedSprintMod or getgenv().SprintModule or {}
                fn7(sprintModule.IsSprinting)
            end
        end,
    })

    local Visual = v:AddTab("Visual", "eye", "esp and camera settings")
    local eye = Visual:AddLeftTabbox("eye")
    local esp = eye:AddTab("ESP")
    local Settings = eye:AddTab("Settings")
    local v5 = Visual:AddRightGroupbox("FOV / Camera", "camera")

    task.spawn(function()
        local font = Font.new("rbxasset://fonts/families/Sarpanch.json", Enum.FontWeight.Bold)

        local vxEsp = {
            killersEnabled = false,
            survivorsEnabled = false,
            generatorsEnabled = false,
            itemsEnabled = false,
            colorKiller = Color3.fromRGB(255, 130, 130),
            colorSurvivor = Color3.fromRGB(150, 225, 255),
            colorGenerator = Color3.fromRGB(255, 215, 100),
            colorItem = Color3.fromRGB(210, 255, 210),
            healthConns = {},
            progressConns = {},
            chamsEnabled = true,
            tracerEnabled = false,
            boxEnabled = false,
            tracerPosition = "Bottom",
            showDistance = false,
            showName = false,
            showCharacter = true,
            showHealth = true,
            showRole = false,
            billboardsEnabled = false,
            fillTransparency = 0.8,
            textSize = 15,
            offset = 3.8,
            strokeThickness = 1.5,
        }

        local tbl4 = {
            Sarpanch = Font.new("rbxasset://fonts/families/Sarpanch.json", Enum.FontWeight.Bold),
            Arial = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold),
            SourceSans = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold),
            Gotham = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold),
            Code = Font.new("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.Bold),
        }

        local tbl5 = {}
        local tbl6 = {}
        local tbl7 = {}

        local function fn10()
            local players = workspace:FindFirstChild("Players")
            local killers = players and players:FindFirstChild("Killers")
            return killers
        end

        local function fn11()
            local players = workspace:FindFirstChild("Players")
            local survivors = players and players:FindFirstChild("Survivors")
            return survivors
        end

        local function fn12()
            local map = workspace:FindFirstChild("Map")
            local ingame = map and map:FindFirstChild("Ingame")
            local map2 = ingame and ingame:FindFirstChild("Map")
            return map2
        end

        local function fn13(adornee, name, fillColor, arg)
            if not adornee or adornee == game.Players.LocalPlayer.Character then
                return
            end

            if adornee:FindFirstChild(name) then
                return
            end
            local humanoidRootPart2 = adornee:FindFirstChild("HumanoidRootPart")
            local primaryPart = humanoidRootPart2 or adornee.PrimaryPart or adornee:FindFirstChildWhichIsA("BasePart")
            if not primaryPart then
                return
            end
            local str = name == "VX_ESP_Killer" and "Killer" or name == "VX_ESP_Survivor" and "Survivor" or nil

            pcall(function()
                local highlight = Instance.new("Highlight")
                highlight.Name = name
                highlight.FillColor = fillColor
                highlight.OutlineColor = fillColor
                highlight.FillTransparency = vxEsp.fillTransparency
                highlight.OutlineTransparency = 0.6
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.Adornee = adornee
                highlight.Enabled = vxEsp.chamsEnabled
                highlight.Parent = adornee
                tbl6[highlight] = true
                local billboardGui = Instance.new("BillboardGui")
                billboardGui.Name = name .. "_Label"
                billboardGui.Adornee = primaryPart
                billboardGui.Size = UDim2.new(0, 220, 0, 60)
                billboardGui.StudsOffsetWorldSpace = Vector3.new(0, vxEsp.offset, 0)
                billboardGui.AlwaysOnTop = true
                billboardGui.MaxDistance = math.huge
                billboardGui.Enabled = vxEsp.billboardsEnabled
                billboardGui.Parent = adornee
                tbl7[billboardGui] = true
                local textLabel = Instance.new("TextLabel")
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.TextColor3 = fillColor
                textLabel.TextStrokeTransparency = 0.35
                textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                textLabel.TextScaled = false
                textLabel.TextSize = vxEsp.textSize
                textLabel.FontFace = font
                textLabel.Parent = billboardGui
                tbl5[textLabel] = true

                local function fn14()
                    local tbl8 = {}

                    if vxEsp.showCharacter then
                        table.insert(tbl8, adornee.Name)
                    end

                    if vxEsp.showName then
                        local playerFromCharacter = game.Players:GetPlayerFromCharacter(adornee)

                        if playerFromCharacter then
                            table.insert(tbl8, playerFromCharacter.Name)
                        end
                    end

                    if vxEsp.showRole and str then
                        table.insert(tbl8, str)
                    end

                    if vxEsp.showHealth and arg then
                        local humanoid = adornee:FindFirstChildOfClass("Humanoid")

                        if humanoid and humanoid.MaxHealth > 0 then
                            table.insert(tbl8, math.floor(humanoid.Health / humanoid.MaxHealth * 100) .. "%")
                        end
                    end

                    if vxEsp.showDistance then
                        local character2 = game.Players.LocalPlayer.Character
                        local humanoidRootPart3 = character2 and character2:FindFirstChild("HumanoidRootPart")

                        if humanoidRootPart3 then
                            table.insert(tbl8, math.floor((primaryPart.Position - humanoidRootPart3.Position).Magnitude) .. "m")
                        end
                    end

                    local progress = adornee:FindFirstChild("Progress")

                    if progress then
                        local n3 = math.floor(progress.Value)
                        table.insert(tbl8, "Gen: " .. n3 .. "%")
                        local color = n3 >= 100 and Color3.fromRGB(0, 255, 0) or vxEsp.colorGenerator
                        local vxEspGenerator = adornee:FindFirstChild("VX_ESP_Generator")

                        if vxEspGenerator then
                            vxEspGenerator.FillColor = color
                            vxEspGenerator.OutlineColor = color
                        end

                        if textLabel.Parent then
                            textLabel.TextColor3 = color
                        end
                    end

                    if textLabel.Parent then
                        textLabel.Text = table.concat(tbl8, "  |  ")
                    end
                end

                fn14()

                task.spawn(function()
                    while adornee and adornee.Parent and adornee:FindFirstChild(name .. "_Label") and textLabel.Parent do
                        fn14()
                        task.wait(0.4)
                    end
                end)

                if arg then
                    local humanoid = adornee:FindFirstChildOfClass("Humanoid")

                    if humanoid then
                        vxEsp.healthConns[adornee] = humanoid.HealthChanged:Connect(fn14)
                    end
                end

                local progress = adornee:FindFirstChild("Progress")

                if progress then
                    vxEsp.progressConns[adornee] = progress.Changed:Connect(fn14)
                end
            end)
        end

        local function fn14(arg, arg2)
            if not arg then
                return
            end

            pcall(function()
                local v6 = arg:FindFirstChild(arg2)

                if v6 then
                    tbl6[v6] = nil
                    v6:Destroy()
                end

                local v7 = arg:FindFirstChild(arg2 .. "_Label")

                if v7 then
                    local textLabel = v7:FindFirstChildOfClass("TextLabel")

                    if textLabel then
                        tbl5[textLabel] = nil
                    end

                    tbl7[v7] = nil
                    v7:Destroy()
                end

                if vxEsp.healthConns[arg] then
                    vxEsp.healthConns[arg]:Disconnect()
                    vxEsp.healthConns[arg] = nil
                end

                if vxEsp.progressConns[arg] then
                    vxEsp.progressConns[arg]:Disconnect()
                    vxEsp.progressConns[arg] = nil
                end
            end)
        end

        local function fn15()
            local v6 = fn10()

            if v6 then
                for i, child in ipairs(v6:GetChildren()) do
                    fn14(child, "VX_ESP_Killer")

                    if vxEsp.killersEnabled then
                        fn13(child, "VX_ESP_Killer", vxEsp.colorKiller, true)
                    end
                end
            end

            local v7 = fn11()

            if v7 then
                for i, child in ipairs(v7:GetChildren()) do
                    fn14(child, "VX_ESP_Survivor")

                    if vxEsp.survivorsEnabled then
                        fn13(child, "VX_ESP_Survivor", vxEsp.colorSurvivor, true)
                    end
                end
            end

            local v8 = fn12()

            if v8 then
                for i, child in ipairs(v8:GetChildren()) do
                    if child.Name == "Generator" then
                        fn14(child, "VX_ESP_Generator")

                        if vxEsp.generatorsEnabled then
                            fn13(child, "VX_ESP_Generator", vxEsp.colorGenerator, false)
                        end
                    elseif child.Name == "BloxyCola" or child.Name == "Medkit" then
                        fn14(child, "VX_ESP_Item")

                        if vxEsp.itemsEnabled then
                            fn13(child, "VX_ESP_Item", vxEsp.colorItem, false)
                        end
                    end
                end
            end
        end

        local tbl8 = {}

        local function fn16(arg)
            if not tbl8[arg] then
                local ok, result2 = pcall(function()
                    local line = Drawing.new("Line")
                    line.Thickness = vxEsp.strokeThickness
                    line.Visible = false
                    return line
                end)

                local ok2, result3 = pcall(function()
                    local square = Drawing.new("Square")
                    square.Thickness = vxEsp.strokeThickness
                    square.Filled = false
                    square.Visible = false
                    return square
                end)

                local tbl9 = {}
                local v6 = ok and result2 or nil
                tbl9.tracer = v6
                local v7 = ok2 and result3 or nil
                tbl9.box = v7
                tbl8[arg] = tbl9
            end

            return tbl8[arg]
        end

        local function fn17(arg)
            local v6 = tbl8[arg]

            if v6 then
                pcall(function()
                    if v6.tracer then
                        v6.tracer:Remove()
                    end
                end)

                pcall(function()
                    if v6.box then
                        v6.box:Remove()
                    end
                end)

                tbl8[arg] = nil
            end
        end

        game:GetService("RunService").RenderStepped:Connect(function()
            if not vxEsp.tracerEnabled and not vxEsp.boxEnabled then
                for k in pairs(tbl8) do
                    fn17(k)
                end

                return
            end

            local currentCamera = workspace.CurrentCamera
            if not currentCamera then
                return
            end
            local tbl9 = {}

            local function fn18(arg, arg2, color)
                if not arg then
                    return
                end

                for i, child in ipairs(arg:GetChildren()) do
                    if child:FindFirstChild(arg2) then
                        local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")

                        if humanoidRootPart2 then
                            tbl9[child] = true
                            local v6 = fn16(child)
                            local v7, v8 = currentCamera:WorldToViewportPoint(humanoidRootPart2.Position)

                            if v8 then
                                if v6.tracer then
                                    v6.tracer.Visible = vxEsp.tracerEnabled
                                    v6.tracer.Color = color
                                    local tracer = v6.tracer
                                    local vector2 = Vector2.new
                                    local n3 = currentCamera.ViewportSize.X / 2
                                    local y = vxEsp.tracerPosition == "Top" and 0 or currentCamera.ViewportSize.Y
                                    tracer.From = vector2(n3, y)
                                    v6.tracer.To = Vector2.new(v7.X, v7.Y)
                                end

                                if v6.box then
                                    local v9 = currentCamera:WorldToViewportPoint(humanoidRootPart2.Position + Vector3.new(0, 3, 0))
                                    local n3 = math.abs(v7.Y - v9.Y) * 2
                                    local n4 = n3 * 0.6
                                    v6.box.Visible = vxEsp.boxEnabled
                                    v6.box.Color = color
                                    v6.box.Size = Vector2.new(n4, n3)
                                    v6.box.Position = Vector2.new(v7.X - n4 / 2, v7.Y - n3 / 1.4)
                                end
                            else
                                if v6.tracer then
                                    v6.tracer.Visible = false
                                end

                                if v6.box then
                                    v6.box.Visible = false
                                end
                            end
                        end
                    end
                end
            end

            fn18(fn10(), "VX_ESP_Killer", vxEsp.colorKiller)
            fn18(fn11(), "VX_ESP_Survivor", vxEsp.colorSurvivor)

            for k in pairs(tbl8) do
                if not tbl9[k] then
                    fn17(k)
                end
            end
        end)

        task.spawn(function()
            local v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25
            local v26, n3
            n3 = 1

            while true do
                if n3 == 1 then
                    task.wait(0.3)
                    v6 = fn10()

                    if v6 then
                        n3 = 2
                    else
                        n3 = 8
                    end
                elseif n3 == 2 then
                    v7, v8, v9 = ipairs(v6:GetChildren())
                    v10 = v9
                    n3 = 3
                elseif n3 == 3 then
                    v11, v12 = v7(v8, v10)

                    if v11 == nil then
                        n3 = 8
                    else
                        n3 = 4
                    end
                elseif n3 == 4 then
                    v10 = v11

                    if vxEsp.killersEnabled then
                        n3 = 5
                    else
                        n3 = 7
                    end
                elseif n3 == 5 then
                    if v12:FindFirstChild("VX_ESP_Killer") then
                        n3 = 3
                    else
                        n3 = 6
                    end
                elseif n3 == 6 then
                    fn13(v12, "VX_ESP_Killer", vxEsp.colorKiller, true)
                    n3 = 3
                elseif n3 == 7 then
                    fn14(v12, "VX_ESP_Killer")
                    n3 = 3
                elseif n3 == 8 then
                    v13 = fn11()

                    if v13 then
                        n3 = 9
                    else
                        n3 = 15
                    end
                elseif n3 == 9 then
                    v14, v15, v16 = ipairs(v13:GetChildren())
                    v17 = v16
                    n3 = 10
                elseif n3 == 10 then
                    v18, v19 = v14(v15, v17)

                    if v18 == nil then
                        n3 = 15
                    else
                        n3 = 11
                    end
                elseif n3 == 11 then
                    v17 = v18

                    if vxEsp.survivorsEnabled then
                        n3 = 12
                    else
                        n3 = 14
                    end
                elseif n3 == 12 then
                    if v19:FindFirstChild("VX_ESP_Survivor") then
                        n3 = 10
                    else
                        n3 = 13
                    end
                elseif n3 == 13 then
                    fn13(v19, "VX_ESP_Survivor", vxEsp.colorSurvivor, true)
                    n3 = 10
                elseif n3 == 14 then
                    fn14(v19, "VX_ESP_Survivor")
                    n3 = 10
                elseif n3 == 15 then
                    v20 = fn12()

                    if v20 then
                        n3 = 16
                    else
                        n3 = 1
                    end
                elseif n3 == 16 then
                    v21, v22, v23 = ipairs(v20:GetChildren())
                    v24 = v23
                    n3 = 17
                elseif n3 == 17 then
                    v25, v26 = v21(v22, v24)

                    if v25 == nil then
                        n3 = 1
                    else
                        n3 = 18
                    end
                elseif n3 == 18 then
                    v24 = v25

                    if v26.Name == "Generator" then
                        n3 = 24
                    else
                        n3 = 19
                    end
                elseif n3 == 19 then
                    if v26.Name ~= "BloxyCola" and v26.Name ~= "Medkit" then
                        n3 = 17
                    else
                        n3 = 20
                    end
                elseif n3 == 20 then
                    if vxEsp.itemsEnabled then
                        n3 = 21
                    else
                        n3 = 23
                    end
                elseif n3 == 21 then
                    if v26:FindFirstChild("VX_ESP_Item") then
                        n3 = 17
                    else
                        n3 = 22
                    end
                elseif n3 == 22 then
                    fn13(v26, "VX_ESP_Item", vxEsp.colorItem, false)
                    n3 = 17
                elseif n3 == 23 then
                    fn14(v26, "VX_ESP_Item")
                    n3 = 17
                elseif n3 == 24 then
                    if vxEsp.generatorsEnabled then
                        n3 = 25
                    else
                        n3 = 27
                    end
                elseif n3 == 25 then
                    if v26:FindFirstChild("VX_ESP_Generator") then
                        n3 = 17
                    else
                        n3 = 26
                    end
                elseif n3 == 26 then
                    fn13(v26, "VX_ESP_Generator", vxEsp.colorGenerator, false)
                    n3 = 17
                elseif n3 == 27 then
                    fn14(v26, "VX_ESP_Generator")
                    n3 = 17
                end
            end
        end)

        esp:AddCheckbox(fn(), {
            Text = "ESP Killers",
            Default = false,
            Callback = function(killersEnabled)
                vxEsp.killersEnabled = killersEnabled
                fn15()

                if getgenv().VX_DeviceESP_UpdateOffset then
                    getgenv().VX_DeviceESP_UpdateOffset()
                end
            end,
        }):AddColorPicker(fn(), {
            Default = vxEsp.colorKiller,
            Title = "Killer Color",
            Callback = function(colorKiller)
                vxEsp.colorKiller = colorKiller
                fn15()
            end,
        })

        esp:AddCheckbox(fn(), {
            Text = "ESP Survivors",
            Default = false,
            Callback = function(survivorsEnabled)
                vxEsp.survivorsEnabled = survivorsEnabled
                fn15()

                if getgenv().VX_DeviceESP_UpdateOffset then
                    getgenv().VX_DeviceESP_UpdateOffset()
                end
            end,
        }):AddColorPicker(fn(), {
            Default = vxEsp.colorSurvivor,
            Title = "Survivor Color",
            Callback = function(colorSurvivor)
                vxEsp.colorSurvivor = colorSurvivor
                fn15()
            end,
        })

        esp:AddCheckbox(fn(), {
            Text = "ESP Generators",
            Default = false,
            Callback = function(generatorsEnabled)
                vxEsp.generatorsEnabled = generatorsEnabled
                fn15()
            end,
        }):AddColorPicker(fn(), {
            Default = vxEsp.colorGenerator,
            Title = "Generator Color",
            Callback = function(colorGenerator)
                vxEsp.colorGenerator = colorGenerator
                fn15()
            end,
        })

        esp:AddCheckbox(fn(), {
            Text = "ESP Items",
            Default = false,
            Callback = function(itemsEnabled)
                vxEsp.itemsEnabled = itemsEnabled
                fn15()
            end,
        }):AddColorPicker(fn(), {
            Default = vxEsp.colorItem,
            Title = "Item Color",
            Callback = function(colorItem)
                vxEsp.colorItem = colorItem
                fn15()
            end,
        })

        getgenv().GraffitiEspEnabled = false
        getgenv().GraffitiEspHighlights = {}
        getgenv().GraffitiEspLabels = {}
        getgenv().GraffitiEspColor = Color3.fromRGB(255, 230, 100)

        getgenv().UpdateGraffitiEsp = function()
            local map = workspace:FindFirstChild("Map")
            local ingame = map and workspace.Map:FindFirstChild("Ingame")
            local tbl9 = {}

            if ingame then
                for i, child in ipairs(ingame:GetChildren()) do
                    if child.Name:match("Spray$") then
                        tbl9[child] = child.Name:gsub("Spray$", "") .. "'s Graffiti"
                    end
                end
            end

            for k, graffitiEspHighlight in pairs(getgenv().GraffitiEspHighlights) do
                if not tbl9[k] or not getgenv().GraffitiEspEnabled then
                    pcall(function()
                        graffitiEspHighlight:Destroy()
                    end)

                    getgenv().GraffitiEspHighlights[k] = nil

                    if getgenv().GraffitiEspLabels[k] then
                        pcall(function()
                            getgenv().GraffitiEspLabels[k]:Destroy()
                        end)

                        getgenv().GraffitiEspLabels[k] = nil
                    end
                end
            end

            if not getgenv().GraffitiEspEnabled then
                return
            end

            for k, v6 in pairs(tbl9) do
                if not getgenv().GraffitiEspHighlights[k] or not getgenv().GraffitiEspHighlights[k].Parent then
                    local highlight = Instance.new("Highlight")
                    highlight.FillColor = getgenv().GraffitiEspColor
                    highlight.OutlineColor = getgenv().GraffitiEspColor
                    highlight.FillTransparency = 0.8
                    highlight.OutlineTransparency = 0.6
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    highlight.Adornee = k
                    highlight.Parent = workspace
                    getgenv().GraffitiEspHighlights[k] = highlight
                end

                if getgenv().GraffitiEspLabels[k] then
                    pcall(function()
                        getgenv().GraffitiEspLabels[k]:Destroy()
                    end)

                    getgenv().GraffitiEspLabels[k] = nil
                end

                local isBasePart = k:IsA("BasePart")
                local primaryPart = isBasePart and k or k.PrimaryPart or k:FindFirstChildWhichIsA("BasePart")

                if primaryPart then
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Adornee = primaryPart
                    billboardGui.Size = UDim2.new(0, 220, 0, 60)
                    billboardGui.StudsOffsetWorldSpace = Vector3.new(0, 3.8, 0)
                    billboardGui.AlwaysOnTop = true
                    billboardGui.MaxDistance = math.huge
                    billboardGui.Parent = k
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextColor3 = getgenv().GraffitiEspColor
                    textLabel.TextStrokeTransparency = 0.35
                    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                    textLabel.TextScaled = false
                    textLabel.TextSize = 15
                    textLabel.FontFace = font
                    textLabel.Text = v6
                    textLabel.Parent = billboardGui
                    getgenv().GraffitiEspLabels[k] = billboardGui
                end
            end
        end

        task.spawn(function()
            while true do
                task.wait(1)
                getgenv().UpdateGraffitiEsp()
            end
        end)

        esp:AddCheckbox(fn(), {
            Text = "ESP Graffiti",
            Default = false,
            Callback = function(graffitiEspEnabled)
                getgenv().GraffitiEspEnabled = graffitiEspEnabled
                getgenv().UpdateGraffitiEsp()
            end,
        }):AddColorPicker(fn(), {
            Default = getgenv().GraffitiEspColor,
            Title = "Graffiti Color",
            Callback = function(graffitiEspColor)
                getgenv().GraffitiEspColor = graffitiEspColor

                for k, graffitiEspHighlight in pairs(getgenv().GraffitiEspHighlights) do
                    graffitiEspHighlight.FillColor = graffitiEspColor
                    graffitiEspHighlight.OutlineColor = graffitiEspColor
                end

                for k, graffitiEspLabel in pairs(getgenv().GraffitiEspLabels) do
                    local textLabel = graffitiEspLabel:FindFirstChildOfClass("TextLabel")

                    if textLabel then
                        textLabel.TextColor3 = graffitiEspColor
                    end
                end
            end,
        })

        getgenv().JDQ_FolderESPEnabled = false
        getgenv().JDQ_FolderHighlights = {}
        getgenv().JDQ_ESPConn = nil
        getgenv().JDQ_FolderColor = Color3.fromRGB(100, 210, 255)

        getgenv().JDQ_AddFolderESP = function(adornee)
            if getgenv().JDQ_FolderHighlights[adornee] then
                return
            end
            local highlight = Instance.new("Highlight")
            highlight.Adornee = adornee
            highlight.FillColor = getgenv().JDQ_FolderColor
            highlight.FillTransparency = 0.5
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.OutlineTransparency = 0
            highlight.Parent = adornee
            getgenv().JDQ_FolderHighlights[adornee] = highlight
        end

        getgenv().JDQ_RemoveFolderESP = function(arg)
            if getgenv().JDQ_FolderHighlights[arg] then
                pcall(function()
                    getgenv().JDQ_FolderHighlights[arg]:Destroy()
                end)

                getgenv().JDQ_FolderHighlights[arg] = nil
            end
        end

        local v6 = esp:AddCheckbox(fn(), {
            Text = "ESP Folders",
            Default = false,
            Callback = function(jdqFolderESPEnabled)
                getgenv().JDQ_FolderESPEnabled = jdqFolderESPEnabled

                if jdqFolderESPEnabled then
                    for k, child in pairs(workspace:GetChildren()) do
                        if child.Name == "Model" then
                            getgenv().JDQ_AddFolderESP(child)
                        end
                    end

                    getgenv().JDQ_ESPConn = workspace.ChildAdded:Connect(function(child)
                        if child.Name == "Model" and getgenv().JDQ_FolderESPEnabled then
                            getgenv().JDQ_AddFolderESP(child)
                        end
                    end)
                else
                    for k in pairs(getgenv().JDQ_FolderHighlights) do
                        getgenv().JDQ_RemoveFolderESP(k)
                    end

                    if getgenv().JDQ_ESPConn then
                        getgenv().JDQ_ESPConn:Disconnect()
                        getgenv().JDQ_ESPConn = nil
                    end
                end
            end,
        })

        local addColorPicker = v6.AddColorPicker
        local v7 = fn()
        local tbl9 = {}
        local jdqFolderColor = getgenv().JDQ_FolderColor
        local color = jdqFolderColor or Color3.fromRGB(0, 170, 255)
        tbl9.Default = color
        tbl9.Title = "Folder Color"

        tbl9.Callback = function(jdqFolderColor2)
            getgenv().JDQ_FolderColor = jdqFolderColor2

            for k, jdqFolderHighlight in pairs(getgenv().JDQ_FolderHighlights) do
                jdqFolderHighlight.FillColor = jdqFolderColor2
            end
        end

        addColorPicker(v6, v7, tbl9)

        local function fn18(arg)
            local flag3 = arg == "GroundBulb" or arg == "VineModel"
            return flag3
        end

        local flag3 = false
        local color2 = Color3.fromRGB(100, 255, 100)
        local tbl10 = {}
        local tbl11 = {}
        local tbl12 = {}
        local connection2 = nil

        local function fn19(adornee)
            if not adornee or tbl10[adornee] then
                return
            end
            local primaryPart = adornee.PrimaryPart
            local basePart = primaryPart or adornee:FindFirstChildWhichIsA("BasePart")
            if not basePart then
                return
            end

            if tbl12[basePart] then
                return
            end

            pcall(function()
                local highlight = Instance.new("Highlight")
                highlight.Name = "VX_ESP_Plant"
                highlight.FillColor = color2
                highlight.OutlineColor = color2
                highlight.FillTransparency = vxEsp.fillTransparency
                highlight.OutlineTransparency = 0.6
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.Adornee = adornee
                highlight.Parent = adornee
                tbl10[adornee] = highlight
                tbl12[basePart] = adornee
                local billboardGui = Instance.new("BillboardGui")
                billboardGui.Name = "VX_ESP_Plant_Label"
                billboardGui.Adornee = basePart
                billboardGui.Size = UDim2.new(0, 220, 0, 60)
                billboardGui.StudsOffsetWorldSpace = Vector3.new(0, vxEsp.offset, 0)
                billboardGui.AlwaysOnTop = true
                billboardGui.MaxDistance = math.huge
                billboardGui.Parent = adornee
                local textLabel = Instance.new("TextLabel")
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.TextColor3 = color2
                textLabel.TextStrokeTransparency = 0.35
                textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                textLabel.TextScaled = false
                textLabel.TextSize = vxEsp.textSize
                textLabel.FontFace = font
                local text = adornee.Name == "VineModel" and "Vine" or "Bulb"
                textLabel.Text = text
                textLabel.Parent = billboardGui
                tbl11[adornee] = {bg = billboardGui, lbl = textLabel, root = basePart}
            end)
        end

        local function fn20(arg)
            if not arg then
                return
            end
            local v8 = tbl11[arg]

            if v8 and v8.root and tbl12[v8.root] == arg then
                tbl12[v8.root] = nil
            end

            pcall(function()
                local vxEspPlant = arg:FindFirstChild("VX_ESP_Plant")

                if vxEspPlant then
                    vxEspPlant:Destroy()
                end

                local vxEspPlantLabel = arg:FindFirstChild("VX_ESP_Plant_Label")

                if vxEspPlantLabel then
                    vxEspPlantLabel:Destroy()
                end
            end)

            tbl10[arg] = nil
            tbl11[arg] = nil
        end

        local function fn21()
            local map = workspace:FindFirstChild("Map")
            local ingame = map and workspace.Map:FindFirstChild("Ingame")
            if not ingame then
                return
            end

            for i, child in ipairs(ingame:GetChildren()) do
                if fn18(child.Name) then
                    if flag3 then
                        if not tbl10[child] then
                            fn19(child)
                        end
                    else
                        fn20(child)
                    end
                end
            end
        end

        local function fn22()
            for k, v8 in pairs(tbl10) do
                if v8 and v8.Parent then
                    v8.FillColor = color2
                    v8.OutlineColor = color2
                    v8.FillTransparency = vxEsp.fillTransparency
                end
            end

            for k, v8 in pairs(tbl11) do
                if v8.lbl and v8.lbl.Parent then
                    v8.lbl.TextColor3 = color2
                    v8.lbl.TextSize = vxEsp.textSize
                    v8.lbl.FontFace = font
                end

                if v8.bg and v8.bg.Parent then
                    v8.bg.StudsOffsetWorldSpace = Vector3.new(0, vxEsp.offset, 0)
                end
            end
        end

        task.spawn(function()
            while true do
                task.wait(0.5)

                if flag3 then
                    fn21()
                end

                if flag3 then
                    fn22()
                end
            end
        end)

        esp:AddCheckbox(fn(), {
            Text = "ESP Plants",
            Default = false,
            Callback = function(arg)
                flag3 = arg

                if arg then
                    fn21()
                else
                    for k in pairs(tbl10) do
                        fn20(k)
                    end

                    table.clear(tbl12)
                end

                if connection2 then
                    connection2:Disconnect()
                    connection2 = nil
                end

                if arg then
                    local map = workspace:FindFirstChild("Map")
                    local ingame = map and workspace.Map:FindFirstChild("Ingame")

                    if ingame then
                        connection2 = ingame.ChildAdded:Connect(function(child)
                            if fn18(child.Name) and flag3 then
                                task.wait(0.1)
                                fn19(child)
                            end
                        end)
                    end
                end
            end,
        }):AddColorPicker(fn(), {
            Default = color2,
            Title = "Plant Color",
            Callback = function(arg)
                color2 = arg
                fn22()
            end,
        })

        local flag4 = false
        local color3 = Color3.fromRGB(255, 160, 0)
        local tbl13 = {}
        local tbl14 = {}
        local connection3 = nil

        local tbl15 = {
            PizzaDeliveryRig = "Pizza Minion",
            ["1x1x1x1Zombie"] = "Zombie Minion",
        }

        local function fn23(arg)
            local flag5 = tbl15[arg] ~= nil
            return flag5
        end

        local function fn24(adornee)
            if not adornee or tbl13[adornee] then
                return
            end
            local primaryPart = adornee.PrimaryPart
            local basePart = primaryPart or adornee:FindFirstChildWhichIsA("BasePart")
            if not basePart then
                return
            end

            pcall(function()
                local highlight = Instance.new("Highlight")
                highlight.Name = "VX_ESP_Minion"
                highlight.FillColor = color3
                highlight.OutlineColor = color3
                highlight.FillTransparency = vxEsp.fillTransparency
                highlight.OutlineTransparency = 0.6
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.Adornee = adornee
                highlight.Parent = adornee
                tbl13[adornee] = highlight
                local billboardGui = Instance.new("BillboardGui")
                billboardGui.Name = "VX_ESP_Minion_Label"
                billboardGui.Adornee = basePart
                billboardGui.Size = UDim2.new(0, 220, 0, 60)
                billboardGui.StudsOffsetWorldSpace = Vector3.new(0, vxEsp.offset, 0)
                billboardGui.AlwaysOnTop = true
                billboardGui.MaxDistance = math.huge
                billboardGui.Parent = adornee
                local textLabel = Instance.new("TextLabel")
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.TextColor3 = color3
                textLabel.TextStrokeTransparency = 0.35
                textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                textLabel.TextScaled = false
                textLabel.TextSize = vxEsp.textSize
                textLabel.FontFace = font
                local v8 = tbl15[adornee.Name]
                local name = v8 or adornee.Name
                textLabel.Text = name
                textLabel.Parent = billboardGui
                tbl14[adornee] = {bg = billboardGui, lbl = textLabel, root = basePart}
            end)
        end

        local function fn25(arg)
            if not arg then
                return
            end

            pcall(function()
                local vxEspMinion = arg:FindFirstChild("VX_ESP_Minion")

                if vxEspMinion then
                    vxEspMinion:Destroy()
                end

                local vxEspMinionLabel = arg:FindFirstChild("VX_ESP_Minion_Label")

                if vxEspMinionLabel then
                    vxEspMinionLabel:Destroy()
                end
            end)

            tbl13[arg] = nil
            tbl14[arg] = nil
        end

        local function fn26()
            local map = workspace:FindFirstChild("Map")
            local ingame = map and workspace.Map:FindFirstChild("Ingame")
            if not ingame then
                return
            end

            for i, child in ipairs(ingame:GetChildren()) do
                if fn23(child.Name) then
                    if flag4 then
                        if not tbl13[child] then
                            fn24(child)
                        end
                    else
                        fn25(child)
                    end
                end
            end
        end

        local function fn27()
            for k, v8 in pairs(tbl13) do
                if v8 and v8.Parent then
                    v8.FillColor = color3
                    v8.OutlineColor = color3
                    v8.FillTransparency = vxEsp.fillTransparency
                end
            end

            for k, v8 in pairs(tbl14) do
                if v8.lbl and v8.lbl.Parent then
                    v8.lbl.TextColor3 = color3
                    v8.lbl.TextSize = vxEsp.textSize
                    v8.lbl.FontFace = font
                end

                if v8.bg and v8.bg.Parent then
                    v8.bg.StudsOffsetWorldSpace = Vector3.new(0, vxEsp.offset, 0)
                end
            end
        end

        task.spawn(function()
            while true do
                task.wait(0.5)

                if flag4 then
                    fn26()
                end

                if flag4 then
                    fn27()
                end
            end
        end)

        esp:AddCheckbox(fn(), {
            Text = "ESP Minions",
            Default = false,
            Callback = function(arg)
                flag4 = arg

                if arg then
                    fn26()
                else
                    for k in pairs(tbl13) do
                        fn25(k)
                    end
                end

                if connection3 then
                    connection3:Disconnect()
                    connection3 = nil
                end

                if arg then
                    local map = workspace:FindFirstChild("Map")
                    local ingame = map and workspace.Map:FindFirstChild("Ingame")

                    if ingame then
                        connection3 = ingame.ChildAdded:Connect(function(child)
                            if fn23(child.Name) and flag4 then
                                task.wait(0.1)
                                fn24(child)
                            end
                        end)
                    end
                end
            end,
        }):AddColorPicker(fn(), {
            Default = color3,
            Title = "Minion Color",
            Callback = function(arg)
                color3 = arg
                fn27()
            end,
        })

        local localPlayer4 = game:GetService("Players").LocalPlayer
        local RunService = game:GetService("RunService")
        local currentCamera = workspace.CurrentCamera

        local tbl16 = {
            Mobile = "rbxassetid://89227325753198",
            PC = "rbxassetid://135066638879377",
            Console = "rbxassetid://118447973769044",
        }

        local tbl17 = {}
        local connection4 = nil
        local connection5 = nil

        local function fn28()
            local killersEnabled = vxEsp.killersEnabled
            local vector = (killersEnabled or vxEsp.survivorsEnabled) and Vector3.new(0, 5.5, 0) or Vector3.new(0, 2.8, 0)
            return vector
        end

        getgenv().VX_DeviceESP_UpdateOffset = function()
            for k, v8 in pairs(tbl17) do
                v8.StudsOffset = fn28()
            end
        end

        local function fn29(arg)
            if tbl17[arg] then
                tbl17[arg]:Destroy()
                tbl17[arg] = nil
            end
        end

        local function fn30(arg, arg2)
            local head = arg2:WaitForChild("Head", 5)
            if not head then
                return
            end

            if head:FindFirstChild("DeviceESP") then
                head.DeviceESP:Destroy()
            end

            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Name = "DeviceESP"
            billboardGui.AlwaysOnTop = true
            billboardGui.LightInfluence = 0
            billboardGui.StudsOffset = fn28()
            billboardGui.Size = UDim2.fromOffset(28, 28)
            billboardGui.Parent = head
            local imageLabel = Instance.new("ImageLabel")
            imageLabel.Size = UDim2.new(1, 0, 1, 0)
            imageLabel.BackgroundTransparency = 1
            imageLabel.ScaleType = Enum.ScaleType.Fit
            imageLabel.Parent = billboardGui

            local function fn31()
                local attribute = arg:GetAttribute("Device")
                local pc = attribute == "PC" and tbl16.PC or attribute == "Console" and tbl16.Console or tbl16.Mobile
                imageLabel.Image = pc
            end

            fn31()
            arg:GetAttributeChangedSignal("Device"):Connect(fn31)
            tbl17[arg] = billboardGui
        end

        local function fn31(player_)
            if player_ == localPlayer4 then
                return
            end

            if player_.Character then
                fn30(player_, player_.Character)
            end

            player_.CharacterAdded:Connect(function(character2)
                fn30(player_, character2)
            end)
        end

        local function fn32()
            for i, player_ in ipairs(game:GetService("Players"):GetPlayers()) do
                fn31(player_)
            end

            connection5 = game:GetService("Players").PlayerAdded:Connect(fn31)

            connection4 = RunService.RenderStepped:Connect(function()
                for k, v8 in pairs(tbl17) do
                    if k.Character and k.Character:FindFirstChild("Head") then
                        local n3 = math.clamp(700 / (currentCamera.CFrame.Position - k.Character.Head.Position).Magnitude, 16, 28)
                        v8.Size = UDim2.fromOffset(n3, n3)
                    end
                end
            end)
        end

        local function fn33()
            if connection4 then
                connection4:Disconnect()
                connection4 = nil
            end

            if connection5 then
                connection5:Disconnect()
                connection5 = nil
            end

            for k in pairs(tbl17) do
                fn29(k)
            end
        end

        esp:AddCheckbox(fn(), {
            Text = "Device ESP",
            Default = false,
            Callback = function(arg)
                if arg then
                    fn32()
                else
                    fn33()
                end
            end,
        })

        Settings:AddCheckbox(fn(), {
            Text = "Chams",
            Default = true,
            Callback = function(enabled)
                for k in pairs(tbl6) do
                    pcall(function()
                        k.Enabled = enabled
                    end)
                end
            end,
        })

        Settings:AddCheckbox(fn(), {
            Text = "Tracer",
            Default = false,
            Callback = function(tracerEnabled)
                vxEsp.tracerEnabled = tracerEnabled
            end,
        })

        Settings:AddDropdown(fn(), {
            Text = "Tracer Position",
            Values = {"Bottom", "Top"},
            Default = "Bottom",
            Callback = function(tracerPosition)
                vxEsp.tracerPosition = tracerPosition
            end,
        })

        Settings:AddCheckbox(fn(), {
            Text = "2D Box",
            Default = false,
            Callback = function(boxEnabled)
                vxEsp.boxEnabled = boxEnabled
            end,
        })

        Settings:AddCheckbox(fn(), {
            Text = "Billboards",
            Default = false,
            Callback = function(billboardsEnabled)
                vxEsp.billboardsEnabled = billboardsEnabled

                for k in pairs(tbl7) do
                    pcall(function()
                        k.Enabled = billboardsEnabled
                    end)
                end
            end,
        })

        Settings:AddDivider()

        Settings:AddCheckbox(fn(), {
            Text = "Distance",
            Default = false,
            Callback = function(showDistance)
                vxEsp.showDistance = showDistance
            end,
        })

        Settings:AddCheckbox(fn(), {
            Text = "Name",
            Default = false,
            Callback = function(showName)
                vxEsp.showName = showName
            end,
        })

        Settings:AddCheckbox(fn(), {
            Text = "Character",
            Default = true,
            Callback = function(showCharacter)
                vxEsp.showCharacter = showCharacter
            end,
        })

        Settings:AddCheckbox(fn(), {
            Text = "Health",
            Default = true,
            Callback = function(showHealth)
                vxEsp.showHealth = showHealth
            end,
        })

        Settings:AddCheckbox(fn(), {
            Text = "Role",
            Default = false,
            Callback = function(showRole)
                vxEsp.showRole = showRole
            end,
        })

        Settings:AddDivider()

        Settings:AddSlider(fn(), {
            Text = "Fill Transparency",
            Min = 0,
            Max = 100,
            Default = 80,
            Rounding = 0,
            Callback = function(arg)
                vxEsp.fillTransparency = arg / 100

                for k in pairs(tbl6) do
                    pcall(function()
                        k.FillTransparency = vxEsp.fillTransparency
                    end)
                end
            end,
        })

        Settings:AddSlider(fn(), {
            Text = "Text Size",
            Min = 8,
            Max = 30,
            Default = 15,
            Rounding = 0,
            Callback = function(textSize)
                vxEsp.textSize = textSize

                for k in pairs(tbl5) do
                    pcall(function()
                        k.TextSize = textSize
                    end)
                end
            end,
        })

        Settings:AddSlider(fn(), {
            Text = "Offset",
            Min = 0,
            Max = 10,
            Default = 3.8,
            Rounding = 1,
            Callback = function(offset)
                vxEsp.offset = offset

                for k in pairs(tbl5) do
                    pcall(function()
                        if k.Parent then
                            k.Parent.StudsOffsetWorldSpace = Vector3.new(0, offset, 0)
                        end
                    end)
                end
            end,
        })

        Settings:AddSlider(fn(), {
            Text = "Box Thickness",
            Min = 1,
            Max = 5,
            Default = 1.5,
            Rounding = 1,
            Callback = function(strokeThickness)
                vxEsp.strokeThickness = strokeThickness

                for k, v8 in pairs(tbl8) do
                    if v8.box then
                        pcall(function()
                            v8.box.Thickness = strokeThickness
                        end)
                    end

                    if v8.tracer then
                        pcall(function()
                            v8.tracer.Thickness = strokeThickness
                        end)
                    end
                end
            end,
        })

        Settings:AddDropdown(fn(), {
            Text = "Font",
            Values = {"Sarpanch", "Arial", "SourceSans", "Gotham", "Code"},
            Default = 1,
            Callback = function(arg)
                local v8 = tbl4[arg]
                local sarpanch = v8 or tbl4.Sarpanch
                font = sarpanch

                for k in pairs(tbl5) do
                    pcall(function()
                        k.FontFace = font
                    end)
                end
            end,
        })

        Settings:AddDivider()

        Settings:AddSlider(fn(), {
            Text = "Aim Prediction",
            Min = 0,
            Max = 60,
            Default = 0,
            Rounding = 1,
            Callback = function(arg)
                local genv3 = getgenv()
                local num = tonumber(arg)
                local saPrediction = num or 0
                genv3.SA_Prediction = saPrediction
            end,
        })

        Settings:AddSlider(fn(), {
            Text = "Circle Radius",
            Min = 20,
            Max = 400,
            Default = 120,
            Rounding = 0,
            Callback = function(arg)
                local genv3 = getgenv()
                local num = tonumber(arg)
                local saCrosshairRadius = num or 120
                genv3.SA_CrosshairRadius = saCrosshairRadius
            end,
        })

        getgenv().VX_ESP = vxEsp
    end)

    local localPlayer4 = game:GetService("Players").LocalPlayer
    local TextChatService = game:GetService("TextChatService")
    local flag3 = false
    local tbl4 = {}

    local function fn10(cameraMaxZoomDistance)
        pcall(function()
            localPlayer4.CameraMaxZoomDistance = cameraMaxZoomDistance
        end)

        local currentCamera = workspace.CurrentCamera
        if not currentCamera then
            return
        end

        pcall(function()
            currentCamera.CameraType = Enum.CameraType.Custom

            if localPlayer4.Character and localPlayer4.Character:FindFirstChildOfClass("Humanoid") then
                currentCamera.CameraSubject = localPlayer4.Character:FindFirstChildOfClass("Humanoid")
            end
        end)
    end

    v5:AddSlider(fn(), {
        Text = "FOV",
        Min = 20,
        Max = 200,
        Default = 80,
        Rounding = 0,
        Callback = function(arg)
            local num = tonumber(arg)
            if not num then
                return
            end
            local v6 = buffer.create(9)
            buffer.writeu8(v6, 0, 2)
            buffer.writef64(v6, 1, num)
            local fieldOfView = localPlayer4:WaitForChild("PlayerData", 5):WaitForChild("Settings", 5):WaitForChild("Game", 5):WaitForChild("FieldOfView", 5)
            if not fieldOfView then
                return
            end
            local remoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("Modules", 8):WaitForChild("Network", 8):WaitForChild("Network", 8):WaitForChild("RemoteEvent", 8)

            if remoteEvent then
                remoteEvent:FireServer("UpdateSettings", {fieldOfView, v6})
            end
        end,
    })

    v5:AddCheckbox(fn(), {
        Text = "Infinite Camera Distance",
        Default = false,
        Callback = function(arg)
            if arg then
                fn10(1000000000)
            else
                fn10(20)
            end
        end,
    })

    v5:AddCheckbox(fn(), {
        Text = "Camera Noclip",
        Default = false,
        Callback = function(arg)
            local invisicam = arg and Enum.DevCameraOcclusionMode.Invisicam or Enum.DevCameraOcclusionMode.Zoom
            localPlayer4.DevCameraOcclusionMode = invisicam
        end,
    })

    v5:AddCheckbox(fn(), {
        Text = "Show Chat Window",
        Default = false,
        Callback = function(arg)
            local v6 = nil
            flag3 = arg
            local v7 = tbl4

            while true do
                local v8, v9 = v7(nil, v6)
                if v8 == nil then
                    break
                end
                v6 = v8
                pcall(v9.Disconnect, v9)
            end

            tbl4 = {}

            if not arg then
                local chatWindowConfiguration = TextChatService:FindFirstChild("ChatWindowConfiguration")

                if chatWindowConfiguration then
                    chatWindowConfiguration.Enabled = false
                end

                return
            end

            local function fn11()
                local chatWindowConfiguration = TextChatService:WaitForChild("ChatWindowConfiguration", 5)

                if chatWindowConfiguration then
                    chatWindowConfiguration.Enabled = true
                end
            end

            task.spawn(fn11)

            table.insert(tbl4, localPlayer4.CharacterAdded:Connect(function()
                task.wait(0.8)
                fn11()
            end))

            table.insert(tbl4, game:GetService("RunService").Heartbeat:Connect(function()
                if not flag3 then
                    return
                end
                local chatWindowConfiguration = TextChatService:FindFirstChild("ChatWindowConfiguration")

                if chatWindowConfiguration and not chatWindowConfiguration.Enabled then
                    chatWindowConfiguration.Enabled = true
                end
            end))
        end,
    })

    local connection2 = nil

    v5:AddCheckbox(fn(), {
        Text = "Always Show Sidebar",
        Default = false,
        Callback = function(arg)
            local ok, result2 = pcall(function()
                return require(game:GetService("ReplicatedStorage").Systems.Player.UI.SidebarHandler)
            end)

            pcall(function()
                return game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Sidebar
            end)

            local function fn11()
                local ok2, result3 = pcall(function()
                    return game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Sidebar
                end)

                local v6 = ok2 and result3 or nil
                return v6
            end

            if connection2 then
                connection2:Disconnect()
                connection2 = nil
            end

            if arg then
                if ok and result2 then
                    result2.MenusHidden = false
                end

                local v6 = fn11()

                if v6 then
                    v6.Visible = true
                end

                connection2 = game:GetService("RunService").Heartbeat:Connect(function()
                    if ok and result2 then
                        result2.MenusHidden = false
                    end

                    local v7 = fn11()

                    if v7 then
                        v7.Visible = true
                    end
                end)
            else
                if ok and result2 then
                    result2.MenusHidden = true
                end

                local v6 = fn11()

                if v6 then
                    v6.Visible = false
                end
            end
        end,
    })

    local connection3 = nil

    v5:AddCheckbox(fn(), {
        Text = "Full Bright",
        Default = false,
        Callback = function(arg)
            local Lighting = game:GetService("Lighting")

            if arg then
                getgenv()._fbOrigBrightness = Lighting.Brightness
                getgenv()._fbOrigAmbient = Lighting.Ambient
                getgenv()._fbOrigOutdoor = Lighting.OutdoorAmbient
                getgenv()._fbOrigClockTime = Lighting.ClockTime
                getgenv()._fbOrigFogEnd = Lighting.FogEnd

                local function fn11()
                    Lighting.Brightness = 2
                    Lighting.Ambient = Color3.fromRGB(178, 178, 178)
                    Lighting.OutdoorAmbient = Color3.fromRGB(178, 178, 178)
                    Lighting.ClockTime = 12
                    Lighting.FogEnd = 100000
                end

                fn11()
                connection3 = game:GetService("RunService").Heartbeat:Connect(fn11)
            else
                if connection3 then
                    connection3:Disconnect()
                    connection3 = nil
                end

                if getgenv()._fbOrigBrightness ~= nil then
                    Lighting.Brightness = getgenv()._fbOrigBrightness
                    Lighting.Ambient = getgenv()._fbOrigAmbient
                    Lighting.OutdoorAmbient = getgenv()._fbOrigOutdoor
                    Lighting.ClockTime = getgenv()._fbOrigClockTime
                    Lighting.FogEnd = getgenv()._fbOrigFogEnd
                end
            end
        end,
    })

    local tbl5 = {}

    v5:AddCheckbox(fn(), {
        Text = "Anti Lag",
        Default = false,
        Callback = function(arg)
            if arg then
                tbl5 = {}

                for i, descendant in ipairs(workspace:GetDescendants()) do
                    if not descendant:IsA("ParticleEmitter") and not descendant:IsA("Trail") and not descendant:IsA("Beam") then
                        if descendant:IsA("Smoke") or descendant:IsA("Fire") or descendant:IsA("Sparkles") then
                            table.insert(tbl5, {obj = descendant, parent = descendant.Parent})

                            pcall(function()
                                descendant.Parent = nil
                            end)
                        end
                    else
                        table.insert(tbl5, {obj = descendant, wasEnabled = descendant.Enabled})

                        pcall(function()
                            descendant.Enabled = false
                        end)
                    end
                end
            else
                for i, v6 in ipairs(tbl5) do
                    pcall(function()
                        if v6.wasEnabled == nil then
                            if v6.parent then
                                v6.obj.Parent = v6.parent
                            end
                        else
                            v6.obj.Enabled = v6.wasEnabled
                        end
                    end)
                end

                tbl5 = {}
            end
        end,
    })

    local Killers = v:AddTab("Killers", "swords", "Combat features for killers")
    local Azure = Killers:AddLeftGroupbox("Azure")
    local Noli = Killers:AddLeftGroupbox("Noli")
    local v6 = Killers:AddRightTabbox()
    local Nosferatu = v6:AddTab("Nosferatu")
    local Settings2 = v6:AddTab("Settings")
    local Survivors = v:AddTab("Survivors", "user", "Combat features for survivors")
    local v7 = Survivors:AddLeftTabbox()
    local Chance = v7:AddTab("Chance")
    local Settings3 = v7:AddTab("Settings")

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
        "79350075778160",
    }

    getgenv().createAnimationBlocker = function(arg)
        local flag4 = false
        local tbl6 = {}

        for i, v8 in ipairs(arg) do
            tbl6[tostring(v8)] = true
        end

        local tbl7 = {}
        local localPlayer5 = game:GetService("Players").LocalPlayer

        local function fn11(arg2)
            if not arg2 or not arg2.AnimationId then
                return false
            end
            local match = tostring(arg2.AnimationId):match("%d+")
            local v8 = match and tbl6[match]
            return v8
        end

        local function fn12(arg2)
            if not flag4 or not arg2 then
                return
            end

            pcall(function()
                if fn11(arg2.Animation) then
                    arg2:Stop()
                end
            end)
        end

        local function fn13(character2)
            if not character2 then
                return
            end
            local humanoid = character2:WaitForChild("Humanoid", 8)
            if not humanoid then
                return
            end
            local animator = humanoid:FindFirstChildOfClass("Animator")
            local v8 = animator

            if not animator then
                local animator2 = Instance.new("Animator")
                v8 = animator2
                animator2.Parent = humanoid
            end

            local connection4 = v8.AnimationPlayed:Connect(fn12)
            table.insert(tbl7, connection4)
        end

        local tbl8 = {}

        tbl8.Enable = function()
            if flag4 then
                return
            end
            flag4 = true

            if localPlayer5.Character then
                fn13(localPlayer5.Character)
            end

            if not tbl8._charAddedConn then
                tbl8._charAddedConn = localPlayer5.CharacterAdded:Connect(fn13)
                table.insert(tbl7, tbl8._charAddedConn)
            end
        end

        tbl8.Disable = function()
            flag4 = false
        end

        tbl8.IsEnabled = function()
            return flag4
        end

        tbl8.Destroy = function()
            for i, v8 in ipairs(tbl7) do
                pcall(function()
                    v8:Disconnect()
                end)
            end

            tbl7 = {}

            if tbl8._charAddedConn then
                pcall(function()
                    tbl8._charAddedConn:Disconnect()
                end)

                tbl8._charAddedConn = nil
            end

            flag4 = false
        end

        return tbl8
    end

    getgenv().ghostShooter = getgenv().createAnimationBlocker(getgenv().shotAnimIds)
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
    getgenv().aimTargets = {"Slasher", "c00lkidd", "JohnDoe", "1x1x1x1", "Noli"}
    local ReplicatedStorage2 = game:GetService("ReplicatedStorage")
    local RunService = game:GetService("RunService")
    local Stats = game:GetService("Stats")
    local localPlayer5 = game:GetService("Players").LocalPlayer

    getgenv().getValidTarget = function()
        local players = workspace:FindFirstChild("Players")
        local killers = players and workspace.Players:FindFirstChild("Killers")

        if killers then
            for i, aimTarget in ipairs(getgenv().aimTargets) do
                local v8 = killers:FindFirstChild(aimTarget)
                if v8 and v8:FindFirstChild("HumanoidRootPart") then
                    return v8.HumanoidRootPart, v8:FindFirstChild("Humanoid")
                end
            end
        end

        return nil, nil
    end

    getgenv().getPingSeconds = function()
        local dataPing = Stats.Network.ServerStatsItem["Data Ping"]
        local n3 = dataPing and dataPing:GetValue() / 1000 or 0.1
        return n3
    end

    getgenv().isFlintlockVisible = function()
        if not localPlayer5.Character then
            return false
        end
        local flintlock = localPlayer5.Character:FindFirstChild("Flintlock", true)
        local v8 = flintlock
        if not flintlock then
            return false
        end

        if not flintlock:IsA("BasePart") and not flintlock:IsA("MeshPart") and not flintlock:IsA("UnionOperation") then
            local basePart = flintlock:FindFirstChildWhichIsA("BasePart", true)
            v8 = basePart
            if not basePart then
                return false
            end
        end

        local flag4 = v8.Transparency < 1
        return flag4
    end

    getgenv().getPredictedAimPosPing = function(arg)
        local v8 = getgenv().getPingSeconds()
        local assemblyLinearVelocity = arg.AssemblyLinearVelocity
        if assemblyLinearVelocity.Magnitude <= getgenv().movementThreshold then
            return arg.Position
        end
        return arg.Position + assemblyLinearVelocity * v8
    end

    getgenv().getPredictedAimPosInfrontHRPPing = function(arg)
        local v8 = getgenv().getPingSeconds()
        if arg.AssemblyLinearVelocity.Magnitude <= getgenv().movementThreshold then
            return arg.Position
        end
        return arg.Position + arg.CFrame.LookVector * (v8 * 60)
    end

    local humanoid = nil
    local humanoidRootPart2 = nil

    local function fn11(character2)
        humanoid = character2:WaitForChild("Humanoid")
        humanoidRootPart2 = character2:WaitForChild("HumanoidRootPart")
    end

    if localPlayer5.Character then
        fn11(localPlayer5.Character)
    end

    localPlayer5.CharacterAdded:Connect(fn11)

    RunService.RenderStepped:Connect(function()
        if not getgenv().active or not humanoid or not humanoidRootPart2 then
            return
        end
        local v8 = getgenv().isFlintlockVisible()

        if v8 and not getgenv().prevFlintVisibleAim and not getgenv().aiming and getgenv().aimUseCount < 2 then
            getgenv().lastTriggerTime = tick()
            getgenv().aiming = true
            local genv3 = getgenv()
            genv3.aimUseCount = genv3.aimUseCount + 1

            if getgenv().aimUseCount >= 2 then
                getgenv().active = false
            end
        end

        getgenv().prevFlintVisibleAim = v8

        if getgenv().aiming then
            local n3 = tick() - getgenv().lastTriggerTime

            local function fn12(arg)
                local n4

                if getgenv().predictionMode == "Ping" then
                    getgenv().getPredictedAimPosPing(arg)
                elseif getgenv().predictionMode == "Infront HRP" then
                    n4 = arg.Position + arg.CFrame.LookVector * getgenv().predictionValue
                elseif getgenv().predictionMode == "Infront HRP (Ping Adjust)" then
                    getgenv().getPredictedAimPosInfrontHRPPing(arg)
                else
                    local magnitude = arg.AssemblyLinearVelocity.Magnitude

                    if getgenv().movementThreshold < magnitude then
                        n4 = arg.Position + arg.AssemblyLinearVelocity * (getgenv().predictionValue / 60)
                    else
                        n4 = arg.Position
                    end
                end

                local lookVector = arg.CFrame.LookVector
                local cFrame = CFrame.new(humanoidRootPart2.Position) * CFrame.Angles(0, math.atan(-lookVector.X, -lookVector.Z), 0)
                humanoidRootPart2.CFrame = cFrame
            end

            if getgenv().aimMode == "360" then
                local n4 = 360 / getgenv().spinSpeed

                if n3 <= n4 then
                    local cFrame = CFrame.new(humanoidRootPart2.Position) * CFrame.Angles(0, math.rad(360 * (n3 / n4)), 0)
                    humanoidRootPart2.CFrame = cFrame
                elseif n3 <= n4 + 1.7 then
                    if not getgenv().originalWS then
                        getgenv().originalWS = humanoid.WalkSpeed
                        getgenv().originalJP = humanoid.JumpPower
                        getgenv().originalAutoRotate = humanoid.AutoRotate
                    end

                    humanoid.AutoRotate = false
                    humanoidRootPart2.AssemblyAngularVelocity = Vector3.zero
                    local v9 = getgenv().getValidTarget()

                    if v9 then
                        fn12(v9)
                    end
                else
                    getgenv().aiming = false

                    if getgenv().originalWS then
                        local originalWS = getgenv().originalWS
                        humanoid.WalkSpeed = originalWS
                        local originalJP = getgenv().originalJP
                        humanoid.JumpPower = originalJP
                        local originalAutoRotate = getgenv().originalAutoRotate
                        humanoid.AutoRotate = originalAutoRotate
                        local genv3 = getgenv()
                        local genv4 = getgenv()
                        local genv5 = getgenv()
                        genv3.originalWS = nil
                        genv4.originalJP = nil
                        genv5.originalAutoRotate = nil
                    end
                end
            elseif n3 <= 1.7 then
                if not getgenv().originalWS then
                    getgenv().originalWS = humanoid.WalkSpeed
                    getgenv().originalJP = humanoid.JumpPower
                    getgenv().originalAutoRotate = humanoid.AutoRotate
                end

                humanoid.AutoRotate = false
                humanoidRootPart2.AssemblyAngularVelocity = Vector3.zero
                local v9 = getgenv().getValidTarget()

                if v9 then
                    fn12(v9)
                end
            else
                getgenv().aiming = false

                if getgenv().originalWS then
                    local originalWS = getgenv().originalWS
                    humanoid.WalkSpeed = originalWS
                    local originalJP = getgenv().originalJP
                    humanoid.JumpPower = originalJP
                    local originalAutoRotate = getgenv().originalAutoRotate
                    humanoid.AutoRotate = originalAutoRotate
                    local genv3 = getgenv()
                    local genv4 = getgenv()
                    local genv5 = getgenv()
                    genv3.originalWS = nil
                    genv4.originalJP = nil
                    genv5.originalAutoRotate = nil
                end
            end
        end
    end)

    getgenv().storingHitboxEnabled = false
    getgenv().storingDelay = 3
    local remoteEvent = ReplicatedStorage2:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent")

    if remoteEvent and remoteEvent.ClassName == "RemoteEvent" then
        getgenv().blockedName = localPlayer5.Name .. "ChanceFireShot"
        local v8 = getrawmetatable(game)
        local namecall = v8.__namecall
        setreadonly(v8, false)

        v8.__namecall = newcclosure(function(arg, ...)
            local v9 = getnamecallmethod()
            local tbl6 = {...}

            if getgenv().storingHitboxEnabled and v9 == "FireServer" and arg == remoteEvent then
                local v10 = tbl6[1]

                if type(v10) == "string" and v10 == getgenv().blockedName then
                    task.delay(getgenv().storingDelay, function()
                        getgenv().storingHitboxEnabled = false
                        local character2 = localPlayer5.Character
                        local humanoidRootPart3 = character2 and character2:FindFirstChild("HumanoidRootPart")
                        if not humanoidRootPart3 then
                            getgenv().storingHitboxEnabled = true
                            return
                        end
                        local lookVector = humanoidRootPart3.CFrame.LookVector

                        pcall(function()
                            remoteEvent:FireServer(v10, {Vector3.new(lookVector.X, lookVector.Y, lookVector.Z)})
                        end)

                        getgenv().storingHitboxEnabled = true
                    end)

                    return
                end
            end

            return namecall(arg, ...)
        end)

        setreadonly(v8, true)
    end

    Chance:AddCheckbox(fn(), {
        Text = "Chance Aim",
        Default = false,
        Callback = function(active)
            getgenv().active = active

            if active then
                getgenv().aimUseCount = 0
            end
        end,
    })

    Chance:AddDropdown(fn(), {
        Text = "Aim Behavior",
        Values = {"Normal", "360"},
        Default = 1,
        Callback = function(aimMode)
            getgenv().aimMode = aimMode
        end,
    })

    Chance:AddDropdown(fn(), {
        Text = "Prediction Mode",
        Values = {
            "Velocity",
            "Ping",
            "Infront HRP",
            "Infront HRP (Ping Adjust)",
        },
        Default = 1,
        Callback = function(predictionMode)
            getgenv().predictionMode = predictionMode
        end,
    })

    Chance:AddDivider()

    Settings3:AddSlider(fn(), {
        Text = "Prediction Strength",
        Min = 1,
        Max = 4,
        Default = 4,
        Rounding = 0,
        Callback = function(arg)
            getgenv().predictionValue = tonumber(arg)
        end,
    })

    Settings3:AddSlider(fn(), {
        Text = "360 Spin Speed",
        Min = 720,
        Max = 2880,
        Default = 720,
        Rounding = 0,
        Callback = function(arg)
            getgenv().spinSpeed = tonumber(arg)
        end,
    })

    Chance:AddCheckbox(fn(), {
        Text = "Storing Hitbox Gun",
        Default = false,
        Callback = function(storingHitboxEnabled)
            getgenv().storingHitboxEnabled = storingHitboxEnabled
        end,
    })

    Chance:AddInput(fn(), {
        Text = "Store Delay",
        Placeholder = "3",
        Callback = function(arg)
            local storingDelay = tonumber(arg)

            if storingDelay and storingDelay > 0 then
                getgenv().storingDelay = storingDelay
            end
        end,
    })

    local ReplicatedStorage3 = game:GetService("ReplicatedStorage")
    local RunService2 = game:GetService("RunService")

    local function fn12()
        local v8 = nil

        local ok, result2 = pcall(function()
            return require(ReplicatedStorage3.Modules.Gameplay.Actors)
        end)

        if not ok then
            return nil
        end
        local currentActors = result2.CurrentActors

        while true do
            local v9, v10 = currentActors(nil, v8)
            if v9 == nil then
                break
            end
            v8 = v9
            if v10.ActorName == "Azure" and v10.Player == lp then
                return v10
            end
        end
    end

    local function fn13(arg, arg2)
        local primaryPart = nil
        local v8 = nil

        for i, descendant in ipairs(workspace:GetDescendants()) do
            if descendant.Name == arg2 and descendant:IsA("Model") and descendant.PrimaryPart then
                local magnitude = (descendant.PrimaryPart.Position - arg).Magnitude

                if not v8 or magnitude < v8 then
                    primaryPart = descendant.PrimaryPart
                    v8 = magnitude
                end
            end
        end

        return primaryPart
    end

    getgenv().VX_AimTentaclesGrab = false
    local connection4 = nil

    Azure:AddCheckbox(fn(), {
        Text = "Aim on Tentacles (Grab)",
        Default = false,
        Callback = function(vxAimTentaclesGrab)
            getgenv().VX_AimTentaclesGrab = vxAimTentaclesGrab

            if connection4 then
                connection4:Disconnect()
                connection4 = nil
            end

            if vxAimTentaclesGrab then
                connection4 = RunService2.RenderStepped:Connect(function()
                    local v8 = fn12()
                    if not v8 or not v8.State or v8.State.TrackingMousePosition ~= true then
                        return
                    end
                    local rig = v8.Rig
                    local position = rig and v8.Rig.PrimaryPart and v8.Rig.PrimaryPart.Position
                    if not position then
                        return
                    end
                    local vineModel = fn13(position, "VineModel")
                    if not vineModel then
                        return
                    end
                    local currentCamera = workspace.CurrentCamera
                    currentCamera.CFrame = CFrame.new(currentCamera.CFrame.Position, vineModel.Position)
                end)
            end
        end,
    })

    getgenv().VX_AimBlossomGrab = false
    local connection5 = nil

    Azure:AddCheckbox(fn(), {
        Text = "Aim on Blossom (Grab)",
        Default = false,
        Callback = function(vxAimBlossomGrab)
            getgenv().VX_AimBlossomGrab = vxAimBlossomGrab

            if connection5 then
                connection5:Disconnect()
                connection5 = nil
            end

            if vxAimBlossomGrab then
                connection5 = RunService2.RenderStepped:Connect(function()
                    local v8 = fn12()
                    if not v8 or not v8.State or v8.State.TrackingMousePosition ~= true then
                        return
                    end
                    local rig = v8.Rig
                    local position = rig and v8.Rig.PrimaryPart and v8.Rig.PrimaryPart.Position
                    if not position then
                        return
                    end
                    local groundBulb = fn13(position, "GroundBulb")
                    if not groundBulb then
                        return
                    end
                    local currentCamera = workspace.CurrentCamera
                    currentCamera.CFrame = CFrame.new(currentCamera.CFrame.Position, groundBulb.Position)
                end)
            end
        end,
    })

    getgenv().VX_AimSurvivorsGrab = false
    local connection6 = nil

    local function fn14()
        if connection6 then
            connection6:Disconnect()
            connection6 = nil
        end

        if not getgenv().VX_AimSurvivorsGrab then
            return
        end

        connection6 = RunService2.RenderStepped:Connect(function()
            local v8 = fn12()
            if not v8 or not v8.State or v8.State.TrackingMousePosition ~= true then
                return
            end
            local rig = v8.Rig
            local position = rig and v8.Rig.PrimaryPart and v8.Rig.PrimaryPart.Position
            if not position then
                return
            end
            local players = workspace:FindFirstChild("Players")
            local survivors = players and workspace.Players:FindFirstChild("Survivors")
            if not survivors then
                return
            end
            local v9 = nil
            local silentAimMode = getgenv().SilentAimMode
            local str = silentAimMode or "Nearest"

            if str == "Closest To Cursor" then
                local currentCamera = workspace.CurrentCamera
                local mouse = lp:GetMouse()
                local vector2 = Vector2.new(mouse.X, mouse.Y)
                local huge = math.huge

                for i, child in ipairs(survivors:GetChildren()) do
                    local humanoidRootPart3 = child:FindFirstChild("HumanoidRootPart")
                    local humanoid2 = child:FindFirstChildOfClass("Humanoid")

                    if humanoidRootPart3 and humanoid2 and humanoid2.Health > 0 then
                        local v10, v11 = currentCamera:WorldToViewportPoint(humanoidRootPart3.Position)

                        if v11 then
                            local magnitude = (Vector2.new(v10.X, v10.Y) - vector2).Magnitude

                            if magnitude < huge then
                                huge = magnitude
                                v9 = humanoidRootPart3
                            end
                        end
                    end
                end
            else
                local huge = math.huge

                for i, child in ipairs(survivors:GetChildren()) do
                    local humanoidRootPart3 = child:FindFirstChild("HumanoidRootPart")
                    local humanoid2 = child:FindFirstChildOfClass("Humanoid")

                    if humanoidRootPart3 and humanoid2 and humanoid2.Health > 0 then
                        local magnitude = (humanoidRootPart3.Position - position).Magnitude

                        if magnitude < huge then
                            huge = magnitude
                            v9 = humanoidRootPart3
                        end
                    end
                end
            end

            if not v9 then
                return
            end
            local currentCamera = workspace.CurrentCamera
            currentCamera.CFrame = CFrame.new(currentCamera.CFrame.Position, v9.Position)
        end)
    end

    Azure:AddCheckbox(fn(), {
        Text = "Aim at Survivors (Grab)",
        Default = false,
        Callback = function(vxAimSurvivorsGrab)
            getgenv().VX_AimSurvivorsGrab = vxAimSurvivorsGrab
            fn14()
        end,
    })

    Azure:AddDivider()
    local VirtualInputManager = game:GetService("VirtualInputManager")
    getgenv().VX_AutoDisarmDelay = 0
    local v8 = nil
    local n3 = 0
    local v9 = nil
    local tbl6 = {}
    local connection7 = nil

    local function fn15()
        local playerGui = lp:FindFirstChildOfClass("PlayerGui")
        if not playerGui then
            return
        end
        local temporaryUI = playerGui:FindFirstChild("TemporaryUI")

        if not temporaryUI then
            v8 = nil
            v9 = nil
            table.clear(tbl6)
            return
        end

        local qte = temporaryUI:FindFirstChild("QTE")
        local v10 = qte

        if not qte then
            for i, child in ipairs(temporaryUI:GetChildren()) do
                if child:FindFirstChild("Line") then
                    v10 = child
                    break
                end
                continue
            end
        end

        if not v10 then
            v8 = nil
            v9 = nil
            table.clear(tbl6)
            return
        end

        if v8 ~= v10 then
            v8 = v10
            n3 = os.clock()
            v9 = nil
            table.clear(tbl6)
        end

        local line = v10:FindFirstChild("Line")
        if not line then
            return
        end
        local scale = line.Position.X.Scale

        if not v9 then
            v9 = scale
        end

        for i, child in ipairs(v10:GetChildren()) do
            if child.Name:sub(1, 4) == "Zone" and child.Visible then
                local v11 = tbl6[child]
                local n4 = v11 or 0

                if os.clock() - n4 >= 0.4 then
                    local scale2 = child.Position.X.Scale
                    local scale3 = child.Size.X.Scale
                    local n5 = scale2 + scale3 / 2
                    local n6 = math.min(v9, scale)

                    if scale2 - scale3 / 2 <= math.max(v9, scale) and n6 <= n5 then
                        tbl6[child] = os.clock()
                        VirtualInputManager:SendTouchEvent(0, 0, 200, 200)
                        task.wait(0.03)
                        VirtualInputManager:SendTouchEvent(0, 2, 200, 200)
                        break
                    end
                end
            end
        end

        v9 = scale
    end

    Azure:AddCheckbox(fn(), {
        Text = "Auto Disarm Minigame",
        Default = false,
        Callback = function(arg)
            if connection7 then
                connection7:Disconnect()
                connection7 = nil
            end

            if arg then
                connection7 = game:GetService("RunService").Heartbeat:Connect(fn15)
            end
        end,
    })

    local v10 = Survivors:AddLeftGroupbox("Jane Doe")
    local v11 = Survivors:AddLeftTabbox()
    local Veeronica = v11:AddTab("Veeronica")
    local Settings4 = v11:AddTab("Settings")
    local genv3 = getgenv()
    local vxSk8SteerStrength = getgenv().VX_Sk8SteerStrength
    local vxSk8SteerStrength2 = vxSk8SteerStrength or 60
    genv3.VX_Sk8SteerStrength = vxSk8SteerStrength2

    Settings4:AddSlider(fn(), {
        Text = "Steer Strength",
        Min = 30,
        Max = 150,
        Default = 60,
        Rounding = 0,
        Callback = function(vxSk8SteerStrength3)
            getgenv().VX_Sk8SteerStrength = vxSk8SteerStrength3
        end,
    })

    Settings4:AddDivider()

    Settings4:AddCheckbox(fn(), {
        Text = "High Sk8 Trick",
        Default = false,
        Callback = function(vxHighJumpEnabled)
            getgenv().VX_HighJumpEnabled = vxHighJumpEnabled

            if vxHighJumpEnabled then
                applyHighJump()
            else
                revertHighJump()
            end
        end,
    })

    Settings4:AddSlider(fn(), {
        Text = "How High (Multiplier)",
        Min = 1,
        Max = 4,
        Default = 2,
        Rounding = 2,
        Callback = function(vxHighJumpMult)
            getgenv().VX_HighJumpMult = vxHighJumpMult

            if getgenv().VX_HighJumpEnabled then
                applyHighJump()
            end
        end,
    })

    Settings4:AddDivider()
    local genv4 = getgenv()
    local autoPitchKillers = getgenv().AutoPitchKillers
    local autoPitchKillers2 = autoPitchKillers or {}
    genv4.AutoPitchKillers = autoPitchKillers2
    getgenv().AutoPitchKillers.AnimationId = 117058860640843
    getgenv().AutoPitchKillers.Enabled = false
    getgenv().AutoPitchKillers.PitchAngle = 100
    getgenv().AutoPitchKillers.DistanceRange = 20
    getgenv().AutoPitchKillers.Players = game:GetService("Players")
    getgenv().AutoPitchKillers.RunService = game:GetService("RunService")
    getgenv().AutoPitchKillers.LocalPlayer = getgenv().AutoPitchKillers.Players.LocalPlayer

    getgenv().AutoPitchKillers.Update = function()
        if not getgenv().AutoPitchKillers.Enabled then
            return
        end
        getgenv().AutoPitchKillers.Char = getgenv().AutoPitchKillers.LocalPlayer.Character
        if not getgenv().AutoPitchKillers.Char then
            return
        end
        getgenv().AutoPitchKillers.HRP = getgenv().AutoPitchKillers.Char:FindFirstChild("HumanoidRootPart")
        getgenv().AutoPitchKillers.Humanoid = getgenv().AutoPitchKillers.Char:FindFirstChildOfClass("Humanoid")
        if not getgenv().AutoPitchKillers.HRP or not getgenv().AutoPitchKillers.Humanoid then
            return
        end
        getgenv().AutoPitchKillers.Playing = false

        for k, v12 in pairs(getgenv().AutoPitchKillers.Humanoid:GetPlayingAnimationTracks()) do
            if v12.Animation.AnimationId == "rbxassetid://" .. tostring(getgenv().AutoPitchKillers.AnimationId) then
                getgenv().AutoPitchKillers.Playing = true
                break
            end
        end

        if not getgenv().AutoPitchKillers.Playing then
            return
        end
        getgenv().AutoPitchKillers.ClosestKiller = nil
        getgenv().AutoPitchKillers.MinDist = getgenv().AutoPitchKillers.DistanceRange

        if workspace:FindFirstChild("Players") and workspace.Players:FindFirstChild("Killers") then
            for k, child in pairs(workspace.Players.Killers:GetChildren()) do
                if child:FindFirstChild("HumanoidRootPart") then
                    local magnitude = (getgenv().AutoPitchKillers.HRP.Position - child.HumanoidRootPart.Position).Magnitude

                    if magnitude <= getgenv().AutoPitchKillers.MinDist then
                        getgenv().AutoPitchKillers.MinDist = magnitude
                        getgenv().AutoPitchKillers.ClosestKiller = child
                    end
                end
            end
        end

        if getgenv().AutoPitchKillers.ClosestKiller and getgenv().AutoPitchKillers.ClosestKiller:FindFirstChild("HumanoidRootPart") then
            getgenv().AutoPitchKillers.TargetPos = getgenv().AutoPitchKillers.ClosestKiller.HumanoidRootPart.Position
            getgenv().AutoPitchKillers.LookAtCF = CFrame.new(getgenv().AutoPitchKillers.HRP.Position, getgenv().AutoPitchKillers.TargetPos) * CFrame.Angles(math.rad(getgenv().AutoPitchKillers.PitchAngle), 0, 0)
            getgenv().AutoPitchKillers.HRP.CFrame = getgenv().AutoPitchKillers.LookAtCF
        end
    end

    getgenv().AutoPitchKillers.RunService.RenderStepped:Connect(function()
        getgenv().AutoPitchKillers.Update()
    end)

    Settings4:AddCheckbox(fn(), {
        Text = "Super Bumper",
        Default = false,
        Callback = function(enabled)
            getgenv().AutoPitchKillers.Enabled = enabled
        end,
    })

    Settings4:AddSlider(fn(), {
        Text = "Pitch Angle",
        Min = 1,
        Max = 100,
        Default = 100,
        Rounding = 0,
        Callback = function(arg)
            getgenv().AutoPitchKillers.PitchAngle = tonumber(arg)
        end,
    })

    Settings4:AddSlider(fn(), {
        Text = "Distance Range",
        Min = 1,
        Max = 100,
        Default = 20,
        Rounding = 0,
        Callback = function(arg)
            getgenv().AutoPitchKillers.DistanceRange = tonumber(arg)
        end,
    })

    local v12 = Survivors:AddRightTabbox()
    local v13 = v12:AddTab("007n7")
    local Settings5 = v12:AddTab("Settings")
    local Dusekkar = Survivors:AddRightGroupbox("Dusekkar")

    task.spawn(function()
        local RunService3 = game:GetService("RunService")
        local Players2 = game:GetService("Players")
        local PathfindingService = game:GetService("PathfindingService")
        local localPlayer6 = Players2.LocalPlayer
        local n4 = 80
        workspace:WaitForChild("Players", 10):WaitForChild("Survivors", 10)
        local flag4 = false
        local flag5 = false
        local connection8 = nil
        local humanoid2 = nil
        local humanoidRootPart3 = nil
        local flag6 = false
        local character2 = nil
        local str = "Nearest"

        local function fn16(character3)
            humanoid2 = character3:WaitForChild("Humanoid")
            humanoidRootPart3 = character3:WaitForChild("HumanoidRootPart")

            humanoid2.Died:Connect(function()
                if flag4 then
                    getgenv().Noli_StopOverride()
                end
            end)
        end

        if localPlayer6.Character then
            fn16(localPlayer6.Character)
        end

        localPlayer6.CharacterAdded:Connect(fn16)
        local genv5 = getgenv()
        local hasLineOfSight = getgenv().hasLineOfSight

        local hasLineOfSight2 = hasLineOfSight or function(arg, arg2)
            local raycastParams = RaycastParams.new()
            raycastParams.FilterDescendantsInstances = {localPlayer6.Character}
            raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
            raycastParams.IgnoreWater = true
            local hit = workspace:Raycast(arg, arg2 - arg, raycastParams)
            local flag7 = hit

            if hit then
                if hit.Instance:IsDescendantOf(workspace.Players.Survivors) then
                    flag7 = false
                else
                    flag7 = true
                end
            end

            local flag8

            if flag7 then
                flag8 = false
            else
                flag8 = true
            end

            return flag8
        end

        genv5.hasLineOfSight = hasLineOfSight2

        local function fn17(arg)
            local assemblyLinearVelocity = arg.AssemblyLinearVelocity
            if assemblyLinearVelocity.Magnitude < 1 then
                return arg.Position
            end
            return arg.Position + assemblyLinearVelocity * ((arg.Position - humanoidRootPart3.Position).Magnitude / n4) * 0.3
        end

        local function fn18(arg)
            if not humanoidRootPart3 or false then
                return nil
            end

            local v14 = PathfindingService:CreatePath({
                AgentRadius = 2,
                AgentHeight = 5,
                AgentCanJump = true,
                AgentCanClimb = false,
                WaypointSpacing = 4,
                Costs = {Water = 20},
            })

            if pcall(function()
                v14:ComputeAsync(humanoidRootPart3.Position, fn17(arg))
            end) and v14.Status == Enum.PathStatus.Success then
                return v14:GetWaypoints()
            end
            return nil
        end

        local function fn19(arg)
            if arg == localPlayer6 then
                return false
            end
            local character3 = arg.Character
            if not character3 then
                return false
            end
            local humanoidRootPart4 = character3:FindFirstChild("HumanoidRootPart")
            local humanoid3 = character3:FindFirstChild("Humanoid")
            local flag7 = humanoidRootPart4 and humanoid3 and humanoid3.Health > 0
            return flag7
        end

        local function fn20()
            if not humanoidRootPart3 then
                return nil
            end
            local v14 = nil
            local huge = math.huge
            local v15 = nil
            local huge2 = math.huge

            for i, player_ in ipairs(Players2:GetPlayers()) do
                if fn19(player_) then
                    local humanoidRootPart4 = player_.Character:FindFirstChild("HumanoidRootPart")
                    local humanoid3 = player_.Character:FindFirstChild("Humanoid")

                    if humanoidRootPart4 then
                        local magnitude = (humanoidRootPart4.Position - humanoidRootPart3.Position).Magnitude

                        if magnitude < huge then
                            huge = magnitude
                            v14 = player_
                        end

                        if humanoid3 and humanoid3.Health < huge2 then
                            huge2 = humanoid3.Health
                            v15 = player_
                        end
                    end
                end
            end

            if str == "Lowest HP" then
                return v15
            end
            return v14
        end

        local function fn21(arg)
            if not arg or #arg == 0 then
                return
            end
            flag6 = true
            local n5 = 2
            local now = tick()

            while flag6 and n5 <= #arg and humanoidRootPart3 and humanoid2 and humanoid2.Health > 0 do
                if tick() - now > 10 then
                    flag6 = false
                    break
                end
                local v14 = arg[n5]
                local vector = Vector3.new(v14.Position.X - humanoidRootPart3.Position.X, 0, v14.Position.Z - humanoidRootPart3.Position.Z)

                if vector.Magnitude < 3 then
                    n5 = n5 + 1
                else
                    local cframe = CFrame.new(humanoidRootPart3.Position, Vector3.new(v14.Position.X, humanoidRootPart3.Position.Y, v14.Position.Z))
                    humanoidRootPart3.CFrame = cframe
                    local vector2 = Vector3.new(vector.Unit.X * n4, humanoidRootPart3.AssemblyLinearVelocity.Y, vector.Unit.Z * n4)
                    humanoidRootPart3.AssemblyLinearVelocity = vector2
                end

                task.wait()
            end

            flag6 = false
        end

        getgenv().Noli_StartOverride = function()
            if flag4 or not humanoid2 or not humanoidRootPart3 then
                return
            end
            flag4 = true

            connection8 = RunService3.Heartbeat:Connect(function()
                if not humanoid2 or not humanoidRootPart3 or humanoid2.Health <= 0 then
                    return
                end
                local v14 = fn20()

                if v14 and v14.Character and v14.Character:FindFirstChild("HumanoidRootPart") then
                    local humanoidRootPart4 = v14.Character.HumanoidRootPart
                    character2 = v14.Character
                    local v15 = fn17(humanoidRootPart4)

                    if not getgenv().hasLineOfSight(humanoidRootPart3.Position, humanoidRootPart4.Position) and flag5 then
                        if not flag6 then
                            local v16 = fn18(humanoidRootPart4)

                            if v16 then
                                task.spawn(function()
                                    fn21(v16)
                                end)
                            else
                                flag6 = false
                                local vector = Vector3.new(0, humanoidRootPart3.AssemblyLinearVelocity.Y, 0)
                                humanoidRootPart3.AssemblyLinearVelocity = vector
                            end
                        end
                    else
                        flag6 = false
                        local n5 = v15 - humanoidRootPart3.Position
                        local vector = Vector3.new(n5.X, 0, n5.Z)

                        if vector.Magnitude > 4 then
                            local cframe = CFrame.new(humanoidRootPart3.Position, Vector3.new(v15.X, humanoidRootPart3.Position.Y, v15.Z))
                            humanoidRootPart3.CFrame = cframe
                            local assemblyLinearVelocity = humanoidRootPart3.AssemblyLinearVelocity

                            if true then
                                local vector2 = Vector3.new(vector.Unit.X * n4, assemblyLinearVelocity.Y, vector.Unit.Z * n4)
                                humanoidRootPart3.AssemblyLinearVelocity = vector2
                            else
                                local vector2 = Vector3.new(0, assemblyLinearVelocity.Y, 0)
                                humanoidRootPart3.AssemblyLinearVelocity = vector2
                            end
                        else
                            local vector2 = Vector3.new(0, humanoidRootPart3.AssemblyLinearVelocity.Y, 0)
                            humanoidRootPart3.AssemblyLinearVelocity = vector2
                        end
                    end
                else
                    character2 = nil
                    local vector = Vector3.new(0, humanoidRootPart3.AssemblyLinearVelocity.Y, 0)
                    humanoidRootPart3.AssemblyLinearVelocity = vector
                end
            end)
        end

        getgenv().Noli_StopOverride = function()
            if not flag4 then
                return
            end
            flag4 = false
            flag6 = false

            if connection8 then
                connection8:Disconnect()
                connection8 = nil
            end

            if humanoidRootPart3 then
                local vector = Vector3.new(0, humanoidRootPart3.AssemblyLinearVelocity.Y, 0)
                humanoidRootPart3.AssemblyLinearVelocity = vector
            end
        end

        Noli:AddCheckbox(fn(), {
            Text = "Auto Target",
            Default = false,
            Callback = function(arg)
                flag5 = arg
            end,
        })

        Noli:AddDropdown(fn(), {
            Text = "Target Mode",
            Values = {"Nearest", "Lowest HP"},
            Default = 1,
            Callback = function(arg)
                str = arg
            end,
        })

        Noli:AddSlider(fn(), {
            Text = "Dash Speed",
            Min = 40,
            Max = 200,
            Default = 80,
            Rounding = 0,
            Callback = function(arg)
                n4 = tonumber(arg)
            end,
        })

        getgenv().VoidstarAutoNovaEnabled = false
        Noli:AddDivider()

        Noli:AddCheckbox(fn(), {
            Text = "Auto Nova",
            Default = false,
            Callback = function(voidstarAutoNovaEnabled)
                getgenv().VoidstarAutoNovaEnabled = voidstarAutoNovaEnabled
            end,
        })

        game:GetService("RunService").Heartbeat:Connect(function()
            if not getgenv().VoidstarAutoNovaEnabled then
                return
            end
            local map = workspace:FindFirstChild("Map")
            local ingame = map and workspace.Map:FindFirstChild("Ingame")
            if not ingame then
                return
            end
            local voidstar = ingame:FindFirstChild("Voidstar")
            if not voidstar then
                return
            end
            local players = workspace:FindFirstChild("Players")
            local survivors = players and workspace.Players:FindFirstChild("Survivors")
            if not survivors then
                return
            end
            local humanoidRootPart4 = voidstar:FindFirstChild("HumanoidRootPart")
            local position = humanoidRootPart4 and voidstar.HumanoidRootPart.Position

            if not position then
                local isBasePart = voidstar:IsA("BasePart")
                position = isBasePart and voidstar.Position
            end

            if not position then
                return
            end

            for i, child in ipairs(survivors:GetChildren()) do
                local humanoidRootPart5 = child:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart5 and (position - humanoidRootPart5.Position).Magnitude <= 8 then
                    getgenv().VoidstarAutoNovaEnabled = false
                    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer("UseActorAbility", {buffer.fromstring("\003\004\000\000\000Nova")})
                    return
                end
            end
        end)
    end)

    task.spawn(function()
        local flag4 = false
        local n4 = 0.3

        Nosferatu:AddCheckbox(fn(), {
            Text = "Auto Minigame",
            Default = false,
            Callback = function(arg)
                flag4 = arg

                if arg then
                    task.spawn(function()
                        local remoteEvent2 = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent")

                        while flag4 do
                            local character2 = game.Players.LocalPlayer.Character
                            local flag5 = character2 and character2.Parent and character2.Parent.Name == "Killers"
                            local playerGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui")

                            if playerGui then
                                local temporaryUI = playerGui:FindFirstChild("TemporaryUI")

                                if temporaryUI then
                                    local qte = temporaryUI:FindFirstChild("QTE")
                                    local imageButton = qte

                                    if qte then
                                        local activeButton = qte:FindFirstChild("ActiveButton")
                                        imageButton = activeButton or qte:FindFirstChildWhichIsA("ImageButton")
                                    end

                                    if imageButton then
                                        if flag5 then
                                            local name = game.Players.LocalPlayer.Name

                                            pcall(function()
                                                remoteEvent2:FireServer(name .. "NosHookQTE", {buffer.fromstring("\001\001")})
                                            end)
                                        elseif character2 and character2.Parent and character2.Parent.Name == "Survivors" then
                                            local name = nil

                                            for i, player_ in ipairs(game:GetService("Players"):GetPlayers()) do
                                                local character3 = player_.Character
                                                if character3 and character3.Parent and character3.Parent.Name == "Killers" then
                                                    name = player_.Name
                                                    break
                                                end
                                            end

                                            if name then
                                                pcall(function()
                                                    remoteEvent2:FireServer(name .. "NosHookQTE", {buffer.fromstring("\001\001")})
                                                end)
                                            end
                                        end
                                    end
                                end
                            end

                            task.wait(n4)
                        end
                    end)
                end
            end,
        })

        Nosferatu:AddSlider(fn(), {
            Text = "Fire Delay",
            Min = 0.05,
            Max = 2,
            Default = 0.3,
            Rounding = 2,
            Callback = function(arg)
                n4 = tonumber(arg)
            end,
        })

        local genv5 = getgenv()
        local nosSpeed = getgenv().nosSpeed
        local nosSpeed2 = nosSpeed or 6.5
        genv5.nosSpeed = nosSpeed2
        getgenv().modifyNosSpeed = false

        Settings2:AddCheckbox(fn(), {
            Text = "Custom Fly Speed",
            Default = false,
            Callback = function(modifyNosSpeed)
                getgenv().modifyNosSpeed = modifyNosSpeed

                if modifyNosSpeed then
                    task.spawn(function()
                        while getgenv().modifyNosSpeed do
                            pcall(function()
                                local nosFlying = workspace.Players.Killers.Nosferatu.SpeedMultipliers:FindFirstChild("NosFlying")

                                if nosFlying then
                                    local nosSpeed3 = getgenv().nosSpeed
                                    local value = nosSpeed3 or 6.5
                                    nosFlying.Value = value
                                end
                            end)

                            task.wait(0.1)
                        end
                    end)
                end
            end,
        })

        Settings2:AddSlider(fn(), {
            Text = "Fly Speed",
            Min = 6.5,
            Max = 20,
            Default = 6.5,
            Rounding = 1,
            Callback = function(arg)
                getgenv().nosSpeed = tonumber(arg)
            end,
        })
    end)

    task.spawn(function()
        local ReplicatedStorage4 = game:GetService("ReplicatedStorage")
        local UserInputService = game:GetService("UserInputService")
        local virtualInputManager = getgenv().VirtualInputManager
        local VirtualInputManager2 = virtualInputManager or game:GetService("VirtualInputManager")
        local localPlayer6 = game.Players.LocalPlayer

        if not localPlayer6.Character then
            localPlayer6.CharacterAdded:Wait()
        end

        local touchEnabled = UserInputService.TouchEnabled
        local flag4 = touchEnabled

        if touchEnabled then
            if UserInputService.KeyboardEnabled then
                flag4 = false
            else
                flag4 = true
            end
        end

        if flag4 then
            flag4 = "Mobile"
        end

        if not flag4 then
            flag4 = "PC"
        end

        local behavior = ReplicatedStorage4:WaitForChild("Assets"):WaitForChild("Survivors"):WaitForChild("Veeronica"):WaitForChild("Behavior")
        local n4 = 0

        local function fn16()
            local now = tick()
            if now - n4 < 0.2 then
                return
            end
            n4 = now
            VirtualInputManager2:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
            task.wait()
            VirtualInputManager2:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
        end

        local function fn17()
            local sprintingButton = localPlayer6.PlayerGui:WaitForChild("MainUI"):WaitForChild("SprintingButton")

            for k, v14 in pairs(getconnections(sprintingButton.MouseButton1Down)) do
                pcall(function()
                    if v14.Fire then
                        v14:Fire()
                    end

                    if v14.Function then
                        v14:Function()
                    end
                end)
            end
        end

        local function fn18(arg)
            local character2 = localPlayer6.Character
            if not character2 or not arg.Adornee then
                return false
            end
            local flag5 = arg.Adornee == character2

            if not flag5 then
                local v14 = character2:FindFirstChild(arg.Adornee.Name)
                flag5 = v14 and arg.Adornee:IsDescendantOf(character2)
            end

            return flag5
        end

        local Players2 = game:GetService("Players")
        local RunService3 = game:GetService("RunService")
        local UserInputService2 = game:GetService("UserInputService")
        local localPlayer7 = Players2.LocalPlayer
        local currentCamera = game:GetService("Workspace").CurrentCamera
        local flag5 = false
        local connection8 = nil
        local connection9 = nil
        local tbl7 = {"117058860640843"}
        local tbl8 = {}
        local genv5 = getgenv()
        local vxSk8SteerStrength3 = getgenv().VX_Sk8SteerStrength
        local vxSk8SteerStrength4 = vxSk8SteerStrength3 or 60
        genv5.VX_Sk8SteerStrength = vxSk8SteerStrength4

        local function fn19(arg)
            if connection8 then
                connection8:Disconnect()
                connection8 = nil
            end

            if not arg then
                UserInputService2.MouseBehavior = Enum.MouseBehavior.Default
                return
            end
            UserInputService2.MouseBehavior = Enum.MouseBehavior.LockCenter

            connection8 = RunService3.RenderStepped:Connect(function(deltaTime)
                local character2 = localPlayer7.Character
                local humanoidRootPart3 = character2 and character2:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart3 then
                    local lookVector = currentCamera.CFrame.LookVector
                    local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

                    if vector.Magnitude > 0 then
                        local vector2 = Vector3.new(humanoidRootPart3.CFrame.LookVector.X, 0, humanoidRootPart3.CFrame.LookVector.Z)
                        local vxSk8SteerStrength5 = getgenv().VX_Sk8SteerStrength
                        local n5 = vxSk8SteerStrength5 or 60
                        local n6 = math.clamp(deltaTime * n5 / 5, 0, 1)
                        local v14 = vector2:Lerp(vector.Unit, n6)

                        if v14.Magnitude > 0 then
                            humanoidRootPart3.CFrame = CFrame.new(humanoidRootPart3.Position, humanoidRootPart3.Position + v14)
                        end
                    end
                end
            end)
        end

        local function fn20()
            local character2 = localPlayer7.Character
            local humanoid2 = character2 and character2:FindFirstChildOfClass("Humanoid")
            return humanoid2
        end

        local function fn21(arg)
            if tbl8[arg] then
                return
            end
            local tbl9 = {WalkSpeed = arg.WalkSpeed}

            if not pcall(function()
                tbl9.JumpPower = arg.JumpPower
            end) then
                pcall(function()
                    tbl9.JumpPower = arg.JumpHeight
                end)
            end

            local ok, autoRotate = pcall(function()
                return arg.AutoRotate
            end)

            if ok then
                tbl9.AutoRotate = autoRotate
            end

            tbl9.PlatformStand = arg.PlatformStand
            tbl8[arg] = tbl9
        end

        local function fn22(arg)
            local v14 = tbl8[arg]
            if not v14 then
                return
            end
            arg.WalkSpeed = v14.WalkSpeed

            if not pcall(function()
                arg.JumpPower = v14.JumpPower
            end) then
                pcall(function()
                    arg.JumpHeight = v14.JumpPower
                end)
            end

            if v14.AutoRotate ~= nil then
                arg.AutoRotate = v14.AutoRotate
            end

            arg.PlatformStand = v14.PlatformStand
            tbl8[arg] = nil
        end

        local function fn23()
            local v14 = fn20()
            if not v14 then
                return false
            end

            for i, v15 in ipairs(v14:GetPlayingAnimationTracks()) do
                local ok, result2 = pcall(function()
                    return tostring(v15.Animation.AnimationId):match("%d+")
                end)

                if ok and result2 and table.find(tbl7, result2) then
                    return true
                end
            end

            return false
        end

        local function fn24()
            if flag5 then
                return
            end
            local v14 = fn20()
            if not v14 then
                return
            end
            flag5 = true
            fn21(v14)
            v14.WalkSpeed = 60
            v14.AutoRotate = false
            fn19(true)

            connection9 = RunService3.RenderStepped:Connect(function()
                local v15 = fn20()
                local humanoidRootPart3 = v15 and v15.Parent:FindFirstChild("HumanoidRootPart")
                if not v15 or not humanoidRootPart3 then
                    return
                end
                v15.WalkSpeed = 60
                v15.AutoRotate = false
                local lookVector = humanoidRootPart3.CFrame.LookVector
                local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

                if vector.Magnitude > 0 then
                    v15:Move(vector.Unit)
                else
                    v15:Move(Vector3.zero)
                end
            end)
        end

        local function fn25()
            if not flag5 then
                return
            end
            flag5 = false

            if connection9 then
                connection9:Disconnect()
                connection9 = nil
            end

            fn19(false)
            local v14 = fn20()

            if v14 then
                fn22(v14)
                v14:Move(Vector3.zero)
            end
        end

        localPlayer7.CharacterAdded:Connect(function()
            if connection8 then
                connection8:Disconnect()
                connection8 = nil
            end
        end)

        Veeronica:AddCheckbox(fn(), {
            Text = "Sk8 Control",
            Default = false,
            Callback = function(arg)
                if getgenv().Sk8ControlConn then
                    getgenv().Sk8ControlConn:Disconnect()
                    getgenv().Sk8ControlConn = nil
                end

                if arg then
                    getgenv().Sk8ControlConn = RunService3.RenderStepped:Connect(function()
                        if not fn20() then
                            if flag5 then
                                fn25()
                            end

                            return
                        end

                        local v14 = fn23()

                        if v14 and not flag5 then
                            fn24()
                        elseif not v14 and flag5 then
                            fn25()
                        end
                    end)
                else
                    fn25()
                end
            end,
        })

        getgenv().VX_AutoSk8Trick = false

        game:GetService("RunService").Heartbeat:Connect(function()
            if not getgenv().VX_AutoSk8Trick then
                return
            end

            for i, descendant in ipairs(behavior:GetDescendants()) do
                if descendant:IsA("Highlight") and fn18(descendant) then
                    if flag4 == "Mobile" then
                        fn17()
                    else
                        fn16()
                    end
                end
            end
        end)

        Veeronica:AddCheckbox(fn(), {
            Text = "Auto Sk8 Trick",
            Default = false,
            Callback = function(vxAutoSk8Trick)
                getgenv().VX_AutoSk8Trick = vxAutoSk8Trick
            end,
        })

        getgenv().VX_BlockSk8Rebound = false
        local name = localPlayer6.Name
        local v14 = nil

        v14 = hookmetamethod(game, "__namecall", function(arg, ...)
            local tbl9 = {...}

            if getnamecallmethod() == "FireServer" and getgenv().VX_BlockSk8Rebound then
                local str = tostring(tbl9[1])
                if str == name .. "Sk8Rebound" then
                    return nil
                end

                if str == name .. "StopSk8" and typeof(tbl9[2]) == "table" then
                    for i, v15 in ipairs(tbl9[2]) do
                        if typeof(v15) == "Instance" then
                            ReplicatedStorage4:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(name .. "StopSk8", {buffer.fromstring("\"Manual\"")})
                            return nil
                        end
                    end
                end
            end

            return v14(arg, ...)
        end)

        Veeronica:AddCheckbox(fn(), {
            Text = "Anti Rebound",
            Default = false,
            Callback = function(vxBlockSk8Rebound)
                getgenv().VX_BlockSk8Rebound = vxBlockSk8Rebound
            end,
        })

        getgenv().VX_HighJumpEnabled = false
        getgenv().VX_HighJumpMult = 2
        getgenv().VX_HighJumpOrigValue = nil
        require(ReplicatedStorage4.Modules.Gameplay.Actors)
        getgenv().VX_Sk8Everywhere = false

        Veeronica:AddCheckbox(fn(), {
            Text = "Sk8 Everywhere",
            Default = false,
            Callback = function(vxSk8Everywhere)
                getgenv().VX_Sk8Everywhere = vxSk8Everywhere

                if vxSk8Everywhere and not getgenv()._Sk8EverywhereConn then
                    getgenv()._Sk8EverywhereConn = game:GetService("RunService").Heartbeat:Connect(function()
                        if not getgenv().VX_Sk8Everywhere then
                            return
                        end

                        pcall(function()
                            local v15 = nil
                            local Actors = require(ReplicatedStorage4.Modules.Gameplay.Actors)
                            local Util = require(ReplicatedStorage4.Modules.Utilities.Util)
                            local currentActors = Actors.CurrentActors

                            while true do
                                local v16, v17 = currentActors(nil, v15)
                                if v16 == nil then
                                    break
                                end
                                v15 = v16

                                if v17.ActorName == "Veeronica" and v17.Player == localPlayer6 then
                                    v17.State.InZone = true
                                    v17.State.ClosestSpray = true

                                    if v17.Behavior and v17.Behavior.Abilities and v17.Behavior.Abilities.Sk8 then
                                        local sk8 = v17.Behavior.Abilities.Sk8

                                        if not getgenv()._Sk8OrigCallback then
                                            getgenv()._Sk8OrigCallback = sk8.Callback

                                            sk8.Callback = function(arg, arg2, ...)
                                                local str = arg2

                                                if getgenv().VX_Sk8Everywhere and arg2 == "BAD" then
                                                    str = "SPRAY"
                                                end

                                                return getgenv()._Sk8OrigCallback(arg, str, ...)
                                            end
                                        end
                                    end

                                    if not v17.State.isSkating then
                                        Util:ToggleLockForAbilityIcon("Sk8", "NoCharges", false)
                                    end
                                end
                            end
                        end)
                    end)
                elseif not vxSk8Everywhere and getgenv()._Sk8EverywhereConn then
                    getgenv()._Sk8EverywhereConn:Disconnect()
                    getgenv()._Sk8EverywhereConn = nil

                    pcall(function()
                        local v15 = nil
                        local currentActors = require(ReplicatedStorage4.Modules.Gameplay.Actors).CurrentActors

                        while true do
                            local v16, v17 = currentActors(nil, v15)
                            if v16 == nil then
                                break
                            end
                            v15 = v16

                            if v17.ActorName == "Veeronica" and v17.Player == localPlayer6 and getgenv()._Sk8OrigCallback and v17.Behavior and v17.Behavior.Abilities and v17.Behavior.Abilities.Sk8 then
                                v17.Behavior.Abilities.Sk8.Callback = getgenv()._Sk8OrigCallback
                                getgenv()._Sk8OrigCallback = nil
                            end
                        end
                    end)
                end
            end,
        })
    end)

    task.spawn(function()
        pcall(function()
            local Behavior = require(game:GetService("ReplicatedStorage").Assets.Survivors.JaneDoe.Behavior)
            local callback = Behavior.Abilities.Crystal.Callback
            local minChargeTime = nil
            local maxChargeTime = nil

            Behavior.Abilities.Crystal.Callback = function(arg, arg2)
                if not minChargeTime then
                    minChargeTime = arg.Config.Crystal.MinChargeTime
                    maxChargeTime = arg.Config.Crystal.MaxChargeTime
                end

                if not getgenv().JaneDoe_AutoInstantChargeEnabled then
                    arg.Config.Crystal.MinChargeTime = minChargeTime
                    arg.Config.Crystal.MaxChargeTime = maxChargeTime
                    return callback(arg, arg2)
                end

                arg.Config.Crystal.MaximumHoldTime = math.huge
                arg.Config.Crystal.MinChargeTime = 0
                arg.Config.Crystal.MaxChargeTime = 0.1
                return callback(arg, arg2)
            end
        end)

        v10:AddCheckbox(fn(), {
            Text = "Instant Charge",
            Default = false,
            Callback = function(janeDoeAutoInstantChargeEnabled)
                getgenv().JaneDoe_AutoInstantChargeEnabled = janeDoeAutoInstantChargeEnabled
            end,
        })

        getgenv().JaneDoe_InfHold2Enabled = false
        getgenv().JaneDoe_InfHold2Conn = nil
        getgenv().JaneDoe_InfHold2OldCallback = nil
        getgenv().JaneDoe_InfHold2OldMaxHoldTime = nil
        getgenv().JaneDoe_InfHold2Actor = nil

        getgenv().JaneDoe_PatchInfHold2Actor = function(janeDoeInfHold2Actor)
            if janeDoeInfHold2Actor.Config and janeDoeInfHold2Actor.Config.Crystal then
                if getgenv().JaneDoe_InfHold2OldMaxHoldTime == nil then
                    getgenv().JaneDoe_InfHold2OldMaxHoldTime = janeDoeInfHold2Actor.Config.Crystal.MaximumHoldTime
                end

                janeDoeInfHold2Actor.Config.Crystal.MaximumHoldTime = math.huge
            end

            if janeDoeInfHold2Actor.Behavior and janeDoeInfHold2Actor.Behavior.Abilities and janeDoeInfHold2Actor.Behavior.Abilities.Crystal and not getgenv().JaneDoe_InfHold2OldCallback then
                getgenv().JaneDoe_InfHold2Actor = janeDoeInfHold2Actor
                getgenv().JaneDoe_InfHold2OldCallback = janeDoeInfHold2Actor.Behavior.Abilities.Crystal.Callback

                janeDoeInfHold2Actor.Behavior.Abilities.Crystal.Callback = function(arg, arg2)
                    if getgenv().JaneDoe_InfHold2Enabled and arg.Config and arg.Config.Crystal then
                        arg.Config.Crystal.MaximumHoldTime = math.huge
                    end

                    if not getgenv().JaneDoe_InfHold2OldCallback then
                        return
                    end
                    return getgenv().JaneDoe_InfHold2OldCallback(arg, arg2)
                end
            end
        end

        getgenv().StartJaneDoe_InfHold2 = function()
            local Actors = require(game:GetService("ReplicatedStorage").Modules.Gameplay.Actors)

            pcall(function()
                local v14 = nil
                local currentActors = Actors.CurrentActors

                while true do
                    local v15, v16 = currentActors(nil, v14)
                    if v15 == nil then
                        break
                    end
                    v14 = v15
                    if v16.ActorName == "JaneDoe" then
                        getgenv().JaneDoe_PatchInfHold2Actor(v16)
                        break
                    end
                end
            end)

            if getgenv().JaneDoe_InfHold2Conn then
                return
            end

            getgenv().JaneDoe_InfHold2Conn = game:GetService("RunService").Heartbeat:Connect(function()
                local v14 = nil
                if not getgenv().JaneDoe_InfHold2Enabled then
                    return
                end
                local character2 = game:GetService("Players").LocalPlayer.Character
                if not character2 or character2.Name ~= "JaneDoe" then
                    return
                end
                local currentActors = Actors.CurrentActors

                while true do
                    local v15, v16 = currentActors(nil, v14)
                    if v15 == nil then
                        break
                    end
                    v14 = v15
                    if v16.ActorName == "JaneDoe" and v16.Rig == character2 then
                        pcall(getgenv().JaneDoe_PatchInfHold2Actor, v16)
                        break
                    end
                end
            end)
        end

        getgenv().StopJaneDoe_InfHold2 = function()
            if getgenv().JaneDoe_InfHold2Conn then
                getgenv().JaneDoe_InfHold2Conn:Disconnect()
                getgenv().JaneDoe_InfHold2Conn = nil
            end

            pcall(function()
                local janeDoeInfHold2Actor = getgenv().JaneDoe_InfHold2Actor

                if janeDoeInfHold2Actor then
                    if janeDoeInfHold2Actor.Config and janeDoeInfHold2Actor.Config.Crystal and getgenv().JaneDoe_InfHold2OldMaxHoldTime ~= nil then
                        janeDoeInfHold2Actor.Config.Crystal.MaximumHoldTime = getgenv().JaneDoe_InfHold2OldMaxHoldTime
                    end

                    if janeDoeInfHold2Actor.Behavior and janeDoeInfHold2Actor.Behavior.Abilities and janeDoeInfHold2Actor.Behavior.Abilities.Crystal and getgenv().JaneDoe_InfHold2OldCallback then
                        janeDoeInfHold2Actor.Behavior.Abilities.Crystal.Callback = getgenv().JaneDoe_InfHold2OldCallback
                    end
                end
            end)

            getgenv().JaneDoe_InfHold2OldCallback = nil
            getgenv().JaneDoe_InfHold2OldMaxHoldTime = nil
            getgenv().JaneDoe_InfHold2Actor = nil
        end

        v10:AddCheckbox(fn(), {
            Text = "Unlimited Crystal Hold",
            Default = false,
            Callback = function(janeDoeInfHold2Enabled)
                getgenv().JaneDoe_InfHold2Enabled = janeDoeInfHold2Enabled

                if janeDoeInfHold2Enabled then
                    getgenv().StartJaneDoe_InfHold2()
                else
                    getgenv().StopJaneDoe_InfHold2()
                end
            end,
        })
    end)

    task.spawn(function()
        getgenv()._007_autoCloneEnabled = false
        getgenv()._007_detectionRange = 20
        getgenv()._007_M1SoundConns = {}
        getgenv()._007_wallCheck = false
        getgenv()._007_elevCheck = false
        getgenv()._007_cloneDelay = 0
        local ReplicatedStorage4 = game:GetService("ReplicatedStorage")
        local localPlayer6 = game:GetService("Players").LocalPlayer

        local function fn16()
            pcall(function()
                ReplicatedStorage4.Modules.Network.Network.RemoteEvent:FireServer("UseActorAbility", {buffer.fromstring("\003\005\000\000\000Clone")})
            end)
        end

        local function fn17(arg)
            if getgenv()._007_M1SoundConns[arg] then
                for i, v14 in ipairs(getgenv()._007_M1SoundConns[arg]) do
                    pcall(function()
                        v14:Disconnect()
                    end)
                end

                getgenv()._007_M1SoundConns[arg] = nil
            end
        end

        local function fn18(arg)
            if not getgenv()._007_autoCloneEnabled then
                return
            end
            local character2 = localPlayer6.Character
            local humanoidRootPart3 = character2 and character2:FindFirstChild("HumanoidRootPart")
            local humanoidRootPart4 = arg:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart3 or not humanoidRootPart4 then
                return
            end
            local magnitude = (humanoidRootPart3.Position - humanoidRootPart4.Position).Magnitude
            if getgenv()._007_detectionRange < magnitude then
                return
            end

            if getgenv()._007_wallCheck and getgenv().isWallBlocking and getgenv().isWallBlocking() then
                return
            end

            if getgenv()._007_elevCheck and humanoidRootPart4.Position.Y - humanoidRootPart3.Position.Y > 3 then
                return
            end
            local n007CloneDelay = getgenv()._007_cloneDelay
            local n4 = n007CloneDelay or 0

            if n4 > 0 then
                task.delay(n4, fn16)
            else
                fn16()
            end
        end

        local function fn19(arg, arg2)
            local killerSoundIds = getgenv().killerSoundIds
            local v14 = killerSoundIds and getgenv().killerSoundIds[arg.Name]
            if not v14 then
                return
            end
            local n007M1SoundConns = getgenv()._007_M1SoundConns
            local v15 = getgenv()._007_M1SoundConns[arg]
            local tbl7 = v15 or {}
            n007M1SoundConns[arg] = tbl7

            table.insert(getgenv()._007_M1SoundConns[arg], arg2.Played:Connect(function()
                local match = tostring(arg2.SoundId):match("%d+")
                if not match or not v14[match] then
                    return
                end
                fn18(arg)
            end))
        end

        local function fn20(arg)
            local humanoid2 = arg:FindFirstChildOfClass("Humanoid")

            if not humanoid2 then
                arg.ChildAdded:Connect(function(child)
                    if child:IsA("Humanoid") then
                        (nil)(arg)
                    end
                end)

                return
            end

            local animator = humanoid2:FindFirstChildOfClass("Animator")

            if not animator then
                humanoid2.ChildAdded:Connect(function(child)
                    if child:IsA("Animator") then
                        (nil)(arg)
                    end
                end)

                return
            end

            local n007M1SoundConns = getgenv()._007_M1SoundConns
            local v14 = getgenv()._007_M1SoundConns[arg]
            local tbl7 = v14 or {}
            n007M1SoundConns[arg] = tbl7

            table.insert(getgenv()._007_M1SoundConns[arg], animator.AnimationPlayed:Connect(function(arg2)
                local killerAnimIds = getgenv().killerAnimIds
                local v15 = killerAnimIds and getgenv().killerAnimIds[arg.Name]
                if not v15 then
                    return
                end
                local animation = arg2.Animation
                local match = animation and tostring(arg2.Animation.AnimationId):match("%d+")
                if not match or not v15[match] then
                    return
                end
                fn18(arg)
            end))
        end

        local function fn21(arg)
            fn17(arg)
            getgenv()._007_M1SoundConns[arg] = {}

            for i, descendant in ipairs(arg:GetDescendants()) do
                if descendant:IsA("Sound") then
                    fn19(arg, descendant)
                end
            end

            table.insert(getgenv()._007_M1SoundConns[arg], arg.DescendantAdded:Connect(function(descendant)
                if descendant:IsA("Sound") then
                    task.wait()
                    fn19(arg, descendant)
                end
            end))

            fn20(arg)
        end

        local function fn22(arg)
            if not arg then
                return
            end

            for i, child in ipairs(arg:GetChildren()) do
                task.spawn(function()
                    task.wait(0.3)
                    fn21(child)
                end)
            end

            arg.ChildAdded:Connect(function(child)
                task.wait(0.5)
                fn21(child)
            end)

            arg.ChildRemoved:Connect(function(child)
                fn17(child)
            end)
        end

        v13:AddCheckbox(fn(), {
            Text = "Auto Clone",
            Default = false,
            Callback = function(n007AutoCloneEnabled)
                getgenv()._007_autoCloneEnabled = n007AutoCloneEnabled
            end,
        })

        v13:AddSlider(fn(), {
            Text = "Detection Range",
            Min = 5,
            Max = 100,
            Default = 20,
            Rounding = 0,
            Callback = function(arg)
                getgenv()._007_detectionRange = tonumber(arg)
            end,
        })

        Settings5:AddSlider(fn(), {
            Text = "Clone Delay",
            Default = 0,
            Min = 0,
            Max = 0.5,
            Rounding = 2,
            Callback = function(arg)
                local genv5 = getgenv()
                local num = tonumber(arg)
                local n007CloneDelay = num or 0
                genv5._007_cloneDelay = n007CloneDelay
            end,
        })

        Settings5:AddCheckbox(fn(), {
            Text = "Wall Check",
            Default = false,
            Callback = function(n007WallCheck)
                getgenv()._007_wallCheck = n007WallCheck
            end,
        })

        Settings5:AddCheckbox(fn(), {
            Text = "High Elevation Check",
            Default = false,
            Callback = function(n007ElevCheck)
                getgenv()._007_elevCheck = n007ElevCheck
            end,
        })

        Settings5:AddDivider()

        Settings5:AddSlider(fn(), {
            Text = "Prediction",
            Min = 0,
            Max = 1,
            Default = 0.2,
            Rounding = 2,
            Callback = function(arg)
                getgenv()._007_bbPrediction = tonumber(arg)
            end,
        })

        Settings5:AddSlider(fn(), {
            Text = "Circle Radius",
            Min = 1,
            Max = 50,
            Default = 5,
            Rounding = 1,
            Callback = function(arg)
                getgenv()._007_bbCircleRadius = tonumber(arg)
            end,
        });

        (function()
            local players = workspace:FindFirstChild("Players")
            local killers = players and players:FindFirstChild("Killers")

            if killers then
                fn22(killers)
            else
                workspace.DescendantAdded:Connect(function(descendant)
                    if descendant.Name == "Killers" and descendant.Parent and descendant.Parent.Name == "Players" then
                        fn22(descendant)
                    end
                end)
            end
        end)()

        local flag4 = false
        local connection8 = nil

        local function fn23()
            local ReplicatedStorage5 = game:GetService("ReplicatedStorage")
            local modules = ReplicatedStorage5:FindFirstChild("Modules")
            local themes = modules and ReplicatedStorage5.Modules:FindFirstChild("Gameplay") and ReplicatedStorage5.Modules.Gameplay:FindFirstChild("Themes") or workspace:FindFirstChild("Themes")
            local lastSurvivor = themes and themes:FindFirstChild("LastSurvivor")
            return lastSurvivor
        end

        local function fn24()
            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer("UseActorAbility", {buffer.fromstring("\003\007\000\000\000c00lgui")})
        end

        v13:AddCheckbox(fn(), {
            Text = "Auto Coolgui LMS",
            Default = false,
            Callback = function(arg)
                flag4 = arg

                if arg then
                    connection8 = game:GetService("RunService").Heartbeat:Connect(function()
                        local character2 = game.Players.LocalPlayer.Character
                        if not character2 or not character2.Parent or character2.Parent.Name ~= "Survivors" then
                            return
                        end

                        if fn23() then
                            fn24()
                        end
                    end)
                elseif connection8 then
                    connection8:Disconnect()
                    connection8 = nil
                end
            end,
        })

        local localPlayer7 = game:GetService("Players").LocalPlayer
        getgenv().VX_CancelCoolguiEnabled = false
        local screenGui = nil

        local function fn25()
            if screenGui then
                screenGui:Destroy()
            end

            screenGui = Instance.new("ScreenGui")
            screenGui.Name = "CancelCoolguiGui"
            screenGui.ResetOnSpawn = false
            screenGui.IgnoreGuiInset = true
            screenGui.Parent = localPlayer7.PlayerGui
            local imageButton = Instance.new("ImageButton")
            imageButton.Size = UDim2.fromOffset(60, 60)
            imageButton.Position = UDim2.new(1, -80, 0.5, -30)
            imageButton.BackgroundTransparency = 1
            imageButton.Image = "rbxassetid://89910721511648"
            imageButton.Parent = screenGui

            imageButton.MouseButton1Click:Connect(function()
                if not getgenv().VX_CancelCoolguiEnabled then
                    return
                end
                local character2 = localPlayer7.Character
                if not character2 then
                    return
                end

                pcall(function()
                    local boolValue = Instance.new("BoolValue")
                    boolValue.Name = "Result"
                    boolValue.Parent = character2
                    game:GetService("Debris"):AddItem(boolValue, 2)
                end)
            end)
        end

        v13:AddCheckbox(fn(), {
            Text = "Cancel Coolgui",
            Default = false,
            Callback = function(vxCancelCoolguiEnabled)
                getgenv().VX_CancelCoolguiEnabled = vxCancelCoolguiEnabled

                if vxCancelCoolguiEnabled then
                    fn25()
                elseif screenGui then
                    screenGui:Destroy()
                    screenGui = nil
                end
            end,
        })

        v13:AddDivider()

        getgenv()._007_canUseBodyBlock = function()
            local character2 = getgenv()._007_lp.Character
            if not character2 then
                return false
            end
            local flag5 = character2.Name == "007n7" and character2.Parent == getgenv()._007_workspace.Players.Survivors
            return flag5
        end

        getgenv()._007_getNearestKillerChar = function()
            local huge = math.huge
            local v14 = nil
            local players = getgenv()._007_workspace.Players
            local killers = players and getgenv()._007_workspace.Players:FindFirstChild("Killers")
            if not killers then
                return nil
            end
            local n007Char = getgenv()._007_char
            local humanoidRootPart3 = n007Char and getgenv()._007_char:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart3 then
                return nil
            end

            for k, child in pairs(killers:GetChildren()) do
                local humanoidRootPart4 = child:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart4 then
                    local magnitude = (humanoidRootPart3.Position - humanoidRootPart4.Position).Magnitude

                    if magnitude < huge then
                        v14 = child
                        huge = magnitude
                    end
                end
            end

            return v14
        end

        getgenv()._007_getNearestSurvivorChar = function()
            local huge = math.huge
            local v14 = nil
            local players = getgenv()._007_workspace.Players
            local survivors = players and getgenv()._007_workspace.Players:FindFirstChild("Survivors")
            if not survivors then
                return nil
            end
            local n007Char = getgenv()._007_char
            local humanoidRootPart3 = n007Char and getgenv()._007_char:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart3 then
                return nil
            end

            for k, child in pairs(survivors:GetChildren()) do
                if child ~= getgenv()._007_char then
                    local humanoidRootPart4 = child:FindFirstChild("HumanoidRootPart")

                    if humanoidRootPart4 then
                        local magnitude = (humanoidRootPart3.Position - humanoidRootPart4.Position).Magnitude

                        if magnitude < huge then
                            v14 = child
                            huge = magnitude
                        end
                    end
                end
            end

            return v14
        end

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

        getgenv()._007_getTargetPos = function()
            local n007CurrentTargetMode = getgenv()._007_currentTargetMode

            local function fn26(arg)
                return arg.Position + arg.AssemblyLinearVelocity * getgenv()._007_bbPrediction, arg
            end

            if n007CurrentTargetMode == "Killers" then
                local v14 = getgenv()._007_getNearestKillerChar()
                if v14 and v14:FindFirstChild("HumanoidRootPart") then
                    return fn26(v14.HumanoidRootPart)
                end
            elseif n007CurrentTargetMode == "Survivors" then
                local v14 = getgenv()._007_getNearestSurvivorChar()
                if v14 and v14:FindFirstChild("HumanoidRootPart") then
                    return fn26(v14.HumanoidRootPart)
                end
            elseif n007CurrentTargetMode == "Yourself" then
                local character2 = getgenv()._007_lp.Character
                if character2 and character2:FindFirstChild("HumanoidRootPart") then
                    return fn26(character2.HumanoidRootPart)
                end
            elseif n007CurrentTargetMode == "Random Survivor" then
                local players = getgenv()._007_workspace.Players
                local survivors = players and getgenv()._007_workspace.Players:FindFirstChild("Survivors")

                if survivors then
                    local tbl7 = {}

                    for k, child in pairs(survivors:GetChildren()) do
                        if child ~= getgenv()._007_char and child:FindFirstChild("HumanoidRootPart") then
                            table.insert(tbl7, child)
                        end
                    end

                    if #tbl7 > 0 then
                        return fn26(tbl7[math.random(1, #tbl7)].HumanoidRootPart)
                    end
                end
            elseif n007CurrentTargetMode == "Nearest Survivor" then
                local players = getgenv()._007_workspace.Players
                local survivors = players and getgenv()._007_workspace.Players:FindFirstChild("Survivors")
                local n007Char = getgenv()._007_char
                local humanoidRootPart3 = n007Char and getgenv()._007_char:FindFirstChild("HumanoidRootPart")

                if survivors and humanoidRootPart3 then
                    local huge = math.huge
                    local v14 = nil

                    for k, child in pairs(survivors:GetChildren()) do
                        if child ~= getgenv()._007_char then
                            local humanoidRootPart4 = child:FindFirstChild("HumanoidRootPart")

                            if humanoidRootPart4 then
                                local magnitude = (humanoidRootPart3.Position - humanoidRootPart4.Position).Magnitude

                                if magnitude < huge then
                                    huge = magnitude
                                    v14 = child
                                end
                            end
                        end
                    end

                    if v14 then
                        return fn26(v14.HumanoidRootPart)
                    end
                end
            elseif n007CurrentTargetMode == "Lowest HP" then
                local players = getgenv()._007_workspace.Players
                local survivors = players and getgenv()._007_workspace.Players:FindFirstChild("Survivors")

                if survivors then
                    local huge = math.huge
                    local v14 = nil

                    for k, child in pairs(survivors:GetChildren()) do
                        if child ~= getgenv()._007_char then
                            local humanoid2 = child:FindFirstChildOfClass("Humanoid")

                            if humanoid2 and humanoid2.Health > 0 and humanoid2.Health < huge then
                                huge = humanoid2.Health
                                v14 = child
                            end
                        end
                    end

                    if v14 and v14:FindFirstChild("HumanoidRootPart") then
                        return fn26(v14.HumanoidRootPart)
                    end
                end
            elseif n007CurrentTargetMode == "Nearest + Lowest HP" then
                local players = getgenv()._007_workspace.Players
                local survivors = players and getgenv()._007_workspace.Players:FindFirstChild("Survivors")
                local n007Char = getgenv()._007_char
                local humanoidRootPart3 = n007Char and getgenv()._007_char:FindFirstChild("HumanoidRootPart")

                if survivors and humanoidRootPart3 then
                    local huge = math.huge
                    local v14 = nil

                    for k, child in pairs(survivors:GetChildren()) do
                        if child ~= getgenv()._007_char then
                            local humanoidRootPart4 = child:FindFirstChild("HumanoidRootPart")
                            local humanoid2 = child:FindFirstChildOfClass("Humanoid")

                            if humanoidRootPart4 and humanoid2 and humanoid2.Health > 0 then
                                local n4 = (humanoidRootPart3.Position - humanoidRootPart4.Position).Magnitude + humanoid2.Health

                                if n4 < huge then
                                    huge = n4
                                    v14 = child
                                end
                            end
                        end
                    end

                    if v14 and v14:FindFirstChild("HumanoidRootPart") then
                        return fn26(v14.HumanoidRootPart)
                    end
                end
            elseif n007CurrentTargetMode == "Random" then
                local players = getgenv()._007_workspace.Players
                local killers = players and getgenv()._007_workspace.Players:FindFirstChild("Killers")
                local players2 = getgenv()._007_workspace.Players
                local survivors = players2 and getgenv()._007_workspace.Players:FindFirstChild("Survivors")
                local tbl7 = {}

                if killers then
                    for k, child in pairs(killers:GetChildren()) do
                        if child:FindFirstChild("HumanoidRootPart") then
                            table.insert(tbl7, child)
                        end
                    end
                end

                if survivors then
                    for k, child in pairs(survivors:GetChildren()) do
                        if child ~= getgenv()._007_char and child:FindFirstChild("HumanoidRootPart") then
                            table.insert(tbl7, child)
                        end
                    end
                end

                if #tbl7 > 0 then
                    return fn26(tbl7[math.random(1, #tbl7)].HumanoidRootPart)
                end
            elseif n007CurrentTargetMode == "Nearest" then
                local n007Char = getgenv()._007_char
                local humanoidRootPart3 = n007Char and getgenv()._007_char:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart3 then
                    local huge = math.huge
                    local v14 = nil
                    local players = getgenv()._007_workspace.Players
                    local killers = players and getgenv()._007_workspace.Players:FindFirstChild("Killers")
                    local players2 = getgenv()._007_workspace.Players
                    local survivors = players2 and getgenv()._007_workspace.Players:FindFirstChild("Survivors")

                    if killers then
                        for k, child in pairs(killers:GetChildren()) do
                            local humanoidRootPart4 = child:FindFirstChild("HumanoidRootPart")

                            if humanoidRootPart4 then
                                local magnitude = (humanoidRootPart3.Position - humanoidRootPart4.Position).Magnitude

                                if magnitude < huge then
                                    huge = magnitude
                                    v14 = child
                                end
                            end
                        end
                    end

                    if survivors then
                        for k, child in pairs(survivors:GetChildren()) do
                            if child ~= getgenv()._007_char then
                                local humanoidRootPart4 = child:FindFirstChild("HumanoidRootPart")

                                if humanoidRootPart4 then
                                    local magnitude = (humanoidRootPart3.Position - humanoidRootPart4.Position).Magnitude

                                    if magnitude < huge then
                                        huge = magnitude
                                        v14 = child
                                    end
                                end
                            end
                        end
                    end

                    if v14 and v14:FindFirstChild("HumanoidRootPart") then
                        return fn26(v14.HumanoidRootPart)
                    end
                end
            elseif n007CurrentTargetMode == "Closest To Crosshair" then
                local saGetClosestToCrosshair = getgenv().SA_GetClosestToCrosshair
                local v14 = saGetClosestToCrosshair and getgenv().SA_GetClosestToCrosshair()
                if v14 and v14:FindFirstChild("HumanoidRootPart") then
                    return fn26(v14.HumanoidRootPart)
                end
            elseif n007CurrentTargetMode == "Closest To Cursor" then
                local UserInputService = game:GetService("UserInputService")
                if not UserInputService.KeyboardEnabled or UserInputService.TouchEnabled then
                    return nil, nil
                end
                local currentCamera = workspace.CurrentCamera
                local character2 = getgenv()._007_lp.Character
                local mouse = getgenv()._007_lp:GetMouse()
                local vector2 = Vector2.new(mouse.X, mouse.Y)
                local huge = math.huge
                local v14 = nil
                local players = workspace:FindFirstChild("Players")
                local tbl7 = {}
                local survivors = players and players:FindFirstChild("Survivors")
                local killers = players and players:FindFirstChild("Killers")
                tbl7[1] = survivors
                tbl7[2] = killers
                local v15, v16, v17 = ipairs(tbl7)
                local v18 = v17
                local v19 = v15
                local v20 = v16

                while true do
                    local v21, v22 = v19(v20, v18)
                    if v21 == nil then
                        break
                    end
                    v18 = v21

                    if v22 then
                        for k, child in pairs(v22:GetChildren()) do
                            if child ~= character2 then
                                local humanoidRootPart3 = child:FindFirstChild("HumanoidRootPart")

                                if humanoidRootPart3 then
                                    local v23, v24 = currentCamera:WorldToViewportPoint(humanoidRootPart3.Position)

                                    if v24 then
                                        local magnitude = (Vector2.new(v23.X, v23.Y) - vector2).Magnitude
                                        local saCrosshairRadius = getgenv().SA_CrosshairRadius
                                        local n4 = saCrosshairRadius or 120

                                        if magnitude <= n4 and magnitude < huge then
                                            huge = magnitude
                                            v14 = child
                                        end
                                    end
                                end
                            end
                        end

                        v18 = v21
                    end
                end

                if v14 and v14:FindFirstChild("HumanoidRootPart") then
                    return fn26(v14.HumanoidRootPart)
                end
            end

            return nil, nil
        end

        getgenv()._007_MouseModule = nil
        getgenv()._007_OriginalGetMousePos = nil

        pcall(function()
            getgenv()._007_MouseModule = require(getgenv()._007_RepStorage.Systems.Player.Miscellaneous.GetPlayerMousePosition)
            getgenv()._007_OriginalGetMousePos = getgenv()._007_MouseModule.GetMousePos
        end)

        getgenv()._007_updateBodyBlock = function(n007CurrentTargetMode)
            getgenv()._007_currentTargetMode = n007CurrentTargetMode

            pcall(function()
                getgenv().StopSA_FOVCircle()
            end)

            pcall(function()
                getgenv().StopSA_CrosshairCircle()
            end)

            if n007CurrentTargetMode == "Closest To Cursor" then
                local UserInputService = game:GetService("UserInputService")

                if UserInputService.KeyboardEnabled and not UserInputService.TouchEnabled then
                    pcall(function()
                        getgenv().StartSA_FOVCircle()
                    end)
                end
            elseif n007CurrentTargetMode == "Closest To Crosshair" then
                pcall(function()
                    getgenv().StartSA_CrosshairCircle()
                end)
            end

            if not getgenv()._007_MouseModule or not getgenv()._007_OriginalGetMousePos then
                return
            end

            if n007CurrentTargetMode == "Disabled" then
                getgenv()._007_MouseModule.GetMousePos = getgenv()._007_OriginalGetMousePos
            else
                getgenv()._007_MouseModule.GetMousePos = function(...)
                    if not getgenv()._007_canUseBodyBlock() then
                        return getgenv()._007_OriginalGetMousePos(...)
                    end
                    local v14, v15 = getgenv()._007_getTargetPos()
                    if not v14 then
                        return getgenv()._007_OriginalGetMousePos(...)
                    end
                    local n007BbBehavior = getgenv()._007_bbBehavior
                    local character2 = getgenv()._007_lp.Character
                    local humanoidRootPart3 = character2 and character2:FindFirstChild("HumanoidRootPart")
                    if n007BbBehavior == "Normal" then
                        return v14
                    end

                    if n007BbBehavior == "Zigzag" then
                        local n4 = os.clock() * getgenv()._007_bbZigzagFrequency
                        local unit = humanoidRootPart3 and (v14 - humanoidRootPart3.Position).Unit or Vector3.new(0, 0, 1)
                        return v14 + Vector3.new(-unit.Z, 0, unit.X) * math.sin(n4) * getgenv()._007_bbZigzagAmplitude
                    end

                    if n007BbBehavior == "Run Away" then
                        if not humanoidRootPart3 then
                            return v14
                        end
                        return humanoidRootPart3.Position + (humanoidRootPart3.Position - v14).Unit * getgenv()._007_bbRunDistance
                    end

                    if n007BbBehavior == "Orbit" then
                        local n4 = os.clock() * getgenv()._007_bbCircleSpeed
                        return Vector3.new(v14.X + math.cos(n4) * getgenv()._007_bbCircleRadius, v14.Y, v14.Z + math.sin(n4) * getgenv()._007_bbCircleRadius)
                    end

                    if n007BbBehavior == "Front" then
                        if v15 then
                            return v15.Position + v15.CFrame.LookVector * 2.5
                        end
                    elseif n007BbBehavior == "Back" then
                        if v15 then
                            return v15.Position - v15.CFrame.LookVector * 2.5
                        end
                    elseif n007BbBehavior == "Push" then
                        if v15 then
                            local lookVector = v15.CFrame.LookVector
                            v15.AssemblyLinearVelocity = v15.AssemblyLinearVelocity + lookVector * 80
                            return v15.Position - lookVector * 1.5
                        end
                    elseif n007BbBehavior == "Strafe" then
                        if v15 then
                            return v15.Position + v15.CFrame.RightVector * math.sin(os.clock() * getgenv()._007_bbStrafeSpeed) * getgenv()._007_bbStrafeWidth
                        end
                    elseif n007BbBehavior == "Mirror" then
                        if v15 then
                            local assemblyLinearVelocity = v15.AssemblyLinearVelocity
                            local vector = assemblyLinearVelocity.Magnitude > 0.1 and -assemblyLinearVelocity.Unit or Vector3.new(0, 0, 1)
                            return v15.Position + vector * 3
                        end
                    elseif n007BbBehavior == "Aggressive" then
                        if v15 and humanoidRootPart3 then
                            return v15.Position - (v15.Position - humanoidRootPart3.Position).Unit * getgenv()._007_bbAggressiveOffset
                        end
                    elseif n007BbBehavior == "Intercept" and v15 then
                        return v15.Position + v15.AssemblyLinearVelocity * getgenv()._007_bbInterceptPrediction
                    end

                    return v14
                end
            end
        end

        local worldModel2 = Instance.new("WorldModel")
        local clone2 = game:GetService("ReplicatedStorage").Assets.Survivors["007n7"].Rig:Clone()
        clone2.Name = "CloneModel"

        for i, descendant in ipairs(clone2:GetDescendants()) do
            if descendant:IsA("BasePart") then
                if descendant.Name == "HumanoidRootPart" then
                    descendant.Anchored = true
                    descendant.Transparency = 1
                else
                    descendant.Anchored = false
                end
            end
        end

        clone2:PivotTo(CFrame.new(-3, 1.4, 0) * CFrame.Angles(0, math.rad(-90), 0))
        clone2.Parent = worldModel2
        local clone3 = game:GetService("ReplicatedStorage").Assets.Killers.Slasher.Rig:Clone()
        clone3.Name = "KillerModel"

        for i, descendant in ipairs(clone3:GetDescendants()) do
            if descendant:IsA("BasePart") then
                if descendant.Name == "HumanoidRootPart" then
                    descendant.Anchored = true
                    descendant.Transparency = 1
                else
                    descendant.Anchored = false
                end
            end
        end

        clone3:PivotTo(CFrame.new(0, 1.4, 0) * CFrame.Angles(0, math.rad(-90), 0))
        clone3.Parent = worldModel2

        v13:AddViewport(fn(), {
            Object = worldModel2,
            Interactive = false,
            Height = 260,
            AutoFocus = false,
        })

        task.spawn(function()
            local v14 = nil
            local n4 = os.clock() + 6

            repeat
                task.wait(0.1)

                for i, descendant in ipairs(game:GetService("CoreGui"):GetDescendants()) do
                    if descendant:IsA("ViewportFrame") and descendant:FindFirstChild("CloneModel", true) then
                        v14 = descendant
                        break
                    end
                end

                if not v14 then
                    for i, descendant in ipairs(game:GetService("Players").LocalPlayer.PlayerGui:GetDescendants()) do
                        if descendant:IsA("ViewportFrame") and descendant:FindFirstChild("CloneModel", true) then
                            v14 = descendant
                            break
                        end
                    end
                end
            until v14 or n4 < os.clock()

            if not v14 then
                return
            end
            local currentCamera = v14.CurrentCamera

            if currentCamera then
                currentCamera.CFrame = CFrame.new(Vector3.new(0, 2.5, 7), Vector3.new(0, 1.5, 0))
            end

            local cloneModel = v14:FindFirstChild("CloneModel", true)
            local killerModel = v14:FindFirstChild("KillerModel", true)
            local v15 = nil
            local v16 = nil

            if cloneModel then
                local humanoid2 = cloneModel:FindFirstChildOfClass("Humanoid")
                local humanoid3 = humanoid2 or cloneModel:FindFirstChild("Humanoid", true)

                if humanoid3 then
                    local animator = humanoid3:FindFirstChildOfClass("Animator")
                    local animator2 = animator or Instance.new("Animator", humanoid3)
                    local animation = Instance.new("Animation")
                    animation.AnimationId = "rbxassetid://131082534135875"
                    v15 = animator2:LoadAnimation(animation)
                    v15.Looped = true
                    local animation2 = Instance.new("Animation")
                    animation2.AnimationId = "rbxassetid://136252471123500"
                    v16 = animator2:LoadAnimation(animation2)
                    v16.Looped = true
                    v15:Play()
                end
            end

            if killerModel then
                local humanoid2 = killerModel:FindFirstChildOfClass("Humanoid")
                local humanoid3 = humanoid2 or killerModel:FindFirstChild("Humanoid", true)

                if humanoid3 then
                    local animator = humanoid3:FindFirstChildOfClass("Animator")
                    local animator2 = animator or Instance.new("Animator", humanoid3)
                    local animation = Instance.new("Animation")
                    animation.AnimationId = "rbxassetid://116050994905421"
                    local v17 = animator2:LoadAnimation(animation)
                    v17.Looped = true
                    v17:Play()
                end
            end

            local n5 = 0
            local flag5 = false

            game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
                n5 = n5 + deltaTime * 1.5
                local n007BbBehavior = getgenv()._007_bbBehavior
                local str = n007BbBehavior or "Normal"
                local cloneModel2 = v14:FindFirstChild("CloneModel", true)
                local killerModel2 = v14:FindFirstChild("KillerModel", true)
                if not cloneModel2 or not killerModel2 then
                    return
                end
                local humanoidRootPart3 = killerModel2:FindFirstChild("HumanoidRootPart", true)
                if not humanoidRootPart3 then
                    return
                end
                local position = humanoidRootPart3.Position
                local lookVector = humanoidRootPart3.CFrame.LookVector
                local rightVector = humanoidRootPart3.CFrame.RightVector
                local cframe = CFrame.Angles(0, math.rad(-90), 0)
                local flag6

                if str == "Orbit" then
                    cloneModel2:PivotTo(CFrame.new(position + Vector3.new(math.cos(n5) * 2.8, 0, math.sin(n5) * 2.8)) * cframe)
                    flag6 = true
                elseif str == "Zigzag" then
                    local vector = Vector3.new(-lookVector.Z, 0, lookVector.X)
                    cloneModel2:PivotTo(CFrame.new(position + lookVector * 2.5 + vector * math.sin(n5 * 3) * 2) * cframe)
                    flag6 = true
                elseif str == "Run Away" then
                    cloneModel2:PivotTo(CFrame.new(position + lookVector * (2.5 + math.sin(n5 * 2) * 2.5)) * cframe)
                    flag6 = true
                elseif str == "Front" then
                    cloneModel2:PivotTo(CFrame.new(position + lookVector * 2.5) * cframe)
                    flag6 = false
                elseif str == "Back" then
                    cloneModel2:PivotTo(CFrame.new(position - lookVector * 2.5) * cframe)
                    flag6 = false
                elseif str == "Push" then
                    cloneModel2:PivotTo(CFrame.new(position - lookVector * (1.5 + math.abs(math.sin(n5 * 3)) * 3)) * cframe)
                    flag6 = true
                elseif str == "Strafe" then
                    cloneModel2:PivotTo(CFrame.new(position + rightVector * math.sin(n5) * 2.5) * cframe)
                    flag6 = true
                elseif str == "Aggressive" then
                    cloneModel2:PivotTo(CFrame.new(position + lookVector * (0.5 + math.abs(math.sin(n5 * 4)) * 0.5) + rightVector * math.sin(n5 * 5) * 0.6) * cframe)
                    flag6 = true
                elseif str == "Intercept" then
                    cloneModel2:PivotTo(CFrame.new(position + lookVector * 2 + rightVector * math.cos(n5) * 2) * cframe)
                    flag6 = true
                else
                    cloneModel2:PivotTo(CFrame.new(position + Vector3.new(-3, 0, 0)) * cframe)
                    flag6 = false
                end

                if flag6 ~= flag5 then
                    flag5 = flag6

                    if v15 and v16 then
                        if flag6 then
                            v15:Stop(0)
                            v16:Play(0)
                        else
                            v16:Stop(0)
                            v15:Play(0)
                        end
                    end
                end
            end)
        end)

        v13:AddCheckbox(fn(), {
            Text = "Enable BodyBlock",
            Default = false,
            Callback = function(arg)
                if arg then
                    local n007UpdateBodyBlock = getgenv()._007_updateBodyBlock
                    local n007CurrentTargetMode = getgenv()._007_currentTargetMode ~= "Disabled" and getgenv()._007_currentTargetMode or "Killers"
                    n007UpdateBodyBlock(n007CurrentTargetMode)
                else
                    getgenv()._007_updateBodyBlock("Disabled")
                end
            end,
        })

        v13:AddDropdown(fn(), {
            Text = "BodyBlock Target",
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
                "Closest To Cursor",
            },
            Default = 1,
            Callback = function(arg)
                getgenv()._007_updateBodyBlock(arg)
            end,
        })

        v13:AddDropdown(fn(), {
            Text = "BodyBlock Behavior",
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
                "Intercept",
            },
            Default = 1,
            Callback = function(n007BbBehavior)
                getgenv()._007_bbBehavior = n007BbBehavior
                getgenv()._007_updateBodyBlock(getgenv()._007_currentTargetMode)
            end,
        })

        task.spawn(function()
            task.wait(0.6)

            if getgenv()._007_currentTargetMode and getgenv()._007_currentTargetMode ~= "Disabled" then
                getgenv()._007_updateBodyBlock(getgenv()._007_currentTargetMode)
            end
        end)
    end)

    local ReplicatedStorage4 = game:GetService("ReplicatedStorage")
    local localPlayer6 = game:GetService("Players").LocalPlayer

    if not getgenv().DusekkarHookInitialized then
        getgenv().DusekkarHookInitialized = true
        getgenv().DusekkarProtectionActive = false
        local v14 = nil

        v14 = hookmetamethod(game, "__namecall", newcclosure(function(arg, ...)
            local v15 = getnamecallmethod()
            local tbl7 = {...}

            if getgenv().DusekkarProtectionActive and v15 == "FireServer" then
                local name = localPlayer6.Name
                if type(tbl7[1]) == "string" and tbl7[1] == name .. "DusekkarCancel" then
                    return
                end
            end

            return v14(arg, ...)
        end))
    end

    getgenv().EnableDusekkarProtection = function()
        getgenv().DusekkarProtectionActive = true

        task.spawn(function()
            task.wait(4)

            pcall(function()
                ReplicatedStorage4:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer({localPlayer6.Name .. "DusekkarCancel"})
            end)
        end)
    end

    getgenv().DisableDusekkarProtection = function()
        getgenv().DusekkarProtectionActive = false
    end

    Dusekkar:AddCheckbox(fn(), {
        Text = "Anti-Cancelled Protection",
        Default = false,
        Callback = function(arg)
            if arg then
                getgenv().EnableDusekkarProtection()
            else
                getgenv().DisableDusekkarProtection()
            end
        end,
    })

    getgenv().DusekkarInfiniteRangeEnabled = false

    Dusekkar:AddCheckbox(fn(), {
        Text = "Infinite Range Protection",
        Default = false,
        Callback = function(dusekkarInfiniteRangeEnabled)
            getgenv().DusekkarInfiniteRangeEnabled = dusekkarInfiniteRangeEnabled

            if dusekkarInfiniteRangeEnabled then
                pcall(function()
                    local Config = require(ReplicatedStorage4.Assets.Survivors.Dusekkar.Config)
                    local origSpawnDist = Config._origSpawnDist
                    local spawnProtectionEffectMaxDistance = origSpawnDist or Config.SpawnProtectionEffectMaxDistance
                    Config._origSpawnDist = spawnProtectionEffectMaxDistance
                    local origBeamRange = Config._origBeamRange
                    local plasmaBeamHitboxRange = origBeamRange or Config.PlasmaBeamHitboxRange
                    Config._origBeamRange = plasmaBeamHitboxRange
                    Config.SpawnProtectionEffectMaxDistance = math.huge
                    Config.PlasmaBeamHitboxRange = math.huge
                end)
            else
                pcall(function()
                    local Config = require(ReplicatedStorage4.Assets.Survivors.Dusekkar.Config)
                    local origSpawnDist = Config._origSpawnDist
                    local spawnProtectionEffectMaxDistance = origSpawnDist or 100
                    Config.SpawnProtectionEffectMaxDistance = spawnProtectionEffectMaxDistance
                    local origBeamRange = Config._origBeamRange
                    local plasmaBeamHitboxRange = origBeamRange or 100
                    Config.PlasmaBeamHitboxRange = plasmaBeamHitboxRange
                end)
            end
        end,
    })

    getgenv().DusekkarWallbangEnabled = false
    getgenv().DusekkarWallbangHook = nil

    Dusekkar:AddCheckbox(fn(), {
        Text = "Protection Wallbang",
        Default = false,
        Callback = function(dusekkarWallbangEnabled)
            if dusekkarWallbangEnabled then
                if not getgenv().DusekkarWallbangHook then
                    getgenv().DusekkarWallbangHook = hookfunction(require(game:GetService("ReplicatedStorage").Modules.Util).IsOnScreen, function()
                        return true
                    end)
                end
            elseif getgenv().DusekkarWallbangHook then
                hookfunction(require(game:GetService("ReplicatedStorage").Modules.Util).IsOnScreen, getgenv().DusekkarWallbangHook)
                getgenv().DusekkarWallbangHook = nil
            end

            getgenv().DusekkarWallbangEnabled = dusekkarWallbangEnabled
        end,
    })

    local Blatant = v:AddTab("Blatant", "zap", "blatant cheats")
    local v14 = Blatant:AddLeftTabbox()
    local Rage = v14:AddTab("Rage")
    local Soft = v14:AddTab("Soft")
    local v15 = Blatant:AddRightTabbox()
    local Obstacles = v15:AddTab("Obstacles")
    local v16 = v15:AddTab("Smooth Turning")

    task.spawn(function()
        local RunService3 = game:GetService("RunService")
        local localPlayer7 = game.Players.LocalPlayer

        getgenv().DPAnimIDs = {
            ["rbxassetid://133363345661032"] = true,
            ["rbxassetid://128414736976503"] = true,
            ["rbxassetid://139309647473555"] = true,
        }

        getgenv().IsUsingPursuit = function()
            local character2 = localPlayer7.Character
            if not character2 then
                return false
            end
            local humanoid2 = character2:FindFirstChild("Humanoid")
            if not humanoid2 then
                return false
            end
            local animator = humanoid2:FindFirstChild("Animator")
            if not animator then
                return false
            end

            for i, v17 in ipairs(animator:GetPlayingAnimationTracks()) do
                if v17.Animation and getgenv().DPAnimIDs[v17.Animation.AnimationId] then
                    return true
                end
            end

            return false
        end

        getgenv().DPApplyVelocity = function(arg, arg2)
            local assemblyLinearVelocity = arg.AssemblyLinearVelocity
            local magnitude = Vector3.new(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z).Magnitude
            local y = assemblyLinearVelocity.Y

            if magnitude > 1 then
                local n4 = arg2 * magnitude
                arg.AssemblyLinearVelocity = Vector3.new(n4.X, y, n4.Z)
            end

            for i, child in ipairs(arg:GetChildren()) do
                if child:IsA("AlignOrientation") then
                    child.Enabled = false
                elseif child:IsA("BodyGyro") then
                    child.MaxTorque = Vector3.new(0, 0, 0)
                    child.P = 0
                elseif child:IsA("BodyVelocity") then
                    local vector = Vector3.new(child.Velocity.X, 0, child.Velocity.Z)

                    if vector.Magnitude > 1 then
                        local n4 = arg2 * vector.Magnitude
                        child.Velocity = Vector3.new(n4.X, child.Velocity.Y, n4.Z)
                    end
                elseif child:IsA("LinearVelocity") then
                    local vector = Vector3.new(child.VectorVelocity.X, 0, child.VectorVelocity.Z)

                    if vector.Magnitude > 1 then
                        local n4 = arg2 * vector.Magnitude
                        child.VectorVelocity = Vector3.new(n4.X, child.VectorVelocity.Y, n4.Z)
                    end
                end
            end
        end

        getgenv().DemonicPursuitEnabled = false
        getgenv().DemonicPursuitConn = nil

        v16:AddCheckbox(fn(), {
            Text = "Demonic Pursuit Controller",
            Default = false,
            Callback = function(demonicPursuitEnabled)
                getgenv().DemonicPursuitEnabled = demonicPursuitEnabled

                if demonicPursuitEnabled then
                    if not getgenv().DemonicPursuitConn then
                        getgenv().DemonicPursuitConn = RunService3.Stepped:Connect(function()
                            if not getgenv().DemonicPursuitEnabled then
                                return
                            end

                            if not getgenv().IsUsingPursuit() then
                                return
                            end
                            local character2 = localPlayer7.Character
                            if not character2 or not character2.PrimaryPart then
                                return
                            end
                            local currentCamera = workspace.CurrentCamera
                            if not currentCamera then
                                return
                            end
                            local lookVector = currentCamera.CFrame.LookVector
                            local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

                            if vector.Magnitude > 0.001 then
                                getgenv().DPApplyVelocity(character2.PrimaryPart, vector.Unit)
                            end
                        end)
                    end
                elseif getgenv().DemonicPursuitConn then
                    getgenv().DemonicPursuitConn:Disconnect()
                    getgenv().DemonicPursuitConn = nil
                end
            end,
        })

        local genv5 = getgenv()
        local isChargeActive = getgenv().isChargeActive
        local isChargeActive2 = isChargeActive or false
        genv5.isChargeActive = isChargeActive2
        local genv6 = getgenv()
        local chargeConnection = getgenv().chargeConnection
        local v17 = chargeConnection or nil
        genv6.chargeConnection = v17
        local genv7 = getgenv()
        local dashSpeed = getgenv().dashSpeed
        local dashSpeed2 = dashSpeed or 50
        genv7.dashSpeed = dashSpeed2
        local genv8 = getgenv()
        local chargeControlEnabled = getgenv().chargeControlEnabled
        local chargeControlEnabled2 = chargeControlEnabled or false
        genv8.chargeControlEnabled = chargeControlEnabled2

        getgenv().stopCharge = function()
            if not getgenv().isChargeActive then
                return
            end
            getgenv().isChargeActive = false
            local character2 = localPlayer7.Character

            if character2 then
                local humanoid2 = character2:FindFirstChildOfClass("Humanoid")

                if humanoid2 then
                    humanoid2.WalkSpeed = 16
                    humanoid2.AutoRotate = true
                    humanoid2:Move(Vector3.new())
                end
            end

            if getgenv().chargeConnection then
                getgenv().chargeConnection:Disconnect()
                getgenv().chargeConnection = nil
            end
        end

        getgenv().startCharge = function(arg, arg2)
            if getgenv().isChargeActive then
                return
            end
            getgenv().isChargeActive = true

            getgenv().chargeConnection = RunService3.RenderStepped:Connect(function()
                if arg and arg2 and arg.Parent then
                    arg.WalkSpeed = getgenv().dashSpeed
                    arg.AutoRotate = false
                    local lookVector = arg2.CFrame.LookVector
                    local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

                    if vector.Magnitude > 0.01 then
                        arg:Move(vector.Unit)
                    end

                    return
                end

                getgenv().stopCharge()
            end)
        end

        local function fn16(character2)
            local humanoid2 = character2:WaitForChild("Humanoid", 5)
            local humanoidRootPart3 = character2:WaitForChild("HumanoidRootPart", 5)
            if not humanoid2 or not humanoidRootPart3 then
                return
            end

            if getgenv().chargeConnection then
                getgenv().chargeConnection:Disconnect()
                getgenv().chargeConnection = nil
            end

            getgenv().isChargeActive = false
            local speedMultipliers = character2:WaitForChild("SpeedMultipliers", 8)
            if not speedMultipliers then
                return
            end

            local function fn17()
                if not getgenv().chargeControlEnabled then
                    getgenv().stopCharge()
                    return
                end

                if speedMultipliers:FindFirstChild("Guest1337Charge") then
                    getgenv().startCharge(humanoid2, humanoidRootPart3)
                else
                    getgenv().stopCharge()
                end
            end

            fn17()
            speedMultipliers.ChildAdded:Connect(fn17)
            speedMultipliers.ChildRemoved:Connect(fn17)
        end

        if localPlayer7.Character then
            task.spawn(fn16, localPlayer7.Character)
        end

        localPlayer7.CharacterAdded:Connect(fn16)

        v16:AddCheckbox(fn(), {
            Text = "Charge Controller",
            Default = false,
            Callback = function(chargeControlEnabled3)
                getgenv().chargeControlEnabled = chargeControlEnabled3

                if not chargeControlEnabled3 then
                    getgenv().stopCharge()
                end
            end,
        })

        local flag4 = false
        local flag5 = false
        local connection8 = nil
        local humanoid2 = nil
        local humanoidRootPart3 = nil

        local function fn17(character2)
            humanoid2 = character2:WaitForChild("Humanoid")
            humanoidRootPart3 = character2:WaitForChild("HumanoidRootPart")
        end

        if localPlayer7.Character then
            fn17(localPlayer7.Character)
        end

        localPlayer7.CharacterAdded:Connect(fn17)

        local function fn18()
            if flag5 then
                return
            end
            flag5 = true

            connection8 = RunService3.RenderStepped:Connect(function()
                if not humanoid2 or not humanoidRootPart3 then
                    return
                end
                humanoid2.WalkSpeed = 60
                humanoid2.AutoRotate = false
                local lookVector = humanoidRootPart3.CFrame.LookVector
                local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

                if vector.Magnitude > 0 then
                    humanoid2:Move(vector.Unit)
                end
            end)
        end

        local function fn19()
            if not flag5 then
                return
            end
            flag5 = false

            if humanoid2 then
                humanoid2.WalkSpeed = 16
                humanoid2.AutoRotate = true
                humanoid2:Move(Vector3.new(0, 0, 0))
            end

            if connection8 then
                connection8:Disconnect()
                connection8 = nil
            end
        end

        RunService3.RenderStepped:Connect(function()
            if not flag4 then
                return
            end
            local character2 = localPlayer7.Character
            if not character2 then
                return
            end

            if character2:GetAttribute("VoidRushState") == "Dashing" then
                fn18()
            else
                fn19()
            end
        end)

        v16:AddCheckbox(fn(), {
            Text = "VoidRush Controller",
            Default = false,
            Callback = function(arg)
                flag4 = arg

                if not arg then
                    fn19()
                end
            end,
        })

        local flag6 = false
        local connection9 = nil
        local currentCamera = workspace.CurrentCamera

        v16:AddCheckbox(fn(), {
            Text = "Walkspeed Override Controller",
            Default = false,
            Callback = function(arg)
                flag6 = arg

                if arg then
                    connection9 = RunService3.Heartbeat:Connect(function()
                        local character2 = localPlayer7.Character
                        if not character2 or character2.Name ~= "c00lkidd" then
                            return
                        end
                        local humanoidRootPart4 = character2:FindFirstChild("HumanoidRootPart")
                        local humanoid3 = character2:FindFirstChildOfClass("Humanoid")
                        local linearVelocity = humanoidRootPart4 and humanoidRootPart4:FindFirstChild("LinearVelocity")
                        if not humanoidRootPart4 or not humanoid3 or not linearVelocity then
                            return
                        end
                        linearVelocity.VectorVelocity = Vector3.new(math.huge, math.huge, math.huge)
                        linearVelocity.Enabled = false
                        local lookVector = currentCamera.CFrame.LookVector
                        local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

                        if vector.Magnitude > 0 then
                            local unit = vector.Unit
                            humanoidRootPart4.Velocity = Vector3.new(unit.X * 100, humanoidRootPart4.Velocity.Y, unit.Z * 100)
                            humanoidRootPart4.CFrame = CFrame.new(humanoidRootPart4.Position, humanoidRootPart4.Position + unit)
                        end
                    end)
                elseif connection9 then
                    connection9:Disconnect()
                    connection9 = nil
                end
            end,
        })

        getgenv().TwoTimeVelocityFix = false
        getgenv().TwoTimeVelocityConn = nil

        getgenv().StartTwoTimeVelocityFix = function()
            if getgenv().TwoTimeVelocityConn then
                getgenv().TwoTimeVelocityConn:Disconnect()
            end

            getgenv().TwoTimeVelocityConn = RunService3.Heartbeat:Connect(function()
                if not getgenv().TwoTimeVelocityFix then
                    return
                end
                local character2 = localPlayer7.Character
                if not character2 or character2.Name ~= "TwoTime" then
                    return
                end
                local humanoidRootPart4 = character2:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart4 then
                    return
                end
                local linearVelocity = humanoidRootPart4:FindFirstChild("LinearVelocity")

                if linearVelocity then
                    linearVelocity.LineDirection = humanoidRootPart4.CFrame.LookVector
                end
            end)
        end

        getgenv().StopTwoTimeVelocityFix = function()
            if getgenv().TwoTimeVelocityConn then
                getgenv().TwoTimeVelocityConn:Disconnect()
                getgenv().TwoTimeVelocityConn = nil
            end
        end

        v16:AddCheckbox(fn(), {
            Text = "Crouch Stab Controller",
            Default = false,
            Callback = function(twoTimeVelocityFix)
                getgenv().TwoTimeVelocityFix = twoTimeVelocityFix

                if twoTimeVelocityFix then
                    getgenv().StartTwoTimeVelocityFix()
                else
                    getgenv().StopTwoTimeVelocityFix()
                end
            end,
        })

        getgenv().JaneDoe_HatchetVelocityFix = false
        getgenv().JaneDoe_HatchetVelocityConn = nil

        getgenv().StartJaneDoe_HatchetController = function()
            if getgenv().JaneDoe_HatchetVelocityConn then
                getgenv().JaneDoe_HatchetVelocityConn:Disconnect()
            end

            getgenv().JaneDoe_HatchetVelocityConn = RunService3.Heartbeat:Connect(function()
                if not getgenv().JaneDoe_HatchetVelocityFix then
                    return
                end
                local character2 = localPlayer7.Character
                if not character2 or character2.Name ~= "JaneDoe" then
                    return
                end
                local humanoidRootPart4 = character2:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart4 then
                    return
                end
                local linearVelocity = humanoidRootPart4:FindFirstChild("LinearVelocity")

                if linearVelocity then
                    linearVelocity.LineDirection = humanoidRootPart4.CFrame.LookVector
                end
            end)
        end

        getgenv().StopJaneDoe_HatchetController = function()
            if getgenv().JaneDoe_HatchetVelocityConn then
                getgenv().JaneDoe_HatchetVelocityConn:Disconnect()
                getgenv().JaneDoe_HatchetVelocityConn = nil
            end
        end

        v16:AddCheckbox(fn(), {
            Text = "Hatchet Controller",
            Default = false,
            Callback = function(janeDoeHatchetVelocityFix)
                getgenv().JaneDoe_HatchetVelocityFix = janeDoeHatchetVelocityFix

                if janeDoeHatchetVelocityFix then
                    getgenv().StartJaneDoe_HatchetController()
                else
                    getgenv().StopJaneDoe_HatchetController()
                end
            end,
        })
    end)

    task.spawn(function()
        local RunService3 = game:GetService("RunService")
        local localPlayer7 = game.Players.LocalPlayer
        local genv5 = getgenv()
        local vxNoliHookRules = getgenv().VX_NoliHookRules
        local vxNoliHookRules2 = vxNoliHookRules or {}
        genv5.VX_NoliHookRules = vxNoliHookRules2
        local genv6 = getgenv()
        local vxNoliOrigNamecall = getgenv().VX_NoliOrigNamecall
        local v17 = vxNoliOrigNamecall or nil
        genv6.VX_NoliOrigNamecall = v17

        if not getgenv().VX_NoliOrigNamecall then
            getgenv().VX_NoliOrigNamecall = hookmetamethod(game, "__namecall", function(arg, ...)
                local tbl7 = {...}

                if getnamecallmethod() == "FireServer" then
                    for i, vxNoliHookRule in ipairs(getgenv().VX_NoliHookRules) do
                        if (not vxNoliHookRule.remoteName or arg.Name == vxNoliHookRule.remoteName) and (not vxNoliHookRule.blockedFirstArg or tbl7[1] == vxNoliHookRule.blockedFirstArg) and vxNoliHookRule.block then
                            return
                        end
                    end
                end

                return getgenv().VX_NoliOrigNamecall(arg, ...)
            end)
        end

        Obstacles:AddCheckbox(fn(), {
            Text = "Ignore Void Rush Obstacles",
            Default = false,
            Callback = function(arg)
                local str = localPlayer7.Name .. "VoidRushCollision"

                if arg then
                    local flag4 = false

                    for i, vxNoliHookRule in ipairs(getgenv().VX_NoliHookRules) do
                        if vxNoliHookRule.remoteName == "RemoteEvent" and vxNoliHookRule.blockedFirstArg == str then
                            flag4 = true
                            break
                        end
                    end

                    if not flag4 then
                        table.insert(getgenv().VX_NoliHookRules, {
                            remoteName = "RemoteEvent",
                            blockedFirstArg = str,
                            block = true,
                        })
                    end
                else
                    for i = #getgenv().VX_NoliHookRules, 1, -1 do
                        local v18 = getgenv().VX_NoliHookRules[i]

                        if v18.remoteName == "RemoteEvent" and v18.blockedFirstArg == str then
                            table.remove(getgenv().VX_NoliHookRules, i)
                        end
                    end
                end
            end,
        })

        local connection8 = nil

        Obstacles:AddCheckbox(fn(), {
            Text = "Ignore c00lkidd Obstacles",
            Default = false,
            Callback = function(arg)
                if arg then
                    connection8 = RunService3.Heartbeat:Connect(function()
                        local character2 = localPlayer7.Character
                        if not character2 or character2.Name ~= "c00lkidd" then
                            return
                        end
                        local humanoidRootPart3 = character2:FindFirstChild("HumanoidRootPart")
                        if not humanoidRootPart3 then
                            return
                        end
                        local linearVelocity = humanoidRootPart3:FindFirstChild("LinearVelocity")
                        if not linearVelocity then
                            return
                        end
                        linearVelocity.VectorVelocity = Vector3.new(math.huge, math.huge, math.huge)
                        linearVelocity.Enabled = false
                    end)
                elseif connection8 then
                    connection8:Disconnect()
                    connection8 = nil
                end
            end,
        })

        local genv7 = getgenv()
        local vxChargeHookRules = getgenv().VX_ChargeHookRules
        local vxChargeHookRules2 = vxChargeHookRules or {}
        genv7.VX_ChargeHookRules = vxChargeHookRules2
        local genv8 = getgenv()
        local vxChargeOrigNamecall = getgenv().VX_ChargeOrigNamecall

        local v18 = vxChargeOrigNamecall or hookmetamethod(game, "__namecall", function(arg, ...)
            local tbl7 = {...}

            if getnamecallmethod() == "FireServer" then
                for i, vxChargeHookRule in ipairs(getgenv().VX_ChargeHookRules) do
                    if arg.Name == vxChargeHookRule.remoteName and tbl7[1] == vxChargeHookRule.blockedArg then
                        return
                    end
                end
            end

            return getgenv().VX_ChargeOrigNamecall(arg, ...)
        end)

        genv8.VX_ChargeOrigNamecall = v18

        getgenv().EnableChargeIgnore = function()
            local str = localPlayer7.Name .. "Guest1337Collision"

            for i, vxChargeHookRule in ipairs(getgenv().VX_ChargeHookRules) do
                if vxChargeHookRule.blockedArg == str then
                    return
                end
            end

            table.insert(getgenv().VX_ChargeHookRules, {remoteName = "RemoteEvent", blockedArg = str})
        end

        getgenv().DisableChargeIgnore = function()
            local str = localPlayer7.Name .. "Guest1337Collision"

            for i = #getgenv().VX_ChargeHookRules, 1, -1 do
                if getgenv().VX_ChargeHookRules[i].blockedArg == str then
                    table.remove(getgenv().VX_ChargeHookRules, i)
                end
            end
        end

        Obstacles:AddCheckbox(fn(), {
            Text = "Ignore Charge Obstacles",
            Default = false,
            Callback = function(arg)
                if arg then
                    getgenv().EnableChargeIgnore()
                else
                    getgenv().DisableChargeIgnore()
                end
            end,
        })
    end)

    local localPlayer7 = game:GetService("Players").LocalPlayer
    local v17 = nil
    local flag4 = false

    local function fn16(arg)
        if not arg then
            return
        end
        local humanoid2 = arg:FindFirstChildOfClass("Humanoid")
        if not humanoid2 then
            return
        end
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://75804462760596"
        v17 = humanoid2:LoadAnimation(animation)
        v17:Play()
        v17:AdjustSpeed(0)
    end

    local function fn17()
        if v17 then
            v17:Stop()
            v17 = nil
        end
    end

    Rage:AddCheckbox(fn(), {
        Text = "Invisibility",
        Default = false,
        Callback = function(arg)
            flag4 = arg

            if arg then
                if localPlayer7.Character then
                    fn16(localPlayer7.Character)
                end

                localPlayer7.CharacterAdded:Connect(function(character2)
                    task.wait(0.5)

                    if flag4 then
                        fn16(character2)
                    end
                end)
            else
                fn17()
            end
        end,
    })

    getgenv().autoDeleteShadowsTI = false
    getgenv().antiPuddleConn = nil
    getgenv().antiPuddleLastFolder = nil

    getgenv().disablePuddleParts = function(arg)
        if not arg then
            return
        end

        for k, descendant in pairs(arg:GetDescendants()) do
            if descendant:IsA("BasePart") then
                pcall(function()
                    descendant.CanTouch = false
                end)
            end
        end
    end

    getgenv().watchPuddleFolder = function(arg)
        if not arg then
            return
        end
        getgenv().disablePuddleParts(arg)

        if getgenv().antiPuddleConn then
            getgenv().antiPuddleConn:Disconnect()
            getgenv().antiPuddleConn = nil
        end

        getgenv().antiPuddleConn = arg.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("BasePart") then
                pcall(function()
                    descendant.CanTouch = false
                end)
            end
        end)
    end

    Rage:AddCheckbox(fn(), {
        Text = "Walkable John Doe Puddle",
        Default = false,
        Callback = function(autoDeleteShadowsTI)
            getgenv().autoDeleteShadowsTI = autoDeleteShadowsTI

            if autoDeleteShadowsTI then
                task.spawn(function()
                    getgenv().antiPuddleLastFolder = nil

                    while getgenv().autoDeleteShadowsTI do
                        pcall(function()
                            local name = game.Players.LocalPlayer.Name
                            local map = workspace:FindFirstChild("Map")
                            local ingame = map and workspace.Map:FindFirstChild("Ingame")
                            if not ingame then
                                return
                            end
                            local v18 = ingame:FindFirstChild(name .. "Shadows")
                            local shadows = v18 or ingame:FindFirstChild("Shadows") or ingame:FindFirstChild("JohnDoePuddles") or ingame:FindFirstChild("Puddles")

                            if shadows and shadows ~= getgenv().antiPuddleLastFolder then
                                getgenv().antiPuddleLastFolder = shadows
                                getgenv().watchPuddleFolder(shadows)
                            end

                            for k, child in pairs(ingame:GetChildren()) do
                                if child:IsA("BasePart") and (child.Name:lower():find("shadow") or child.Name:lower():find("puddle")) then
                                    pcall(function()
                                        child.CanTouch = false
                                    end)
                                elseif (child:IsA("Model") or child:IsA("Folder")) and (child.Name:lower():find("shadow") or child.Name:lower():find("puddle") or child.Name == name .. "Shadows") then
                                    getgenv().disablePuddleParts(child)
                                end
                            end
                        end)

                        task.wait(0.5)
                    end

                    if getgenv().antiPuddleConn then
                        getgenv().antiPuddleConn:Disconnect()
                        getgenv().antiPuddleConn = nil
                    end

                    getgenv().antiPuddleLastFolder = nil
                end)
            elseif getgenv().antiPuddleConn then
                getgenv().antiPuddleConn:Disconnect()
                getgenv().antiPuddleConn = nil
            end
        end,
    })

    getgenv()._antiNosPuddleEnabled = false
    getgenv()._antiNosPuddleConn = nil

    Rage:AddCheckbox(fn(), {
        Text = "Walkable Nos Puddles",
        Default = false,
        Callback = function(antiNosPuddleEnabled)
            getgenv()._antiNosPuddleEnabled = antiNosPuddleEnabled

            if antiNosPuddleEnabled then
                getgenv()._disableNosPuddleParts = function(arg)
                    if not arg then
                        return
                    end

                    for k, descendant in pairs(arg:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            pcall(function()
                                descendant.CanTouch = false
                            end)
                        end
                    end

                    if arg:IsA("BasePart") then
                        pcall(function()
                            arg.CanTouch = false
                        end)
                    end
                end

                task.spawn(function()
                    while getgenv()._antiNosPuddleEnabled do
                        pcall(function()
                            local map = workspace:FindFirstChild("Map")
                            local ingame = map and workspace.Map:FindFirstChild("Ingame")
                            if not ingame then
                                return
                            end

                            for k, child in pairs(ingame:GetChildren()) do
                                if child.Name:lower():match("puddle") then
                                    getgenv()._disableNosPuddleParts(child)

                                    if not getgenv()._antiNosPuddleConn then
                                        getgenv()._antiNosPuddleConn = child.DescendantAdded:Connect(function(descendant)
                                            if descendant:IsA("BasePart") then
                                                pcall(function()
                                                    descendant.CanTouch = false
                                                end)
                                            end
                                        end)
                                    end
                                end
                            end
                        end)

                        task.wait(0.5)
                    end

                    if getgenv()._antiNosPuddleConn then
                        getgenv()._antiNosPuddleConn:Disconnect()
                        getgenv()._antiNosPuddleConn = nil
                    end
                end)
            elseif getgenv()._antiNosPuddleConn then
                getgenv()._antiNosPuddleConn:Disconnect()
                getgenv()._antiNosPuddleConn = nil
            end
        end,
    })

    getgenv().VX_AutoEscapeHook = false
    local connection8 = nil

    Rage:AddCheckbox(fn(), {
        Text = "Auto Escape Hook",
        Default = false,
        Callback = function(vxAutoEscapeHook)
            getgenv().VX_AutoEscapeHook = vxAutoEscapeHook

            if connection8 then
                connection8:Disconnect()
                connection8 = nil
            end

            if vxAutoEscapeHook then
                local remoteEvent2 = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent")

                connection8 = game:GetService("RunService").Heartbeat:Connect(function()
                    if not getgenv().VX_AutoEscapeHook then
                        return
                    end
                    local character2 = lp.Character
                    if not character2 or not character2.Parent or character2.Parent.Name ~= "Survivors" then
                        return
                    end
                    local playerGui = lp:FindFirstChild("PlayerGui")
                    if not playerGui then
                        return
                    end
                    local temporaryUI = playerGui:FindFirstChild("TemporaryUI")
                    if not temporaryUI then
                        return
                    end

                    if not temporaryUI:FindFirstChild("QTE") then
                        return
                    end
                    local name = nil

                    for i, player_ in ipairs(game:GetService("Players"):GetPlayers()) do
                        local character3 = player_.Character
                        if character3 and character3.Parent and character3.Parent.Name == "Killers" then
                            name = player_.Name
                            break
                        end
                    end

                    if not name then
                        return
                    end

                    pcall(function()
                        remoteEvent2:FireServer(name .. "NosHookQTE", {buffer.fromstring("\001\001")})
                    end)
                end)
            end
        end,
    })

    getgenv().stabAnimIds = {"100725497418533", "106086955212611"}
    getgenv().crouchStabAnimIds = {"89448354637442", "115194624791339", "119434518007321"}

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
        "79350075778160",
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
        "108773914369470",
    }

    getgenv().hatchetAnimIds = {"111918351126361"}
    getgenv().crystalAnimIds = {"106527725058030", "139929602101552"}

    getgenv().tripwireAnimIds = {
        "97339712737072",
        "123920512025716",
        "130498773808198",
        "122093265676661",
        "77968235994360",
        "86590352475117",
        "72928066575114",
        "87925353650822",
    }

    getgenv().tripmineAnimIds = {
        "134027914413177",
        "74613365376634",
        "139478062230955",
        "104325892922988",
    }

    local function fn18()
        if not getgenv().createAnimationBlocker then
            return
        end

        if not getgenv().ghostStabber then
            getgenv().ghostStabber = getgenv().createAnimationBlocker(getgenv().stabAnimIds)
        end

        if not getgenv().ghostCrouchStabber then
            getgenv().ghostCrouchStabber = getgenv().createAnimationBlocker(getgenv().crouchStabAnimIds)
        end

        if not getgenv().ghostShooter then
            getgenv().ghostShooter = getgenv().createAnimationBlocker(getgenv().shotAnimIds)
        end

        if not getgenv().ghostSlasher then
            getgenv().ghostSlasher = getgenv().createAnimationBlocker(getgenv().slashAnimIds)
        end

        if not getgenv().ghostHatchetBlocker then
            getgenv().ghostHatchetBlocker = getgenv().createAnimationBlocker(getgenv().hatchetAnimIds)
        end

        if not getgenv().ghostCrystalBlocker then
            getgenv().ghostCrystalBlocker = getgenv().createAnimationBlocker(getgenv().crystalAnimIds)
        end

        if not getgenv().ghostTripwireBlocker then
            getgenv().ghostTripwireBlocker = getgenv().createAnimationBlocker(getgenv().tripwireAnimIds)
        end

        if not getgenv().ghostTripmineBlocker then
            getgenv().ghostTripmineBlocker = getgenv().createAnimationBlocker(getgenv().tripmineAnimIds)
        end
    end

    local function fn19(arg)
        fn18()

        for i, v18 in ipairs({
            getgenv().ghostStabber,
            getgenv().ghostCrouchStabber,
            getgenv().ghostShooter,
            getgenv().ghostSlasher,
            getgenv().ghostHatchetBlocker,
            getgenv().ghostCrystalBlocker,
            getgenv().ghostTripwireBlocker,
            getgenv().ghostTripmineBlocker,
        }) do
            if v18 then
                if arg then
                    v18:Enable()
                else
                    v18:Disable()
                end
            end
        end
    end

    Rage:AddCheckbox(fn(), {
        Text = "Ghost Abilities",
        Default = false,
        Callback = function(arg)
            fn19(arg)
        end,
    })

    local ReplicatedStorage5 = game:GetService("ReplicatedStorage")
    local localPlayer8 = game:GetService("Players").LocalPlayer

    if not getgenv().SkateFarm or not getgenv().SkateFarm.Initialized then
        getgenv().SkateFarm = {
            Enabled = false,
            LoopThread = nil,
            OldNamecall = nil,
            Connections = {},
            Initialized = true,
        }
    end

    getgenv().SkateFarm.Cleanup = function()
        if getgenv().SkateFarm.LoopThread then
            pcall(task.cancel, getgenv().SkateFarm.LoopThread)
            getgenv().SkateFarm.LoopThread = nil
        end

        if getgenv().SkateFarm.OldNamecall then
            pcall(hookmetamethod, game, "__namecall", getgenv().SkateFarm.OldNamecall)
            getgenv().SkateFarm.OldNamecall = nil
        end

        for i, connection9 in ipairs(getgenv().SkateFarm.Connections) do
            pcall(function()
                connection9:Disconnect()
            end)
        end

        getgenv().SkateFarm.Connections = {}
    end

    getgenv().SkateFarm.Start = function()
        if getgenv().SkateFarm.Enabled then
            return
        end
        getgenv().SkateFarm.Enabled = true
        getgenv().SkateFarm.Cleanup()

        getgenv().SkateFarm.OldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(arg, ...)
            if not checkcaller() and arg.Name == "RemoteEvent" and arg.Parent and arg.Parent.Name == "Network" and arg.Parent.Parent and arg.Parent.Parent.Name == "Network" and arg.Parent.Parent.Parent and arg.Parent.Parent.Parent.Name == "Modules" and getnamecallmethod() == "FireServer" then
                local tbl7 = {...}
                if typeof(tbl7[1]) == "string" and tbl7[1]:match("StopSkate$") then
                    return
                end
            end

            return getgenv().SkateFarm.OldNamecall(arg, ...)
        end))

        local character2 = localPlayer8.Character
        local result2 = character2 or localPlayer8.CharacterAdded:Wait()

        repeat
            task.wait()
        until result2.Parent and result2:FindFirstChild("Skateboard") and result2.Skateboard.Transparency == 0

        result2.Skateboard.Transparency = 1

        if result2.PrimaryPart then
            result2.PrimaryPart.Anchored = true
        end

        repeat
            task.wait()
        until result2.Parent and result2:FindFirstChild("SpeedMultipliers") and not result2.SpeedMultipliers:FindFirstChild("Sk8")

        if result2.PrimaryPart then
            result2.PrimaryPart.Anchored = false
        end

        getgenv().SkateFarm.LoopThread = task.spawn(function()
            while getgenv().SkateFarm.Enabled and result2.Parent do
                pcall(function()
                    ReplicatedStorage5.Modules.Network.Network.RemoteEvent:FireServer(localPlayer8.Name .. "SkateTrick", {})
                end)

                task.wait(0.06)
            end
        end)
    end

    getgenv().SkateFarm.Stop = function()
        getgenv().SkateFarm.Enabled = false
        getgenv().SkateFarm.Cleanup()
    end

    Rage:AddCheckbox(fn(), {
        Text = "Sk8 Farm",
        Default = false,
        Callback = function(arg)
            if arg then
                getgenv().SkateFarm.Start()
            else
                getgenv().SkateFarm.Stop()
            end
        end,
    })

    if not getgenv().SkateFarm.CharacterConn then
        getgenv().SkateFarm.CharacterConn = localPlayer8.CharacterAdded:Connect(function(character2)
            task.delay(1.5, function()
                if getgenv().SkateFarm.Enabled then
                    pcall(function()
                        local skateboard = character2:WaitForChild("Skateboard", 6)

                        if skateboard then
                            skateboard.Transparency = 1
                        end

                        if character2.PrimaryPart then
                            character2.PrimaryPart.Anchored = false
                        end
                    end)
                end
            end)
        end)

        table.insert(getgenv().SkateFarm.Connections, getgenv().SkateFarm.CharacterConn)
    end

    Rage:AddCheckbox(fn(), {
        Text = "NOS KILL ALL FARM",
        Default = false,
        Risky = true,
        Disabled = true,
        DisabledTooltip = "Patched (For Now)",
        Callback = function() end,
    })

    getgenv().BloxySpeed = {Enabled = false, Level = 2, Cooldown = 3}
    getgenv().BloxyPlayers = game:GetService("Players")
    getgenv().BloxyRS = game:GetService("ReplicatedStorage")
    getgenv().BloxyRunService = game:GetService("RunService")
    getgenv().BloxyLocalPlayer = getgenv().BloxyPlayers.LocalPlayer
    getgenv().BloxyAnimId = "rbxassetid://102123566838185"
    getgenv().BloxyStatuses = getgenv().BloxyRS.Modules.Gameplay.Statuses
    getgenv().BloxyStatusContainer = getgenv().BloxyStatuses.StatusContainer
    getgenv().BloxyStatusDisplay = getgenv().BloxyStatuses.StatusDisplay
    getgenv().BloxySchematics = getgenv().BloxyRS.Modules.Schematics
    getgenv().BloxyAnimConn = nil
    getgenv().BloxyHumanoid = nil
    getgenv().BloxyCurrentTrack = nil
    getgenv().BloxyIsBoosting = false
    getgenv().BloxyIsCooldown = false
    getgenv().BloxyIsWaiting = false

    getgenv().BloxyRoman = {
        {1000, "M"},
        {900, "CM"},
        {500, "D"},
        {400, "CD"},
        {100, "C"},
        {90, "XC"},
        {50, "L"},
        {40, "XL"},
        {10, "X"},
        {9, "IX"},
        {5, "V"},
        {4, "IV"},
        {1, "I"},
    }

    getgenv().BloxyToRoman = function(arg)
        local v18, n4, str, bloxyRoman, v19, v20, n5
        n5 = 1

        while true do
            if n5 == 1 then
                v18 = nil
                n4 = arg
                str = ""
                bloxyRoman = getgenv().BloxyRoman
                n5 = 2
            elseif n5 == 2 then
                v19, v20 = bloxyRoman(nil, v18)

                if v19 == nil then
                    n5 = 6
                else
                    n5 = 3
                end
            elseif n5 == 3 then
                v18 = v19
                n5 = 4
            elseif n5 == 4 then
                if v20[1] <= n4 then
                    n5 = 5
                else
                    n5 = 2
                end
            elseif n5 == 5 then
                str = str .. v20[2]
                n4 = n4 - v20[1]
                n5 = 4
            elseif n5 == 6 then
                return str
            end
        end
    end

    getgenv().BloxyFmtTime = function(arg)
        return string.format("%02d:%02d", math.floor(arg / 60), arg % 60)
    end

    getgenv().BloxyShowStatus = function(name, arg, arg2)
        local mainUI = getgenv().BloxyLocalPlayer.PlayerGui:FindFirstChild("MainUI")
        if not mainUI then
            return
        end
        local statusContainer = mainUI:FindFirstChild("StatusContainer")
        local clone2 = statusContainer or getgenv().BloxyStatusContainer:Clone()
        clone2.Parent = mainUI

        if clone2:FindFirstChild(name) then
            clone2[name]:Destroy()
        end

        local clone3 = getgenv().BloxyStatusDisplay:Clone()
        clone3.Name = name
        clone3.Title.Text = name .. " " .. getgenv().BloxyToRoman(arg)
        clone3.Timer.Text = getgenv().BloxyFmtTime(arg2)
        clone3.Visible = true
        clone3.Parent = clone2
        local n4 = tick() + arg2
        local connection9 = nil

        connection9 = getgenv().BloxyRunService.Heartbeat:Connect(function()
            if clone3 and clone3.Parent then
                local n5 = math.max(0, n4 - tick())
                clone3.Timer.Text = getgenv().BloxyFmtTime(n5)

                if n5 <= 0 then
                    clone3:Destroy()
                    connection9:Disconnect()
                end

                return
            end

            connection9:Disconnect()
        end)
    end

    getgenv().BloxyClick = function()
        local mainUI = getgenv().BloxyLocalPlayer.PlayerGui:FindFirstChild("MainUI")
        if not mainUI then
            return
        end
        local backpack = mainUI:FindFirstChild("Backpack")
        if not backpack then
            return
        end
        local bloxyCola = backpack:FindFirstChild("BloxyCola")
        if not bloxyCola then
            return
        end
        local v18 = getconnections(bloxyCola.MouseButton1Click)

        if v18[1] and type(v18[1].Function) == "function" then
            pcall(v18[1].Function)
        end
    end

    getgenv().BloxyReset = function()
        getgenv().BloxyIsWaiting = false
        getgenv().BloxyIsBoosting = false
        getgenv().BloxyIsCooldown = false
        getgenv().BloxyCurrentTrack = nil
    end

    getgenv().BloxyOnAnim = function()
        if not getgenv().BloxyHumanoid then
            return
        end

        for k, v18 in getgenv().BloxyHumanoid:GetPlayingAnimationTracks() do
            if v18.Animation and v18.Animation.AnimationId == getgenv().BloxyAnimId then
                if v18 == getgenv().BloxyCurrentTrack then
                    return
                end
                getgenv().BloxyCurrentTrack = v18

                if not getgenv().BloxyIsBoosting and not getgenv().BloxyIsCooldown and not getgenv().BloxyIsWaiting then
                    getgenv().BloxyIsWaiting = true
                    getgenv().BloxyShowStatus("Wait!", 1, 3.4)

                    task.delay(3.4, function()
                        if not v18.IsPlaying then
                            getgenv().BloxyReset()
                            return
                        end
                        getgenv().BloxyClick()
                        getgenv().BloxyIsWaiting = false
                        getgenv().BloxyIsBoosting = true
                        local speed = getgenv().BloxySchematics:FindFirstChild("Speed")

                        if speed then
                            local module = require(speed)

                            local tbl7 = {
                                Player = getgenv().BloxyLocalPlayer,
                                Level = getgenv().BloxySpeed.Level,
                                Data = module.Data,
                            }

                            module.Applied(tbl7)
                            getgenv().BloxyShowStatus("Speed", getgenv().BloxySpeed.Level, 10)

                            task.delay(10, function()
                                module.Removed(tbl7)
                                getgenv().BloxyIsBoosting = false
                                getgenv().BloxyIsCooldown = true
                                getgenv().BloxyShowStatus("Cooldown", 1, getgenv().BloxySpeed.Cooldown)

                                task.delay(getgenv().BloxySpeed.Cooldown, function()
                                    getgenv().BloxyIsCooldown = false
                                end)
                            end)
                        end

                        task.delay(10.5, getgenv().BloxyReset)
                    end)

                    return
                end

                task.delay(1, getgenv().BloxyClick)
                return
            end
        end
    end

    getgenv().BloxyStartLoop = function()
        if getgenv().BloxyAnimConn then
            getgenv().BloxyAnimConn:Disconnect()
        end

        getgenv().BloxyAnimConn = getgenv().BloxyRunService.Heartbeat:Connect(function()
            if getgenv().BloxyLocalPlayer.Character and getgenv().BloxyHumanoid and getgenv().BloxyHumanoid.Parent then
                getgenv().BloxyOnAnim()
            else
                getgenv().BloxyReset()
            end
        end)
    end

    getgenv().BloxyOnCharacter = function(arg)
        getgenv().BloxyReset()
        getgenv().BloxyHumanoid = arg:WaitForChild("Humanoid", 5)

        if getgenv().BloxySpeed.Enabled then
            getgenv().BloxyStartLoop()
        end
    end

    if getgenv().BloxyLocalPlayer.Character then
        getgenv().BloxyOnCharacter(getgenv().BloxyLocalPlayer.Character)
    end

    getgenv().BloxyLocalPlayer.CharacterAdded:Connect(getgenv().BloxyOnCharacter)

    Soft:AddCheckbox(fn(), {
        Text = "Unli Bloxy Cola",
        Default = false,
        Callback = function(enabled)
            getgenv().BloxySpeed.Enabled = enabled

            if enabled and getgenv().BloxyLocalPlayer.Character then
                getgenv().BloxyOnCharacter(getgenv().BloxyLocalPlayer.Character)
            elseif not enabled and getgenv().BloxyAnimConn then
                getgenv().BloxyAnimConn:Disconnect()
                getgenv().BloxyAnimConn = nil
                getgenv().BloxyReset()
            end
        end,
    })

    Soft:AddSlider(fn(), {
        Text = "Speed Level",
        Min = 1,
        Max = 20,
        Default = 2,
        Rounding = 0,
        Callback = function(arg)
            getgenv().BloxySpeed.Level = tonumber(arg)
        end,
    })

    Soft:AddSlider(fn(), {
        Text = "Cooldown",
        Min = 1,
        Max = 10,
        Default = 3,
        Rounding = 0,
        Callback = function(arg)
            getgenv().BloxySpeed.Cooldown = tonumber(arg)
        end,
    })

    local v18 = Blatant:AddRightTabbox("locate-fixed")
    local Hitbox = v18:AddTab("Hitbox")
    local Settings6 = v18:AddTab("Settings")
    local flag5 = false
    local n4 = 50
    local str = "Look"
    local str2 = "HumanoidRootPart"
    local n5 = 0
    local n6 = 1
    local connection9 = nil
    local connection10 = nil
    local RunService3 = game:GetService("RunService")
    local localPlayer9 = game:GetService("Players").LocalPlayer
    local ReplicatedStorage6 = game:GetService("ReplicatedStorage")
    local remoteEvent2 = nil

    task.spawn(function()
        remoteEvent2 = ReplicatedStorage6:WaitForChild("Modules", 10):WaitForChild("Network", 10):WaitForChild("Network", 10):WaitForChild("RemoteEvent", 10)
    end)

    local tbl7 = {
        Slash = true,
        Dagger = true,
        Charge = true,
        Punch = true,
        PlasmaBeam = true,
        Shoot = true,
        Behead = true,
        GashingWound = true,
        CorruptNature = true,
        WalkspeedOverride = true,
        Stab = true,
        VoidRush = true,
        Nova = true,
        MassInfection = true,
        Entanglement = true,
        ["Carving Slash"] = true,
        Axe = true,
    }

    local function fn20(arg)
        local character2 = localPlayer9.Character
        if not character2 then
            return
        end
        local humanoidRootPart3 = character2:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart3 then
            return
        end
        local assemblyLinearVelocity = humanoidRootPart3.AssemblyLinearVelocity
        local unit

        if str == "Nearest Survivor" then
            local v19 = nil
            local huge = math.huge
            local players = workspace:FindFirstChild("Players")
            local survivors = players and workspace.Players:FindFirstChild("Survivors")

            if survivors then
                for i, child in ipairs(survivors:GetChildren()) do
                    local humanoidRootPart4 = child:FindFirstChild("HumanoidRootPart")
                    local humanoid2 = child:FindFirstChildOfClass("Humanoid")

                    if humanoidRootPart4 and humanoid2 and humanoid2.Health > 0 then
                        local magnitude = (humanoidRootPart4.Position - humanoidRootPart3.Position).Magnitude

                        if magnitude < huge then
                            huge = magnitude
                            v19 = child
                        end
                    end
                end
            end

            if v19 then
                local v20 = v19:FindFirstChild(str2)
                local humanoidRootPart4 = v20 or v19:FindFirstChild("HumanoidRootPart")
                local position = humanoidRootPart4.Position
                local n7 = position

                if n5 > 0 then
                    n7 = position + humanoidRootPart4.AssemblyLinearVelocity * (n5 / 100)
                end

                unit = (n7 - humanoidRootPart3.Position).Unit
            else
                unit = humanoidRootPart3.CFrame.LookVector
            end
        else
            unit = humanoidRootPart3.CFrame.LookVector
        end

        humanoidRootPart3.AssemblyLinearVelocity = assemblyLinearVelocity + unit * (arg * n6)
        RunService3.RenderStepped:Wait()

        if humanoidRootPart3 and humanoidRootPart3.Parent then
            humanoidRootPart3.AssemblyLinearVelocity = assemblyLinearVelocity
        end
    end

    local function fn21()
        if connection9 then
            return
        end

        connection9 = remoteEvent2.OnClientEvent:Connect(function(arg, arg2)
            if not flag5 then
                return
            end

            if arg ~= "UseActorAbility" then
                return
            end

            if typeof(arg2) ~= "table" or not arg2[1] then
                return
            end
            local str3

            if typeof(arg2[1]) == "buffer" then
                str3 = buffer.tostring(arg2[1]):sub(6):gsub("%z", "")
            else
                str3 = tostring(arg2[1]):gsub("\"", "")
            end

            if not tbl7[str3] then
                return
            end

            if connection10 then
                connection10:Disconnect()
                connection10 = nil
            end

            local now = os.clock()

            connection10 = RunService3.Heartbeat:Connect(function()
                if os.clock() - now >= 1.5 then
                    connection10:Disconnect()
                    connection10 = nil
                    return
                end

                fn20(n4)
            end)
        end)
    end

    local function fn22()
        if connection9 then
            connection9:Disconnect()
            connection9 = nil
        end

        if connection10 then
            connection10:Disconnect()
            connection10 = nil
        end
    end

    Hitbox:AddCheckbox(fn(), {
        Text = "Hitbox Expander",
        Default = false,
        Callback = function(arg)
            flag5 = arg

            if arg then
                fn21()
            else
                fn22()
            end
        end,
    })

    Hitbox:AddSlider(fn(), {
        Text = "Hitbox Studs",
        Min = 0,
        Max = 500,
        Default = 50,
        Rounding = 0,
        Callback = function(arg)
            n4 = tonumber(arg)
        end,
    })

    Settings6:AddDropdown(fn(), {
        Text = "Lunge Direction",
        Values = {"Look", "Nearest Survivor"},
        Default = "Look",
        Callback = function(arg)
            str = arg
        end,
    })

    Settings6:AddDropdown(fn(), {
        Text = "Target Part",
        Values = {"HumanoidRootPart", "Head", "Torso"},
        Default = "HumanoidRootPart",
        Callback = function(arg)
            str2 = arg
        end,
    })

    Settings6:AddSlider(fn(), {
        Text = "Hitbox Prediction",
        Min = 0,
        Max = 100,
        Default = 0,
        Rounding = 0,
        Callback = function(arg)
            n5 = tonumber(arg)
        end,
    })

    Settings6:AddSlider(fn(), {
        Text = "Hitbox Strength",
        Min = 0.5,
        Max = 3,
        Default = 1,
        Rounding = 2,
        Callback = function(arg)
            n6 = tonumber(arg)
        end,
    })
end

do
    local v2 = v:AddTab("Auto Block", "shield", "auto block features")
    local v3 = v2:AddLeftTabbox()
    local v4 = v3:AddTab("Auto-Block")
    local Settings = v3:AddTab("Settings")
    local v5 = v2:AddRightTabbox()
    local Other = v5:AddTab("Other")
    local Techs = v5:AddTab("Techs")

    v4:AddCheckbox(fn(), {
        Text = "Auto Block",
        Default = false,
        Callback = function(autoBlockEnabled)
            getgenv().autoBlockEnabled = autoBlockEnabled

            if autoBlockEnabled then
                if getgenv().autoBlockMode == "Normal + Anti Bait" then
                    getgenv().proxBoxEnabled = true
                    getgenv().proxBoxVisible = true
                    getgenv()._proxBox_measureAll()
                end
            else
                getgenv().proxBoxEnabled = false
                getgenv().proxBoxVisible = false
                getgenv()._proxBox_cleanup()
            end
        end,
    })

    v4:AddCheckbox(fn(), {
        Text = "Auto Punch",
        Default = false,
        Callback = function(autoPunchEnabled)
            getgenv().autoPunchEnabled = autoPunchEnabled
            getgenv().AutoPunch.Enabled = autoPunchEnabled
        end,
    })

    v4:AddDivider()

    v4:AddInput(fn(), {
        Text = "Detection Range",
        Placeholder = "20",
        Callback = function(arg)
            local baseDetectionRange = tonumber(arg)

            if baseDetectionRange and baseDetectionRange >= 1 and baseDetectionRange <= 100 then
                getgenv().baseDetectionRange = baseDetectionRange
                getgenv().detectionRange = baseDetectionRange
            end
        end,
    })

    v4:AddCheckbox(fn(), {
        Text = "Show Detection Range",
        Default = false,
        Callback = function(showAutoBlockKillerRadius)
            getgenv().showAutoBlockKillerRadius = showAutoBlockKillerRadius

            if not showAutoBlockKillerRadius then
                for k, killerRadiusAdornment in pairs(getgenv().killerRadiusAdornments) do
                    if killerRadiusAdornment then
                        killerRadiusAdornment:Destroy()
                    end

                    getgenv().killerRadiusAdornments[k] = nil
                end
            end
        end,
    })

    v4:AddDivider()

    v4:AddSlider(fn(), {
        Text = "Block Delay",
        Default = 0,
        Min = 0,
        Max = 0.5,
        Rounding = 2,
        Callback = function(arg)
            local num = tonumber(arg)
            local blockDelayDuration = num or 0
            getgenv().blockDelayDuration = blockDelayDuration
            local genv = getgenv()
            local blockDelayEnabled = blockDelayDuration > 0
            genv.blockDelayEnabled = blockDelayEnabled
        end,
    })

    v4:AddSlider(fn(), {
        Text = "Punch Delay",
        Default = 0,
        Min = 0,
        Max = 0.5,
        Rounding = 2,
        Callback = function(arg)
            local autoPunch = getgenv().AutoPunch
            local num = tonumber(arg)
            local cooldown = num or 0
            autoPunch.Cooldown = cooldown
        end,
    })

    v4:AddDropdown(fn(), {
        Text = "Range Mode",
        Values = {"Inside", "Inside/Outside"},
        Default = "Inside/Outside",
        Callback = function(autoBlockRangeMode)
            getgenv().autoBlockRangeMode = autoBlockRangeMode
        end,
    })

    getgenv().proxBoxColor = Color3.fromRGB(255, 60, 60)
    getgenv().proxBoxMaterial = Enum.Material.ForceField
    getgenv().proxBoxZoneMode = "Part In Zone"
    getgenv().proxBoxOffset = 2.5
    getgenv().proxBoxDepthMult = 10
    getgenv().proxBoxWidthMult = 10
    getgenv().proxBoxHeightMult = 8
    getgenv().proxBoxTransparency = 0.1

    Settings:AddDropdown(fn(), {
        Text = "Block Mode",
        Values = {"Normal", "Normal + Anti Bait"},
        Default = "Normal",
        Callback = function(autoBlockMode)
            getgenv().autoBlockMode = autoBlockMode

            if autoBlockMode == "Normal + Anti Bait" then
                if getgenv().autoBlockEnabled then
                    getgenv().proxBoxEnabled = true
                    getgenv().proxBoxVisible = true
                    getgenv()._proxBox_measureAll()
                end
            else
                getgenv().proxBoxEnabled = false
                getgenv().proxBoxVisible = false
                getgenv()._proxBox_cleanup()
            end
        end,
    })

    Settings:AddDropdown(fn(), {
        Text = "Zone Mode (ANTI BAIT)",
        Values = {"Part In Zone", "Full Body In Zone"},
        Default = "Part In Zone",
        Callback = function(proxBoxZoneMode)
            getgenv().proxBoxZoneMode = proxBoxZoneMode
        end,
    })

    Settings:AddSlider(fn(), {
        Text = "Depth Multiplier (ANTI BAIT)",
        Default = 10,
        Min = 0.1,
        Max = 30,
        Rounding = 2,
        Callback = function(arg)
            getgenv().proxBoxDepthMult = tonumber(arg)
        end,
    })

    Settings:AddSlider(fn(), {
        Text = "Width Multiplier (ANTI BAIT)",
        Default = 10,
        Min = 0.5,
        Max = 30,
        Rounding = 1,
        Callback = function(arg)
            getgenv().proxBoxWidthMult = tonumber(arg)
        end,
    })

    Settings:AddSlider(fn(), {
        Text = "Transparency (ANTI BAIT)",
        Default = 0.1,
        Min = 0.05,
        Max = 0.95,
        Rounding = 2,
        Callback = function(arg)
            getgenv().proxBoxTransparency = tonumber(arg)
        end,
    })

    Settings:AddDivider()

    Techs:AddCheckbox(fn(), {
        Text = "HDT",
        Default = false,
        Callback = function(hitboxDraggingEnabled)
            getgenv().hitboxDraggingEnabled = hitboxDraggingEnabled

            if not hitboxDraggingEnabled then
                for k in pairs(getgenv().activeHDT) do
                    getgenv().activeHDT[k] = nil
                end

                local character = getgenv().lp.Character
                local humanoidRootPart = character and getgenv().lp.Character:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart then
                    getgenv().setHRPVelocitySafe(humanoidRootPart, Vector3.zero)
                end
            end
        end,
    })

    Techs:AddInput(fn(), {
        Text = "HDT Speed",
        Placeholder = "5.6",
        Callback = function(arg)
            local dspeed = tonumber(arg)

            if dspeed and dspeed >= 1 and dspeed <= 20 then
                getgenv().Dspeed = dspeed
            end
        end,
    })

    Techs:AddInput(fn(), {
        Text = "HDT Delay",
        Placeholder = "0.3",
        Callback = function(arg)
            local ddelay = tonumber(arg)

            if ddelay and ddelay >= 0 then
                getgenv().Ddelay = ddelay
            end
        end,
    })

    Techs:AddInput(fn(), {
        Text = "HDT Detection Range",
        Placeholder = "6",
        Callback = function(arg)
            local hdtDetectRadius = tonumber(arg)

            if hdtDetectRadius and hdtDetectRadius >= 3 and hdtDetectRadius <= 50 then
                getgenv().HDT_DETECT_RADIUS = hdtDetectRadius
            end
        end,
    })

    Settings:AddCheckbox(fn(), {
        Text = "Facing Check",
        Default = false,
        Callback = function(verifyFacingCheck)
            getgenv().verifyFacingCheck = verifyFacingCheck
        end,
    })

    Settings:AddCheckbox(fn(), {
        Text = "Show Facing Check",
        Default = false,
        Callback = function(showVisionRange)
            getgenv().showVisionRange = showVisionRange

            if not showVisionRange then
                getgenv().cleanupVisionCone()
            end
        end,
    })

    Settings:AddSlider(fn(), {
        Text = "Vision Range",
        Default = 15,
        Min = 5,
        Max = 30,
        Rounding = 0,
        Callback = function(arg)
            getgenv().visionRange = tonumber(arg)
        end,
    })

    Settings:AddSlider(fn(), {
        Text = "Vision Angle",
        Default = 90,
        Min = 30,
        Max = 180,
        Rounding = 0,
        Callback = function(arg)
            getgenv().visionAngle = tonumber(arg)
        end,
    })

    Settings:AddDivider()
    local genv = getgenv()
    local wallCheckESPEnabled = getgenv().wallCheckESPEnabled
    local wallCheckESPEnabled2 = wallCheckESPEnabled or false
    genv.wallCheckESPEnabled = wallCheckESPEnabled2
    local genv2 = getgenv()
    local wallCheckESPConn = getgenv().wallCheckESPConn
    local v6 = wallCheckESPConn or nil
    genv2.wallCheckESPConn = v6
    local genv3 = getgenv()
    local wallCheckBeam = getgenv().wallCheckBeam
    local v7 = wallCheckBeam or nil
    genv3.wallCheckBeam = v7
    local genv4 = getgenv()
    local wallCheckBeamA0 = getgenv().wallCheckBeamA0
    local v8 = wallCheckBeamA0 or nil
    genv4.wallCheckBeamA0 = v8
    local genv5 = getgenv()
    local wallCheckBeamA1 = getgenv().wallCheckBeamA1
    local v9 = wallCheckBeamA1 or nil
    genv5.wallCheckBeamA1 = v9
    local genv6 = getgenv()
    local wallCheckSavedBrickColor = getgenv().wallCheckSavedBrickColor
    local v10 = wallCheckSavedBrickColor or nil
    genv6.wallCheckSavedBrickColor = v10
    local genv7 = getgenv()
    local wallCheckSelectMode = getgenv().wallCheckSelectMode
    local wallCheckSelectMode2 = wallCheckSelectMode or false
    genv7.wallCheckSelectMode = wallCheckSelectMode2
    local genv8 = getgenv()
    local wallCheckMouseConn = getgenv().wallCheckMouseConn
    local v11 = wallCheckMouseConn or nil
    genv8.wallCheckMouseConn = v11

    getgenv().isWallBlocking = function()
        local character = game.Players.LocalPlayer.Character
        if not character then
            return nil
        end
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart then
            return nil
        end
        local players = getgenv().Workspace:FindFirstChild("Players")
        local killers = players and players:FindFirstChild("Killers")
        local v12 = killers
        if not killers then
            return nil
        end
        local huge = math.huge
        local v13 = nil

        for i, child in ipairs(v12:GetChildren()) do
            local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart2 then
                local magnitude = (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude

                if magnitude < huge then
                    huge = magnitude
                    v13 = humanoidRootPart2
                end
            end
        end

        if not v13 then
            return nil
        end
        local raycastParams = RaycastParams.new()
        raycastParams.FilterDescendantsInstances = {character, v12}
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
        raycastParams.IgnoreWater = true
        local flag = getgenv().Workspace:Raycast(humanoidRootPart.Position, v13.Position - humanoidRootPart.Position, raycastParams) ~= nil
        return flag
    end

    getgenv().createWallCheckBeam = function()
        if getgenv().wallCheckBeam then
            return
        end
        local character = game.Players.LocalPlayer.Character
        if not character then
            return
        end
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart then
            return
        end
        local players = getgenv().Workspace:FindFirstChild("Players")
        local killers = players and players:FindFirstChild("Killers")
        local v12 = killers
        if not killers then
            return
        end
        local huge = math.huge
        local v13 = nil

        for i, child in ipairs(v12:GetChildren()) do
            local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart2 then
                local magnitude = (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude

                if magnitude < huge then
                    huge = magnitude
                    v13 = humanoidRootPart2
                end
            end
        end

        if not v13 then
            return
        end
        local attachment = Instance.new("Attachment")
        local attachment2 = Instance.new("Attachment")
        attachment.Parent = humanoidRootPart
        attachment2.Parent = v13
        local beam = Instance.new("Beam")
        beam.Attachment0 = attachment
        beam.Attachment1 = attachment2
        beam.Width0 = 0.1
        beam.Width1 = 0.1
        beam.FaceCamera = true
        beam.Color = ColorSequence.new(Color3.fromRGB(0, 255, 0))
        beam.Parent = getgenv().Workspace
        getgenv().wallCheckBeam = beam
        getgenv().wallCheckBeamA0 = attachment
        getgenv().wallCheckBeamA1 = attachment2
    end

    getgenv().destroyWallCheckBeam = function()
        if getgenv().wallCheckBeam then
            getgenv().wallCheckBeam:Destroy()
            getgenv().wallCheckBeam = nil
        end

        if getgenv().wallCheckBeamA0 then
            getgenv().wallCheckBeamA0:Destroy()
            getgenv().wallCheckBeamA0 = nil
        end

        if getgenv().wallCheckBeamA1 then
            getgenv().wallCheckBeamA1:Destroy()
            getgenv().wallCheckBeamA1 = nil
        end
    end

    getgenv().startWallCheckESP = function()
        if getgenv().wallCheckESPConn then
            return
        end

        getgenv().wallCheckESPConn = game:GetService("RunService").RenderStepped:Connect(function()
            if not getgenv().wallCheckESPEnabled then
                return
            end
            getgenv().createWallCheckBeam()
            local wallCheckBeam2 = getgenv().wallCheckBeam
            if not wallCheckBeam2 then
                return
            end
            local v12 = getgenv().isWallBlocking()

            if v12 == nil then
                getgenv().destroyWallCheckBeam()
            elseif v12 then
                wallCheckBeam2.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
            else
                wallCheckBeam2.Color = ColorSequence.new(Color3.fromRGB(0, 255, 0))
            end
        end)
    end

    getgenv().stopWallCheckESP = function()
        if getgenv().wallCheckESPConn then
            getgenv().wallCheckESPConn:Disconnect()
            getgenv().wallCheckESPConn = nil
        end

        getgenv().destroyWallCheckBeam()
    end

    Settings:AddCheckbox(fn(), {
        Text = "Wall Check",
        Default = false,
        Callback = function(autoBlockLOS)
            getgenv().autoBlockLOS = autoBlockLOS
        end,
    })

    Settings:AddCheckbox(fn(), {
        Text = "Wall Check ESP",
        Default = false,
        Callback = function(wallCheckESPEnabled3)
            getgenv().wallCheckESPEnabled = wallCheckESPEnabled3

            if wallCheckESPEnabled3 then
                getgenv().startWallCheckESP()
            else
                getgenv().stopWallCheckESP()
            end
        end,
    })

    Settings:AddDivider()
    Settings:AddLabel("<font color=\"#add8e6\">If the killer is higher than your character and uses M1 it wont block so you wont waste your ability</font>", true)

    Settings:AddCheckbox(fn(), {
        Text = "High Elevation Check",
        Default = false,
        Callback = function(elevationCheckEnabled)
            getgenv().elevationCheckEnabled = elevationCheckEnabled
        end,
    })

    Settings:AddDivider()

    Settings:AddCheckbox(fn(), {
        Text = "Zone if killer walks",
        Default = false,
        Callback = function(antiBaitWalkEnabled)
            getgenv().antiBaitWalkEnabled = antiBaitWalkEnabled
        end,
    })

    Settings:AddCheckbox(fn(), {
        Text = "Zone if killer stands",
        Default = false,
        Callback = function(antiBaitIdleEnabled)
            getgenv().antiBaitIdleEnabled = antiBaitIdleEnabled
        end,
    })

    Settings:AddSlider(fn(), {
        Text = "Stand Zone Range",
        Default = 18,
        Min = 1,
        Max = 100,
        Rounding = 0,
        Callback = function(arg)
            getgenv().antiBaitIdleRange = tonumber(arg)
        end,
    })

    Settings:AddSlider(fn(), {
        Text = "Walk Zone Range",
        Default = 18,
        Min = 1,
        Max = 100,
        Rounding = 0,
        Callback = function(arg)
            getgenv().antiBaitWalkRange = tonumber(arg)
        end,
    })

    getgenv().blockAnimIds = {
        "98105697395689",
        "115706752305794",
        "72182155407310",
        "95802026624883",
        "96959123077498",
        "72722244508749",
        "138407964761603",
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
        "72685103823181",
    }

    getgenv().createAnimationBlocker = function(arg)
        local flag = false
        local tbl = {}

        for i, v12 in ipairs(arg) do
            tbl[tostring(v12)] = true
        end

        local tbl2 = {}
        local tbl3 = {}

        local function fn2(arg2)
            if not arg2 or not arg2.Animation then
                return false
            end
            local match = tostring(arg2.Animation.AnimationId):match("%d+")
            local flag2 = match ~= nil and tbl[match] == true
            return flag2
        end

        local function fn3(arg2)
            if not flag then
                return
            end

            pcall(function()
                if fn2(arg2) then
                    arg2:Stop(0)
                end
            end)

            task.defer(function()
                if flag and fn2(arg2) then
                    pcall(function()
                        arg2:Stop(0)
                    end)
                end
            end)
        end

        local function fn4()
            for i, v12 in ipairs(tbl2) do
                pcall(function()
                    v12:Disconnect()
                end)
            end

            tbl2 = {}
        end

        local function fn5(arg2)
            fn4()
            if not arg2 then
                return
            end
            local humanoid = arg2:WaitForChild("Humanoid", 8)
            if not humanoid then
                return
            end
            local animator = humanoid:FindFirstChildOfClass("Animator")
            local animator2 = animator or Instance.new("Animator", humanoid)
            table.insert(tbl2, animator2.AnimationPlayed:Connect(fn3))

            if flag then
                for i, v12 in ipairs(animator2:GetPlayingAnimationTracks()) do
                    fn3(v12)
                end
            end

            table.insert(tbl2, arg2:GetAttributeChangedSignal("SkinName"):Connect(function()
                task.wait(0.3);
                (nil)(arg2)
            end))
        end

        local tbl4 = {}

        tbl4.Enable = function()
            flag = true
            local character = player.Character

            if character then
                fn5(character)
            end

            if not tbl4._charConn then
                tbl4._charConn = player.CharacterAdded:Connect(function(character2)
                    task.wait(0.3)
                    fn5(character2)
                end)

                table.insert(tbl3, tbl4._charConn)
            end
        end

        tbl4.Disable = function()
            flag = false
        end

        tbl4.IsEnabled = function()
            return flag
        end

        tbl4.AddId = function(arg2)
            local match = tostring(arg2):match("%d+")
            local str = match or ""

            if str ~= "" then
                tbl[str] = true
            end

            if flag and player.Character then
                fn5(player.Character)
            end
        end

        tbl4.Destroy = function()
            fn4()

            for i, v12 in ipairs(tbl3) do
                pcall(function()
                    v12:Disconnect()
                end)
            end

            tbl3 = {}
            flag = false
        end

        return tbl4
    end

    getgenv().ghostBlocker = getgenv().createAnimationBlocker(getgenv().blockAnimIds)
    getgenv().ghostPuncher = getgenv().createAnimationBlocker(getgenv().punchAnimIds)

    Other:AddCheckbox(fn(), {
        Text = "Ghost Block",
        Default = false,
        Callback = function(arg)
            if arg then
                getgenv().ghostBlocker:Enable()
            else
                getgenv().ghostBlocker:Disable()
            end
        end,
    })

    Other:AddCheckbox(fn(), {
        Text = "Ghost Punch",
        Default = false,
        Callback = function(arg)
            if arg then
                getgenv().ghostPuncher:Enable()
            else
                getgenv().ghostPuncher:Disable()
            end
        end,
    })

    Other:AddDivider()
    local genv9 = getgenv()
    local pingGuiEnabled = getgenv().pingGuiEnabled
    local pingGuiEnabled2 = pingGuiEnabled or false
    genv9.pingGuiEnabled = pingGuiEnabled2
    local genv10 = getgenv()
    local pingGuiScreenGui = getgenv().pingGuiScreenGui
    local v12 = pingGuiScreenGui or nil
    genv10.pingGuiScreenGui = v12
    local genv11 = getgenv()
    local pingGuiConnection = getgenv().pingGuiConnection
    local v13 = pingGuiConnection or nil
    genv11.pingGuiConnection = v13

    getgenv().createPingGui = function()
        if getgenv().pingGuiScreenGui then
            return
        end
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "PingDisplay"
        screenGui.ResetOnSpawn = false
        screenGui.IgnoreGuiInset = true
        screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(0, 110, 0, 38)
        frame.Position = UDim2.new(1, -128, 0, 28)
        frame.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
        frame.BackgroundTransparency = 0.35
        frame.BorderSizePixel = 0
        frame.Parent = screenGui
        local uiCorner = Instance.new("UICorner")
        uiCorner.CornerRadius = UDim.new(0, 12)
        uiCorner.Parent = frame
        local uiStroke = Instance.new("UIStroke")
        uiStroke.Color = Color3.fromRGB(100, 100, 255)
        uiStroke.Thickness = 1.5
        uiStroke.Transparency = 0.6
        uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        uiStroke.Parent = frame
        local uiGradient = Instance.new("UIGradient")

        uiGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 70)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 40)),
        })

        uiGradient.Rotation = 90
        uiGradient.Parent = frame
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, -12, 1, -8)
        textLabel.Position = UDim2.new(0, 6, 0, 4)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = "Ping: --- ms"
        textLabel.TextColor3 = Color3.fromRGB(220, 220, 255)
        textLabel.Font = Enum.Font.GothamBold
        textLabel.TextSize = 16
        textLabel.TextXAlignment = Enum.TextXAlignment.Center
        textLabel.TextYAlignment = Enum.TextYAlignment.Center
        textLabel.Parent = frame
        getgenv().pingGuiScreenGui = screenGui

        getgenv().pingGuiConnection = game:GetService("RunService").Heartbeat:Connect(function()
            local v14 = math.round(game.Players.LocalPlayer:GetNetworkPing() * 1000)
            textLabel.Text = "Ping: " .. v14 .. " ms"

            if v14 <= 80 then
                textLabel.TextColor3 = Color3.fromRGB(80, 255, 120)
                uiStroke.Color = Color3.fromRGB(80, 255, 120)
            elseif v14 <= 150 then
                textLabel.TextColor3 = Color3.fromRGB(255, 220, 80)
                uiStroke.Color = Color3.fromRGB(255, 220, 80)
            else
                textLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
                uiStroke.Color = Color3.fromRGB(255, 80, 80)
            end
        end)
    end

    getgenv().destroyPingGui = function()
        if getgenv().pingGuiConnection then
            getgenv().pingGuiConnection:Disconnect()
            getgenv().pingGuiConnection = nil
        end

        if getgenv().pingGuiScreenGui then
            getgenv().pingGuiScreenGui:Destroy()
            getgenv().pingGuiScreenGui = nil
        end
    end

    Other:AddCheckbox(fn(), {
        Text = "Show Ping",
        Default = false,
        Callback = function(pingGuiEnabled3)
            getgenv().pingGuiEnabled = pingGuiEnabled3

            if pingGuiEnabled3 then
                getgenv().createPingGui()
            else
                getgenv().destroyPingGui()
            end
        end,
    })

    Other:AddDivider()

    Other:AddCheckbox(fn(), {
        Text = "Aim Punch",
        Default = false,
        Callback = function(aimPunchActive)
            getgenv().aimPunchActive = aimPunchActive

            if aimPunchActive and getgenv().lp.Character then
                getgenv().setupAimPunch(getgenv().lp.Character)
            end
        end,
    })

    Other:AddDropdown(fn(), {
        Text = "Aim Mode",
        Values = {"HRP", "CamLock"},
        Default = "HRP",
        Callback = function(aimPunchMode)
            getgenv().aimPunchMode = aimPunchMode
        end,
    })

    Other:AddDivider()
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
    getgenv().Players = game:GetService("Players")
    getgenv().ReplicatedStorage = game:GetService("ReplicatedStorage")
    getgenv().lp = getgenv().Players.LocalPlayer

    local tbl = {
        ["116618003477002"] = true,
        ["119462383658044"] = true,
        ["131696603025265"] = true,
        ["121255898612475"] = true,
        ["133491532453922"] = true,
        ["103601716322988"] = true,
        ["86371356500204"] = true,
        ["72722244508749"] = true,
        ["87259391926321"] = true,
        ["96959123077498"] = true,
        ["100725497418533"] = true,
        ["115194624791339"] = true,
        ["89448354637442"] = true,
        ["108773914369470"] = true,
        ["105614318732282"] = true,
        ["77448521277146"] = true,
        ["110400453990786"] = true,
        ["108911997126897"] = true,
        ["82137285150006"] = true,
        ["129843313690921"] = true,
        ["140703210927645"] = true,
        ["136007065400978"] = true,
        ["86096387000557"] = true,
        ["86709774283672"] = true,
        ["72685103823181"] = true,
        ["106086955212611"] = true,
        ["111918351126361"] = true,
        ["127821549546951"] = true,
        ["79331370895011"] = true,
        ["81227838714974"] = true,
        ["122503338277352"] = true,
        ["98031287364865"] = true,
    }

    local tbl2 = {["86710781315432"] = true, ["99820161736138"] = true}

    local tbl3 = {
        ["86710781315432"] = true,
        ["99820161736138"] = true,
        ["609342351"] = true,
        ["81976396729343"] = true,
        ["12222225"] = true,
        ["80521472651047"] = true,
        ["139012439429121"] = true,
        ["91194698358028"] = true,
        ["111910850942168"] = true,
        ["83851356262523"] = true,
    }

    local tbl4 = {
        ["86545133269813"] = true,
        ["89448354637442"] = true,
        ["87259391926321"] = true,
        ["73921036900313"] = true,
        ["90499469533503"] = true,
        ["119462383658044"] = true,
        ["116618003477002"] = true,
        ["131696603025265"] = true,
        ["111313169447787"] = true,
        ["100725497418533"] = true,
        ["115194624791339"] = true,
        ["108911997126897"] = true,
        ["82137285150006"] = true,
        ["129843313690921"] = true,
        ["140703210927645"] = true,
        ["136007065400978"] = true,
        ["86096387000557"] = true,
        ["86709774283672"] = true,
        ["72685103823181"] = true,
        ["106086955212611"] = true,
        ["111918351126361"] = true,
        ["127821549546951"] = true,
        ["79331370895011"] = true,
        ["81227838714974"] = true,
        ["122503338277352"] = true,
        ["98031287364865"] = true,
    }

    local function fn2()
        pcall(function()
            getgenv().ReplicatedStorage:WaitForChild("Modules", 10):WaitForChild("Network", 10):WaitForChild("Network", 10):WaitForChild("RemoteEvent", 10):FireServer("UseActorAbility", {buffer.fromstring("\003\n\000\000\000RagingPace")})
        end)
    end

    local function fn3(arg)
        local character = getgenv().lp.Character
        local humanoidRootPart = character and getgenv().lp.Character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart or not arg then
            return false
        end
        local flag = (humanoidRootPart.Position - arg.Position).Magnitude <= getgenv().RAGING_RANGE
        return flag
    end

    local function fn4(arg)
        local now = os.clock()
        if getgenv()._RAGING_TRIGGERED[arg] and now < getgenv()._RAGING_TRIGGERED[arg] then
            return
        end
        getgenv()._RAGING_TRIGGERED[arg] = now + getgenv().RAGING_COOLDOWN
        task.spawn(fn2)
    end

    local function fn5(arg)
        if arg:GetAttribute("_VX_RAGING_HOOKED") then
            return
        end
        arg:SetAttribute("_VX_RAGING_HOOKED", true)

        local connection = arg.AnimationPlayed:Connect(function(arg2)
            if not getgenv().RAGING_ENABLED then
                return
            end
            local animation = arg2.Animation
            if not animation then
                return
            end
            local match = tostring(animation.AnimationId):match("%d+$")
            if not match or not tbl[match] then
                return
            end
            local parent = arg.Parent
            local humanoidRootPart = parent and arg.Parent:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart or not fn3(humanoidRootPart) then
                return
            end
            fn4(arg2)
        end)

        table.insert(getgenv()._RAGING_CONNS, connection)
    end

    local function fn6(arg)
        local function fn7()
            if not getgenv().RAGING_ENABLED or not arg.IsPlaying then
                return
            end
            local match = tostring(arg.SoundId):match("%d+$")
            if not match or not tbl2[match] then
                return
            end
            local isBasePart = arg.Parent:IsA("BasePart")
            local parent = isBasePart and arg.Parent or arg.Parent:FindFirstChildWhichIsA("BasePart", true)
            if not parent or not fn3(parent) then
                return
            end
            fn4(arg)
        end

        table.insert(getgenv()._RAGING_CONNS, arg.Played:Connect(fn7))
        table.insert(getgenv()._RAGING_CONNS, arg:GetPropertyChangedSignal("IsPlaying"):Connect(fn7))
    end

    local function fn7()
        for i, descendant in ipairs(game:GetDescendants()) do
            if descendant:IsA("Humanoid") then
                fn5(descendant)
            elseif descendant:IsA("Sound") then
                fn6(descendant)
            end
        end

        table.insert(getgenv()._RAGING_CONNS, game.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("Humanoid") then
                fn5(descendant)
            elseif descendant:IsA("Sound") then
                fn6(descendant)
            end
        end))
    end

    local function fn8()
        for i, ragingConn in ipairs(getgenv()._RAGING_CONNS) do
            pcall(function()
                ragingConn:Disconnect()
            end)
        end

        getgenv()._RAGING_CONNS = {}
        getgenv()._RAGING_TRIGGERED = {}
    end

    local function fn9()
        pcall(function()
            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer("UseActorAbility", {buffer.fromstring("\003\008\000\000\000404Error")})
        end)
    end

    local function fn10()
        pcall(function()
            game:GetService("ReplicatedStorage").Modules.Network.Network.RemoteEvent:FireServer("UseActorAbility", {buffer.fromstring("\003\r\000\000\000CorruptEnergy")})
        end)
    end

    local function fn11(arg)
        if getgenv()._ERR404_SOUNDHOOKS[arg] then
            return
        end
        getgenv()._ERR404_SOUNDHOOKS[arg] = true

        local function fn12()
            if not getgenv().Error404AutoParryEnabled or not arg.IsPlaying then
                return
            end
            local match = tostring(arg.SoundId):match("%d+$")
            local str = match or ""
            if str == "" or not tbl3[str] then
                return
            end
            local character = getgenv().lp.Character
            local humanoidRootPart = character and getgenv().lp.Character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then
                return
            end
            local isBasePart = arg.Parent:IsA("BasePart")
            local parent = isBasePart and arg.Parent or arg.Parent:FindFirstChildWhichIsA("BasePart", true)
            if not parent then
                return
            end
            local now = os.clock()
            if getgenv()._ERR404_TRIGGERED[arg] and now < getgenv()._ERR404_TRIGGERED[arg] then
                return
            end

            if (humanoidRootPart.Position - parent.Position).Magnitude <= getgenv().Error404Range then
                fn9()
                getgenv()._ERR404_TRIGGERED[arg] = now + 1.2
            end
        end

        table.insert(getgenv()._ERR404_CONNS, arg.Played:Connect(fn12))

        table.insert(getgenv()._ERR404_CONNS, arg:GetPropertyChangedSignal("IsPlaying"):Connect(function()
            if arg.IsPlaying then
                fn12()
            end
        end))
    end

    local function fn12(arg)
        if arg:GetAttribute("_ERR404_HOOKED") then
            return
        end
        arg:SetAttribute("_ERR404_HOOKED", true)

        local connection = arg.AnimationPlayed:Connect(function(arg2)
            if not getgenv().Error404AutoParryEnabled then
                return
            end
            local animation = arg2.Animation
            if not animation then
                return
            end
            local match = tostring(animation.AnimationId):match("%d+$")
            local str = match or ""
            if str == "" or not tbl4[str] then
                return
            end
            local parent = arg.Parent
            local humanoidRootPart = parent and arg.Parent:FindFirstChild("HumanoidRootPart")
            local character = getgenv().lp.Character
            local humanoidRootPart2 = character and getgenv().lp.Character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart or not humanoidRootPart2 then
                return
            end
            local now = os.clock()
            if getgenv()._ERR404_TRIGGERED[arg2] and now < getgenv()._ERR404_TRIGGERED[arg2] then
                return
            end

            if (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude <= getgenv().Error404Range then
                fn9()
                getgenv()._ERR404_TRIGGERED[arg2] = now + 1.2
            end
        end)

        table.insert(getgenv()._ERR404_CONNS, connection)
    end

    local function fn13()
        for i, descendant in ipairs(game:GetDescendants()) do
            if descendant:IsA("Sound") then
                fn11(descendant)
            elseif descendant:IsA("Humanoid") then
                fn12(descendant)
            end
        end

        table.insert(getgenv()._ERR404_CONNS, game.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("Sound") then
                fn11(descendant)
            elseif descendant:IsA("Humanoid") then
                fn12(descendant)
            end
        end))
    end

    local function fn14()
        for i, err404Conn in ipairs(getgenv()._ERR404_CONNS) do
            pcall(function()
                err404Conn:Disconnect()
            end)
        end

        getgenv()._ERR404_CONNS = {}
        getgenv()._ERR404_SOUNDHOOKS = {}
        getgenv()._ERR404_TRIGGERED = {}
    end

    local function fn15()
        fn8()
        fn14()
        if not getgenv().VX_AutoParryEnabled then
            return
        end

        if getgenv().VX_AutoParryKiller == "Slasher" then
            getgenv().RAGING_ENABLED = true
            fn7()
        else
            getgenv().Error404AutoParryEnabled = true
            fn13()
        end
    end

    local v14 = fn9

    fn9 = function()
        if getgenv().VX_ParryRemote == "Corrupt Energy" then
            fn10()
        else
            v14()
        end
    end

    Other:AddCheckbox(fn(), {
        Text = "Auto Parry",
        Default = false,
        Callback = function(vxAutoParryEnabled)
            getgenv().VX_AutoParryEnabled = vxAutoParryEnabled
            fn15()
        end,
    })

    Other:AddDropdown(fn(), {
        Text = "Killer",
        Values = {"Slasher", "John Doe"},
        Default = "Slasher",
        Callback = function(arg)
            local genv12 = getgenv()
            local vxAutoParryKiller = arg == "John Doe" and "JohnDoe" or arg
            genv12.VX_AutoParryKiller = vxAutoParryKiller
            fn15()
        end,
    })

    Other:AddDropdown(fn(), {
        Text = "Parry Mode JD",
        Values = {"404 Error", "Corrupt Energy"},
        Default = "404 Error",
        Callback = function(vxParryRemote)
            getgenv().VX_ParryRemote = vxParryRemote
        end,
    })

    Other:AddInput(fn(), {
        Text = "Detection Range",
        Placeholder = "5 - 50",
        Callback = function(arg)
            local num = tonumber(arg)
            if not num then
                return
            end
            local ragingRange = math.clamp(num, 5, 50)
            getgenv().RAGING_RANGE = ragingRange
            getgenv().Error404Range = ragingRange
        end,
    })

    getgenv().lp = game:GetService("Players").LocalPlayer
    getgenv().RunService = game:GetService("RunService")
    getgenv().Workspace = game:GetService("Workspace")
    getgenv().ReplicatedStorage = game:GetService("ReplicatedStorage")
    getgenv().testRemote = getgenv().ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent")
    getgenv().blockAction = "UseActorAbility"
    getgenv().blockData = {buffer.fromstring("\003\005\000\000\000Block")}
    getgenv().punchAction = "UseActorAbility"
    getgenv().punchData = {buffer.fromstring("\003\005\000\000\000Punch")}
    getgenv().KillersFolder = getgenv().Workspace:WaitForChild("Players"):WaitForChild("Killers")
    local genv12 = getgenv()
    local autoBlockEnabled = getgenv().autoBlockEnabled
    local autoBlockEnabled2 = autoBlockEnabled or false
    genv12.autoBlockEnabled = autoBlockEnabled2
    local genv13 = getgenv()
    local autoBlockMode = getgenv().autoBlockMode
    local autoBlockMode2 = autoBlockMode or "Normal"
    genv13.autoBlockMode = autoBlockMode2
    local genv14 = getgenv()
    local autoBlockRangeMode = getgenv().autoBlockRangeMode
    local autoBlockRangeMode2 = autoBlockRangeMode or "Inside/Outside"
    genv14.autoBlockRangeMode = autoBlockRangeMode2
    local genv15 = getgenv()
    local blockDelayEnabled = getgenv().blockDelayEnabled
    local blockDelayEnabled2 = blockDelayEnabled or false
    genv15.blockDelayEnabled = blockDelayEnabled2
    local genv16 = getgenv()
    local blockDelayDuration = getgenv().blockDelayDuration
    local blockDelayDuration2 = blockDelayDuration or 0
    genv16.blockDelayDuration = blockDelayDuration2
    local genv17 = getgenv()
    local autoPunchEnabled = getgenv().autoPunchEnabled
    local autoPunchEnabled2 = autoPunchEnabled or false
    genv17.autoPunchEnabled = autoPunchEnabled2
    local genv18 = getgenv()
    local autoBlockLOS = getgenv().autoBlockLOS
    local autoBlockLOS2 = autoBlockLOS or false
    genv18.autoBlockLOS = autoBlockLOS2
    local genv19 = getgenv()
    local elevationCheckEnabled = getgenv().elevationCheckEnabled
    local elevationCheckEnabled2 = elevationCheckEnabled or false
    genv19.elevationCheckEnabled = elevationCheckEnabled2
    local genv20 = getgenv()
    local elevationKillerHigherThreshold = getgenv().elevationKillerHigherThreshold
    local elevationKillerHigherThreshold2 = elevationKillerHigherThreshold or 3
    genv20.elevationKillerHigherThreshold = elevationKillerHigherThreshold2
    local genv21 = getgenv()
    local elevationIAmHigherThreshold = getgenv().elevationIAmHigherThreshold
    local elevationIAmHigherThreshold2 = elevationIAmHigherThreshold or 3
    genv21.elevationIAmHigherThreshold = elevationIAmHigherThreshold2
    local genv22 = getgenv()
    local baseDetectionRange = getgenv().baseDetectionRange
    local baseDetectionRange2 = baseDetectionRange or 20
    genv22.baseDetectionRange = baseDetectionRange2
    local genv23 = getgenv()
    local detectionRange = getgenv().detectionRange
    local detectionRange2 = detectionRange or 20
    genv23.detectionRange = detectionRange2
    local genv24 = getgenv()
    local antiBaitWalkEnabled = getgenv().antiBaitWalkEnabled
    local antiBaitWalkEnabled2 = antiBaitWalkEnabled or false
    genv24.antiBaitWalkEnabled = antiBaitWalkEnabled2
    local genv25 = getgenv()
    local antiBaitWalkRange = getgenv().antiBaitWalkRange
    local antiBaitWalkRange2 = antiBaitWalkRange or 18
    genv25.antiBaitWalkRange = antiBaitWalkRange2
    local genv26 = getgenv()
    local antiBaitIdleEnabled = getgenv().antiBaitIdleEnabled
    local antiBaitIdleEnabled2 = antiBaitIdleEnabled or false
    genv26.antiBaitIdleEnabled = antiBaitIdleEnabled2
    local genv27 = getgenv()
    local antiBaitIdleRange = getgenv().antiBaitIdleRange
    local antiBaitIdleRange2 = antiBaitIdleRange or 18
    genv27.antiBaitIdleRange = antiBaitIdleRange2
    local genv28 = getgenv()
    local showAutoBlockKillerRadius = getgenv().showAutoBlockKillerRadius
    local showAutoBlockKillerRadius2 = showAutoBlockKillerRadius or false
    genv28.showAutoBlockKillerRadius = showAutoBlockKillerRadius2
    local genv29 = getgenv()
    local killerRadiusAdornments = getgenv().killerRadiusAdornments
    local killerRadiusAdornments2 = killerRadiusAdornments or {}
    genv29.killerRadiusAdornments = killerRadiusAdornments2
    local genv30 = getgenv()
    local verifyFacingCheck = getgenv().verifyFacingCheck
    local verifyFacingCheck2 = verifyFacingCheck or false
    genv30.verifyFacingCheck = verifyFacingCheck2
    local genv31 = getgenv()
    local visionRange = getgenv().visionRange
    local visionRange2 = visionRange or 15
    genv31.visionRange = visionRange2
    local genv32 = getgenv()
    local visionAngle = getgenv().visionAngle
    local visionAngle2 = visionAngle or 90
    genv32.visionAngle = visionAngle2
    local genv33 = getgenv()
    local facingCheckMode = getgenv().facingCheckMode
    local facingCheckMode2 = facingCheckMode or "Killer Facing Me"
    genv33.facingCheckMode = facingCheckMode2
    local genv34 = getgenv()
    local showVisionRange = getgenv().showVisionRange
    local showVisionRange2 = showVisionRange or false
    genv34.showVisionRange = showVisionRange2
    local genv35 = getgenv()
    local proxBoxEnabled = getgenv().proxBoxEnabled
    local proxBoxEnabled2 = proxBoxEnabled or false
    genv35.proxBoxEnabled = proxBoxEnabled2
    local genv36 = getgenv()
    local proxBoxVisible = getgenv().proxBoxVisible
    local proxBoxVisible2 = proxBoxVisible or false
    genv36.proxBoxVisible = proxBoxVisible2
    local genv37 = getgenv()
    local proxBoxAdornments = getgenv().proxBoxAdornments
    local proxBoxAdornments2 = proxBoxAdornments or {}
    genv37.proxBoxAdornments = proxBoxAdornments2
    local genv38 = getgenv()
    local proxBoxLockedSizes = getgenv().proxBoxLockedSizes
    local proxBoxLockedSizes2 = proxBoxLockedSizes or {}
    genv38.proxBoxLockedSizes = proxBoxLockedSizes2
    local genv39 = getgenv()
    local proxBoxColor = getgenv().proxBoxColor
    local color = proxBoxColor or Color3.fromRGB(255, 60, 60)
    genv39.proxBoxColor = color
    local genv40 = getgenv()
    local proxBoxMaterial = getgenv().proxBoxMaterial
    local forceField = proxBoxMaterial or Enum.Material.ForceField
    genv40.proxBoxMaterial = forceField
    local genv41 = getgenv()
    local proxBoxZoneMode = getgenv().proxBoxZoneMode
    local proxBoxZoneMode2 = proxBoxZoneMode or "Part In Zone"
    genv41.proxBoxZoneMode = proxBoxZoneMode2
    local genv42 = getgenv()
    local proxBoxOffset = getgenv().proxBoxOffset
    local proxBoxOffset2 = proxBoxOffset or 2.5
    genv42.proxBoxOffset = proxBoxOffset2
    local genv43 = getgenv()
    local proxBoxDepthMult = getgenv().proxBoxDepthMult
    local proxBoxDepthMult2 = proxBoxDepthMult or 10
    genv43.proxBoxDepthMult = proxBoxDepthMult2
    local genv44 = getgenv()
    local proxBoxWidthMult = getgenv().proxBoxWidthMult
    local proxBoxWidthMult2 = proxBoxWidthMult or 10
    genv44.proxBoxWidthMult = proxBoxWidthMult2
    local genv45 = getgenv()
    local proxBoxHeightMult = getgenv().proxBoxHeightMult
    local proxBoxHeightMult2 = proxBoxHeightMult or 8
    genv45.proxBoxHeightMult = proxBoxHeightMult2
    local genv46 = getgenv()
    local proxBoxTransparency = getgenv().proxBoxTransparency
    local proxBoxTransparency2 = proxBoxTransparency or 0.1
    genv46.proxBoxTransparency = proxBoxTransparency2
    local genv47 = getgenv()
    local aimTargets = getgenv().aimTargets
    local v15 = aimTargets

    if not aimTargets then
        local tbl5 = {}
        v15 = tbl5
        tbl5[1] = "Slasher"
        tbl5[2] = "c00lkidd"
        tbl5[3] = "JohnDoe"
        tbl5[4] = "1x1x1x1"
        tbl5[5] = "Noli"
        tbl5[6] = "Sixer"
        tbl5[7] = "Nosferatu"
    end

    genv47.aimTargets = v15
    getgenv()._abSpeedCache = {}
    getgenv().soundHooks = {}
    local genv48 = getgenv()
    local soundStartedOutOfRange = getgenv()._soundStartedOutOfRange
    local soundStartedOutOfRange2 = soundStartedOutOfRange or {}
    genv48._soundStartedOutOfRange = soundStartedOutOfRange2
    getgenv().lastAnimBlockFire = {}
    getgenv()._animStartedOutOfRange = {}
    getgenv().visionCenterPart = nil
    getgenv().visionLeftPart = nil
    getgenv().visionRightPart = nil
    getgenv().visionLeftToKiller = nil
    getgenv().visionRightToKiller = nil
    getgenv().visionLeftToCenter = nil
    getgenv().visionCenterToRight = nil

    getgenv().isInDetectionRange = function(arg, arg2)
        local num = tonumber(getgenv().detectionRange)
        local n = num or 20
        local flag = Vector3.new(arg2.X - arg.X, 0, arg2.Z - arg.Z).Magnitude <= n
        return flag
    end

    getgenv().hasAutoBlockLOS = function(arg, arg2)
        if not getgenv().autoBlockLOS then
            return true
        end

        if not arg or not arg2 then
            return false
        end
        local raycastParams = RaycastParams.new()
        raycastParams.FilterDescendantsInstances = {getgenv().lp.Character}
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
        raycastParams.IgnoreWater = true
        local hit = workspace:Raycast(arg.Position, arg2 - arg.Position, raycastParams)
        local players = workspace:FindFirstChild("Players")
        local killers = players and workspace.Players:FindFirstChild("Killers")
        local flag = hit and killers

        if flag then
            if hit.Instance:IsDescendantOf(killers) then
                flag = false
            else
                flag = true
            end
        end

        local flag2

        if flag then
            flag2 = false
        else
            flag2 = true
        end

        return flag2
    end

    getgenv().checkVisionCone = function()
        local character = getgenv().lp.Character
        local humanoidRootPart = character and getgenv().lp.Character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart then
            return false
        end

        for i, aimTarget in ipairs(getgenv().aimTargets) do
            local v16 = getgenv().KillersFolder:FindFirstChild(aimTarget)
            if not v16 then
                continue
            end
            local humanoidRootPart2 = v16:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart2 then
                continue
            end
            local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude
            if getgenv().visionRange < magnitude then
                continue
            end
            local v17

            if getgenv().facingCheckMode == "I Am Facing Killer" then
                v17 = humanoidRootPart.CFrame.LookVector:Dot((humanoidRootPart2.Position - humanoidRootPart.Position).Unit)
            else
                v17 = humanoidRootPart2.CFrame.LookVector:Dot((humanoidRootPart.Position - humanoidRootPart2.Position).Unit)
            end

            if math.cos(math.rad(getgenv().visionAngle / 2)) <= v17 then
                return true
            end
        end

        return false
    end

    getgenv().cleanupVisionCone = function()
        for i, v16 in ipairs({
            "visionCenterPart",
            "visionLeftPart",
            "visionRightPart",
            "visionLeftToKiller",
            "visionRightToKiller",
            "visionLeftToCenter",
            "visionCenterToRight",
        }) do
            if getgenv()[v16] then
                getgenv()[v16]:Destroy()
                getgenv()[v16] = nil
            end
        end
    end

    local genv49 = getgenv()
    local isKiller = getgenv().IsKiller

    local isKiller2 = isKiller or function()
        local character = getgenv().lp.Character
        local flag = character and character.Parent and character.Parent.Name == "Killers"
        return flag
    end

    genv49.IsKiller = isKiller2

    getgenv().updateVisionCone = function()
        if getgenv().showVisionRange and not getgenv().IsKiller() then
            local character = getgenv().lp.Character
            local humanoidRootPart = character and getgenv().lp.Character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then
                getgenv().cleanupVisionCone()
                return
            end
            local flag = false

            for i, aimTarget in ipairs(getgenv().aimTargets) do
                local v16 = getgenv().KillersFolder:FindFirstChild(aimTarget)
                local humanoidRootPart2 = v16 and v16:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart2 then
                    flag = true
                    local v17, lookVector

                    if getgenv().facingCheckMode == "I Am Facing Killer" then
                        v17 = humanoidRootPart
                        lookVector = humanoidRootPart.CFrame.LookVector
                    else
                        v17 = humanoidRootPart2
                        lookVector = humanoidRootPart2.CFrame.LookVector
                    end

                    local v18 = math.rad(getgenv().visionAngle / 2)
                    local n = CFrame.Angles(0, v18, 0) * lookVector
                    local n2 = CFrame.Angles(0, -v18, 0) * lookVector
                    local position = v17.Position + lookVector * getgenv().visionRange
                    local position2 = v17.Position + n * getgenv().visionRange
                    local position3 = v17.Position + n2 * getgenv().visionRange

                    local function fn16(arg, color2, arg2)
                        if not getgenv()[arg] then
                            local part = Instance.new("Part")
                            local vector = arg2 or Vector3.new(0.15, 0.15, 0.15)
                            part.Size = vector
                            part.Color = color2
                            part.Material = Enum.Material.Neon
                            part.Transparency = 0.3
                            part.Anchored = true
                            part.CanCollide = false
                            part.CastShadow = false
                            part.Parent = workspace
                            getgenv()[arg] = part
                        end

                        return getgenv()[arg]
                    end

                    fn16("visionCenterPart", Color3.fromRGB(180, 180, 255)).Position = position
                    fn16("visionLeftPart", Color3.fromRGB(180, 180, 255)).Position = position2
                    fn16("visionRightPart", Color3.fromRGB(180, 180, 255)).Position = position3
                    local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude
                    local v19

                    if getgenv().facingCheckMode == "I Am Facing Killer" then
                        v19 = humanoidRootPart.CFrame.LookVector:Dot((humanoidRootPart2.Position - humanoidRootPart.Position).Unit)
                    else
                        v19 = lookVector:Dot((humanoidRootPart.Position - humanoidRootPart2.Position).Unit)
                    end

                    local flag2 = magnitude <= getgenv().visionRange and math.cos(v18) <= v19

                    if flag2 then
                        local visionLeftToKiller = fn16("visionLeftToKiller", Color3.fromRGB(100, 255, 160), Vector3.new(0.08, 0.08, 1))
                        visionLeftToKiller.Size = Vector3.new(0.08, 0.08, (position2 - v17.Position).Magnitude)
                        visionLeftToKiller.CFrame = CFrame.new((position2 + v17.Position) / 2, v17.Position)
                        local visionRightToKiller = fn16("visionRightToKiller", Color3.fromRGB(100, 255, 160), Vector3.new(0.08, 0.08, 1))
                        visionRightToKiller.Size = Vector3.new(0.08, 0.08, (position3 - v17.Position).Magnitude)
                        visionRightToKiller.CFrame = CFrame.new((position3 + v17.Position) / 2, v17.Position)
                    else
                        if getgenv().visionLeftToKiller then
                            getgenv().visionLeftToKiller:Destroy()
                            getgenv().visionLeftToKiller = nil
                        end

                        if getgenv().visionRightToKiller then
                            getgenv().visionRightToKiller:Destroy()
                            getgenv().visionRightToKiller = nil
                        end
                    end

                    local visionLeftToCenter = fn16("visionLeftToCenter", Color3.fromRGB(160, 120, 255), Vector3.new(0.08, 0.08, 1))
                    visionLeftToCenter.Size = Vector3.new(0.08, 0.08, (position2 - position).Magnitude)
                    visionLeftToCenter.CFrame = CFrame.new((position2 + position) / 2, position)
                    local visionCenterToRight = fn16("visionCenterToRight", Color3.fromRGB(160, 120, 255), Vector3.new(0.08, 0.08, 1))
                    visionCenterToRight.Size = Vector3.new(0.08, 0.08, (position - position3).Magnitude)
                    visionCenterToRight.CFrame = CFrame.new((position + position3) / 2, position3)
                    break
                end

                continue
            end

            if not flag then
                getgenv().cleanupVisionCone()
            end

            return
        end

        getgenv().cleanupVisionCone()
    end

    getgenv().RunService.Heartbeat:Connect(getgenv().updateVisionCone)

    getgenv().killerSoundIds = {
        ["1x1x1x1"] = {
            ["74809026448465"] = true,
            ["85853080745515"] = true,
            ["95079963655241"] = true,
            ["98111231282218"] = true,
            ["115026634746636"] = true,
            ["117173212095661"] = true,
            ["119089145505438"] = true,
            ["119942598489800"] = true,
            ["121954639447247"] = true,
            ["128856426573270"] = true,
            ["135319730390518"] = true,
        },
        Azure = {["133709029886490"] = true},
        JohnDoe = {
            ["86174610237192"] = true,
            ["98675142200448"] = true,
            ["105204810054381"] = true,
            ["123923371062204"] = true,
            ["140242176732868"] = true,
        },
        Noli = {
            ["89004992452376"] = true,
            ["96117920303138"] = true,
            ["108610718831698"] = true,
            ["109348678063422"] = true,
            ["112395455254818"] = true,
            ["114742322778642"] = true,
            ["115678417928765"] = true,
            ["128367348686124"] = true,
            ["131406927389838"] = true,
            ["136323728355613"] = true,
        },
        Nosferatu = {["104910828105172"] = true, ["119664480754070"] = true},
        ShedletskyFunny = {["117173212095661"] = true},
        Sixer = {
            ["71805956520207"] = true,
            ["74842815979546"] = true,
            ["79980897195554"] = true,
            ["108651070773439"] = true,
            ["117231507259853"] = true,
            ["119583605486352"] = true,
            ["125213046326879"] = true,
            ["127557531826290"] = true,
        },
        c00lkidd = {
            ["75330693422988"] = true,
            ["80516583309685"] = true,
            ["82221759983649"] = true,
            ["84307400688050"] = true,
            ["98733709078792"] = true,
            ["105516183226360"] = true,
            ["113413858159336"] = true,
            ["124234993291213"] = true,
            ["128195973631079"] = true,
        },
    }

    getgenv().killerAnimIds = {
        Slasher = {
            ["94958041603347"] = true,
            ["106860049270347"] = true,
            ["108196996477620"] = true,
            ["109667959938617"] = true,
            ["118298475669935"] = true,
            ["125403313786645"] = true,
            ["126830014841198"] = true,
            ["130958529065375"] = true,
        },
    }

    getgenv().autoBlockTriggerSounds = {}
end

local v2, v3, v4 = pairs(getgenv().killerSoundIds)
local v5 = v4
local v6 = v2
local v7 = v3

while true do
    local v8, v9 = v6(v7, v5)
    if v8 == nil then
        break
    end

    for k in pairs(v9) do
        getgenv().autoBlockTriggerSounds[k] = true
    end

    v5 = v8
end

getgenv().autoBlockTriggerAnimations = {}
local v8, v9, v10 = pairs(getgenv().killerAnimIds)
local v11 = v10
local v12 = v8
local v13 = v9

while true do
    local v14, v15 = v12(v13, v11)
    if v14 == nil then
        break
    end

    for k in pairs(v15) do
        getgenv().autoBlockTriggerAnimations[k] = true
    end

    v11 = v14
end

getgenv().extractNumericSoundId = function(arg)
    if arg and arg.SoundId then
        return tostring(arg.SoundId):match("%d+")
    end
    return nil
end

getgenv().extractNumericAnimationId = function(arg)
    if arg and arg.Animation then
        return tostring(arg.Animation.AnimationId):match("%d+")
    end
    return nil
end

getgenv().getSoundWorldPosition = function(arg)
    local parent = arg.Parent

    while parent do
        if parent:IsA("Model") then
            local humanoidRootPart = parent:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                return humanoidRootPart.Position
            end
        end

        parent = parent.Parent
    end

    return nil
end

local genv = getgenv()
local hitboxDraggingEnabled = getgenv().hitboxDraggingEnabled
local hitboxDraggingEnabled2 = hitboxDraggingEnabled or false
genv.hitboxDraggingEnabled = hitboxDraggingEnabled2
local genv2 = getgenv()
local activeHDT = getgenv().activeHDT
local activeHDT2 = activeHDT or {}
genv2.activeHDT = activeHDT2
local genv3 = getgenv()
local dspeed = getgenv().Dspeed
local dspeed2 = dspeed or 5.6
genv3.Dspeed = dspeed2
local genv4 = getgenv()
local ddelay = getgenv().Ddelay
local ddelay2 = ddelay or 0.3
genv4.Ddelay = ddelay2
local genv5 = getgenv()
local hdtDetectRadius = getgenv().HDT_DETECT_RADIUS
local hdtDetectRadius2 = hdtDetectRadius or 6
genv5.HDT_DETECT_RADIUS = hdtDetectRadius2

getgenv().setHRPVelocitySafe = function(arg, assemblyLinearVelocity)
    if arg and arg:IsA("BasePart") then
        arg.AssemblyLinearVelocity = assemblyLinearVelocity
    end
end

getgenv().hdtIsBlockTriggered = function(arg)
    if not arg then
        return false
    end
    local humanoid = arg:FindFirstChildOfClass("Humanoid")

    if humanoid then
        local killerAnimIds = getgenv().killerAnimIds
        local v14 = killerAnimIds and getgenv().killerAnimIds[arg.Name]

        for i, v15 in ipairs(humanoid:GetPlayingAnimationTracks()) do
            local animation = v15.Animation
            local match = animation and tostring(v15.Animation.AnimationId):match("%d+")
            if match and (v14 and v14[match] or getgenv().autoBlockTriggerAnimations and getgenv().autoBlockTriggerAnimations[match]) then
                return true
            end
        end
    end

    local killerSoundIds = getgenv().killerSoundIds
    local v14 = killerSoundIds and getgenv().killerSoundIds[arg.Name]

    for i, descendant in ipairs(arg:GetDescendants()) do
        if descendant:IsA("Sound") and descendant.IsPlaying then
            local match = tostring(descendant.SoundId):match("%d+")
            if match and (v14 and v14[match] or getgenv().autoBlockTriggerSounds and getgenv().autoBlockTriggerSounds[match]) then
                return true
            end
        end
    end

    return false
end

getgenv().RunService.Heartbeat:Connect(function()
    if not getgenv().hitboxDraggingEnabled then
        return
    end
    local character = getgenv().lp.Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then
        return
    end

    for i, aimTarget in ipairs(getgenv().aimTargets) do
        local v14 = getgenv().KillersFolder:FindFirstChild(aimTarget)
        local humanoidRootPart2 = v14 and v14:FindFirstChild("HumanoidRootPart")
        local humanoid = v14 and v14:FindFirstChildOfClass("Humanoid")

        if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
            if (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude <= getgenv().HDT_DETECT_RADIUS then
                if getgenv().hdtIsBlockTriggered(v14) then
                    if not getgenv().activeHDT[v14] then
                        getgenv().activeHDT[v14] = os.clock() + getgenv().Ddelay
                    end

                    local now = os.clock()

                    if getgenv().activeHDT[v14] <= now then
                        local unit = (humanoidRootPart2.Position - humanoidRootPart.Position).Unit
                        getgenv().setHRPVelocitySafe(humanoidRootPart, unit * getgenv().Dspeed)
                    end
                elseif getgenv().activeHDT[v14] then
                    getgenv().activeHDT[v14] = nil
                    getgenv().setHRPVelocitySafe(humanoidRootPart, Vector3.zero)
                end
            elseif getgenv().activeHDT[v14] then
                getgenv().activeHDT[v14] = nil
                getgenv().setHRPVelocitySafe(humanoidRootPart, Vector3.zero)
            end
        end
    end
end)

getgenv()._proxBox_getBoxDims = function()
    return getgenv().proxBoxWidthMult, getgenv().proxBoxHeightMult, getgenv().proxBoxDepthMult
end

getgenv()._proxBox_measureKillerSize = function(arg)
    if not arg then
        return
    end
    getgenv().proxBoxLockedSizes[arg] = Vector3.new(getgenv().proxBoxWidthMult, getgenv().proxBoxHeightMult, getgenv().proxBoxDepthMult)
end

getgenv()._proxBox_isPlayerInBox = function(arg, arg2, arg3)
    if not arg or not arg3 then
        return false
    end
    local v14, v15, v16 = getgenv()._proxBox_getBoxDims()
    local n = arg.CFrame * CFrame.new(0, 0, -(v16 / 2))

    if getgenv().proxBoxZoneMode == "Full Body In Zone" then
        local character = getgenv().lp.Character

        if character then
            for i, descendant in ipairs(character:GetDescendants()) do
                if not descendant:IsA("BasePart") then
                    continue
                end
                local v17 = n:PointToObjectSpace(descendant.Position)
                if v14 / 2 < math.abs(v17.X) or v15 / 2 < math.abs(v17.Y) or v16 / 2 < math.abs(v17.Z) then
                    return false
                end
            end

            return true
        end
    end

    local v17 = n:PointToObjectSpace(arg3.Position)
    local flag = math.abs(v17.X) <= v14 / 2 and math.abs(v17.Y) <= v15 / 2 and math.abs(v17.Z) <= v16 / 2
    return flag
end

getgenv()._proxBox_updateAdornment = function(arg, adornee)
    local v14 = getgenv().proxBoxAdornments[arg]

    if not getgenv().proxBoxVisible then
        if v14 then
            v14:Destroy()
        end

        getgenv().proxBoxAdornments[arg] = nil
        return
    end

    if not adornee then
        return
    end
    local v15, v16, v17 = getgenv()._proxBox_getBoxDims()

    if v14 and v14.Parent then
        v14:Destroy()
    end

    local boxHandleAdornment = Instance.new("BoxHandleAdornment")
    boxHandleAdornment.Adornee = adornee
    boxHandleAdornment.Size = Vector3.new(v15, v16, v17)
    boxHandleAdornment.CFrame = CFrame.new(0, 0, -(v17 / 2))
    boxHandleAdornment.Color3 = getgenv().proxBoxColor
    boxHandleAdornment.Transparency = getgenv().proxBoxTransparency
    boxHandleAdornment.AlwaysOnTop = true
    boxHandleAdornment.ZIndex = 1
    boxHandleAdornment.Parent = adornee
    getgenv().proxBoxAdornments[arg] = boxHandleAdornment
end

getgenv()._proxBox_cleanup = function()
    for k, proxBoxAdornment in pairs(getgenv().proxBoxAdornments) do
        if proxBoxAdornment then
            proxBoxAdornment:Destroy()
        end

        getgenv().proxBoxAdornments[k] = nil
    end

    for k in pairs(getgenv().proxBoxLockedSizes) do
        getgenv().proxBoxLockedSizes[k] = nil
    end
end

getgenv()._proxBox_measureAll = function()
    for i, aimTarget in ipairs(getgenv().aimTargets) do
        local v14 = getgenv().KillersFolder:FindFirstChild(aimTarget)

        if v14 then
            getgenv()._proxBox_measureKillerSize(v14)
        end
    end
end

getgenv().KillersFolder.ChildAdded:Connect(function(child)
    if getgenv().proxBoxEnabled then
        task.wait(0.2)
        getgenv()._proxBox_measureKillerSize(child)
    end
end)

getgenv().RunService.Heartbeat:Connect(function()
    if not getgenv().proxBoxEnabled and not getgenv().proxBoxVisible then
        return
    end

    for i, aimTarget in ipairs(getgenv().aimTargets) do
        local v14 = getgenv().KillersFolder:FindFirstChild(aimTarget)
        local humanoidRootPart = v14 and v14:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart then
            getgenv()._proxBox_updateAdornment(v14, humanoidRootPart)
        end
    end

    for k, proxBoxAdornment in pairs(getgenv().proxBoxAdornments) do
        if not k.Parent then
            if proxBoxAdornment then
                proxBoxAdornment:Destroy()
            end

            getgenv().proxBoxAdornments[k] = nil
            getgenv().proxBoxLockedSizes[k] = nil
        end
    end
end)

getgenv().attemptAutoBlockForSound = function(arg)
    if not getgenv().autoBlockEnabled or not arg:IsA("Sound") or not arg.IsPlaying then
        return
    end
    local v14 = getgenv().extractNumericSoundId(arg)
    if not v14 or not getgenv().autoBlockTriggerSounds[v14] then
        return
    end
    local model = arg:FindFirstAncestorOfClass("Model")
    local v15 = model and getgenv().killerSoundIds[model.Name]
    if not v15 or not v15[v14] then
        return
    end

    if getgenv().autoBlockRangeMode == "Inside" and getgenv()._soundStartedOutOfRange[arg] ~= false then
        return
    end
    local character = getgenv().lp.Character
    local humanoidRootPart = character and getgenv().lp.Character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then
        return
    end
    local v16 = getgenv().getSoundWorldPosition(arg)
    if not v16 then
        return
    end

    if not getgenv().isInDetectionRange(humanoidRootPart.Position, v16) then
        return
    end

    if not getgenv().hasAutoBlockLOS(humanoidRootPart, v16) then
        return
    end

    if getgenv().elevationCheckEnabled then
        local n = v16.Y - humanoidRootPart.Position.Y
        if getgenv().elevationKillerHigherThreshold <= n then
            return
        end

        if n <= -getgenv().elevationIAmHigherThreshold then
            return
        end
    end

    if getgenv().verifyFacingCheck and not getgenv().checkVisionCone() then
        return
    end

    if getgenv().autoBlockMode == "Normal + Anti Bait" and getgenv().proxBoxEnabled then
        local model2 = arg:FindFirstAncestorOfClass("Model")
        local humanoidRootPart2 = model2 and model2:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 or not getgenv()._proxBox_isPlayerInBox(humanoidRootPart2, model2, humanoidRootPart) then
            return
        end
    end

    local blockDelayEnabled = getgenv().blockDelayEnabled
    local flag = blockDelayEnabled and tonumber(getgenv().blockDelayDuration) > 0

    if flag then
        local num = tonumber(getgenv().blockDelayDuration)
        flag = num or 0
    end

    if not flag then
        flag = 0
    end

    if flag > 0 then
        task.delay(flag, function()
            pcall(function()
                getgenv().testRemote:FireServer(getgenv().blockAction, getgenv().blockData)
            end)
        end)
    else
        pcall(function()
            getgenv().testRemote:FireServer(getgenv().blockAction, getgenv().blockData)
        end)
    end
end

getgenv().hookSound = function(arg)
    if getgenv().soundHooks[arg] then
        return
    end

    local connection = arg:GetPropertyChangedSignal("IsPlaying"):Connect(function()
        if arg.IsPlaying then
            local character = getgenv().lp.Character
            local humanoidRootPart = character and getgenv().lp.Character:FindFirstChild("HumanoidRootPart")
            local v14 = getgenv().getSoundWorldPosition(arg)

            if humanoidRootPart and v14 then
                local soundStartedOutOfRange = getgenv()._soundStartedOutOfRange
                local flag

                if getgenv().isInDetectionRange(humanoidRootPart.Position, v14) then
                    flag = false
                else
                    flag = true
                end

                soundStartedOutOfRange[arg] = flag
            end

            getgenv().attemptAutoBlockForSound(arg)

            if getgenv().autoBlockRangeMode == "Inside/Outside" and getgenv()._soundStartedOutOfRange[arg] == true then
                task.spawn(function()
                    while arg and arg.IsPlaying do
                        task.wait(0.05)
                        if not arg.IsPlaying then
                            break
                        end
                        getgenv().attemptAutoBlockForSound(arg)
                    end
                end)
            end
        else
            getgenv()._soundStartedOutOfRange[arg] = nil
        end
    end)

    getgenv().soundHooks[arg] = connection

    if arg.IsPlaying then
        getgenv().attemptAutoBlockForSound(arg)
    end
end

local genv6 = getgenv()

genv6.hookDescendantSounds = function(arg)
    for i, descendant in ipairs(arg:GetDescendants()) do
        if descendant:IsA("Sound") then
            getgenv().hookSound(descendant)
        end
    end

    arg.DescendantAdded:Connect(function(descendant)
        if descendant:IsA("Sound") then
            getgenv().hookSound(descendant)
        end
    end)
end

local function fn2(arg)
    local humanoid = arg:FindFirstChildOfClass("Humanoid")

    if not humanoid then
        arg.ChildAdded:Connect(function(child)
            if child:IsA("Humanoid") then
                genv6(arg)
            end
        end)

        return
    end

    local animator = humanoid:FindFirstChildOfClass("Animator")

    if not animator then
        humanoid.ChildAdded:Connect(function(child)
            if child:IsA("Animator") then
                genv6(arg)
            end
        end)

        return
    end

    animator.AnimationPlayed:Connect(function(arg2)
        local v14 = getgenv().extractNumericAnimationId(arg2)
        local v15 = getgenv().killerAnimIds[arg.Name]
        if not v14 or not v15 or not v15[v14] then
            return
        end
        local character = getgenv().lp.Character
        local humanoidRootPart = character and getgenv().lp.Character:FindFirstChild("HumanoidRootPart")
        local humanoidRootPart2 = arg:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart or not humanoidRootPart2 then
            return
        end

        if not getgenv()._animStartedOutOfRange[arg] then
            getgenv()._animStartedOutOfRange[arg] = {}
        end

        local v16 = getgenv()._animStartedOutOfRange[arg]
        local flag

        if getgenv().isInDetectionRange(humanoidRootPart.Position, humanoidRootPart2.Position) then
            flag = false
        else
            flag = true
        end

        v16[v14] = flag

        arg2.Stopped:Connect(function()
            if getgenv()._animStartedOutOfRange[arg] then
                getgenv()._animStartedOutOfRange[arg][v14] = nil
            end
        end)
    end)
end

for i, child in ipairs(getgenv().KillersFolder:GetChildren()) do
    getgenv().hookDescendantSounds(child)
    fn2(child)
end

getgenv().KillersFolder.ChildAdded:Connect(function(child)
    getgenv().hookDescendantSounds(child)
    fn2(child)
end)

getgenv().RunService.Heartbeat:Connect(function()
    local character, humanoidRootPart, v14, v15, v16, v17, v18, v19, v20, v21, v22, humanoidRootPart2, n, humanoid, animator, now, v23, v24, v25, v26
    local v27, v28, v29, v30, v31, v32, blockDelayEnabled, flag, num, n2
    n2 = 1

    while true do
        if n2 == 1 then
            if getgenv().autoBlockEnabled then
                n2 = 2
            else
                n2 = 38
            end
        elseif n2 == 2 then
            character = getgenv().lp.Character
            humanoidRootPart = character

            if character then
                n2 = 3
            else
                n2 = 4
            end
        elseif n2 == 3 then
            humanoidRootPart = getgenv().lp.Character:FindFirstChild("HumanoidRootPart")
            n2 = 4
        elseif n2 == 4 then
            if humanoidRootPart then
                n2 = 5
            else
                n2 = 37
            end
        elseif n2 == 5 then
            v14, v15, v16 = ipairs(getgenv().aimTargets)
            v17 = v16
            v18 = v14
            v19 = v15
            n2 = 6
        elseif n2 == 6 then
            v20, v21 = v18(v19, v17)

            if v20 == nil then
                n2 = 36
            else
                n2 = 7
            end
        elseif n2 == 7 then
            v17 = v20
            v22 = getgenv().KillersFolder:FindFirstChild(v21)
            humanoidRootPart2 = v22

            if v22 then
                n2 = 8
            else
                n2 = 9
            end
        elseif n2 == 8 then
            humanoidRootPart2 = v22:FindFirstChild("HumanoidRootPart")
            n2 = 9
        elseif n2 == 9 then
            if humanoidRootPart2 and getgenv().isInDetectionRange(humanoidRootPart.Position, humanoidRootPart2.Position) and getgenv().hasAutoBlockLOS(humanoidRootPart, humanoidRootPart2.Position) then
                n2 = 10
            else
                n2 = 6
            end
        elseif n2 == 10 then
            if getgenv().elevationCheckEnabled then
                n2 = 11
            else
                n2 = 12
            end
        elseif n2 == 11 then
            n = humanoidRootPart2.Position.Y - humanoidRootPart.Position.Y

            if getgenv().elevationKillerHigherThreshold > n and n > -getgenv().elevationIAmHigherThreshold then
                n2 = 12
            else
                n2 = 6
            end
        elseif n2 == 12 then
            if (not getgenv().verifyFacingCheck or getgenv().checkVisionCone()) and (getgenv().autoBlockMode ~= "Normal + Anti Bait" or not getgenv().proxBoxEnabled or getgenv()._proxBox_isPlayerInBox(humanoidRootPart2, v22, humanoidRootPart)) then
                n2 = 13
            else
                n2 = 6
            end
        elseif n2 == 13 then
            humanoid = v22:FindFirstChildOfClass("Humanoid")
            animator = humanoid

            if humanoid then
                n2 = 14
            else
                n2 = 15
            end
        elseif n2 == 14 then
            animator = humanoid:FindFirstChildOfClass("Animator")
            n2 = 15
        elseif n2 == 15 then
            if animator then
                n2 = 16
            else
                n2 = 6
            end
        elseif n2 == 16 then
            now = os.clock()

            if getgenv().lastAnimBlockFire[v22] and now - getgenv().lastAnimBlockFire[v22] < 0.5 then
                n2 = 6
            else
                n2 = 17
            end
        elseif n2 == 17 then
            v23 = getgenv().killerAnimIds[v21]
            v24, v25, v26 = ipairs(animator:GetPlayingAnimationTracks())
            v27 = v18
            v28 = v19
            v29 = v26
            n2 = 18
        elseif n2 == 18 then
            v30, v31 = v24(v25, v29)

            if v30 == nil then
                n2 = 35
            else
                n2 = 19
            end
        elseif n2 == 19 then
            v29 = v30
            v32 = getgenv().extractNumericAnimationId(v31)

            if v32 and v23 and v23[v32] then
                n2 = 20
            else
                n2 = 18
            end
        elseif n2 == 20 then
            if getgenv()._animStartedOutOfRange[v22] then
                n2 = 22
            else
                n2 = 21
            end
        elseif n2 == 21 then
            getgenv()._animStartedOutOfRange[v22] = {}
            n2 = 22
        elseif n2 == 22 then
            if getgenv().autoBlockRangeMode == "Inside" and getgenv()._animStartedOutOfRange[v22][v32] ~= false then
                n2 = 35
            else
                n2 = 23
            end
        elseif n2 == 23 then
            getgenv().lastAnimBlockFire[v22] = now
            blockDelayEnabled = getgenv().blockDelayEnabled
            flag = blockDelayEnabled

            if blockDelayEnabled then
                n2 = 24
            else
                n2 = 27
            end
        elseif n2 == 24 then
            if tonumber(getgenv().blockDelayDuration) > 0 then
                n2 = 26
            else
                n2 = 25
            end
        elseif n2 == 25 then
            flag = false
            n2 = 27
        elseif n2 == 26 then
            flag = true
            n2 = 27
        elseif n2 == 27 then
            if flag then
                n2 = 28
            else
                n2 = 30
            end
        elseif n2 == 28 then
            num = tonumber(getgenv().blockDelayDuration)
            flag = num

            if num then
                n2 = 30
            else
                n2 = 29
            end
        elseif n2 == 29 then
            flag = 0
            n2 = 30
        elseif n2 == 30 then
            if flag then
                n2 = 32
            else
                n2 = 31
            end
        elseif n2 == 31 then
            flag = 0
            n2 = 32
        elseif n2 == 32 then
            if flag > 0 then
                n2 = 34
            else
                n2 = 33
            end
        elseif n2 == 33 then
            pcall(function()
                getgenv().testRemote:FireServer(getgenv().blockAction, getgenv().blockData)
            end)

            n2 = 35
        elseif n2 == 34 then
            task.delay(flag, function()
                pcall(function()
                    getgenv().testRemote:FireServer(getgenv().blockAction, getgenv().blockData)
                end)
            end)

            n2 = 35
        elseif n2 == 35 then
            v17 = v20
            v18 = v27
            v19 = v28
            n2 = 6
        elseif n2 == 36 then
            return
        elseif n2 == 37 then
            return
        elseif n2 == 38 then
            return
        end
    end
end)

getgenv().RunService.RenderStepped:Connect(function()
    if not getgenv().antiBaitIdleEnabled and not getgenv().antiBaitWalkEnabled then
        getgenv().detectionRange = getgenv().baseDetectionRange
        return
    end
    local v14 = nil

    for i, aimTarget in ipairs(getgenv().aimTargets) do
        local v15 = getgenv().KillersFolder:FindFirstChild(aimTarget)

        if v15 then
            local humanoidRootPart = v15:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then
                continue
            end
            v14 = humanoidRootPart
            break
        end

        continue
    end

    if not v14 then
        getgenv().detectionRange = getgenv().baseDetectionRange
        return
    end
    local parent = v14.Parent
    local now = tick()
    local vector = Vector3.new(v14.Position.X, 0, v14.Position.Z)
    local v15 = getgenv()._abSpeedCache[parent]
    local v16 = v15

    if not v15 then
        getgenv()._abSpeedCache[parent] = {
            lastPos = vector,
            lastTime = now,
            history = {},
            smoothed = 0,
        }

        v16 = getgenv()._abSpeedCache[parent]
    end

    local n = now - v16.lastTime

    if n > 0.01 then
        table.insert(v16.history, (vector - v16.lastPos).Magnitude / n)

        while #v16.history > 5 do
            table.remove(v16.history, 1)
        end

        local n2 = 0

        for i, v17 in ipairs(v16.history) do
            n2 = n2 + v17
        end

        v16.smoothed = n2 / #v16.history
        v16.lastPos = vector
        v16.lastTime = now
    end

    local smoothed = v16.smoothed

    if smoothed >= 20 then
        getgenv().detectionRange = getgenv().baseDetectionRange
    elseif getgenv().antiBaitWalkEnabled and smoothed >= 1 and smoothed < 20 then
        getgenv().detectionRange = getgenv().antiBaitWalkRange
    elseif getgenv().antiBaitIdleEnabled and smoothed < 1 then
        getgenv().detectionRange = getgenv().antiBaitIdleRange
    else
        getgenv().detectionRange = getgenv().baseDetectionRange
    end
end)

getgenv().RunService.Heartbeat:Connect(function()
    local antiBaitWalkEnabled = getgenv().antiBaitWalkEnabled
    local antiBaitIdleEnabled = antiBaitWalkEnabled or getgenv().antiBaitIdleEnabled

    if getgenv().showAutoBlockKillerRadius and not antiBaitIdleEnabled then
        for i, aimTarget in ipairs(getgenv().aimTargets) do
            local v14 = getgenv().KillersFolder:FindFirstChild(aimTarget)
            local humanoidRootPart = v14 and v14:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart then
                local v15 = getgenv().killerRadiusAdornments[v14]

                if v15 and v15.Parent then
                    local num = tonumber(getgenv().detectionRange)
                    local radius = num or 20
                    v15.Radius = radius
                else
                    local cylinderHandleAdornment = Instance.new("CylinderHandleAdornment")
                    cylinderHandleAdornment.Adornee = humanoidRootPart
                    cylinderHandleAdornment.Color3 = Color3.new(1, 0, 0)
                    cylinderHandleAdornment.Transparency = 0.7
                    cylinderHandleAdornment.AlwaysOnTop = true
                    cylinderHandleAdornment.ZIndex = 1
                    local num = tonumber(getgenv().detectionRange)
                    local radius = num or 20
                    cylinderHandleAdornment.Radius = radius
                    cylinderHandleAdornment.Height = 0.1
                    cylinderHandleAdornment.CFrame = CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(90), 0, 0)
                    cylinderHandleAdornment.Parent = humanoidRootPart
                    getgenv().killerRadiusAdornments[v14] = cylinderHandleAdornment
                end
            end
        end
    else
        for k, killerRadiusAdornment in pairs(getgenv().killerRadiusAdornments) do
            if killerRadiusAdornment then
                killerRadiusAdornment:Destroy()
            end

            getgenv().killerRadiusAdornments[k] = nil
        end
    end
end)

local genv7 = getgenv()
local autoPunch = getgenv().AutoPunch
local v14 = autoPunch

if not autoPunch then
    local tbl = {}
    v14 = tbl
    tbl.Enabled = false
    tbl.Cooldown = 0.15
    tbl.TrueDash = false
end

genv7.AutoPunch = v14
local genv8 = getgenv()
local autoPunchLastFire = getgenv()._autoPunchLastFire
local autoPunchLastFire2 = autoPunchLastFire or 0
genv8._autoPunchLastFire = autoPunchLastFire2
local genv9 = getgenv()
local autoPunchDetectedAt = getgenv()._autoPunchDetectedAt
local autoPunchDetectedAt2 = autoPunchDetectedAt or 0
genv9._autoPunchDetectedAt = autoPunchDetectedAt2

if getgenv()._autoPunchConn then
    getgenv()._autoPunchConn:Disconnect()
    getgenv()._autoPunchConn = nil
end

local function fn3()
    local character = getgenv().lp.Character
    local flag = character and character.Parent and character.Parent.Name == "Survivors"
    return flag
end

local function fn4()
    if not fn3() then
        return false
    end
    local mainUI = getgenv().lp.PlayerGui:FindFirstChild("MainUI")
    local abilityContainer = mainUI and mainUI:FindFirstChild("AbilityContainer")
    local punch = abilityContainer and abilityContainer:FindFirstChild("Punch")
    if not punch then
        return false
    end
    local imageColor3 = punch.ImageColor3
    if math.floor(imageColor3.R * 255 + 0.5) ~= 255 or math.floor(imageColor3.G * 255 + 0.5) ~= 255 or math.floor(imageColor3.B * 255 + 0.5) ~= 255 then
        return false
    end
    local charges = punch:FindFirstChild("Charges")
    local flag = charges and charges.Text ~= "0"
    return flag
end

local function fn5()
    local character = getgenv().lp.Character
    local humanoidRootPart = character and getgenv().lp.Character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then
        return nil
    end
    local v15 = nil
    local huge = math.huge

    for i, aimTarget in ipairs(getgenv().aimTargets) do
        local v16 = getgenv().KillersFolder:FindFirstChild(aimTarget)

        if v16 then
            local humanoidRootPart2 = v16:FindFirstChild("HumanoidRootPart")
            local humanoid = v16:FindFirstChildOfClass("Humanoid")

            if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
                local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

                if magnitude < huge then
                    huge = magnitude
                    v15 = v16
                end
            end
        end
    end

    return v15
end

getgenv()._autoPunchConn = getgenv().RunService.Heartbeat:Connect(function()
    if not getgenv().autoPunchEnabled then
        return
    end

    if os.clock() - getgenv()._autoPunchLastFire < 0.2 then
        return
    end

    if not fn4() then
        getgenv()._autoPunchDetectedAt = 0
        return
    end

    if getgenv()._autoPunchDetectedAt == 0 then
        getgenv()._autoPunchDetectedAt = os.clock()
    end

    if os.clock() - getgenv()._autoPunchDetectedAt < getgenv().AutoPunch.Cooldown then
        return
    end

    if not fn5() then
        return
    end
    getgenv()._autoPunchLastFire = os.clock()
    getgenv()._autoPunchDetectedAt = 0

    pcall(function()
        getgenv().testRemote:FireServer(getgenv().punchAction, getgenv().punchData)
    end)

    if getgenv().AutoPunch.TrueDash then
        local character = getgenv().lp.Character
        local humanoidRootPart = character and getgenv().lp.Character:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart then
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(100000, 0, 100000)
            bodyVelocity.Velocity = humanoidRootPart.CFrame.LookVector * 200
            bodyVelocity.Parent = humanoidRootPart

            task.delay(0.25, function()
                if bodyVelocity then
                    bodyVelocity:Destroy()
                end
            end)
        end
    end
end)

local Aim = v:AddTab("Aim", "crosshair", "aim assist features")
local v15 = Aim:AddLeftTabbox()
local Aimbot = v15:AddTab("Aimbot")
local Settings = v15:AddTab("Settings")
local v16 = Aim:AddRightTabbox()
local v17 = v16:AddTab("Silent Aim")
local Settings2 = v16:AddTab("Settings")

Settings2:AddSlider(fn(), {
    Text = "Prediction Strength",
    Min = 0,
    Max = 20,
    Default = 0,
    Rounding = 1,
    Callback = function(arg)
        local genv10 = getgenv()
        local num = tonumber(arg)
        local saPrediction = num or 0
        genv10.SA_Prediction = saPrediction
    end,
})

Settings2:AddDropdown(fn(), {
    Text = "Target Aiming",
    Values = {"Nearest", "Lowest HP", "Closest To Cursor"},
    Default = 1,
    Callback = function(silentAimMode)
        getgenv().SilentAimMode = silentAimMode

        if getgenv().SilentAimEnabled then
            getgenv().UpdateSilentAim(getgenv().SilentAimMode)
        end
    end,
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
local genv10 = getgenv()
local vxBezierColor = getgenv().VX_BezierColor
local color = vxBezierColor or Color3.fromRGB(30, 150, 255)
genv10.VX_BezierColor = color

local function fn6()
    return getgenv().VX_BezierColor
end

local function fn7()
    local vxBezierColor2 = getgenv().VX_BezierColor
    return Color3.fromRGB(math.min(255, math.floor(vxBezierColor2.R * 255 * 1.35)), math.min(255, math.floor(vxBezierColor2.G * 255 * 1.35)), math.min(255, math.floor(vxBezierColor2.B * 255 * 1.35)))
end

getgenv().VX_BezierObjs = nil

local function fn8(arg, arg2, arg3)
    local magnitude = (arg2 - arg).Magnitude
    if magnitude < 1 then
        return 0
    end

    if not arg3 then
        return 0
    end
    return magnitude * 0.35 * math.max(0, 1 - math.max(math.clamp(arg3:Dot((arg2 - arg).Unit), -1, 1), 0))
end

local function vxClearBezierInstant()
    local vxBezierObjs = getgenv().VX_BezierObjs

    if vxBezierObjs then
        if vxBezierObjs.tubes then
            for i, tube in ipairs(vxBezierObjs.tubes) do
                pcall(function()
                    if tube and tube.Parent then
                        tube:Destroy()
                    end
                end)
            end
        end

        pcall(function()
            if vxBezierObjs.sphere and vxBezierObjs.sphere.Parent then
                vxBezierObjs.sphere:Destroy()
            end
        end)

        getgenv().VX_BezierObjs = nil
    end

    getgenv().VX_BezierActive = false
end

getgenv().VX_SpawnBezierVisualizer = function(arg, arg2)
    if not getgenv().VX_BezierEnabled then
        return
    end

    if getgenv().VX_BezierActive then
        vxClearBezierInstant()
    end

    getgenv().VX_BezierActive = true

    local function fn9(arg3, arg4, arg5)
        local v18 = fn8(arg3, arg4, arg5)
        local n = (arg3 + arg4) * 0.5 + Vector3.new(0, v18, 0)
        local tbl = {}

        for i = 0, 16 do
            local n2 = i / 16
            local n3 = 1 - n2
            table.insert(tbl, n3 * n3 * arg3 + 2 * n3 * n2 * n + n2 * n2 * arg4)
        end

        return tbl
    end

    local v18 = (function(arg3)
        local tbl = {}

        for i = 1, #arg3 - 1 do
            local v18 = arg3[i]
            local v19 = arg3[i + 1]
            local magnitude = (v19 - v18).Magnitude

            if magnitude > 0.001 then
                local part = Instance.new("Part")
                part.Anchored = true
                part.CanCollide = false
                part.CastShadow = false
                part.Shape = Enum.PartType.Cylinder
                part.CFrame = CFrame.new((v18 + v19) * 0.5, v19) * CFrame.Angles(0, -1.5707963267948966, 0)
                part.Size = Vector3.new(magnitude + 0.01, 0.1 * 2, 0.1 * 2)
                part.Color = fn6():Lerp(fn7(), math.sin((i - 1) / (#arg3 - 2) * 3.141592653589793))
                part.Material = Enum.Material.ForceField
                part.Transparency = 0.15
                part.Parent = workspace
                table.insert(tbl, part)
            end
        end

        return tbl
    end)(fn9(arg.Position, arg2.Position, arg.CFrame.LookVector))

    local part = Instance.new("Part")
    part.Anchored = true
    part.CanCollide = false
    part.CastShadow = false
    part.Shape = Enum.PartType.Ball
    part.Size = Vector3.new(1.5, 1.5, 1.5)
    part.Material = Enum.Material.ForceField
    part.Color = fn6()
    part.Transparency = 0.1
    part.CFrame = CFrame.new(arg2.Position)
    part.Parent = workspace
    local pointLight = Instance.new("PointLight")
    pointLight.Brightness = 4
    pointLight.Color = fn7()
    pointLight.Range = 14
    pointLight.Parent = part
    getgenv().VX_BezierObjs = {tubes = v18, sphere = part, tubeR = 0.1}
    local connection = nil

    connection = game:GetService("RunService").Heartbeat:Connect(function()
        if not getgenv().VX_BezierActive then
            connection:Disconnect()
            return
        end

        if arg and arg.Parent and arg2 and arg2.Parent then
            local position = arg.Position
            local position2 = arg2.Position

            if part.Parent then
                part.CFrame = CFrame.new(position2)
            end

            local v19 = fn9(position, position2, arg.CFrame.LookVector)
            local vxBezierObjs = getgenv().VX_BezierObjs
            if not vxBezierObjs then
                return
            end

            for i, tube in ipairs(vxBezierObjs.tubes) do
                local v20 = v19[i]
                local v21 = v19[i + 1]

                if v20 and v21 and tube.Parent then
                    local magnitude = (v21 - v20).Magnitude

                    if magnitude > 0.001 then
                        tube.CFrame = CFrame.new((v20 + v21) * 0.5, v21) * CFrame.Angles(0, -1.5707963267948966, 0)
                        tube.Size = Vector3.new(magnitude + 0.01, 0.1 * 2, 0.1 * 2)
                    end
                end
            end

            return
        end

        connection:Disconnect()
        vxClearBezierInstant()
    end)
end

getgenv().VX_ClearBezierInstant = vxClearBezierInstant

getgenv().VX_ClearBezierShatter = function()
    local vxBezierObjs = getgenv().VX_BezierObjs
    if not vxBezierObjs then
        return
    end
    getgenv().VX_BezierActive = false
    getgenv().VX_BezierObjs = nil
    local sphere = vxBezierObjs.sphere
    local position = sphere and vxBezierObjs.sphere.Parent and vxBezierObjs.sphere.Position or nil

    task.spawn(function()
        local tubeR = vxBezierObjs.tubeR
        local n = tubeR or 0.1

        if vxBezierObjs.tubes then
            for i, tube in ipairs(vxBezierObjs.tubes) do
                pcall(function()
                    if tube and tube.Parent then
                        tube.Color = Color3.new(1, 1, 1)
                        tube.Transparency = 0
                    end
                end)
            end
        end

        task.wait(0.06)
        local n2 = 0

        while true do
            local n3 = n2 + 1
            if n3 > 20 then
                break
            end
            n2 = n3
            task.wait(0.0325)
            local transparency = n3 / 20

            if vxBezierObjs.tubes then
                for i, tube in ipairs(vxBezierObjs.tubes) do
                    pcall(function()
                        if tube and tube.Parent then
                            tube.Transparency = transparency
                            local n4 = math.max(0.001, n * 2 * (1 - transparency))
                            tube.Size = Vector3.new(tube.Size.X, n4, n4)
                        end
                    end)
                end

                n2 = n3
            end
        end

        if vxBezierObjs.tubes then
            for i, tube in ipairs(vxBezierObjs.tubes) do
                pcall(function()
                    if tube and tube.Parent then
                        tube:Destroy()
                    end
                end)
            end
        end
    end)

    task.spawn(function()
        if vxBezierObjs.sphere and vxBezierObjs.sphere.Parent then
            for i = 1, 5 do
                task.wait(0.016)

                pcall(function()
                    if vxBezierObjs.sphere and vxBezierObjs.sphere.Parent then
                        local n = 1 + i / 5 * 0.8
                        vxBezierObjs.sphere.Size = Vector3.new(1.5 * n, 1.5 * n, 1.5 * n)
                        vxBezierObjs.sphere.Transparency = 0.1 + i / 5 * 0.65
                    end
                end)
            end

            pcall(function()
                if vxBezierObjs.sphere and vxBezierObjs.sphere.Parent then
                    vxBezierObjs.sphere:Destroy()
                end
            end)
        end

        if not position then
            return
        end

        for i = 1, 20 do
            task.spawn(function()
                local part = Instance.new("Part")
                part.Anchored = true
                part.CanCollide = false
                part.CastShadow = false
                local n = math.random(5, 16) * 0.05
                local n2 = math.random(3, 10) * 0.05
                part.Size = Vector3.new(n, 0.04, n2)
                part.CFrame = CFrame.new(position) * CFrame.Angles(math.random() * 3.141592653589793 * 2, math.random() * 3.141592653589793 * 2, math.random() * 3.141592653589793 * 2)
                part.Material = Enum.Material.ForceField
                part.Color = fn7()
                part.Transparency = 0.05
                part.Parent = workspace
                local n3 = Vector3.new(math.random(-100, 100) * 0.01, math.random(15, 100) * 0.01, math.random(-100, 100) * 0.01).Unit * math.random(5, 18)
                local n4 = (math.random() - 0.5) * 8
                local n5 = (math.random() - 0.5) * 4
                local n6 = 0
                local n7 = 0.3 + math.random() * 0.3

                while n6 < n7 do
                    local v18 = task.wait()
                    local n8 = n6 + v18
                    n6 = n8
                    if not part.Parent then
                        break
                    end
                    part.CFrame = CFrame.new(part.CFrame.Position + n3 * v18) * CFrame.Angles(0, n4 * v18, n5 * v18)
                    n3 = n3 - Vector3.new(0, 25 * v18, 0)
                    part.Transparency = n8 / n7
                end

                pcall(function()
                    if part.Parent then
                        part:Destroy()
                    end
                end)
            end)
        end
    end)
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

local function fn9()
    getgenv().VX_SlasherAnimIds = {}
    getgenv().VX_SlasherSoundIds = {}
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local tbl = {
        Behead = getgenv().VX_Slasher_Behead,
        GashingWound = getgenv().VX_Slasher_GashingWound,
        Slash = getgenv().VX_Slasher_Slash,
    }

    local tbl2 = {
        Behead = {"BeheadWindup", "Behead", "BeheadHit"},
        GashingWound = {"GashingWoundWindup", "GashingWound", "GashingWoundHit"},
        Slash = {"SlashWindup", "Slash", "SlashHit"},
    }

    local function fn10(arg)
        if type(arg.Animations) == "table" then
            for k, v18 in pairs(tbl) do
                if v18 then
                    local v19 = arg.Animations[k]

                    if type(v19) == "string" then
                        local vxSlasherAnimIds = getgenv().VX_SlasherAnimIds
                        local match = v19:match("%d+")
                        local v20 = match or v19
                        table.insert(vxSlasherAnimIds, v20)
                    end
                end
            end
        end

        if type(arg.Sounds) == "table" then
            local v18, v19, v20 = pairs(tbl)
            local v21 = v20
            local v22 = v18
            local v23 = v19

            while true do
                local v24, v25 = v22(v23, v21)
                if v24 == nil then
                    break
                end
                v21 = v24

                if v25 then
                    local v26 = tbl2[v24]
                    local tbl3 = v26 or {}
                    local v27, v28, v29 = ipairs(tbl3)
                    local v30 = v29
                    local v31 = v27
                    local v32 = v28
                    local v33 = v24
                    local v34 = v22
                    local v35 = v23

                    while true do
                        local v36, v37 = v31(v32, v30)
                        if v36 == nil then
                            break
                        end
                        v30 = v36
                        local v38 = arg.Sounds[v37]

                        if type(v38) == "string" then
                            local vxSlasherSoundIds = getgenv().VX_SlasherSoundIds
                            local match = v38:match("%d+")
                            local v39 = match or v38
                            table.insert(vxSlasherSoundIds, v39)
                        elseif type(v38) == "table" then
                            for i, v39 in ipairs(v38) do
                                if type(v39) == "string" then
                                    local vxSlasherSoundIds = getgenv().VX_SlasherSoundIds
                                    local match = v39:match("%d+")
                                    local v40 = match or v39
                                    table.insert(vxSlasherSoundIds, v40)
                                end
                            end

                            v30 = v36
                        end
                    end

                    v21 = v33
                    v22 = v34
                    v23 = v35
                end
            end
        end
    end

    pcall(function()
        local Config = require(ReplicatedStorage.Assets.Killers.Slasher.Config)

        if Config then
            fn10(Config)
        end
    end)

    pcall(function()
        local assets = ReplicatedStorage:FindFirstChild("Assets")
        local slasher = assets and ReplicatedStorage.Assets:FindFirstChild("Skins") and ReplicatedStorage.Assets.Skins:FindFirstChild("Killers") and ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("Slasher")
        if not slasher then
            return
        end

        for i, child in ipairs(slasher:GetChildren()) do
            pcall(function()
                local config = child:FindFirstChild("Config")

                if config then
                    local module = require(config)

                    if module then
                        fn10(module)
                    end
                end
            end)
        end
    end)
end

local function fn10()
    local v18 = nil

    v18 = v:AddDialog("VX_SlasherAimbotDialog_" .. tostring(tick()), {
        Title = "Slasher Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn9()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_SlasherDlg_Behead", {
        Text = "Behead",
        Default = getgenv().VX_Slasher_Behead,
        Callback = function(vxSlasherBehead)
            getgenv().VX_Slasher_Behead = vxSlasherBehead
        end,
    })

    v18:AddToggle("VX_SlasherDlg_GashingWound", {
        Text = "GashingWound",
        Default = getgenv().VX_Slasher_GashingWound,
        Callback = function(vxSlasherGashingWound)
            getgenv().VX_Slasher_GashingWound = vxSlasherGashingWound
        end,
    })

    v18:AddToggle("VX_SlasherDlg_Slash", {
        Text = "Slash",
        Default = getgenv().VX_Slasher_Slash,
        Callback = function(vxSlasherSlash)
            getgenv().VX_Slasher_Slash = vxSlasherSlash
        end,
    })
end

getgenv().VX_JohnDoe_CorruptEnergy = true
getgenv().VX_JohnDoe_Slash = true
getgenv().VX_JohnDoeAnimIds = {}
getgenv().VX_JohnDoeSoundIds = {}

local function fn11()
    getgenv().VX_JohnDoeAnimIds = {}
    getgenv().VX_JohnDoeSoundIds = {}
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local tbl = {
        CorruptEnergy = getgenv().VX_JohnDoe_CorruptEnergy,
        Slash = getgenv().VX_JohnDoe_Slash,
    }

    local tbl2 = {
        CorruptEnergy = {"CorruptEnergyWindup", "CorruptEnergy", "CorruptEnergyHit"},
        Slash = {"SlashWindup", "Slash", "SlashHit"},
    }

    local function fn12(arg)
        if type(arg.Animations) == "table" then
            for k, v18 in pairs(tbl) do
                if v18 then
                    local v19 = arg.Animations[k]

                    if type(v19) == "string" then
                        local vxJohnDoeAnimIds = getgenv().VX_JohnDoeAnimIds
                        local match = v19:match("%d+")
                        local v20 = match or v19
                        table.insert(vxJohnDoeAnimIds, v20)
                    end
                end
            end
        end

        if type(arg.Sounds) == "table" then
            local v18, v19, v20 = pairs(tbl)
            local v21 = v20
            local v22 = v18
            local v23 = v19

            while true do
                local v24, v25 = v22(v23, v21)
                if v24 == nil then
                    break
                end
                v21 = v24

                if v25 then
                    local v26 = tbl2[v24]
                    local tbl3 = v26 or {}
                    local v27, v28, v29 = ipairs(tbl3)
                    local v30 = v29
                    local v31 = v27
                    local v32 = v28
                    local v33 = v24
                    local v34 = v22
                    local v35 = v23

                    while true do
                        local v36, v37 = v31(v32, v30)
                        if v36 == nil then
                            break
                        end
                        v30 = v36
                        local v38 = arg.Sounds[v37]

                        if type(v38) == "string" then
                            local vxJohnDoeSoundIds = getgenv().VX_JohnDoeSoundIds
                            local match = v38:match("%d+")
                            local v39 = match or v38
                            table.insert(vxJohnDoeSoundIds, v39)
                        elseif type(v38) == "table" then
                            for i, v39 in ipairs(v38) do
                                if type(v39) == "string" then
                                    local vxJohnDoeSoundIds = getgenv().VX_JohnDoeSoundIds
                                    local match = v39:match("%d+")
                                    local v40 = match or v39
                                    table.insert(vxJohnDoeSoundIds, v40)
                                end
                            end

                            v30 = v36
                        end
                    end

                    v21 = v33
                    v22 = v34
                    v23 = v35
                end
            end
        end
    end

    pcall(function()
        local Config = require(ReplicatedStorage.Assets.Killers.JohnDoe.Config)

        if Config then
            fn12(Config)
        end
    end)

    pcall(function()
        local assets = ReplicatedStorage:FindFirstChild("Assets")
        local johnDoe = assets and ReplicatedStorage.Assets:FindFirstChild("Skins") and ReplicatedStorage.Assets.Skins:FindFirstChild("Killers") and ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("JohnDoe")
        if not johnDoe then
            return
        end

        for i, child in ipairs(johnDoe:GetChildren()) do
            pcall(function()
                local config = child:FindFirstChild("Config")

                if config then
                    local module = require(config)

                    if module then
                        fn12(module)
                    end
                end
            end)
        end
    end)
end

local function fn12()
    local v18 = nil

    v18 = v:AddDialog("VX_JohnDoeAimbotDialog_" .. tostring(tick()), {
        Title = "John Doe Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn11()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_JohnDoeDlg_CorruptEnergy", {
        Text = "CorruptEnergy",
        Default = getgenv().VX_JohnDoe_CorruptEnergy,
        Callback = function(vxJohnDoeCorruptEnergy)
            getgenv().VX_JohnDoe_CorruptEnergy = vxJohnDoeCorruptEnergy
        end,
    })

    v18:AddToggle("VX_JohnDoeDlg_Slash", {
        Text = "Slash",
        Default = getgenv().VX_JohnDoe_Slash,
        Callback = function(vxJohnDoeSlash)
            getgenv().VX_JohnDoe_Slash = vxJohnDoeSlash
        end,
    })
end

getgenv().VX_C00lkidd_WalkspeedOverride = true
getgenv().VX_C00lkidd_Punch = true
getgenv().VX_C00lkiddAnimIds = {}
getgenv().VX_C00lkiddSoundIds = {}

local function fn13()
    getgenv().VX_C00lkiddAnimIds = {}
    getgenv().VX_C00lkiddSoundIds = {}
    local v18 = game
    local ReplicatedStorage = v18:GetService("ReplicatedStorage")

    local function fn14(arg, arg2)
        if type(arg2) == "string" then
            local match = arg2:match("%d+")

            if match then
                table.insert(arg, match)
            end
        elseif type(arg2) == "table" then
            for k, v19 in pairs(arg2) do
                v18(arg, v19)
            end
        end
    end

    local function fn15(arg)
        local animations = type(arg.Animations) == "table" and arg.Animations or {}
        local sounds = type(arg.Sounds) == "table" and arg.Sounds or {}
        local voicelines = type(arg.Voicelines) == "table" and arg.Voicelines or {}

        if getgenv().VX_C00lkidd_Punch then
            fn14(getgenv().VX_C00lkiddAnimIds, animations.Attack)
            fn14(getgenv().VX_C00lkiddSoundIds, sounds.Swing)
            fn14(getgenv().VX_C00lkiddSoundIds, sounds.Hit)
        end

        if getgenv().VX_C00lkidd_WalkspeedOverride then
            fn14(getgenv().VX_C00lkiddAnimIds, animations.WalkspeedOverrideStart)
            fn14(getgenv().VX_C00lkiddAnimIds, animations.WalkspeedOverrideLoop)
            fn14(getgenv().VX_C00lkiddAnimIds, animations.WalkspeedOverrideHit)
            fn14(getgenv().VX_C00lkiddAnimIds, animations.WalkspeedOverrideMiss)
            fn14(getgenv().VX_C00lkiddSoundIds, sounds.WalkspeedOverrideLoop)
            fn14(getgenv().VX_C00lkiddSoundIds, sounds.WalkspeedOverrideLunge)
            fn14(getgenv().VX_C00lkiddSoundIds, sounds.WalkspeedOverrideHit)
            fn14(getgenv().VX_C00lkiddSoundIds, sounds.WalkspeedOverrideTimeout)
            fn14(getgenv().VX_C00lkiddSoundIds, sounds.WalkspeedOverrideCollide)
            fn14(getgenv().VX_C00lkiddSoundIds, voicelines.WalkspeedOverride)
            fn14(getgenv().VX_C00lkiddSoundIds, voicelines.WalkspeedOverrideHit)
            fn14(getgenv().VX_C00lkiddSoundIds, voicelines.WalkspeedOverrideCollide)
            fn14(getgenv().VX_C00lkiddSoundIds, voicelines.WalkspeedOverrideTimeout)
        end
    end

    pcall(function()
        local Config = require(ReplicatedStorage.Assets.Killers.c00lkidd.Config)

        if Config then
            fn15(Config)
        end
    end)

    pcall(function()
        local assets = ReplicatedStorage:FindFirstChild("Assets")
        local c00lkidd = assets and ReplicatedStorage.Assets:FindFirstChild("Skins") and ReplicatedStorage.Assets.Skins:FindFirstChild("Killers") and ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("c00lkidd")
        if not c00lkidd then
            return
        end

        for i, child in ipairs(c00lkidd:GetChildren()) do
            pcall(function()
                local config = child:FindFirstChild("Config")

                if config then
                    local module = require(config)

                    if module then
                        fn15(module)
                    end
                end
            end)
        end
    end)
end

local function fn14()
    local v18 = nil

    v18 = v:AddDialog("VX_C00lkiddAimbotDialog_" .. tostring(tick()), {
        Title = "c00lkidd Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn13()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_C00lkiddDlg_WalkspeedOverride", {
        Text = "WalkspeedOverride",
        Default = getgenv().VX_C00lkidd_WalkspeedOverride,
        Callback = function(vxC00lkiddWalkspeedOverride)
            getgenv().VX_C00lkidd_WalkspeedOverride = vxC00lkiddWalkspeedOverride
        end,
    })

    v18:AddToggle("VX_C00lkiddDlg_Punch", {
        Text = "Punch",
        Default = getgenv().VX_C00lkidd_Punch,
        Callback = function(vxC00lkiddPunch)
            getgenv().VX_C00lkidd_Punch = vxC00lkiddPunch
        end,
    })
end

getgenv().VX_Noli_VoidRush = true
getgenv().VX_Noli_Stab = true
getgenv().VX_NoliAnimIds = {}
getgenv().VX_NoliSoundIds = {}

local function fn15()
    getgenv().VX_NoliAnimIds = {}
    getgenv().VX_NoliSoundIds = {}
    local v18 = game
    local ReplicatedStorage = v18:GetService("ReplicatedStorage")

    local function fn16(arg, arg2)
        if type(arg2) == "string" then
            local match = arg2:match("%d+")

            if match then
                table.insert(arg, match)
            end
        elseif type(arg2) == "table" then
            for k, v19 in pairs(arg2) do
                v18(arg, v19)
            end
        end
    end

    local function fn17(arg)
        local animations = type(arg.Animations) == "table" and arg.Animations or {}
        local sounds = type(arg.Sounds) == "table" and arg.Sounds or {}
        local voicelines = type(arg.Voicelines) == "table" and arg.Voicelines or {}

        if getgenv().VX_Noli_Stab then
            fn16(getgenv().VX_NoliAnimIds, animations.Stab)
            fn16(getgenv().VX_NoliSoundIds, sounds.Swing)
            fn16(getgenv().VX_NoliSoundIds, sounds.Hit)
        end

        if getgenv().VX_Noli_VoidRush then
            fn16(getgenv().VX_NoliAnimIds, animations.VoidRush)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushStart)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushWindow)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushWeakHit1)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushWeakHit2)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushWeakHit3)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushWeakHit4)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushWeakHit5)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushLoop)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushCancel)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushMissTimeout)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushMissCancelled)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushMissCrashed)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushMissStunned)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushDash1)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushDash2)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushDashLoop)
            fn16(getgenv().VX_NoliSoundIds, sounds.VoidRushCutscene)
            fn16(getgenv().VX_NoliSoundIds, voicelines.VoidRushStart)
            fn16(getgenv().VX_NoliSoundIds, voicelines.Slam)
            fn16(getgenv().VX_NoliSoundIds, voicelines.VoidRushMissTimeout)
            fn16(getgenv().VX_NoliSoundIds, voicelines.VoidRushMissCrashed)
        end
    end

    pcall(function()
        local Config = require(ReplicatedStorage.Assets.Killers.Noli.Config)

        if Config then
            fn17(Config)
        end
    end)

    pcall(function()
        local assets = ReplicatedStorage:FindFirstChild("Assets")
        local noli = assets and ReplicatedStorage.Assets:FindFirstChild("Skins") and ReplicatedStorage.Assets.Skins:FindFirstChild("Killers") and ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("Noli")
        if not noli then
            return
        end

        for i, child in ipairs(noli:GetChildren()) do
            pcall(function()
                local config = child:FindFirstChild("Config")

                if config then
                    local module = require(config)

                    if module then
                        fn17(module)
                    end
                end
            end)
        end
    end)
end

local function fn16()
    local v18 = nil

    v18 = v:AddDialog("VX_NoliAimbotDialog_" .. tostring(tick()), {
        Title = "Noli Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn15()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_NoliDlg_VoidRush", {
        Text = "VoidRush",
        Default = getgenv().VX_Noli_VoidRush,
        Callback = function(vxNoliVoidRush)
            getgenv().VX_Noli_VoidRush = vxNoliVoidRush
        end,
    })

    v18:AddToggle("VX_NoliDlg_Stab", {
        Text = "Stab",
        Default = getgenv().VX_Noli_Stab,
        Callback = function(vxNoliStab)
            getgenv().VX_Noli_Stab = vxNoliStab
        end,
    })
end

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

local function fn17()
    getgenv().VX_TwoTimeAnimIds = {}
    getgenv().VX_TwoTimeSoundIds = {}

    if getgenv().VX_TwoTime_Stab then
        table.insert(getgenv().VX_TwoTimeAnimIds, "100725497418533")
        table.insert(getgenv().VX_TwoTimeAnimIds, "106086955212611")
        table.insert(getgenv().VX_TwoTimeAnimIds, "107640065977686")
        table.insert(getgenv().VX_TwoTimeAnimIds, "77119710693654")
        table.insert(getgenv().VX_TwoTimeAnimIds, "112902284724598")
        table.insert(getgenv().VX_TwoTimeAnimIds, "89448354637442")
        table.insert(getgenv().VX_TwoTimeAnimIds, "115194624791339")
        table.insert(getgenv().VX_TwoTimeAnimIds, "119434518007321")
    end
end

local function fn18()
    local v18 = nil

    v18 = v:AddDialog("VX_TwoTimeAimbotDialog_" .. tostring(tick()), {
        Title = "Two Time Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn17()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_TwoTimeDlg_Stab", {
        Text = "Stab",
        Default = getgenv().VX_TwoTime_Stab,
        Callback = function(vxTwoTimeStab)
            getgenv().VX_TwoTime_Stab = vxTwoTimeStab
        end,
    })
end

local function fn19()
    getgenv().VX_ShedletskyAnimIds = {}
    getgenv().VX_ShedletskySoundIds = {}
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local tbl = {Slash = getgenv().VX_Shedletsky_Slash}
    local tbl2 = {Slash = {"Unsheath", "Slash", "Hit"}}

    local function fn20(arg)
        if type(arg.Animations) == "table" then
            for k, v18 in pairs(tbl) do
                if v18 then
                    local v19 = arg.Animations[k]

                    if type(v19) == "string" then
                        local vxShedletskyAnimIds = getgenv().VX_ShedletskyAnimIds
                        local match = v19:match("%d+")
                        local v20 = match or v19
                        table.insert(vxShedletskyAnimIds, v20)
                    end
                end
            end
        end

        if type(arg.Sounds) == "table" then
            local v18, v19, v20 = pairs(tbl)
            local v21 = v20
            local v22 = v18
            local v23 = v19

            while true do
                local v24, v25 = v22(v23, v21)
                if v24 == nil then
                    break
                end
                v21 = v24

                if v25 then
                    local v26 = tbl2[v24]
                    local tbl3 = v26 or {}
                    local v27, v28, v29 = ipairs(tbl3)
                    local v30 = v29
                    local v31 = v27
                    local v32 = v28
                    local v33 = v24
                    local v34 = v22
                    local v35 = v23

                    while true do
                        local v36, v37 = v31(v32, v30)
                        if v36 == nil then
                            break
                        end
                        v30 = v36
                        local v38 = arg.Sounds[v37]

                        if type(v38) == "string" then
                            local vxShedletskySoundIds = getgenv().VX_ShedletskySoundIds
                            local match = v38:match("%d+")
                            local v39 = match or v38
                            table.insert(vxShedletskySoundIds, v39)
                        elseif type(v38) == "table" then
                            for i, v39 in ipairs(v38) do
                                if type(v39) == "string" then
                                    local vxShedletskySoundIds = getgenv().VX_ShedletskySoundIds
                                    local match = v39:match("%d+")
                                    local v40 = match or v39
                                    table.insert(vxShedletskySoundIds, v40)
                                end
                            end

                            v30 = v36
                        end
                    end

                    v21 = v33
                    v22 = v34
                    v23 = v35
                end
            end
        end
    end

    pcall(function()
        local Config = require(ReplicatedStorage.Assets.Survivors.Shedletsky.Config)

        if Config then
            fn20(Config)
        end
    end)

    pcall(function()
        local assets = ReplicatedStorage:FindFirstChild("Assets")
        local shedletsky = assets and ReplicatedStorage.Assets:FindFirstChild("Skins") and ReplicatedStorage.Assets.Skins:FindFirstChild("Survivors") and ReplicatedStorage.Assets.Skins.Survivors:FindFirstChild("Shedletsky")
        if not shedletsky then
            return
        end

        for i, child in ipairs(shedletsky:GetChildren()) do
            pcall(function()
                local config = child:FindFirstChild("Config")

                if config then
                    local module = require(config)

                    if module then
                        fn20(module)
                    end
                end
            end)
        end
    end)
end

local function fn20()
    local v18 = nil

    v18 = v:AddDialog("VX_ShedletskyAimbotDialog_" .. tostring(tick()), {
        Title = "Shedletsky Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn19()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_ShedletskyDlg_Slash", {
        Text = "Slash",
        Default = getgenv().VX_Shedletsky_Slash,
        Callback = function(vxShedletskySlash)
            getgenv().VX_Shedletsky_Slash = vxShedletskySlash
        end,
    })
end

local function fn21()
    getgenv().VX_ElliotAnimIds = {}
    getgenv().VX_ElliotSoundIds = {}
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local tbl = {ThrowPizza = getgenv().VX_Elliot_ThrowPizza}
    local tbl2 = {ThrowPizza = {"PizzaThrown", "PizzaEaten"}}

    local function fn22(arg)
        if type(arg.Animations) == "table" then
            for k, v18 in pairs(tbl) do
                if v18 then
                    local v19 = arg.Animations[k]

                    if type(v19) == "string" then
                        local vxElliotAnimIds = getgenv().VX_ElliotAnimIds
                        local match = v19:match("%d+")
                        local v20 = match or v19
                        table.insert(vxElliotAnimIds, v20)
                    end
                end
            end
        end

        if type(arg.Sounds) == "table" then
            local v18, v19, v20 = pairs(tbl)
            local v21 = v20
            local v22 = v18
            local v23 = v19

            while true do
                local v24, v25 = v22(v23, v21)
                if v24 == nil then
                    break
                end
                v21 = v24

                if v25 then
                    local v26 = tbl2[v24]
                    local tbl3 = v26 or {}
                    local v27, v28, v29 = ipairs(tbl3)
                    local v30 = v29
                    local v31 = v27
                    local v32 = v28
                    local v33 = v24
                    local v34 = v22
                    local v35 = v23

                    while true do
                        local v36, v37 = v31(v32, v30)
                        if v36 == nil then
                            break
                        end
                        v30 = v36
                        local v38 = arg.Sounds[v37]

                        if type(v38) == "string" then
                            local vxElliotSoundIds = getgenv().VX_ElliotSoundIds
                            local match = v38:match("%d+")
                            local v39 = match or v38
                            table.insert(vxElliotSoundIds, v39)
                        elseif type(v38) == "table" then
                            for i, v39 in ipairs(v38) do
                                if type(v39) == "string" then
                                    local vxElliotSoundIds = getgenv().VX_ElliotSoundIds
                                    local match = v39:match("%d+")
                                    local v40 = match or v39
                                    table.insert(vxElliotSoundIds, v40)
                                end
                            end

                            v30 = v36
                        end
                    end

                    v21 = v33
                    v22 = v34
                    v23 = v35
                end
            end
        end
    end

    pcall(function()
        local Config = require(ReplicatedStorage.Assets.Survivors.Elliot.Config)

        if Config then
            fn22(Config)
        end
    end)

    pcall(function()
        local assets = ReplicatedStorage:FindFirstChild("Assets")
        local elliot = assets and ReplicatedStorage.Assets:FindFirstChild("Skins") and ReplicatedStorage.Assets.Skins:FindFirstChild("Survivors") and ReplicatedStorage.Assets.Skins.Survivors:FindFirstChild("Elliot")
        if not elliot then
            return
        end

        for i, child in ipairs(elliot:GetChildren()) do
            pcall(function()
                local config = child:FindFirstChild("Config")

                if config then
                    local module = require(config)

                    if module then
                        fn22(module)
                    end
                end
            end)
        end
    end)
end

local function fn22()
    local v18 = nil

    v18 = v:AddDialog("VX_ElliotAimbotDialog_" .. tostring(tick()), {
        Title = "Elliot Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn21()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_ElliotDlg_ThrowPizza", {
        Text = "ThrowPizza",
        Default = getgenv().VX_Elliot_ThrowPizza,
        Callback = function(vxElliotThrowPizza)
            getgenv().VX_Elliot_ThrowPizza = vxElliotThrowPizza
        end,
    })
end

local function fn23()
    getgenv().VX_JaneDoeAnimIds = {}
    getgenv().VX_JaneDoeSoundIds = {}
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local tbl = {Axe = getgenv().VX_JaneDoe_Axe}
    local tbl2 = {Axe = {"Draw", "Swing", "DefaultHit"}}

    local function fn24(arg)
        if type(arg.Animations) == "table" then
            for k, v18 in pairs(tbl) do
                if v18 then
                    local v19 = arg.Animations[k]

                    if type(v19) == "string" then
                        local vxJaneDoeAnimIds = getgenv().VX_JaneDoeAnimIds
                        local match = v19:match("%d+")
                        local v20 = match or v19
                        table.insert(vxJaneDoeAnimIds, v20)
                    end
                end
            end
        end

        if type(arg.Sounds) == "table" then
            local v18, v19, v20 = pairs(tbl)
            local v21 = v20
            local v22 = v18
            local v23 = v19

            while true do
                local v24, v25 = v22(v23, v21)
                if v24 == nil then
                    break
                end
                v21 = v24

                if v25 then
                    local v26 = tbl2[v24]
                    local tbl3 = v26 or {}
                    local v27, v28, v29 = ipairs(tbl3)
                    local v30 = v29
                    local v31 = v27
                    local v32 = v28
                    local v33 = v24
                    local v34 = v22
                    local v35 = v23

                    while true do
                        local v36, v37 = v31(v32, v30)
                        if v36 == nil then
                            break
                        end
                        v30 = v36
                        local v38 = arg.Sounds[v37]

                        if type(v38) == "string" then
                            local vxJaneDoeSoundIds = getgenv().VX_JaneDoeSoundIds
                            local match = v38:match("%d+")
                            local v39 = match or v38
                            table.insert(vxJaneDoeSoundIds, v39)
                        elseif type(v38) == "table" then
                            for i, v39 in ipairs(v38) do
                                if type(v39) == "string" then
                                    local vxJaneDoeSoundIds = getgenv().VX_JaneDoeSoundIds
                                    local match = v39:match("%d+")
                                    local v40 = match or v39
                                    table.insert(vxJaneDoeSoundIds, v40)
                                end
                            end

                            v30 = v36
                        end
                    end

                    v21 = v33
                    v22 = v34
                    v23 = v35
                end
            end
        end
    end

    pcall(function()
        local Config = require(ReplicatedStorage.Assets.Survivors.JaneDoe.Config)

        if Config then
            fn24(Config)
        end
    end)

    pcall(function()
        local assets = ReplicatedStorage:FindFirstChild("Assets")
        local janeDoe = assets and ReplicatedStorage.Assets:FindFirstChild("Skins") and ReplicatedStorage.Assets.Skins:FindFirstChild("Survivors") and ReplicatedStorage.Assets.Skins.Survivors:FindFirstChild("JaneDoe")
        if not janeDoe then
            return
        end

        for i, child in ipairs(janeDoe:GetChildren()) do
            pcall(function()
                local config = child:FindFirstChild("Config")

                if config then
                    local module = require(config)

                    if module then
                        fn24(module)
                    end
                end
            end)
        end
    end)
end

local function fn24()
    local v18 = nil

    v18 = v:AddDialog("VX_JaneDoeAimbotDialog2_" .. tostring(tick()), {
        Title = "Jane Doe Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn23()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_JaneDlg_Axe", {
        Text = "Axe",
        Default = getgenv().VX_JaneDoe_Axe,
        Callback = function(vxJaneDoeAxe)
            getgenv().VX_JaneDoe_Axe = vxJaneDoeAxe
        end,
    })
end

local function fn25()
    getgenv().VX_NosAnimIds = {}
    getgenv().VX_NosSoundIds = {}
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local tbl = {
        Uppercut = getgenv().VX_Nos_Uppercut,
        Slash = getgenv().VX_Nos_Slash,
    }

    local tbl2 = {
        Uppercut = {"UppercutWindup", "Uppercut", "UppercutHit"},
        Slash = {"SlashWindup", "Slash", "SlashHit"},
    }

    local function fn26(arg)
        if type(arg.Animations) == "table" then
            for k, v18 in pairs(tbl) do
                if v18 then
                    local v19 = arg.Animations[k]

                    if type(v19) == "string" then
                        local vxNosAnimIds = getgenv().VX_NosAnimIds
                        local match = v19:match("%d+")
                        local v20 = match or v19
                        table.insert(vxNosAnimIds, v20)
                    end
                end
            end
        end

        if type(arg.Sounds) == "table" then
            local v18, v19, v20 = pairs(tbl)
            local v21 = v20
            local v22 = v18
            local v23 = v19

            while true do
                local v24, v25 = v22(v23, v21)
                if v24 == nil then
                    break
                end
                v21 = v24

                if v25 then
                    local v26 = tbl2[v24]
                    local tbl3 = v26 or {}
                    local v27, v28, v29 = ipairs(tbl3)
                    local v30 = v29
                    local v31 = v27
                    local v32 = v28
                    local v33 = v24
                    local v34 = v22
                    local v35 = v23

                    while true do
                        local v36, v37 = v31(v32, v30)
                        if v36 == nil then
                            break
                        end
                        v30 = v36
                        local v38 = arg.Sounds[v37]

                        if type(v38) == "string" then
                            local vxNosSoundIds = getgenv().VX_NosSoundIds
                            local match = v38:match("%d+")
                            local v39 = match or v38
                            table.insert(vxNosSoundIds, v39)
                        elseif type(v38) == "table" then
                            for i, v39 in ipairs(v38) do
                                if type(v39) == "string" then
                                    local vxNosSoundIds = getgenv().VX_NosSoundIds
                                    local match = v39:match("%d+")
                                    local v40 = match or v39
                                    table.insert(vxNosSoundIds, v40)
                                end
                            end

                            v30 = v36
                        end
                    end

                    v21 = v33
                    v22 = v34
                    v23 = v35
                end
            end
        end
    end

    pcall(function()
        local Config = require(ReplicatedStorage.Assets.Killers.Nosferatu.Config)

        if Config then
            fn26(Config)
        end
    end)

    pcall(function()
        local assets = ReplicatedStorage:FindFirstChild("Assets")
        local nosferatu = assets and ReplicatedStorage.Assets:FindFirstChild("Skins") and ReplicatedStorage.Assets.Skins:FindFirstChild("Killers") and ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("Nosferatu")
        if not nosferatu then
            return
        end

        for i, child in ipairs(nosferatu:GetChildren()) do
            pcall(function()
                local config = child:FindFirstChild("Config")

                if config then
                    local module = require(config)

                    if module then
                        fn26(module)
                    end
                end
            end)
        end
    end)
end

local function fn26()
    local v18 = nil

    v18 = v:AddDialog("VX_NosAimbotDialog_" .. tostring(tick()), {
        Title = "Nosferatu Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn25()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_NosDlg_Uppercut", {
        Text = "Uppercut",
        Default = getgenv().VX_Nos_Uppercut,
        Callback = function(vxNosUppercut)
            getgenv().VX_Nos_Uppercut = vxNosUppercut
        end,
    })

    v18:AddToggle("VX_NosDlg_Slash", {
        Text = "Slash",
        Default = getgenv().VX_Nos_Slash,
        Callback = function(vxNosSlash)
            getgenv().VX_Nos_Slash = vxNosSlash
        end,
    })
end

local function fn27()
    getgenv().VX_SixerAnimIds = {}
    getgenv().VX_SixerSoundIds = {}
    local v18 = game
    local ReplicatedStorage = v18:GetService("ReplicatedStorage")

    local function fn28(arg, arg2)
        if type(arg2) == "string" then
            local match = arg2:match("%d+")

            if match then
                table.insert(arg, match)
            end
        elseif type(arg2) == "table" then
            for k, v19 in pairs(arg2) do
                v18(arg, v19)
            end
        end
    end

    local function fn29(arg)
        local animations = type(arg.Animations) == "table" and arg.Animations or {}
        local sounds = type(arg.Sounds) == "table" and arg.Sounds or {}

        if getgenv().VX_Sixer_Slash then
            fn28(getgenv().VX_SixerAnimIds, animations.Slash)
            fn28(getgenv().VX_SixerSoundIds, sounds.Swing)
            fn28(getgenv().VX_SixerSoundIds, sounds.Chomp)
            fn28(getgenv().VX_SixerSoundIds, sounds.Hit)
        end

        if getgenv().VX_Sixer_DemonicPursuit then
            fn28(getgenv().VX_SixerAnimIds, animations.DemonicPursuitStart)
            fn28(getgenv().VX_SixerAnimIds, animations.DemonicPursuitLoop)
            fn28(getgenv().VX_SixerAnimIds, animations.DemonicPursuitLunge)
            fn28(getgenv().VX_SixerAnimIds, animations.DemonicPursuitCutscene)
            fn28(getgenv().VX_SixerSoundIds, sounds.DemonicPursuitPrepare)
            fn28(getgenv().VX_SixerSoundIds, sounds.DemonicPursuitPrepareWARN)
            fn28(getgenv().VX_SixerSoundIds, sounds.DemonicPursuitLunge)
            fn28(getgenv().VX_SixerSoundIds, sounds.DemonicPursuitHit)
            fn28(getgenv().VX_SixerSoundIds, sounds.DemonicPursuitCutscene)
            fn28(getgenv().VX_SixerSoundIds, sounds.Crashed)
            fn28(getgenv().VX_SixerSoundIds, sounds.Landed)
            fn28(getgenv().VX_SixerSoundIds, sounds.Slide)
        end

        if getgenv().VX_Sixer_InfernalCry then
            fn28(getgenv().VX_SixerAnimIds, animations.Cry)
            fn28(getgenv().VX_SixerSoundIds, sounds.CryWindup)
            fn28(getgenv().VX_SixerSoundIds, sounds.CryShockwave)
            fn28(getgenv().VX_SixerSoundIds, sounds.CryHit)
        end
    end

    pcall(function()
        local Config = require(ReplicatedStorage.Assets.Killers.Sixer.Config)

        if Config then
            fn29(Config)
        end
    end)

    pcall(function()
        local assets = ReplicatedStorage:FindFirstChild("Assets")
        local sixer = assets and ReplicatedStorage.Assets:FindFirstChild("Skins") and ReplicatedStorage.Assets.Skins:FindFirstChild("Killers") and ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("Sixer")
        if not sixer then
            return
        end

        for i, child in ipairs(sixer:GetChildren()) do
            pcall(function()
                local config = child:FindFirstChild("Config")

                if config then
                    local module = require(config)

                    if module then
                        fn29(module)
                    end
                end
            end)
        end
    end)
end

local function fn28()
    local v18 = nil

    v18 = v:AddDialog("VX_SixerAimbotDialog_" .. tostring(tick()), {
        Title = "Sixer Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn27()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_SixerDlg_DemonicPursuit", {
        Text = "Demonic Pursuit",
        Default = getgenv().VX_Sixer_DemonicPursuit,
        Callback = function(vxSixerDemonicPursuit)
            getgenv().VX_Sixer_DemonicPursuit = vxSixerDemonicPursuit
        end,
    })

    v18:AddToggle("VX_SixerDlg_InfernalCry", {
        Text = "Infernal Cry",
        Default = getgenv().VX_Sixer_InfernalCry,
        Callback = function(vxSixerInfernalCry)
            getgenv().VX_Sixer_InfernalCry = vxSixerInfernalCry
        end,
    })

    v18:AddToggle("VX_SixerDlg_Slash", {
        Text = "Slash",
        Default = getgenv().VX_Sixer_Slash,
        Callback = function(vxSixerSlash)
            getgenv().VX_Sixer_Slash = vxSixerSlash
        end,
    })
end

local function fn29()
    getgenv().VX_1x1AnimIds = {}
    getgenv().VX_1x1_3DAnimIds = {}
    getgenv().VX_1x1SoundIds = {}
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local tbl = {
        Entanglement = getgenv().VX_1x1_Entanglement,
        MassInfection = getgenv().VX_1x1_MassInfection,
        Slash = getgenv().VX_1x1_Slash,
    }

    local tbl2 = {
        Entanglement = getgenv().VX_1x1_Entanglement,
        MassInfection = getgenv().VX_1x1_MassInfection,
    }

    local tbl3 = {
        Slash = {"Swing"},
        MassInfection = {"MassInfectionActivate", "MassInfectionProjectile"},
        Entanglement = {"EntanglementActivate", "EntanglementProjectile"},
    }

    local function fn30(arg)
        if type(arg.Animations) == "table" then
            for k, v18 in pairs(tbl) do
                if v18 then
                    local v19 = arg.Animations[k]

                    if type(v19) == "string" then
                        local vx1x1AnimIds = getgenv().VX_1x1AnimIds
                        local match = v19:match("%d+")
                        local v20 = match or v19
                        table.insert(vx1x1AnimIds, v20)
                    end
                end
            end

            for k, v18 in pairs(tbl2) do
                if v18 then
                    local v19 = arg.Animations[k]

                    if type(v19) == "string" then
                        local vx1x13DAnimIds = getgenv().VX_1x1_3DAnimIds
                        local match = v19:match("%d+")
                        local v20 = match or v19
                        table.insert(vx1x13DAnimIds, v20)
                    end
                end
            end
        end

        if type(arg.Sounds) == "table" then
            local v18, v19, v20 = pairs(tbl)
            local v21 = v20
            local v22 = v18
            local v23 = v19

            while true do
                local v24, v25 = v22(v23, v21)
                if v24 == nil then
                    break
                end
                v21 = v24

                if v25 then
                    local v26 = tbl3[v24]
                    local tbl4 = v26 or {}
                    local v27, v28, v29 = ipairs(tbl4)
                    local v30 = v29
                    local v31 = v27
                    local v32 = v28
                    local v33 = v24
                    local v34 = v22
                    local v35 = v23

                    while true do
                        local v36, v37 = v31(v32, v30)
                        if v36 == nil then
                            break
                        end
                        v30 = v36
                        local v38 = arg.Sounds[v37]

                        if type(v38) == "string" then
                            local vx1x1SoundIds = getgenv().VX_1x1SoundIds
                            local match = v38:match("%d+")
                            local v39 = match or v38
                            table.insert(vx1x1SoundIds, v39)
                        elseif type(v38) == "table" then
                            for i, v39 in ipairs(v38) do
                                if type(v39) == "string" then
                                    local vx1x1SoundIds = getgenv().VX_1x1SoundIds
                                    local match = v39:match("%d+")
                                    local v40 = match or v39
                                    table.insert(vx1x1SoundIds, v40)
                                end
                            end

                            v30 = v36
                        end
                    end

                    v21 = v33
                    v22 = v34
                    v23 = v35
                end
            end
        end
    end

    pcall(function()
        local Config = require(ReplicatedStorage.Assets.Killers["1x1x1x1"].Config)

        if Config then
            fn30(Config)
        end
    end)

    pcall(function()
        local assets = ReplicatedStorage:FindFirstChild("Assets")
        local n1x1x1x1 = assets and ReplicatedStorage.Assets:FindFirstChild("Skins") and ReplicatedStorage.Assets.Skins:FindFirstChild("Killers") and ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("1x1x1x1")
        if not n1x1x1x1 then
            return
        end

        for i, child in ipairs(n1x1x1x1:GetChildren()) do
            pcall(function()
                local config = child:FindFirstChild("Config")

                if config then
                    local module = require(config)

                    if module then
                        fn30(module)
                    end
                end
            end)
        end
    end)
end

local function fn30()
    local v18 = nil

    v18 = v:AddDialog("VX_1x1AimbotDialog_" .. tostring(tick()), {
        Title = "1x1x1x1 Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn29()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_1x1Dlg_Entanglement", {
        Text = "Entanglement",
        Default = getgenv().VX_1x1_Entanglement,
        Callback = function(vx1x1Entanglement)
            getgenv().VX_1x1_Entanglement = vx1x1Entanglement
        end,
    })

    v18:AddToggle("VX_1x1Dlg_MassInfection", {
        Text = "MassInfection",
        Default = getgenv().VX_1x1_MassInfection,
        Callback = function(vx1x1MassInfection)
            getgenv().VX_1x1_MassInfection = vx1x1MassInfection
        end,
    })

    v18:AddToggle("VX_1x1Dlg_Slash", {
        Text = "Slash",
        Default = getgenv().VX_1x1_Slash,
        Callback = function(vx1x1Slash)
            getgenv().VX_1x1_Slash = vx1x1Slash
        end,
    })
end

local function fn31()
    getgenv().VX_AzureAnimIds = {}
    getgenv().VX_AzureSoundIds = {}
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local tbl = {
        {
            toggle = getgenv().VX_Azure_Slash,
            animKey = "Slash",
            soundKeys = {"SlashWindup", "Slash", "SlashHit"},
        },
        {
            toggle = getgenv().VX_Azure_Pummeling,
            animKey = "GolemSlash",
            soundKeys = {"SmashWindup", "Smash", "SmashHit"},
        },
        {
            toggle = getgenv().VX_Azure_GolemShockwave,
            animKey = "GolemShockwave",
            soundKeys = {"ShockwaveWindup", "Shockwave"},
        },
        {
            toggle = getgenv().VX_Azure_GolemFissure,
            animKey = "GolemFissure",
            soundKeys = {"FissureWindup", "FissureStomp"},
        },
    }

    local function fn32(arg)
        local v18, v19, v20 = ipairs(tbl)
        local v21 = v20
        local v22 = v18
        local v23 = v19

        while true do
            local v24, v25 = v22(v23, v21)
            if v24 == nil then
                break
            end
            v21 = v24

            if v25.toggle then
                if type(arg.Animations) == "table" then
                    local v26 = arg.Animations[v25.animKey]

                    if type(v26) == "string" then
                        local vxAzureAnimIds = getgenv().VX_AzureAnimIds
                        local match = v26:match("%d+")
                        local v27 = match or v26
                        table.insert(vxAzureAnimIds, v27)
                    end
                end

                if type(arg.Sounds) == "table" then
                    local v26, v27, v28 = ipairs(v25.soundKeys)
                    local v29 = v28
                    local v30 = v26
                    local v31 = v27
                    local v32 = v24
                    local v33 = v22
                    local v34 = v23

                    while true do
                        local v35, v36 = v30(v31, v29)
                        if v35 == nil then
                            break
                        end
                        v29 = v35
                        local v37 = arg.Sounds[v36]

                        if type(v37) == "string" then
                            local vxAzureSoundIds = getgenv().VX_AzureSoundIds
                            local match = v37:match("%d+")
                            local v38 = match or v37
                            table.insert(vxAzureSoundIds, v38)
                        elseif type(v37) == "table" then
                            for i, v38 in ipairs(v37) do
                                if type(v38) == "string" then
                                    local vxAzureSoundIds = getgenv().VX_AzureSoundIds
                                    local match = v38:match("%d+")
                                    local v39 = match or v38
                                    table.insert(vxAzureSoundIds, v39)
                                end
                            end

                            v29 = v35
                        end
                    end

                    v21 = v32
                    v22 = v33
                    v23 = v34
                end
            end
        end
    end

    pcall(function()
        local Config = require(ReplicatedStorage.Assets.Killers.Azure.Config)

        if Config then
            fn32(Config)
        end
    end)

    pcall(function()
        local assets = ReplicatedStorage:FindFirstChild("Assets")
        local azure = assets and ReplicatedStorage.Assets:FindFirstChild("Skins") and ReplicatedStorage.Assets.Skins:FindFirstChild("Killers") and ReplicatedStorage.Assets.Skins.Killers:FindFirstChild("Azure")
        if not azure then
            return
        end

        for i, child in ipairs(azure:GetChildren()) do
            pcall(function()
                local config = child:FindFirstChild("Config")

                if config then
                    local module = require(config)

                    if module then
                        fn32(module)
                    end
                end
            end)
        end
    end)
end

local function fn32()
    local v18 = nil

    v18 = v:AddDialog("VX_AzureAimbotDialog_" .. tostring(tick()), {
        Title = "Azure Aimbot Config",
        Description = "Toggle which abilities trigger the aimbot, then click Apply.",
        AutoDismiss = false,
        OutsideClickDismiss = true,
        FooterButtons = {
            Apply = {
                Title = "Apply",
                Variant = "Primary",
                Order = 2,
                Callback = function()
                    fn31()
                    v18:Dismiss()
                end,
            },
        },
    })

    v18:AddToggle("VX_AzDlg_Slash", {
        Text = "Perforating (Azure M1)",
        Default = getgenv().VX_Azure_Slash,
        Callback = function(vxAzureSlash)
            getgenv().VX_Azure_Slash = vxAzureSlash
        end,
    })

    v18:AddToggle("VX_AzDlg_Pummeling", {
        Text = "Pummeling (Golem M1)",
        Default = getgenv().VX_Azure_Pummeling,
        Callback = function(vxAzurePummeling)
            getgenv().VX_Azure_Pummeling = vxAzurePummeling
        end,
    })

    v18:AddToggle("VX_AzDlg_GolemShockwave", {
        Text = "Blooming (Golem Shockwave)",
        Default = getgenv().VX_Azure_GolemShockwave,
        Callback = function(vxAzureGolemShockwave)
            getgenv().VX_Azure_GolemShockwave = vxAzureGolemShockwave
        end,
    })

    v18:AddToggle("VX_AzDlg_GolemFissure", {
        Text = "Unearthing (Golem Fissure)",
        Default = getgenv().VX_Azure_GolemFissure,
        Callback = function(vxAzureGolemFissure)
            getgenv().VX_Azure_GolemFissure = vxAzureGolemFissure
        end,
    })
end

local tbl = {
    Azure = true,
    ["1x1x1x1"] = true,
    Slasher = true,
    ["John Doe"] = true,
    Nosferatu = true,
    Sixer = true,
    c00lkidd = true,
    Noli = true,
    Shedletsky = true,
    Elliot = true,
    ["Jane Doe"] = true,
    Chance = true,
    ["Two Time"] = true,
}

local function fn33(arg)
    if arg == "Azure" then
        return getgenv().VX_AzureAnimIds
    end

    if arg == "1x1x1x1" then
        return getgenv().VX_1x1AnimIds
    end

    if arg == "Slasher" then
        return getgenv().VX_SlasherAnimIds
    end

    if arg == "John Doe" then
        return getgenv().VX_JohnDoeAnimIds
    end

    if arg == "Nosferatu" then
        return getgenv().VX_NosAnimIds
    end

    if arg == "Sixer" then
        return getgenv().VX_SixerAnimIds
    end

    if arg == "c00lkidd" then
        return getgenv().VX_C00lkiddAnimIds
    end

    if arg == "Noli" then
        return getgenv().VX_NoliAnimIds
    end

    if arg == "Shedletsky" then
        return getgenv().VX_ShedletskyAnimIds
    end

    if arg == "Elliot" then
        return getgenv().VX_ElliotAnimIds
    end

    if arg == "Jane Doe" then
        return getgenv().VX_JaneDoeAnimIds
    end

    if arg == "Two Time" then
        return getgenv().VX_TwoTimeAnimIds
    end
    return {}
end

local tbl2 = {
    Shedletsky = true,
    Elliot = true,
    ["Jane Doe"] = true,
    ["Two Time"] = true,
}

local function fn34(arg)
    local v18 = fn33(arg)
    if not v18 or #v18 == 0 then
        return false
    end
    local tbl3 = {}

    for i, v19 in ipairs(v18) do
        tbl3[tostring(v19)] = true
    end

    if not tbl2[arg] then
        local players = workspace:FindFirstChild("Players")
        local killers = players and workspace.Players:FindFirstChild("Killers")
        if not killers then
            return false
        end
        local v19 = killers:FindFirstChild(arg)
        if not v19 then
            return false
        end

        if game:GetService("Players").LocalPlayer.Character ~= v19 then
            return false
        end
        local humanoid = v19:FindFirstChildOfClass("Humanoid")
        local animator = humanoid and humanoid:FindFirstChildOfClass("Animator")
        if not animator then
            return false
        end

        for i, v20 in ipairs(animator:GetPlayingAnimationTracks()) do
            if not v20.Animation then
                continue
            end
            local match = tostring(v20.Animation.AnimationId):match("%d+")
            if match and tbl3[match] then
                return true
            end
        end

        return false
    end

    local character = game:GetService("Players").LocalPlayer.Character
    if not character then
        return false
    end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local animator = humanoid and humanoid:FindFirstChildOfClass("Animator")
    if not animator then
        return false
    end

    for i, v19 in ipairs(animator:GetPlayingAnimationTracks()) do
        if not v19.Animation then
            continue
        end
        local match = tostring(v19.Animation.AnimationId):match("%d+")
        if match and tbl3[match] then
            return true
        end
    end

    return false
end

local function fn35()
    local character = game:GetService("Players").LocalPlayer.Character
    if not character then
        return false
    end
    local flintlock = character:FindFirstChild("Flintlock", true)
    local v18 = flintlock
    if not flintlock then
        return false
    end

    if not flintlock:IsA("BasePart") and not flintlock:IsA("MeshPart") and not flintlock:IsA("UnionOperation") then
        local basePart = flintlock:FindFirstChildWhichIsA("BasePart", true)
        v18 = basePart
        if not basePart then
            return false
        end
    end

    local flag = v18.Transparency < 1
    return flag
end

getgenv().VX_AimbotSurvivorConn = nil
getgenv().VX_AimbotSurvivorHRPConn = nil
getgenv().VX_AimbotDelayActive = false
getgenv().VX_AimbotWasActive = false
getgenv().VX_AimbotBestHRP = nil
getgenv().VX_AimbotPredictedPos = nil;

(function()
    if getgenv().VX_AimbotSurvivorConn then
        getgenv().VX_AimbotSurvivorConn:Disconnect()
        getgenv().VX_AimbotSurvivorConn = nil
    end

    if getgenv().VX_AimbotSurvivorHRPConn then
        getgenv().VX_AimbotSurvivorHRPConn:Disconnect()
        getgenv().VX_AimbotSurvivorHRPConn = nil
    end

    local function fn36()
        if not getgenv().VX_AimbotEnabled then
            getgenv().VX_AimbotWasActive = false
            getgenv().VX_AimbotDelayActive = false
            getgenv().VX_AimbotBestHRP = nil
            getgenv().VX_AimbotPredictedPos = nil
            return false
        end

        local vxAimbotTargets = getgenv().VX_AimbotTargets
        local tbl3 = vxAimbotTargets or {}
        local v18 = nil

        for k in pairs(tbl3) do
            if tbl[k] then
                local flag = false

                if k == "Chance" then
                    flag = fn35()
                else
                    pcall(function()
                        flag = fn34(k)
                    end)
                end

                if not flag then
                    continue
                end
                v18 = k
                break
            end

            continue
        end

        local flag = v18 ~= nil

        if flag and not getgenv().VX_AimbotWasActive then
            getgenv().VX_AimbotWasActive = true
            getgenv().VX_AimbotDelayActive = true
            local vxAimbotDelay = getgenv().VX_AimbotDelay
            local n = vxAimbotDelay or 0

            if n > 0 then
                task.delay(n, function()
                    getgenv().VX_AimbotDelayActive = false
                end)
            else
                getgenv().VX_AimbotDelayActive = false
            end
        end

        if not flag and getgenv().VX_AimbotWasActive then
            getgenv().VX_AimbotWasActive = false
            getgenv().VX_AimbotDelayActive = false
        end

        if flag and not getgenv().VX_AimbotDelayActive then
            local localPlayer = game:GetService("Players").LocalPlayer
            local character = localPlayer and localPlayer.Character
            local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then
                return false
            end
            local players = workspace:FindFirstChild("Players")
            if not players then
                return false
            end
            local survivors

            if v18 == "Elliot" then
                survivors = players:FindFirstChild("Survivors")
            elseif v18 ~= "Chance" and not tbl2[v18] then
                survivors = players:FindFirstChild("Survivors")
            else
                survivors = players:FindFirstChild("Killers")
            end

            if not survivors then
                return false
            end

            local function fn37()
                return survivors:GetChildren()
            end

            local v19 = nil

            if v18 == "Chance" then
                local huge = math.huge
                local vxAimbotMaxDistance = getgenv().VX_AimbotMaxDistance
                local huge2 = vxAimbotMaxDistance or math.huge

                for i, child in ipairs(survivors:GetChildren()) do
                    if child.Name ~= "Chance" then
                        local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                        local humanoid = child:FindFirstChildOfClass("Humanoid")

                        if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
                            local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

                            if magnitude <= huge2 and magnitude < huge then
                                huge = magnitude
                                v19 = humanoidRootPart2
                            end
                        end
                    end
                end
            elseif v18 == "Elliot" then
                local vxElliotAimMode = getgenv().VX_ElliotAimMode
                local str = vxElliotAimMode or "Nearest Survivor"
                local vxAimbotMaxDistance = getgenv().VX_AimbotMaxDistance
                local huge = vxAimbotMaxDistance or math.huge

                if str == "Nearest Survivor" then
                    local huge2 = math.huge

                    for i, child in ipairs(survivors:GetChildren()) do
                        if child.Name ~= localPlayer.Name then
                            local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                            local humanoid = child:FindFirstChildOfClass("Humanoid")

                            if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
                                local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

                                if magnitude <= huge and magnitude < huge2 then
                                    huge2 = magnitude
                                    v19 = humanoidRootPart2
                                end
                            end
                        end
                    end
                elseif str == "Lowest HP" then
                    local huge2 = math.huge

                    for i, child in ipairs(survivors:GetChildren()) do
                        if child.Name ~= localPlayer.Name then
                            local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                            local humanoid = child:FindFirstChildOfClass("Humanoid")

                            if humanoidRootPart2 and humanoid and humanoid.Health > 0 and humanoid.Health < huge2 and (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude <= huge then
                                huge2 = humanoid.Health
                                v19 = humanoidRootPart2
                            end
                        end
                    end
                elseif str == "Closest to Cursor" then
                    local currentCamera = workspace.CurrentCamera
                    local mouse = localPlayer:GetMouse()
                    local huge2 = math.huge

                    for i, child in ipairs(survivors:GetChildren()) do
                        if child.Name ~= localPlayer.Name then
                            local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                            local humanoid = child:FindFirstChildOfClass("Humanoid")

                            if humanoidRootPart2 and humanoid and humanoid.Health > 0 and (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude <= huge then
                                local v20, v21 = currentCamera:WorldToScreenPoint(humanoidRootPart2.Position)

                                if v21 then
                                    local n = v20.X - mouse.X
                                    local n2 = v20.Y - mouse.Y
                                    local v22 = math.sqrt(n * n + n2 * n2)

                                    if v22 < huge2 then
                                        huge2 = v22
                                        v19 = humanoidRootPart2
                                    end
                                end
                            end
                        end
                    end
                end
            else
                local vxAimbotPriority = getgenv().VX_AimbotPriority
                local str = vxAimbotPriority or "Nearest"
                local vxAimbotMaxDistance = getgenv().VX_AimbotMaxDistance
                local huge = vxAimbotMaxDistance or math.huge
                local v20 = tbl2[v18]
                local name = v20 and localPlayer.Name or v18

                if str == "Closest to Cursor" then
                    local currentCamera = workspace.CurrentCamera
                    local mouse = localPlayer:GetMouse()
                    local huge2 = math.huge

                    for i, v21 in ipairs(fn37()) do
                        if v21.Name ~= name then
                            local humanoidRootPart2 = v21:FindFirstChild("HumanoidRootPart")
                            local humanoid = v21:FindFirstChildOfClass("Humanoid")

                            if humanoidRootPart2 and humanoid and humanoid.Health > 0 and (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude <= huge then
                                local v22, v23 = currentCamera:WorldToScreenPoint(humanoidRootPart2.Position)

                                if v23 then
                                    local n = v22.X - mouse.X
                                    local n2 = v22.Y - mouse.Y
                                    local v24 = math.sqrt(n * n + n2 * n2)

                                    if v24 < huge2 then
                                        huge2 = v24
                                        v19 = humanoidRootPart2
                                    end
                                end
                            end
                        end
                    end
                else
                    local huge2 = math.huge

                    for i, v21 in ipairs(fn37()) do
                        if v21.Name ~= name then
                            local humanoidRootPart2 = v21:FindFirstChild("HumanoidRootPart")
                            local humanoid = v21:FindFirstChildOfClass("Humanoid")

                            if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
                                local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

                                if magnitude <= huge and magnitude < huge2 then
                                    huge2 = magnitude
                                    v19 = humanoidRootPart2
                                end
                            end
                        end
                    end
                end
            end

            if not v19 then
                getgenv().VX_AimbotBestHRP = nil
                getgenv().VX_AimbotPredictedPos = nil
                return false
            end

            local vxAimbotPrediction = getgenv().VX_AimbotPrediction
            local n = vxAimbotPrediction or 0
            local vxAimbotPredictedPos

            if n > 0 then
                vxAimbotPredictedPos = v19.Position + v19.AssemblyLinearVelocity * (n / 60)
            else
                vxAimbotPredictedPos = v19.Position
            end

            if getgenv().VX_AimbotTargets and getgenv().VX_AimbotTargets["Two Time"] then
                vxAimbotPredictedPos = vxAimbotPredictedPos - v19.CFrame.LookVector * 2
            end

            local vxAimbotWallCheckMode = getgenv().VX_AimbotWallCheckMode
            local str = vxAimbotWallCheckMode or "Off"

            if str ~= "Off" then
                local position = str == "Camera" and workspace.CurrentCamera.CFrame.Position or humanoidRootPart.Position
                local raycastParams = RaycastParams.new()
                raycastParams.FilterDescendantsInstances = {humanoidRootPart.Parent, v19.Parent}
                raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
                local hit = workspace:Raycast(position, v19.Position - position, raycastParams)

                if hit and hit.Instance and not hit.Instance:IsDescendantOf(v19.Parent) then
                    getgenv().VX_AimbotBestHRP = nil
                    getgenv().VX_AimbotPredictedPos = nil
                    return false
                end
            end

            getgenv().VX_AimbotBestHRP = v19
            getgenv().VX_AimbotPredictedPos = vxAimbotPredictedPos
            return true, humanoidRootPart, vxAimbotPredictedPos
        end

        getgenv().VX_AimbotBestHRP = nil
        getgenv().VX_AimbotPredictedPos = nil
        return false
    end

    getgenv().VX_AimbotSurvivorConn = game:GetService("RunService").RenderStepped:Connect(function()
        local v18, v19, v20 = fn36()
        if not v18 then
            return
        end
        local vxAimbotMode = getgenv().VX_AimbotMode
        if vxAimbotMode ~= "Camera" and vxAimbotMode ~= "Both" then
            return
        end
        local currentCamera = workspace.CurrentCamera
        local vxAimbotSmoothing = getgenv().VX_AimbotSmoothing
        local n = vxAimbotSmoothing or 0.2
        local n2 = math.clamp(n, 0.01, 1)

        if getgenv().VX_AimbotFaceSameDirection and getgenv().VX_AimbotTargets and getgenv().VX_AimbotTargets["Two Time"] then
            local vxAimbotBestHRP = getgenv().VX_AimbotBestHRP

            if vxAimbotBestHRP and vxAimbotBestHRP.Parent then
                pcall(function()
                    local lookVector = vxAimbotBestHRP.CFrame.LookVector
                    local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

                    if vector.Magnitude > 0.001 then
                        local cframe = CFrame.new(currentCamera.CFrame.Position, currentCamera.CFrame.Position + vector.Unit)
                        currentCamera.CFrame = currentCamera.CFrame:Lerp(cframe, n2)
                    end
                end)

                return
            end
        end

        local cframe = CFrame.new(currentCamera.CFrame.Position, v20)
        currentCamera.CFrame = currentCamera.CFrame:Lerp(cframe, n2)
    end)

    getgenv().VX_AimbotSurvivorHRPConn = game:GetService("RunService").Heartbeat:Connect(function()
        local v18, v19, v20 = fn36()
        if not v18 then
            return
        end
        local vxAimbotMode = getgenv().VX_AimbotMode
        local vxAimbotSmoothing = getgenv().VX_AimbotSmoothing
        local n = vxAimbotSmoothing or 0.2
        local n2 = math.clamp(n, 0.01, 1)

        if vxAimbotMode == "HRP" or vxAimbotMode == "Both" then
            local cframe = CFrame.new(v19.Position, Vector3.new(v20.X, v19.Position.Y, v20.Z))
            v19.CFrame = v19.CFrame:Lerp(cframe, n2)
        end

        if getgenv().VX_AimbotFaceSameDirection and getgenv().VX_AimbotTargets and getgenv().VX_AimbotTargets["Two Time"] then
            local vxAimbotBestHRP = getgenv().VX_AimbotBestHRP

            if vxAimbotBestHRP and vxAimbotBestHRP.Parent then
                pcall(function()
                    local lookVector = vxAimbotBestHRP.CFrame.LookVector
                    local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

                    if vector.Magnitude > 0.001 then
                        local cframe = CFrame.new(v19.Position, v19.Position + vector.Unit)
                        v19.CFrame = v19.CFrame:Lerp(cframe, n2)
                    end
                end)
            end
        end
    end)
end)()

local vxClearBezierInstant2 = getgenv().VX_ClearBezierInstant
vxClearBezierInstant2 = getgenv().VX_ClearBezierShatter
vxClearBezierInstant2 = getgenv().VX_SpawnBezierVisualizer

getgenv()._VX_BezierHookConn = game:GetService("RunService").Heartbeat:Connect(function()
    if not getgenv().VX_BezierEnabled then
        if getgenv().VX_BezierActive then
            pcall(getgenv().VX_ClearBezierInstant)
        end

        return
    end

    if not getgenv().VX_AimbotEnabled then
        if getgenv().VX_BezierActive then
            pcall(getgenv().VX_ClearBezierInstant)
        end

        return
    end

    local vxAimbotTargets = getgenv().VX_AimbotTargets
    local tbl3 = vxAimbotTargets or {}
    local flag = false
    local v18 = nil

    for k in pairs(tbl3) do
        if tbl[k] then
            local flag2 = false

            if k == "Chance" then
                flag2 = fn35()
            else
                pcall(function()
                    flag2 = fn34(k)
                end)
            end

            if not flag2 then
                continue
            end
            flag = true
            v18 = k
            break
        end

        continue
    end

    if not flag then
        if getgenv().VX_BezierActive then
            pcall(getgenv().VX_ClearBezierShatter)
        end

        return
    end

    if getgenv().VX_BezierActive then
        return
    end
    local localPlayer = game:GetService("Players").LocalPlayer
    local character = localPlayer and localPlayer.Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then
        return
    end
    local players = workspace:FindFirstChild("Players")
    if not players then
        return
    end
    local survivors

    if v18 == "Elliot" then
        survivors = players:FindFirstChild("Survivors")
    elseif v18 ~= "Chance" and not tbl2[v18] then
        survivors = players:FindFirstChild("Survivors")
    else
        survivors = players:FindFirstChild("Killers")
    end

    if not survivors then
        return
    end
    local v19 = nil
    local huge = math.huge

    if v18 == "Chance" then
        for i, child in ipairs(survivors:GetChildren()) do
            if child.Name ~= "Chance" then
                local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                local humanoid = child:FindFirstChildOfClass("Humanoid")

                if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
                    local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

                    if magnitude < huge then
                        huge = magnitude
                        v19 = humanoidRootPart2
                    end
                end
            end
        end
    else
        local name = (v18 == "Elliot" or tbl2[v18]) and localPlayer.Name or v18

        for i, child in ipairs(survivors:GetChildren()) do
            if child.Name ~= name then
                local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                local humanoid = child:FindFirstChildOfClass("Humanoid")

                if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
                    local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

                    if magnitude < huge then
                        huge = magnitude
                        v19 = humanoidRootPart2
                    end
                end
            end
        end
    end

    if v19 then
        pcall(function()
            getgenv().VX_SpawnBezierVisualizer(humanoidRootPart, v19)
        end)
    end
end)

Aimbot:AddCheckbox(fn(), {
    Text = "Aimbot",
    Default = false,
    Callback = function(vxAimbotEnabled)
        getgenv().VX_AimbotEnabled = vxAimbotEnabled
    end,
})

getgenv().VX_3DAimbot = {
    Enabled = false,
    Uppercut = true,
    MassInfection = true,
    Entanglement = true,
    Gun = true,
}

local function fn36(arg)
    local localPlayer = game:GetService("Players").LocalPlayer
    local character = localPlayer and localPlayer.Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then
        return nil
    end
    local players = workspace:FindFirstChild("Players")
    local v18 = players and workspace.Players:FindFirstChild(arg)
    if not v18 then
        return nil
    end
    local v19 = nil
    local huge = math.huge

    for i, child in ipairs(v18:GetChildren()) do
        if child.Name ~= localPlayer.Name then
            local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
            local humanoid = child:FindFirstChildOfClass("Humanoid")

            if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
                local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

                if magnitude < huge then
                    huge = magnitude
                    v19 = humanoidRootPart2
                end
            end
        end
    end

    return v19
end

local function fn37()
    if not getgenv().VX_3DAimbot.Uppercut then
        return false
    end
    local tbl3 = {}
    local vxNosAnimIds = getgenv().VX_NosAnimIds
    local tbl4 = vxNosAnimIds or {}

    for i, v18 in ipairs(tbl4) do
        tbl3[tostring(v18)] = true
    end

    if not next(tbl3) then
        return false
    end
    local players = workspace:FindFirstChild("Players")
    local killers = players and workspace.Players:FindFirstChild("Killers")
    local nosferatu = killers and killers:FindFirstChild("Nosferatu")
    if not nosferatu then
        return false
    end
    local humanoid = nosferatu:FindFirstChildOfClass("Humanoid")
    local animator = humanoid and humanoid:FindFirstChildOfClass("Animator")
    if not animator then
        return false
    end

    for i, v18 in ipairs(animator:GetPlayingAnimationTracks()) do
        if not v18.Animation then
            continue
        end
        local match = tostring(v18.Animation.AnimationId):match("%d+")
        if match and tbl3[match] then
            return true
        end
    end

    return false
end

local function fn38()
    if not getgenv().VX_3DAimbot.MassInfection and not getgenv().VX_3DAimbot.Entanglement then
        return false
    end
    local tbl3 = {}
    local vx1x13DAnimIds = getgenv().VX_1x1_3DAnimIds
    local tbl4 = vx1x13DAnimIds or {}

    for i, v18 in ipairs(tbl4) do
        tbl3[tostring(v18)] = true
    end

    if not next(tbl3) then
        return false
    end
    local players = workspace:FindFirstChild("Players")
    local killers = players and workspace.Players:FindFirstChild("Killers")
    local n1x1x1x1 = killers and killers:FindFirstChild("1x1x1x1")
    if not n1x1x1x1 then
        return false
    end
    local humanoid = n1x1x1x1:FindFirstChildOfClass("Humanoid")
    local animator = humanoid and humanoid:FindFirstChildOfClass("Animator")
    if not animator then
        return false
    end

    for i, v18 in ipairs(animator:GetPlayingAnimationTracks()) do
        if not v18.Animation then
            continue
        end
        local match = tostring(v18.Animation.AnimationId):match("%d+")
        if match and tbl3[match] then
            return true
        end
    end

    return false
end

local function fn39()
    if not getgenv().VX_3DAimbot.Gun then
        return false
    end
    local character = game:GetService("Players").LocalPlayer.Character
    if not character then
        return false
    end
    local flintlock = character:FindFirstChild("Flintlock", true)
    local v18 = flintlock
    if not flintlock then
        return false
    end

    if not flintlock:IsA("BasePart") and not flintlock:IsA("MeshPart") and not flintlock:IsA("UnionOperation") then
        local basePart = flintlock:FindFirstChildWhichIsA("BasePart", true)
        v18 = basePart
        if not basePart then
            return false
        end
    end

    local flag = v18.Transparency < 1
    return flag
end

local connection = nil

local function fn40()
    if connection then
        connection:Disconnect()
        connection = nil
    end

    connection = game:GetService("RunService").Heartbeat:Connect(function()
        if not getgenv().VX_3DAimbot.Enabled then
            return
        end
        local Survivors = nil

        if fn37() then
            Survivors = fn36("Survivors")
        elseif fn38() then
            Survivors = fn36("Survivors")
        elseif fn39() then
            local players = workspace:FindFirstChild("Players")
            local killers = players and workspace.Players:FindFirstChild("Killers")

            if killers then
                local localPlayer = game:GetService("Players").LocalPlayer
                local character = localPlayer and localPlayer.Character
                local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
                local huge = math.huge

                for i, child in ipairs(killers:GetChildren()) do
                    if child.Name ~= "Chance" then
                        local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                        local humanoid = child:FindFirstChildOfClass("Humanoid")

                        if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
                            local magnitude = humanoidRootPart and (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude or 0

                            if magnitude < huge then
                                huge = magnitude
                                Survivors = humanoidRootPart2
                            end
                        end
                    end
                end
            end
        end

        if not Survivors then
            return
        end
        local localPlayer = game:GetService("Players").LocalPlayer
        local character = localPlayer and localPlayer.Character
        local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart then
            return
        end
        humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, Survivors.Position)
    end)
end

local v18 = nil

Aimbot:AddCheckbox(fn(), {
    Text = "3D Aimbot",
    Default = false,
    Callback = function(enabled)
        getgenv().VX_3DAimbot.Enabled = enabled

        if enabled then
            fn40()

            if v18 then
                pcall(function()
                    v18:Dismiss()
                end)
            end

            v18 = v:AddDialog("VX_3DAimbotCfgDlg_" .. tostring(tick()), {
                Title = "3D Aimbot Config",
                Description = "Choose which abilities trigger the 3D aimbot.",
                AutoDismiss = false,
                OutsideClickDismiss = true,
                FooterButtons = {
                    Apply = {
                        Title = "Apply",
                        Variant = "Primary",
                        Order = 2,
                        Callback = function()
                            pcall(fn25)
                            pcall(fn29)
                            v18:Dismiss()
                        end,
                    },
                },
            })

            v18:AddToggle("VX_3D_Uppercut", {
                Text = "Uppercut  (Nosferatu)",
                Default = getgenv().VX_3DAimbot.Uppercut,
                Callback = function(uppercut)
                    getgenv().VX_3DAimbot.Uppercut = uppercut
                    getgenv().VX_Nos_Uppercut = uppercut
                end,
            })

            v18:AddToggle("VX_3D_MassInfection", {
                Text = "MassInfection  (1x1x1x1)",
                Default = getgenv().VX_3DAimbot.MassInfection,
                Callback = function(massInfection)
                    getgenv().VX_3DAimbot.MassInfection = massInfection
                    getgenv().VX_1x1_MassInfection = massInfection
                end,
            })

            v18:AddToggle("VX_3D_Entanglement", {
                Text = "Entanglement  (1x1x1x1)",
                Default = getgenv().VX_3DAimbot.Entanglement,
                Callback = function(entanglement)
                    getgenv().VX_3DAimbot.Entanglement = entanglement
                    getgenv().VX_1x1_Entanglement = entanglement
                end,
            })

            v18:AddToggle("VX_3D_Gun", {
                Text = "Gun  (Chance)",
                Default = getgenv().VX_3DAimbot.Gun,
                Callback = function(gun)
                    getgenv().VX_3DAimbot.Gun = gun
                end,
            })
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end,
})

Aimbot:AddCheckbox(fn(), {
    Text = "Face Same Direction",
    Default = false,
    Callback = function(vxAimbotFaceSameDirection)
        getgenv().VX_AimbotFaceSameDirection = vxAimbotFaceSameDirection
    end,
})

Aimbot:AddCheckbox(fn(), {
    Text = "Curve Visualizer",
    Default = false,
    Callback = function(vxBezierEnabled)
        getgenv().VX_BezierEnabled = vxBezierEnabled

        if not vxBezierEnabled then
            pcall(getgenv().VX_ClearBezierInstant)
        end
    end,
})

local tbl3 = {
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
    "Two Time",
}

getgenv().VX_AimbotTarget = "1x1x1x1"
getgenv().VX_AimbotTargets = {}

for i, v19 in ipairs(tbl3) do
    getgenv().VX_AimbotTargets[v19] = true
end

local handlers = {
    Azure = fn32,
    ["1x1x1x1"] = fn30,
    Slasher = fn10,
    ["John Doe"] = fn12,
    Nosferatu = fn26,
    Sixer = fn28,
    c00lkidd = fn14,
    Noli = fn16,
    Shedletsky = fn20,
    Elliot = fn22,
    ["Jane Doe"] = fn24,
    ["Two Time"] = fn18,
}

local tbl4 = {}

for i, v19 in ipairs(tbl3) do
    tbl4[v19] = true
end

local flag = false

local v19 = Aimbot:AddDropdown(fn(), {
    Text = "Select Characters",
    Values = tbl3,
    Default = tbl3,
    Multi = true,
})

v19:OnChanged(function()
    local activeValues = v19:GetActiveValues()
    if #activeValues == 0 then
        flag = true
        return
    end
    local vxAimbotTargets = {}

    for i, activeValue in ipairs(activeValues) do
        vxAimbotTargets[activeValue] = true
    end

    if flag then
        for i, activeValue in ipairs(activeValues) do
            if not tbl4[activeValue] and handlers[activeValue] then
                handlers[activeValue]()
            end
        end
    else
        flag = true
    end

    tbl4 = vxAimbotTargets
    getgenv().VX_AimbotTargets = vxAimbotTargets
    local genv11 = getgenv()
    local v20 = activeValues[1]
    local vxAimbotTarget = v20 or "1x1x1x1"
    genv11.VX_AimbotTarget = vxAimbotTarget
end)

task.spawn(function()
    pcall(fn31)
    pcall(fn29)
    pcall(fn9)
    pcall(fn11)
    pcall(fn13)
    pcall(fn15)
    pcall(fn19)
    pcall(fn21)
    pcall(fn23)
    pcall(fn25)
    pcall(fn27)
    pcall(fn17)
end)

getgenv().VX_AimbotWallCheckMode = "Off"
getgenv().VX_AimbotMode = "Both"

Aimbot:AddDropdown(fn(), {
    Text = "Aimbot Mode",
    Values = {"Camera", "HRP", "Both"},
    Default = 3,
    Callback = function(vxAimbotMode)
        getgenv().VX_AimbotMode = vxAimbotMode
    end,
})

Aimbot:AddDropdown(fn(), {
    Text = "Wall Check",
    Values = {"Off", "Camera", "Character"},
    Default = 1,
    Callback = function(vxAimbotWallCheckMode)
        getgenv().VX_AimbotWallCheckMode = vxAimbotWallCheckMode
    end,
})

Settings:AddDropdown(fn(), {
    Text = "Elliot Target",
    Values = {"Nearest Survivor", "Lowest HP", "Closest to Cursor"},
    Default = "Nearest Survivor",
    Callback = function(vxElliotAimMode)
        getgenv().VX_ElliotAimMode = vxElliotAimMode
    end,
})

Settings:AddDropdown(fn(), {
    Text = "Priority",
    Values = {"Nearest", "Closest to Cursor"},
    Default = 1,
    Callback = function(vxAimbotPriority)
        getgenv().VX_AimbotPriority = vxAimbotPriority
    end,
})

Settings:AddSlider(fn(), {
    Text = "Aim Delay",
    Min = 0,
    Max = 2,
    Default = 0,
    Rounding = 2,
    Suffix = "s",
    Callback = function(arg)
        local genv11 = getgenv()
        local num = tonumber(arg)
        local vxAimbotDelay = num or 0
        genv11.VX_AimbotDelay = vxAimbotDelay
        getgenv().VX_AimbotWasActive = false
        getgenv().VX_AimbotDelayActive = false
    end,
})

Settings:AddSlider(fn(), {
    Text = "Aim Speed",
    Min = 1,
    Max = 100,
    Default = 20,
    Rounding = 0,
    Suffix = "%",
    Callback = function(arg)
        local genv11 = getgenv()
        local num = tonumber(arg)
        local n = num or 20
        genv11.VX_AimbotSmoothing = math.clamp(n / 100, 0.01, 1)
    end,
})

Settings:AddSlider(fn(), {
    Text = "Prediction",
    Min = 0,
    Max = 20,
    Default = 0,
    Rounding = 1,
    Suffix = " frames",
    Callback = function(arg)
        local genv11 = getgenv()
        local num = tonumber(arg)
        local vxAimbotPrediction = num or 0
        genv11.VX_AimbotPrediction = vxAimbotPrediction
    end,
})

Settings:AddLabel("Visualizer Color"):AddColorPicker(fn(), {
    Default = Color3.fromRGB(30, 150, 255),
    Title = "Visualizer Color",
    Callback = function(vxBezierColor2)
        getgenv().VX_BezierColor = vxBezierColor2
    end,
})

Settings:AddSlider(fn(), {
    Text = "Aimbot Distance",
    Min = 10,
    Max = 100,
    Default = 100,
    Rounding = 0,
    Suffix = " studs",
    Callback = function(arg)
        local num = tonumber(arg)
        local n = num or 100
        local genv11 = getgenv()
        local huge = n >= 100 and math.huge or n
        genv11.VX_AimbotMaxDistance = huge
    end,
})

task.spawn(function()
    while not getgenv()._SharedMouseMod do
        task.wait()
    end

    getgenv().MouseModule = getgenv()._SharedMouseMod

    if not getgenv().OriginalGetMousePos then
        getgenv().OriginalGetMousePos = getgenv().MouseModule.GetMousePos
    end

    getgenv().SilentAimEnabled = false
    getgenv().SilentAimMode = "Nearest"
    getgenv().AllowedCharacters = {}
    getgenv().SA_AimPart = "HumanoidRootPart"
    getgenv().SA_Prediction = 0
    getgenv().SA_CrosshairRadius = 120
    getgenv().SA_CrosshairCircle = nil
    getgenv().SA_CrosshairCircleConn = nil

    getgenv().CanUseSilentAim = function()
        local character = game:GetService("Players").LocalPlayer.Character
        if not character then
            return false
        end

        if #getgenv().AllowedCharacters == 0 then
            return true
        end

        for i, allowedCharacter in ipairs(getgenv().AllowedCharacters) do
            if character.Name == allowedCharacter then
                return true
            end
        end

        return false
    end

    getgenv().SA_GetAimPosition = function(arg)
        if not arg then
            return nil
        end
        local v20 = arg:FindFirstChild(getgenv().SA_AimPart)
        local humanoidRootPart = v20 or arg:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart then
            return nil
        end
        return humanoidRootPart.Position + humanoidRootPart.AssemblyLinearVelocity * (getgenv().SA_Prediction / 60)
    end

    getgenv().GetNearestKiller = function()
        local character = game:GetService("Players").LocalPlayer.Character
        if not character or not character:FindFirstChild("HumanoidRootPart") then
            return nil
        end
        local players = workspace:FindFirstChild("Players")
        local killers = players and workspace.Players:FindFirstChild("Killers")
        if not killers then
            return nil
        end
        local v20 = nil
        local huge = math.huge

        for k, child in pairs(killers:GetChildren()) do
            if child ~= character then
                local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart then
                    local magnitude = (character.HumanoidRootPart.Position - humanoidRootPart.Position).Magnitude

                    if magnitude < huge then
                        huge = magnitude
                        v20 = child
                    end
                end
            end
        end

        return v20
    end

    getgenv().GetNearestSurvivor = function()
        local character = game:GetService("Players").LocalPlayer.Character
        if not character or not character:FindFirstChild("HumanoidRootPart") then
            return nil
        end
        local players = workspace:FindFirstChild("Players")
        local survivors = players and workspace.Players:FindFirstChild("Survivors")
        if not survivors then
            return nil
        end
        local v20 = nil
        local huge = math.huge

        for k, child in pairs(survivors:GetChildren()) do
            if child ~= character then
                local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart then
                    local magnitude = (character.HumanoidRootPart.Position - humanoidRootPart.Position).Magnitude

                    if magnitude < huge then
                        huge = magnitude
                        v20 = child
                    end
                end
            end
        end

        return v20
    end

    getgenv().GetNearestLowestHPSurvivor = function()
        local character = game:GetService("Players").LocalPlayer.Character
        if not character or not character:FindFirstChild("HumanoidRootPart") then
            return nil
        end
        local players = workspace:FindFirstChild("Players")
        local survivors = players and workspace.Players:FindFirstChild("Survivors")
        if not survivors then
            return nil
        end
        local humanoidRootPart = character.HumanoidRootPart
        local huge = math.huge

        for k, child in pairs(survivors:GetChildren()) do
            if child ~= character then
                local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart2 then
                    local magnitude = (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude

                    if magnitude < huge then
                        huge = magnitude
                    end
                end
            end
        end

        local n = huge * 1.5
        local v20 = nil
        local huge2 = math.huge

        for k, child in pairs(survivors:GetChildren()) do
            if child ~= character then
                local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                local humanoid = child:FindFirstChildOfClass("Humanoid")

                if humanoidRootPart2 and humanoid and humanoid.Health > 0 and (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude <= n and humanoid.Health < huge2 then
                    huge2 = humanoid.Health
                    v20 = child
                end
            end
        end

        return v20
    end

    getgenv().GetCrosshairScreenPos = function()
        local ok, result = pcall(function()
            return game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MobileUI.Crosshair
        end)

        if ok and result then
            local absolutePosition = result.AbsolutePosition
            local absoluteSize = result.AbsoluteSize
            return Vector2.new(absolutePosition.X + absoluteSize.X * 0.5, absolutePosition.Y + absoluteSize.Y * 0.5)
        end

        local viewportSize = workspace.CurrentCamera.ViewportSize
        return Vector2.new(viewportSize.X * 0.5, viewportSize.Y * 0.5)
    end

    getgenv().SA_GetClosestToCrosshair = function()
        local v20 = getgenv().GetCrosshairScreenPos()
        if not v20 then
            return nil
        end
        local currentCamera = workspace.CurrentCamera
        local character = game:GetService("Players").LocalPlayer.Character
        local players = workspace:FindFirstChild("Players")
        local survivors = players and workspace.Players:FindFirstChild("Survivors")
        local players2 = workspace:FindFirstChild("Players")
        local killers = players2 and workspace.Players:FindFirstChild("Killers")
        local v21 = nil
        local huge = math.huge
        local v22, v23, v24 = ipairs({survivors, killers})
        local v25 = v24
        local v26 = v22
        local v27 = v23

        while true do
            local v28, v29 = v26(v27, v25)
            if v28 == nil then
                break
            end
            v25 = v28

            if v29 then
                for k, child in pairs(v29:GetChildren()) do
                    if child ~= character then
                        local v30 = child:FindFirstChild(getgenv().SA_AimPart)
                        local humanoidRootPart = v30 or child:FindFirstChild("HumanoidRootPart")

                        if humanoidRootPart then
                            local v31, v32 = currentCamera:WorldToViewportPoint(humanoidRootPart.Position)

                            if v32 then
                                local magnitude = (Vector2.new(v31.X, v31.Y) - v20).Magnitude

                                if magnitude <= getgenv().SA_CrosshairRadius and magnitude < huge then
                                    huge = magnitude
                                    v21 = child
                                end
                            end
                        end
                    end
                end

                v25 = v28
            end
        end

        return v21
    end

    getgenv().StartSA_CrosshairCircle = function()
        if getgenv().SA_CrosshairCircle then
            return
        end
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "SA_CrosshairCircleGui"
        screenGui.ResetOnSpawn = false
        screenGui.IgnoreGuiInset = true
        screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        screenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
        local frame = Instance.new("Frame")
        frame.BackgroundTransparency = 1
        frame.BorderSizePixel = 0
        frame.Parent = screenGui
        local uiStroke = Instance.new("UIStroke")
        uiStroke.Color = Color3.fromRGB(255, 200, 0)
        uiStroke.Thickness = 1.5
        uiStroke.Transparency = 0.4
        uiStroke.Parent = frame
        local uiCorner = Instance.new("UICorner")
        uiCorner.CornerRadius = UDim.new(1, 0)
        uiCorner.Parent = frame
        getgenv().SA_CrosshairCircle = screenGui

        getgenv().SA_CrosshairCircleConn = game:GetService("RunService").RenderStepped:Connect(function()
            local v20 = getgenv().GetCrosshairScreenPos()
            local n = getgenv().SA_CrosshairRadius * 2

            if v20 then
                local guiInset = game:GetService("GuiService"):GetGuiInset()
                frame.Size = UDim2.fromOffset(n, n)
                frame.AnchorPoint = Vector2.new(0.5, 0.5)
                frame.Position = UDim2.fromOffset(v20.X, v20.Y + guiInset.Y)
                screenGui.Enabled = true
            else
                screenGui.Enabled = false
            end
        end)
    end

    getgenv().StopSA_CrosshairCircle = function()
        if getgenv().SA_CrosshairCircleConn then
            getgenv().SA_CrosshairCircleConn:Disconnect()
            getgenv().SA_CrosshairCircleConn = nil
        end

        if getgenv().SA_CrosshairCircle then
            getgenv().SA_CrosshairCircle:Destroy()
            getgenv().SA_CrosshairCircle = nil
        end
    end

    getgenv().StartSA_FOVCircle = function() end
    getgenv().StopSA_FOVCircle = function() end

    getgenv().UpdateSilentAim = function(arg)
        if arg == "Closest To Cursor" then
            getgenv().StartSA_FOVCircle()
        else
            getgenv().StopSA_FOVCircle()
        end

        getgenv().StopSA_CrosshairCircle()
        if not getgenv().MouseModule then
            return
        end
        local tbl5 = {JaneDoe = true, Dusekkar = true}

        local function fn41()
            if not getgenv().SA_SwapActive then
                local character = game:GetService("Players").LocalPlayer.Character

                if character and tbl5[character.Name] then
                    local players = workspace:FindFirstChild("Players")
                    local killers = players and workspace.Players:FindFirstChild("Killers")
                    return killers
                end

                local players = workspace:FindFirstChild("Players")
                local survivors = players and workspace.Players:FindFirstChild("Survivors")
                return survivors
            end

            local players = workspace:FindFirstChild("Players")
            local survivors = players and workspace.Players:FindFirstChild("Survivors")
            return survivors
        end

        if arg == "Disabled" then
            getgenv().MouseModule.GetMousePos = getgenv().OriginalGetMousePos
        elseif arg == "Nearest" then
            getgenv().MouseModule.GetMousePos = function(...)
                if not getgenv().CanUseSilentAim() then
                    return getgenv().OriginalGetMousePos(...)
                end
                local v20 = fn41()
                if not v20 then
                    return getgenv().OriginalGetMousePos(...)
                end
                local character = game:GetService("Players").LocalPlayer.Character
                local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart then
                    return getgenv().OriginalGetMousePos(...)
                end
                local v21 = nil
                local huge = math.huge

                for k, child in pairs(v20:GetChildren()) do
                    if child ~= character then
                        local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")

                        if humanoidRootPart2 then
                            local magnitude = (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude

                            if magnitude < huge then
                                huge = magnitude
                                v21 = child
                            end
                        end
                    end
                end

                local v22 = getgenv().SA_GetAimPosition(v21)
                local v23 = v22 or getgenv().OriginalGetMousePos(...)
                return v23
            end
        elseif arg == "Lowest HP" then
            getgenv().MouseModule.GetMousePos = function(...)
                if not getgenv().CanUseSilentAim() then
                    return getgenv().OriginalGetMousePos(...)
                end
                local v20 = fn41()
                if not v20 then
                    return getgenv().OriginalGetMousePos(...)
                end
                local character = game:GetService("Players").LocalPlayer.Character
                local v21 = nil
                local huge = math.huge

                for k, child in pairs(v20:GetChildren()) do
                    if child ~= character then
                        local humanoid = child:FindFirstChildOfClass("Humanoid")

                        if humanoid and humanoid.Health > 0 and humanoid.Health < huge then
                            huge = humanoid.Health
                            v21 = child
                        end
                    end
                end

                local v22 = getgenv().SA_GetAimPosition(v21)
                local v23 = v22 or getgenv().OriginalGetMousePos(...)
                return v23
            end
        elseif arg == "Closest To Cursor" then
            getgenv().MouseModule.GetMousePos = function(...)
                if not getgenv().CanUseSilentAim() then
                    return getgenv().OriginalGetMousePos(...)
                end
                local v20 = fn41()
                if not v20 then
                    return getgenv().OriginalGetMousePos(...)
                end
                local currentCamera = workspace.CurrentCamera
                local character = game:GetService("Players").LocalPlayer.Character
                local mouse = game:GetService("Players").LocalPlayer:GetMouse()
                local vector2 = Vector2.new(mouse.X, mouse.Y)
                local v21 = nil
                local huge = math.huge

                for k, child in pairs(v20:GetChildren()) do
                    if child ~= character then
                        local v22 = child:FindFirstChild(getgenv().SA_AimPart)
                        local humanoidRootPart = v22 or child:FindFirstChild("HumanoidRootPart")

                        if humanoidRootPart then
                            local v23, v24 = currentCamera:WorldToViewportPoint(humanoidRootPart.Position)

                            if v24 then
                                local magnitude = (Vector2.new(v23.X, v23.Y) - vector2).Magnitude

                                if magnitude < huge then
                                    huge = magnitude
                                    v21 = child
                                end
                            end
                        end
                    end
                end

                local v22 = getgenv().SA_GetAimPosition(v21)
                local v23 = v22 or getgenv().OriginalGetMousePos(...)
                return v23
            end
        end
    end

    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local localPlayer = Players.LocalPlayer
    local flag2 = false

    local function fn41()
        if flag2 then
            return
        end

        local ok, result = pcall(function()
            return require(ReplicatedStorage.Assets.Killers.Azure.Config)
        end)

        local ok2, result2 = pcall(function()
            return require(ReplicatedStorage.Modules.Network.Network)
        end)

        if not ok or not ok2 then
            return
        end
        local fireServerConnection = result2.FireServerConnection

        result2.FireServerConnection = function(arg, arg2, arg3, ...)
            if not getgenv().SilentAimEnabled or not getgenv().CanUseSilentAim() or type(arg2) ~= "string" or not arg2:find("AzureUpdateMouse") then
                return fireServerConnection(arg, arg2, arg3, ...)
            end
            local tbl5 = {...}
            local character = localPlayer.Character
            local humanoidRootPart = character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
            local players = workspace:FindFirstChild("Players")
            local survivors = players and workspace.Players:FindFirstChild("Survivors")

            if humanoidRootPart and survivors then
                local v20 = nil
                local silentAimMode = getgenv().SilentAimMode
                local str = silentAimMode or "Nearest"

                if str == "Closest To Cursor" then
                    local currentCamera = workspace.CurrentCamera
                    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
                    local vector2 = Vector2.new(mouse.X, mouse.Y)
                    local huge = math.huge

                    for i, child in ipairs(survivors:GetChildren()) do
                        local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                        local primaryPart = humanoidRootPart2 or child.PrimaryPart

                        if primaryPart then
                            local v21, v22 = currentCamera:WorldToViewportPoint(primaryPart.Position)

                            if v22 then
                                local magnitude = (Vector2.new(v21.X, v21.Y) - vector2).Magnitude

                                if magnitude < huge then
                                    huge = magnitude
                                    v20 = primaryPart
                                end
                            end
                        end
                    end
                else
                    local grab = result.Grab
                    local hookRange = grab and result.Grab.HookRange or 300

                    for i, child in ipairs(survivors:GetChildren()) do
                        local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                        local primaryPart = humanoidRootPart2 or child.PrimaryPart

                        if primaryPart then
                            local magnitude = (primaryPart.Position - humanoidRootPart.Position).Magnitude

                            if magnitude < hookRange then
                                v20 = primaryPart
                                hookRange = magnitude
                            end
                        end
                    end
                end

                if v20 then
                    tbl5[1] = (v20.Position - humanoidRootPart.Position).Unit
                end
            end

            return fireServerConnection(arg, arg2, arg3, unpack(tbl5))
        end

        flag2 = true
    end

    localPlayer.CharacterAdded:Connect(function(character)
        if character.Name == "Azure" then
            task.defer(fn41)
        end
    end)

    if localPlayer.Character and localPlayer.Character.Name == "Azure" then
        task.defer(fn41)
    end

    v17:AddCheckbox(fn(), {
        Text = "Enable Silent Aim",
        Default = false,
        Callback = function(silentAimEnabled)
            getgenv().SilentAimEnabled = silentAimEnabled

            if silentAimEnabled then
                local updateSilentAim = getgenv().UpdateSilentAim
                local silentAimMode = getgenv().SilentAimMode
                local str = silentAimMode or "Nearest"
                updateSilentAim(str)
            else
                getgenv().UpdateSilentAim("Disabled")
            end
        end,
    })

    v17:AddDropdown(fn(), {
        Text = "Which Character",
        Values = {
            "Dusekkar",
            "Nosferatu",
            "c00lkidd",
            "Noli",
            "Jane Doe",
            "Sixer",
            "Azure",
        },
        Default = {
            "Dusekkar",
            "Nosferatu",
            "c00lkidd",
            "Noli",
            "Jane Doe",
            "Sixer",
            "Azure",
        },
        Multi = true,
        Callback = function(arg)
            getgenv().AllowedCharacters = {}

            for i, v20 in ipairs(arg) do
                if v20 == "Jane Doe" then
                    local ok, result = pcall(function()
                        return game.Players.LocalPlayer:WaitForChild("PlayerData", 5):WaitForChild("Equipped", 5):WaitForChild("Survivor", 5)
                    end)

                    if ok and result and result.Value == "JaneDoe" then
                        table.insert(getgenv().AllowedCharacters, "JaneDoe")
                    end
                else
                    table.insert(getgenv().AllowedCharacters, v20)
                end
            end
        end,
    })

    local v20 = game:GetObjects("rbxassetid://9983142905")[1]

    if v20 then
        for i, descendant in ipairs(v20:GetDescendants()) do
            if descendant:IsA("BasePart") then
                descendant.Anchored = true

                if descendant.Name == "HumanoidRootPart" then
                    descendant.Transparency = 1
                else
                    descendant.Color = Color3.fromRGB(138, 138, 138)
                    descendant.Transparency = 0
                end
            elseif not descendant:IsA("Clothing") and not descendant:IsA("Texture") then
                if descendant:IsA("Decal") and descendant.Name ~= "face" then
                    descendant:Destroy()
                end
            else
                descendant:Destroy()
            end
        end
    end

    local function fn42(arg)
        if not v20 then
            return
        end

        for i, descendant in ipairs(v20:GetDescendants()) do
            if descendant:IsA("BasePart") and descendant.Name ~= "HumanoidRootPart" then
                descendant.Color = Color3.fromRGB(138, 138, 138)
            end
        end

        local v21 = v20:FindFirstChild(arg, true)

        if v21 then
            v21.Color = Color3.fromRGB(115, 201, 115)
        end
    end

    fn42("Torso")

    v17:AddViewport(fn(), {
        Object = v20,
        Interactive = false,
        Focused = true,
        Height = 260,
    })

    task.spawn(function()
        local v21 = nil
        local n = os.clock() + 5

        local function fn43(arg)
            for i, descendant in ipairs(arg:GetDescendants()) do
                if descendant:IsA("ViewportFrame") and not descendant:FindFirstChildOfClass("WorldModel") and descendant:FindFirstChild("Torso", true) then
                    v21 = descendant
                    return
                end
            end
        end

        repeat
            task.wait(0.1)
            fn43(game:GetService("CoreGui"))

            if not v21 then
                fn43(game:GetService("Players").LocalPlayer.PlayerGui)
            end
        until v21 or n < os.clock()

        if not v21 then
            return
        end
        local currentCamera = v21.CurrentCamera
        local torso = v20 and v20:FindFirstChild("Torso")

        if currentCamera and torso then
            currentCamera.CameraType = Enum.CameraType.Scriptable
            currentCamera.CFrame = CFrame.new(torso.Position + torso.CFrame.LookVector * 4.8 + Vector3.new(0, 0.15, 0), torso.Position + Vector3.new(0, 0.15, 0))
        end

        local tbl5 = {}

        for i, descendant in ipairs(v21:GetDescendants()) do
            if descendant:IsA("BasePart") then
                tbl5[descendant.Name] = descendant
            end
        end

        local v22 = nil

        local function fn44(arg)
            if v22 then
                local color2 = Color3.fromRGB(138, 138, 138)
                v22.Color = color2
            end

            local v23 = tbl5[arg]

            if v23 then
                v23.Color = Color3.fromRGB(115, 201, 115)
                v22 = v23
            end
        end

        fn44("Torso")

        v21.InputBegan:Connect(function(input)
            if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
                return
            end
            local absolutePosition = v21.AbsolutePosition
            local absoluteSize = v21.AbsoluteSize
            local n2 = (input.Position.X - absolutePosition.X) / absoluteSize.X
            local n3 = (input.Position.Y - absolutePosition.Y) / absoluteSize.Y
            local nowTargeting

            if n3 < 0.28 then
                nowTargeting = "Head"
            elseif n3 < 0.62 then
                if n2 < 0.35 then
                    nowTargeting = "Right Arm"
                elseif n2 > 0.65 then
                    nowTargeting = "Left Arm"
                else
                    nowTargeting = "Torso"
                end
            elseif n2 < 0.5 then
                nowTargeting = "Right Leg"
            else
                nowTargeting = "Left Leg"
            end

            if nowTargeting then
                getgenv().SA_AimPart = nowTargeting
                fn44(nowTargeting)
                fn42(nowTargeting)

                lib:Notify({
                    Title = "Silent Aim Part",
                    Description = "Now targeting: " .. nowTargeting,
                    Icon = "crosshair",
                    Time = 2,
                })
            end
        end)
    end)

    v17:AddDivider()
    getgenv().SA_SwapEnabled = false
    getgenv().SA_SwapActive = false
    local tbl5 = {JaneDoe = true, Dusekkar = true}

    getgenv().SA_DoSwap = function(arg)
        local character = game:GetService("Players").LocalPlayer.Character

        if character and tbl5[character.Name] then
            if getgenv().SA_SwapEnabled and getgenv().SilentAimEnabled then
                local genv11 = getgenv()
                local saSwapActive

                if getgenv().SA_SwapActive then
                    saSwapActive = false
                else
                    saSwapActive = true
                end

                genv11.SA_SwapActive = saSwapActive

                if arg then
                    local saSwapActive2 = getgenv().SA_SwapActive
                    local color2 = saSwapActive2 and Color3.fromRGB(40, 160, 40) or Color3.fromRGB(25, 25, 25)
                    arg.BackgroundColor3 = color2
                end

                return
            end

            if arg then
                lib:Notify({
                    Title = "Swap Target",
                    Description = "Enable Silent Aim + Target Swap first!",
                    Duration = 2,
                })
            end

            return
        end

        if arg then
            lib:Notify({
                Title = "Swap Target",
                Description = "Only usable as JaneDoe or Dusekkar!",
                Duration = 2,
            })
        end
    end

    getgenv().SA_SyncBtn = function(arg)
        if not arg then
            return
        end
        local saSwapActive = getgenv().SA_SwapActive
        local color2 = saSwapActive and Color3.fromRGB(40, 160, 40) or Color3.fromRGB(25, 25, 25)
        arg.BackgroundColor3 = color2
    end

    v17:AddCheckbox(fn(), {
        Text = "Target Swap",
        Default = false,
        Callback = function(saSwapEnabled)
            getgenv().SA_SwapEnabled = saSwapEnabled

            if not saSwapEnabled then
                getgenv().SA_SwapActive = false
            end
        end,
    })

    v17:AddLabel("Swap Target Keybind"):AddKeyPicker(fn(), {
        Text = "Swap Target Keybind",
        Default = "F",
        Mode = "Press",
        Callback = function()
            getgenv().SA_DoSwap(nil)
        end,
    })

    v17:AddCheckbox(fn(), {
        Text = "Swap Target GUI (Mobile)",
        Default = false,
        Callback = function(arg)
            if getgenv().SA_SwapGui then
                getgenv().SA_SwapGui:Destroy()
                getgenv().SA_SwapGui = nil
            end

            if not arg then
                return
            end

            if not getgenv().SA_SwapEnabled then
                lib:Notify({
                    Title = "Swap Target GUI",
                    Description = "Enable Target Swap first!",
                    Duration = 3,
                })

                return
            end

            local screenGui = Instance.new("ScreenGui")
            screenGui.Name = "SA_SwapGui"
            screenGui.ResetOnSpawn = false
            screenGui.IgnoreGuiInset = true
            screenGui.DisplayOrder = 999
            screenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
            local textButton = Instance.new("TextButton")
            textButton.Size = UDim2.new(0, 160, 0, 44)
            textButton.Position = UDim2.new(1, -170, 0, 10)
            textButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            textButton.BorderSizePixel = 0
            textButton.Text = "Swap Target"
            textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            textButton.TextSize = 15
            textButton.Font = Enum.Font.GothamBold
            textButton.Parent = screenGui
            local uiCorner = Instance.new("UICorner")
            uiCorner.CornerRadius = UDim.new(0, 8)
            uiCorner.Parent = textButton
            local uiStroke = Instance.new("UIStroke")
            uiStroke.Color = Color3.fromRGB(80, 80, 80)
            uiStroke.Thickness = 1
            uiStroke.Parent = textButton
            getgenv().SA_SyncBtn(textButton)
            local flag3 = false
            local position = nil
            local position2 = nil
            local flag4 = false

            textButton.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    flag3 = true
                    flag4 = false
                    position = input.Position
                    position2 = textButton.Position
                end
            end)

            textButton.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    if not flag4 then
                        getgenv().SA_DoSwap(textButton)
                    end

                    flag3 = false
                    flag4 = false
                end
            end)

            game:GetService("UserInputService").InputChanged:Connect(function(input)
                if flag3 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    local n = input.Position - position

                    if n.Magnitude > 6 then
                        flag4 = true
                    end

                    textButton.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n.X, position2.Y.Scale, position2.Y.Offset + n.Y)
                end
            end)

            getgenv().SA_SwapGui = screenGui
        end,
    })
end)

local Generators = v:AddTab("Generators", "battery-charging", "generator esp and solver")
local v20 = Generators:AddLeftTabbox("battery-charging")
local Generators2 = v20:AddTab("Generators")
local Settings3 = v20:AddTab("Settings")
local Difficulty = v20:AddTab("Difficulty")
local v21 = Generators:AddRightTabbox()
local Solver = v21:AddTab("Solver")
local Settings4 = v21:AddTab("Settings")
local flag2 = false
local flag3 = false
local n = 0.04
local n2 = 0.04
local n3 = 0.3

local function fn41(arg, arg2, arg3, arg4)
    if arg3 < arg then
        return "up"
    end

    if arg < arg3 then
        return "down"
    end

    if arg4 < arg2 then
        return "left"
    end

    if arg2 < arg4 then
        return "right"
    end
end

local function fn42(arg, arg2, arg3)
    local tbl5 = {}

    if arg and arg2 then
        local v22 = fn41(arg2.row, arg2.col, arg.row, arg.col)
        local str = v22

        if v22 == "up" then
            str = "down"
        elseif v22 == "down" then
            str = "up"
        elseif v22 == "left" then
            str = "right"
        elseif v22 == "right" then
            str = "left"
        end

        if str then
            tbl5[str] = true
        end
    end

    if arg3 and arg2 then
        local v22 = fn41(arg2.row, arg2.col, arg3.row, arg3.col)

        if v22 then
            tbl5[v22] = true
        end
    end

    return tbl5
end

local function fn43(arg, arg2, arg3, arg4)
    if arg3 == arg - 1 and arg4 == arg2 then
        return "up"
    end

    if arg3 == arg + 1 and arg4 == arg2 then
        return "down"
    end

    if arg3 == arg and arg4 == arg2 - 1 then
        return "left"
    end

    if arg3 == arg and arg4 == arg2 + 1 then
        return "right"
    end
    return false
end

local function fn44(arg)
    return arg.row .. "-" .. arg.col
end

local function fn45(arg, arg2)
    if not arg or #arg == 0 then
        return arg
    end
    local tbl5 = nil

    if arg2 then
        local v22, v23, v24 = pairs(arg2)
        local v25 = v24
        local v26 = v22
        local v27 = v23
        local v28, v29

        repeat
            v28, v29 = v26(v27, v25)
            if v28 == nil then
                break
            end

            for i, v30 in ipairs(arg) do
                if v30.row == v29.row and v30.col == v29.col then
                    tbl5 = {row = v29.row, col = v29.col}
                    break
                end
            end

            v25 = v28
        until tbl5
    end

    if not tbl5 then
        local tbl6 = {}

        for i, v22 in ipairs(arg) do
            tbl6[fn44(v22)] = v22
        end

        local v22, v23, v24 = ipairs(arg)
        local v25 = v24
        local v26 = v22
        local v27 = v23

        while true do
            local v28, v29 = v26(v27, v25)
            if v28 == nil then
                break
            end
            local n4 = 0

            for i, v30 in ipairs({
                {v29.row - 1, v29.col},
                {v29.row + 1, v29.col},
                {v29.row, v29.col - 1},
                {v29.row, v29.col + 1},
            }) do
                if tbl6[v30[1] .. "-" .. v30[2]] then
                    n4 = n4 + 1
                end
            end

            v25 = v28
            if n4 == 1 then
                tbl5 = {row = v29.row, col = v29.col}
                break
            end
        end
    end

    if not tbl5 then
        tbl5 = {row = arg[1].row, col = arg[1].col}
    end

    local tbl6 = {}

    for i, v22 in ipairs(arg) do
        tbl6[fn44(v22)] = {row = v22.row, col = v22.col}
    end

    local tbl7 = {}
    local tbl8 = {}
    local v22 = tbl8
    tbl8.row = tbl5.row
    tbl8.col = tbl5.col
    table.insert(tbl7, table.clone(tbl8))
    tbl6[fn44(tbl8)] = nil

    while next(tbl6) do
        local flag4 = false

        for k, v23 in pairs(tbl6) do
            if fn43(v22.row, v22.col, v23.row, v23.col) then
                table.insert(tbl7, table.clone(v23))
                tbl6[k] = nil
                v22 = v23
                flag4 = true
                break
            end

            continue
        end

        if not flag4 then
            return arg
        end
    end

    return tbl7
end

local tbl5 = {
    DrawSolutionOneByOne = function(arg)
        if not arg or not arg.Solution then
            return
        end
        local v22, v23, v24 = ipairs(arg.Solution)
        local v25 = v24
        local v26 = v22
        local v27 = v23

        while true do
            local v28, v29 = v26(v27, v25)
            if v28 == nil then
                break
            end
            local targetPairs = arg.targetPairs
            local v30 = targetPairs and arg.targetPairs[v28]
            local v31 = fn45(v29, v30)
            local paths = arg.paths
            local paths2 = paths or {}
            arg.paths = paths2
            arg.paths[v28] = {}
            local v32, v33, v34 = ipairs(v31)
            local v35 = v34
            local v36 = v32
            local v37 = v33
            local v38 = v28
            local v39 = v26
            local v40 = v27

            while true do
                local v41, v42 = v36(v37, v35)
                if v41 == nil then
                    break
                end
                v35 = v41

                if flag3 and v41 > 1 and v41 % 3 == 0 and math.random() < n3 then
                    local v43 = v31[v41 - 1]

                    if v43 then
                        local v44 = nil

                        for i, v45 in ipairs({
                            {row = v43.row - 1, col = v43.col},
                            {row = v43.row + 1, col = v43.col},
                            {row = v43.row, col = v43.col - 1},
                            {row = v43.row, col = v43.col + 1},
                        }) do
                            if v45.row ~= v42.row or v45.col ~= v42.col then
                                v44 = v45
                                break
                            end
                            continue
                        end

                        v35 = v41

                        if v44 then
                            table.insert(arg.paths[v28], {row = v44.row, col = v44.col})
                            local gridConnections = arg.gridConnections
                            local gridConnections2 = gridConnections or {}
                            arg.gridConnections = gridConnections2
                            arg.gridConnections[fn44(v44)] = fn42(v43, v44, nil)

                            pcall(function()
                                arg:updateGui()
                            end)

                            task.wait(n + math.random() * (n2 - n))
                            table.remove(arg.paths[v28])
                            arg.gridConnections[fn44(v44)] = nil

                            pcall(function()
                                arg:updateGui()
                            end)

                            task.wait(n + math.random() * (n2 - n))
                        end
                    end
                end

                table.insert(arg.paths[v28], {row = v42.row, col = v42.col})
                local gridConnections = arg.gridConnections
                local gridConnections2 = gridConnections or {}
                arg.gridConnections = gridConnections2
                arg.gridConnections[fn44(v42)] = fn42(v31[v41 - 1], v42, v31[v41 + 1])

                pcall(function()
                    arg:updateGui()
                end)

                task.wait(n + math.random() * (n2 - n))
            end

            v25 = v38
            v26 = v39
            v27 = v40

            if arg.checkForWin then
                pcall(function()
                    arg:checkForWin()
                end)
            end
        end

        if arg.checkForWin then
            pcall(function()
                arg:checkForWin()
            end)
        end
    end,
}

local modules = game:GetService("ReplicatedStorage"):FindFirstChild("Modules")
local minigames = modules and modules:FindFirstChild("Minigames")

if minigames then
    minigames = minigames:FindFirstChild("FlowGameManager")
end

if minigames then
    minigames = minigames:FindFirstChild("FlowGame")
end

if minigames then
    local module = require(minigames)
    local new = module.new

    module.new = function(...)
        local v22 = new(...)

        if flag2 then
            task.spawn(function()
                tbl5.DrawSolutionOneByOne(v22)
            end)
        end

        return v22
    end
end

Solver:AddToggle(fn(), {
    Text = "Automatic Solver",
    Default = false,
    Callback = function(arg)
        flag2 = arg
    end,
})

Settings4:AddToggle(fn(), {
    Text = "Incorrect Paths",
    Default = false,
    Callback = function(arg)
        flag3 = arg
    end,
})

Settings4:AddSlider(fn(), {
    Text = "Mistake Chance",
    Min = 0,
    Max = 100,
    Default = 30,
    Rounding = 0,
    Callback = function(arg)
        n3 = tonumber(arg) / 100
    end,
})

Solver:AddSlider(fn(), {
    Text = "Min Solve Speed",
    Min = 1,
    Max = 20,
    Default = 4,
    Rounding = 0,
    Callback = function(arg)
        n = tonumber(arg) / 100

        if n2 < n then
            n2 = n
        end
    end,
})

Solver:AddSlider(fn(), {
    Text = "Max Solve Speed",
    Min = 1,
    Max = 20,
    Default = 4,
    Rounding = 0,
    Callback = function(arg)
        n2 = tonumber(arg) / 100

        if n2 < n then
            n = n2
        end
    end,
})

task.spawn(function()
    local flag4 = false
    local n4 = 4

    Generators2:AddCheckbox(fn(), {
        Text = "Auto Gen",
        Default = false,
        Callback = function(arg)
            flag4 = arg
        end,
    })

    Generators2:AddSlider(fn(), {
        Text = "Gen Interval",
        Min = 0.1,
        Max = 50,
        Default = 4,
        Rounding = 1,
        Callback = function(arg)
            n4 = tonumber(arg)
        end,
    })

    local function fn46()
        pcall(function()
            local map = workspace:FindFirstChild("Map")
            local map2 = map and workspace.Map:FindFirstChild("Ingame") and workspace.Map.Ingame:FindFirstChild("Map")
            if not map2 then
                return
            end

            for k, child in pairs(map2:GetChildren()) do
                if child.Name == "Generator" then
                    local remotes = child:FindFirstChild("Remotes")
                    local re = remotes and child.Remotes:FindFirstChild("RE")

                    if re then
                        re:FireServer()
                    end
                end
            end
        end)
    end

    local function fn47()
        local playerGui = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
        if not playerGui then
            return false
        end
        local puzzleUI = playerGui:FindFirstChild("PuzzleUI")
        if not puzzleUI or not puzzleUI.Enabled then
            return false
        end

        for i, descendant in ipairs(puzzleUI:GetDescendants()) do
            if descendant:IsA("Frame") and descendant.Visible then
                return true
            end
        end

        return false
    end

    task.spawn(function()
        local n5 = 0

        while task.wait(0.1) do
            if flag4 then
                if fn47() then
                    if tick() - n5 >= n4 then
                        fn46()
                        n5 = tick()
                    end
                else
                    n5 = tick()
                end
            end
        end
    end)

    getgenv().VX_GenKeybindEnabled = true
    getgenv().VX_GenKeybindKey = Enum.KeyCode.X

    Settings3:AddInput(fn(), {
        Text = "Gen Keybind",
        Placeholder = "X",
        Callback = function(arg)
            pcall(function()
                if Enum.KeyCode[arg] then
                    getgenv().VX_GenKeybindKey = Enum.KeyCode[arg]
                end
            end)
        end,
    })

    game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then
            return
        end

        if not getgenv().VX_GenKeybindEnabled then
            return
        end

        if input.KeyCode ~= getgenv().VX_GenKeybindKey then
            return
        end
        fn46()
    end)

    getgenv().HintEnabled = false
    getgenv().currentPuzzle = nil
    getgenv().HintOpacity = 0.4
    getgenv().LineThickness = 30

    local function fn48(arg)
        return arg.row .. "-" .. arg.col
    end

    local function fn49(arg)
        local tbl6, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40
        local tbl7, tbl8, v41, flag5, v42, v43, v44, n5
        n5 = 1

        while true do
            if n5 == 1 then
                tbl6 = {}
                v22, v23, v24 = ipairs(arg)
                v25 = v24
                n5 = 2
            elseif n5 == 2 then
                v26, v27 = v22(v23, v25)

                if v26 == nil then
                    n5 = 4
                else
                    n5 = 3
                end
            elseif n5 == 3 then
                v25 = v26
                tbl6[fn48(v27)] = v27
                n5 = 2
            elseif n5 == 4 then
                v28, v29, v30 = ipairs(arg)
                v31, v32 = v28(v29, v30)

                if v31 == nil then
                    n5 = 43
                else
                    n5 = 5
                end
            elseif n5 == 5 then
                v33 = v32
                v34 = v31
                n5 = 6
            elseif n5 == 6 then
                if tbl6[v33.row - 1 .. "-" .. v33.col] then
                    n5 = 7
                else
                    n5 = 13
                end
            elseif n5 == 7 then
                if tbl6[v33.row + 1 .. "-" .. v33.col] then
                    n5 = 8
                else
                    n5 = 14
                end
            elseif n5 == 8 then
                if tbl6[v33.row .. "-" .. v33.col - 1] then
                    n5 = 9
                else
                    n5 = 15
                end
            elseif n5 == 9 then
                if tbl6[v33.row .. "-" .. v33.col + 1] then
                    n5 = 10
                else
                    n5 = 16
                end
            elseif n5 == 10 then
                v35, v36 = v28(v29, v34)

                if v35 == nil then
                    n5 = 12
                else
                    n5 = 11
                end
            elseif n5 == 11 then
                v33 = v36
                v34 = v35
                n5 = 6
            elseif n5 == 12 then
                return {}
            elseif n5 == 13 then
                if tbl6[v33.row + 1 .. "-" .. v33.col] then
                    n5 = 14
                else
                    n5 = 19
                end
            elseif n5 == 14 then
                if tbl6[v33.row .. "-" .. v33.col - 1] then
                    n5 = 15
                else
                    n5 = 20
                end
            elseif n5 == 15 then
                if tbl6[v33.row .. "-" .. v33.col + 1] then
                    n5 = 16
                else
                    n5 = 21
                end
            elseif n5 == 16 then
                v37, v38 = v28(v29, v34)

                if v37 == nil then
                    n5 = 18
                else
                    n5 = 17
                end
            elseif n5 == 17 then
                v33 = v38
                v34 = v37
                n5 = 6
            elseif n5 == 18 then
                return {}
            elseif n5 == 19 then
                if tbl6[v33.row .. "-" .. v33.col - 1] then
                    n5 = 20
                else
                    n5 = 24
                end
            elseif n5 == 20 then
                if tbl6[v33.row .. "-" .. v33.col + 1] then
                    n5 = 21
                else
                    n5 = 25
                end
            elseif n5 == 21 then
                v39, v40 = v28(v29, v34)

                if v39 == nil then
                    n5 = 23
                else
                    n5 = 22
                end
            elseif n5 == 22 then
                v33 = v40
                v34 = v39
                n5 = 6
            elseif n5 == 23 then
                return {}
            elseif n5 == 24 then
                if tbl6[v33.row .. "-" .. v33.col + 1] then
                    n5 = 25
                else
                    n5 = 40
                end
            elseif n5 == 25 then
                if v33 then
                    n5 = 26
                else
                    n5 = 39
                end
            elseif n5 == 26 then
                tbl7 = {}
                tbl8 = {}
                v41 = v33

                if v41 then
                    n5 = 27
                else
                    n5 = 37
                end
            elseif n5 == 27 then
                table.insert(tbl7, v41)
                tbl8[fn48(v41)] = true
                flag5 = false

                if tbl6[v41.row - 1 .. "-" .. v41.col] and not tbl8[v41.row - 1 .. "-" .. v41.col] then
                    n5 = 34
                else
                    n5 = 28
                end
            elseif n5 == 28 then
                if tbl6[v41.row + 1 .. "-" .. v41.col] and not tbl8[v41.row + 1 .. "-" .. v41.col] then
                    n5 = 33
                else
                    n5 = 29
                end
            elseif n5 == 29 then
                if tbl6[v41.row .. "-" .. v41.col - 1] and not tbl8[v41.row .. "-" .. v41.col - 1] then
                    n5 = 32
                else
                    n5 = 30
                end
            elseif n5 == 30 then
                if tbl6[v41.row .. "-" .. v41.col + 1] and not tbl8[v41.row .. "-" .. v41.col + 1] then
                    n5 = 31
                else
                    n5 = 35
                end
            elseif n5 == 31 then
                v41 = tbl6[v41.row .. "-" .. v41.col + 1]
                flag5 = true
                n5 = 35
            elseif n5 == 32 then
                v41 = tbl6[v41.row .. "-" .. v41.col - 1]
                flag5 = true
                n5 = 35
            elseif n5 == 33 then
                v41 = tbl6[v41.row + 1 .. "-" .. v41.col]
                flag5 = true
                n5 = 35
            elseif n5 == 34 then
                v41 = tbl6[v41.row - 1 .. "-" .. v41.col]
                flag5 = true
                n5 = 35
            elseif n5 == 35 then
                if flag5 and v41 then
                    n5 = 27
                else
                    n5 = 36
                end
            elseif n5 == 36 then
                v42 = tbl7
                n5 = 38
            elseif n5 == 37 then
                v42 = tbl7
                n5 = 38
            elseif n5 == 38 then
                return v42
            elseif n5 == 39 then
                return {}
            elseif n5 == 40 then
                v43, v44 = v28(v29, v34)

                if v43 == nil then
                    n5 = 42
                else
                    n5 = 41
                end
            elseif n5 == 41 then
                v33 = v44
                v34 = v43
                n5 = 6
            elseif n5 == 42 then
                return {}
            elseif n5 == 43 then
                return {}
            end
        end
    end

    local function fn50(arg)
        if not arg or not arg.gridFrame then
            return
        end

        for i, child in ipairs(arg.gridFrame:GetChildren()) do
            if child.Name == "fart" then
                child:Destroy()
            end

            local effects = child:FindFirstChild("Effects")

            if effects then
                local hintFX = effects:FindFirstChild("HintFX")

                if hintFX then
                    hintFX:Destroy()
                end
            end
        end
    end

    local function fn51(arg)
        if not arg or not arg.Solution then
            return
        end
        fn50(arg)
        local v22, v23, v24 = ipairs(arg.Solution)
        local v25 = v24
        local v26 = v22
        local v27 = v23

        while true do
            local v28, v29 = v26(v27, v25)
            if v28 == nil then
                break
            end
            local v30 = fn49(v29)
            local colors = arg.colors
            local color2 = colors and arg.colors[v28] or Color3.fromRGB(0, 255, 255)

            for i, v31 in ipairs(v30) do
                local v32 = arg.gridFrame:FindFirstChild(fn48(v31))

                if v32 then
                    local effects = v32:FindFirstChild("Effects")

                    if effects then
                        local hintFX = effects:FindFirstChild("HintFX")

                        if hintFX then
                            hintFX:Destroy()
                        end

                        local frame = Instance.new("Frame")
                        frame.Name = "HintFX"
                        frame.Size = UDim2.fromScale(1, 1)
                        frame.BackgroundTransparency = 1
                        frame.ZIndex = 9
                        frame.Parent = effects
                        local n5 = getgenv().LineThickness / 100
                        local v33 = v30[i - 1]
                        local v34 = v30[i + 1]
                        local flag5 = false
                        local flag6 = false
                        local flag7 = false
                        local flag8 = false

                        if v33 then
                            if v33.row < v31.row then
                                flag7 = true
                            end

                            if v31.row < v33.row then
                                flag8 = true
                            end

                            if v33.col < v31.col then
                                flag5 = true
                            end

                            if v31.col < v33.col then
                                flag6 = true
                            end
                        end

                        if v34 then
                            if v34.row < v31.row then
                                flag7 = true
                            end

                            if v31.row < v34.row then
                                flag8 = true
                            end

                            if v34.col < v31.col then
                                flag5 = true
                            end

                            if v31.col < v34.col then
                                flag6 = true
                            end
                        end

                        if flag5 or flag6 then
                            local frame2 = Instance.new("Frame")
                            frame2.BackgroundColor3 = color2
                            frame2.BackgroundTransparency = getgenv().HintOpacity
                            frame2.BorderSizePixel = 0
                            frame2.ZIndex = 10
                            local udim2 = UDim2.fromScale
                            local n6 = flag5 and 0 or 0.5 - n5 / 2
                            frame2.Position = udim2(n6, 0.5 - n5 / 2)
                            local udim22 = UDim2.fromScale
                            local n7 = flag6 and 1 or 0.5 + n5 / 2
                            local n8 = flag5 and 0 or 0.5 - n5 / 2
                            frame2.Size = udim22(n7 - n8, n5)
                            frame2.Parent = frame
                        end

                        if flag7 or flag8 then
                            local frame2 = Instance.new("Frame")
                            frame2.BackgroundColor3 = color2
                            frame2.BackgroundTransparency = getgenv().HintOpacity
                            frame2.BorderSizePixel = 0
                            frame2.ZIndex = 10
                            local udim2 = UDim2.fromScale
                            local n6 = 0.5 - n5 / 2
                            local n7 = flag7 and 0 or 0.5 - n5 / 2
                            frame2.Position = udim2(n6, n7)
                            local udim22 = UDim2.fromScale
                            local n8 = flag8 and 1 or 0.5 + n5 / 2
                            local n9 = flag7 and 0 or 0.5 - n5 / 2
                            frame2.Size = udim22(n5, n8 - n9)
                            frame2.Parent = frame
                        end

                        local frame2 = Instance.new("Frame")
                        frame2.BackgroundColor3 = color2
                        frame2.BackgroundTransparency = getgenv().HintOpacity
                        frame2.BorderSizePixel = 0
                        frame2.ZIndex = 11
                        frame2.Position = UDim2.fromScale(0.5 - n5 / 2, 0.5 - n5 / 2)
                        frame2.Size = UDim2.fromScale(n5, n5)
                        frame2.Parent = frame
                    end
                end
            end

            v25 = v28
        end
    end

    local function fn52(arg)
        if not getgenv().HintEnabled then
            fn50(arg)
            return
        end
        fn51(arg)
    end

    if not getgenv().fh_hooked then
        getgenv().fh_hooked = true
        local modules2 = game:GetService("ReplicatedStorage"):FindFirstChild("Modules")
        local minigames2 = modules2 and modules2:FindFirstChild("Minigames")

        if minigames2 then
            minigames2 = minigames2:FindFirstChild("FlowGameManager")
        end

        if minigames2 then
            minigames2 = minigames2:FindFirstChild("FlowGame")
        end

        if minigames2 then
            local module = require(minigames2)
            local new = module.new

            module.new = function(...)
                local v22 = new(...)

                if getgenv().currentPuzzle and getgenv().currentPuzzle ~= v22 then
                    fn50(getgenv().currentPuzzle)
                end

                getgenv().currentPuzzle = v22

                if getgenv().HintEnabled then
                    fn52(v22)
                end

                v22.gridFrame.AncestryChanged:Connect(function()
                    if not v22.gridFrame:IsDescendantOf(game) then
                        if getgenv().currentPuzzle == v22 then
                            getgenv().currentPuzzle = nil
                        end

                        fn50(v22)
                    end
                end)

                return v22
            end
        end
    end

    Settings3:AddCheckbox(fn(), {
        Text = "Generator Helper",
        Default = false,
        Callback = function(hintEnabled)
            getgenv().HintEnabled = hintEnabled

            if getgenv().currentPuzzle then
                if hintEnabled then
                    fn52(getgenv().currentPuzzle)
                else
                    fn50(getgenv().currentPuzzle)
                end
            end
        end,
    })

    local genv11 = getgenv()
    local generatorSize = getgenv().GeneratorSize
    local v22 = generatorSize

    if not generatorSize then
        local tbl6 = {}
        v22 = tbl6
        tbl6.Current = 6
        tbl6.Enabled = false
    end

    genv11.GeneratorSize = v22

    local function fn53(arg)
        local map = workspace:FindFirstChild("Map")
        local map2 = map and workspace.Map:FindFirstChild("Ingame") and workspace.Map.Ingame:FindFirstChild("Map")
        if not map2 then
            return
        end

        for k, child in pairs(map2:GetChildren()) do
            if child.Name == "Generator" then
                child:SetAttribute("Size", arg)
            end
        end
    end

    local function fn54()
        if getgenv().GeneratorSize.Enabled then
            fn53(getgenv().GeneratorSize.Current)
        end
    end

    Difficulty:AddCheckbox(fn(), {
        Text = "Generator Size",
        Default = false,
        Callback = function(enabled)
            getgenv().GeneratorSize.Enabled = enabled
            fn54()
        end,
    })

    Difficulty:AddInput(fn(), {
        Text = "Size (2–30)",
        Placeholder = "2–30",
        Callback = function(arg)
            local num = tonumber(arg)
            if not num then
                return
            end
            local current = math.clamp(math.round(num), 2, 30)
            getgenv().GeneratorSize.Current = current

            if getgenv().GeneratorSize.Enabled then
                fn54()
            end
        end,
    })

    Settings3:AddCheckbox(fn(), {
        Text = "Hide Generator UI",
        Default = false,
        Callback = function(closeGeneratorsUI)
            getgenv().CloseGeneratorsUI = closeGeneratorsUI
            local playerGui = game:GetService("Players").LocalPlayer.PlayerGui

            local function fn55()
                local puzzleUI = playerGui:FindFirstChild("PuzzleUI")
                local temporaryUI = playerGui:FindFirstChild("TemporaryUI")
                local backgroundUI = temporaryUI and temporaryUI:FindFirstChild("BackgroundUI")

                if puzzleUI then
                    puzzleUI.Enabled = false
                end

                if backgroundUI then
                    backgroundUI.Enabled = false
                end
            end

            local function fn56()
                local puzzleUI = playerGui:FindFirstChild("PuzzleUI")
                local temporaryUI = playerGui:FindFirstChild("TemporaryUI")
                local backgroundUI = temporaryUI and temporaryUI:FindFirstChild("BackgroundUI")

                if puzzleUI then
                    puzzleUI.Enabled = true
                end

                if backgroundUI then
                    backgroundUI.Enabled = true
                end
            end

            if closeGeneratorsUI then
                fn55()

                getgenv().CloseGeneratorsUILoop = game:GetService("RunService").Heartbeat:Connect(function()
                    if not getgenv().CloseGeneratorsUI then
                        if getgenv().CloseGeneratorsUILoop then
                            getgenv().CloseGeneratorsUILoop:Disconnect()
                        end

                        return
                    end

                    fn55()
                end)
            else
                if getgenv().CloseGeneratorsUILoop then
                    getgenv().CloseGeneratorsUILoop:Disconnect()
                    getgenv().CloseGeneratorsUILoop = nil
                end

                fn56()
            end
        end,
    })

    Settings3:AddCheckbox(fn(), {
        Text = "Generator Button",
        Default = false,
        Callback = function(arg)
            local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

            if not arg then
                local coolGeneratorGUI = playerGui:FindFirstChild("CoolGeneratorGUI")

                if coolGeneratorGUI then
                    coolGeneratorGUI:Destroy()
                end

                return
            end

            local TweenService = game:GetService("TweenService")
            local UserInputService = game:GetService("UserInputService")
            local coolGeneratorGUI = playerGui:FindFirstChild("CoolGeneratorGUI")

            if coolGeneratorGUI then
                coolGeneratorGUI:Destroy()
            end

            local screenGui = Instance.new("ScreenGui")
            screenGui.Name = "CoolGeneratorGUI"
            screenGui.ResetOnSpawn = false
            screenGui.Parent = playerGui
            local frame = Instance.new("Frame")
            frame.Size = UDim2.new(0, 220, 0, 160)
            frame.Position = UDim2.new(0, 20, 0, 20)
            frame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
            frame.BackgroundTransparency = 0.1
            frame.BorderSizePixel = 0
            frame.Parent = screenGui
            Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)
            local frame2 = Instance.new("Frame")
            frame2.Size = UDim2.new(1, 0, 0, 40)
            frame2.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
            frame2.BorderSizePixel = 0
            frame2.Parent = frame
            Instance.new("UICorner", frame2).CornerRadius = UDim.new(0, 12)
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, -40, 1, 0)
            textLabel.Position = UDim2.new(0, 10, 0, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.Text = "Generator Manual"
            textLabel.TextColor3 = Color3.new(1, 1, 1)
            textLabel.TextXAlignment = Enum.TextXAlignment.Left
            textLabel.Font = Enum.Font.GothamBold
            textLabel.TextSize = 18
            textLabel.Parent = frame2
            local textButton = Instance.new("TextButton")
            textButton.Size = UDim2.new(0, 30, 0, 30)
            textButton.Position = UDim2.new(1, -35, 0, 5)
            textButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
            textButton.Text = "−"
            textButton.TextColor3 = Color3.new(1, 1, 1)
            textButton.Font = Enum.Font.GothamBold
            textButton.TextSize = 28
            textButton.Parent = frame2
            Instance.new("UICorner", textButton).CornerRadius = UDim.new(0, 15)
            local textBox = Instance.new("TextBox")
            textBox.Size = UDim2.new(0.8, 0, 0, 40)
            textBox.Position = UDim2.new(0.1, 0, 0, 55)
            textBox.PlaceholderText = "Cooldown (seconds)"
            textBox.Text = "2.5"
            textBox.TextColor3 = Color3.new(1, 1, 1)
            textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
            textBox.Font = Enum.Font.Gotham
            textBox.TextSize = 16
            textBox.ClearTextOnFocus = false
            textBox.Parent = frame
            Instance.new("UICorner", textBox).CornerRadius = UDim.new(0, 8)
            local textButton2 = Instance.new("TextButton")
            textButton2.Size = UDim2.new(0.8, 0, 0, 50)
            textButton2.Position = UDim2.new(0.1, 0, 0, 100)
            textButton2.Text = "CLICK GENERATOR"
            textButton2.TextColor3 = Color3.new(1, 1, 1)
            textButton2.BackgroundColor3 = Color3.fromRGB(0, 200, 150)
            textButton2.Font = Enum.Font.GothamBold
            textButton2.TextSize = 20
            textButton2.Parent = frame
            Instance.new("UICorner", textButton2).CornerRadius = UDim.new(0, 10)
            local textButton3 = Instance.new("TextButton")
            textButton3.BackgroundColor3 = Color3.fromRGB(0, 200, 150)
            textButton3.Text = "+"
            textButton3.TextColor3 = Color3.new(1, 1, 1)
            textButton3.Font = Enum.Font.GothamBold
            textButton3.TextSize = 36
            textButton3.BackgroundTransparency = 1
            textButton3.TextTransparency = 1
            textButton3.Size = UDim2.new(0, 0, 0, 0)
            textButton3.Visible = false
            textButton3.Parent = screenGui
            Instance.new("UICorner", textButton3).CornerRadius = UDim.new(0, 25)
            local flag5 = false
            local position = nil
            local position2 = nil

            frame2.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 and frame.Visible then
                    flag5 = true
                    position = input.Position
                    position2 = frame.Position
                end
            end)

            frame2.InputChanged:Connect(function(input)
                if flag5 and input.UserInputType == Enum.UserInputType.MouseMovement then
                    local n5 = input.Position - position
                    frame.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n5.X, position2.Y.Scale, position2.Y.Offset + n5.Y)
                end
            end)

            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    flag5 = false
                end
            end)

            local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
            local tweenInfo2 = TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

            textButton.MouseButton1Click:Connect(function()
                TweenService:Create(frame, tweenInfo, {Size = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 1}):Play()

                task.delay(0.4, function()
                    frame.Visible = false
                    textButton3.Size = UDim2.new(0, 0, 0, 0)
                    textButton3.BackgroundTransparency = 1
                    textButton3.TextTransparency = 1
                    textButton3.Visible = true

                    TweenService:Create(textButton3, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                        Size = UDim2.new(0, 50, 0, 50),
                        BackgroundTransparency = 0,
                        TextTransparency = 0,
                    }):Play()
                end)
            end)

            textButton3.MouseButton1Click:Connect(function()
                textButton3.Visible = false
                frame.Visible = true
                frame.Size = UDim2.new(0, 0, 0, 0)
                frame.BackgroundTransparency = 1

                TweenService:Create(frame, tweenInfo2, {
                    Size = UDim2.new(0, 220, 0, 160),
                    Position = UDim2.new(0, 20, 0, 20),
                    BackgroundTransparency = 0.1,
                }):Play()
            end)

            local flag6 = false

            textButton2.MouseButton1Click:Connect(function()
                if flag6 then
                    return
                end
                flag6 = true

                TweenService:Create(textButton2, TweenInfo.new(0.07, Enum.EasingStyle.Sine), {
                    Size = UDim2.new(0.75, 0, 0, 44),
                    BackgroundColor3 = Color3.fromRGB(0, 170, 130),
                }):Play()

                task.delay(0.07, function()
                    TweenService:Create(textButton2, TweenInfo.new(0.1, Enum.EasingStyle.Back), {
                        Size = UDim2.new(0.8, 0, 0, 50),
                        BackgroundColor3 = Color3.fromRGB(0, 200, 150),
                    }):Play()
                end)

                fn46()

                task.spawn(function()
                    local now = tick()
                    local num = tonumber(textBox.Text)
                    local n5 = num or 2.5

                    if n5 < 0.1 then
                        n5 = 0.1
                    end

                    local n6 = now + n5

                    while tick() < n6 do
                        textButton2.Text = string.format("WAIT %.1fs", math.max(0, n6 - tick()))
                        task.wait(0.05)
                    end

                    textButton2.Text = "CLICK GENERATOR"
                    flag6 = false
                end)
            end)
        end,
    })
end)

local Misc = v:AddTab("Misc", "package", "miscellaneous features")
local v22 = Misc:AddLeftGroupbox("Other Stuff", "package")
local v23 = Misc:AddRightTabbox("shield-check")
local ui = v23:AddTab("UI")
local Spoofer = v23:AddTab("Spoofer")
local Anti = Misc:AddLeftGroupbox("Anti", "ban")
local v24 = Misc:AddRightGroupbox("Anti Slow", "shield-off")

task.spawn(function()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local localPlayer = game.Players.LocalPlayer
    getgenv()._antiBloodHookEnabled = false
    getgenv()._antiBloodHookConn = nil
    getgenv()._antiBloodHookOriginalFire = nil

    Anti:AddCheckbox(fn(), {
        Text = "Anti BloodHook",
        Default = false,
        Callback = function(antiBloodHookEnabled)
            getgenv()._antiBloodHookEnabled = antiBloodHookEnabled

            if antiBloodHookEnabled then
                local Network = require(ReplicatedStorage.Modules.Network.Network)

                if not getgenv()._antiBloodHookOriginalFire then
                    getgenv()._antiBloodHookOriginalFire = Network.FireServerConnection

                    Network.FireServerConnection = function(arg, arg2, arg3, ...)
                        if type(arg2) == "string" and arg2:match("NosHookQTE") then
                            return getgenv()._antiBloodHookOriginalFire(arg, arg2, arg3, false)
                        end
                        return getgenv()._antiBloodHookOriginalFire(arg, arg2, arg3, ...)
                    end
                end

                getgenv()._antiBloodHookConn = game:GetService("RunService").Heartbeat:Connect(function()
                    if not getgenv()._antiBloodHookEnabled then
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

                    for i, child in ipairs(humanoidRootPart:GetChildren()) do
                        if child:IsA("BodyMover") and not child:GetAttribute("Perm") then
                            child:Destroy()
                        end
                    end

                    if humanoidRootPart.AssemblyLinearVelocity.Magnitude > 60 then
                        humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
                    end
                end)
            else
                if getgenv()._antiBloodHookConn then
                    getgenv()._antiBloodHookConn:Disconnect()
                    getgenv()._antiBloodHookConn = nil
                end

                if getgenv()._antiBloodHookOriginalFire then
                    require(ReplicatedStorage.Modules.Network.Network).FireServerConnection = getgenv()._antiBloodHookOriginalFire
                    getgenv()._antiBloodHookOriginalFire = nil
                end
            end
        end,
    })

    getgenv()._antiNosPuddleEnabled = false
    getgenv()._antiNosPuddleConn = nil
    getgenv().NoliDeleting = false
    getgenv().NoliConnection = nil

    Anti:AddCheckbox(fn(), {
        Text = "Anti Fake Noli",
        Default = false,
        Callback = function(noliDeleting)
            getgenv().NoliDeleting = noliDeleting

            if getgenv().NoliConnection then
                getgenv().NoliConnection:Disconnect()
                getgenv().NoliConnection = nil
            end

            if noliDeleting then
                getgenv().NoliConnection = game:GetService("RunService").Heartbeat:Connect(function()
                    pcall(function()
                        local players = workspace:FindFirstChild("Players")
                        local killers = players and workspace.Players:FindFirstChild("Killers")
                        if not killers then
                            return
                        end
                        local tbl6 = {}

                        for k, child in pairs(killers:GetChildren()) do
                            if child.Name == "Noli" and child:IsA("Model") then
                                table.insert(tbl6, child)
                            end
                        end

                        if #tbl6 > 1 then
                            for i = 2, #tbl6 do
                                pcall(function()
                                    tbl6[i]:Destroy()
                                end)
                            end
                        end

                        local v25 = tbl6[1]

                        if v25 then
                            for k, child in pairs(v25:GetChildren()) do
                                if child.Name == "Hallucination" then
                                    pcall(function()
                                        child:Destroy()
                                    end)
                                end
                            end
                        end
                    end)
                end)
            end
        end,
    })

    getgenv().GeneratorDeleting = false
    getgenv().GeneratorConnection = nil

    Anti:AddCheckbox(fn(), {
        Text = "Anti Fake Generator",
        Default = false,
        Callback = function(generatorDeleting)
            getgenv().GeneratorDeleting = generatorDeleting

            if getgenv().GeneratorConnection then
                getgenv().GeneratorConnection:Disconnect()
                getgenv().GeneratorConnection = nil
            end

            if generatorDeleting then
                getgenv().GeneratorConnection = game:GetService("RunService").Heartbeat:Connect(function()
                    pcall(function()
                        local map = workspace:FindFirstChild("Map")
                        local ingame = map and workspace.Map:FindFirstChild("Ingame")
                        if not ingame then
                            return
                        end

                        for k, child in pairs(ingame:GetChildren()) do
                            local name = child.Name
                            local fakeGeneratorName = getgenv().FakeGeneratorName
                            local str = fakeGeneratorName or "FakeGenerator"

                            if name == str then
                                pcall(function()
                                    child:Destroy()
                                end)
                            end
                        end
                    end)
                end)
            end
        end,
    })

    local connection2 = nil

    Anti:AddCheckbox(fn(), {
        Text = "Anti Slow Fall",
        Default = false,
        Callback = function(arg)
            if connection2 then
                connection2:Disconnect()
                connection2 = nil
            end

            if arg then
                connection2 = localPlayer.CharacterAdded:Connect(function(character)
                    if not character:GetAttribute("NoFallSlow") then
                        character:SetAttribute("NoFallSlow", true)
                    end
                end)

                local character = localPlayer.Character

                if character and not character:GetAttribute("NoFallSlow") then
                    character:SetAttribute("NoFallSlow", true)
                end
            end
        end,
    })

    getgenv()._antiSentrySlowOriginalApply = nil

    Anti:AddCheckbox(fn(), {
        Text = "Anti Sentry Slow",
        Default = false,
        Callback = function(arg)
            if arg then
                local Statuses = require(ReplicatedStorage.Modules.Gameplay.Statuses)

                if not getgenv()._antiSentrySlowOriginalApply then
                    getgenv()._antiSentrySlowOriginalApply = Statuses.ApplyStatus

                    Statuses.ApplyStatus = function(arg2, arg3, arg4, arg5, ...)
                        local character = localPlayer.Character

                        if character and arg3 == character and arg4 == "Slowness" then
                            local primaryPart = character.PrimaryPart

                            if primaryPart then
                                for k, child in pairs(workspace.Map.Ingame:GetChildren()) do
                                    if child.Name == "BuildermanSentry" and not child:GetAttribute("Destroyed") then
                                        local primaryPart2 = child.PrimaryPart
                                        if not primaryPart2 then
                                            continue
                                        end
                                        local attribute = child:GetAttribute("EffectRadiusSize")
                                        local n4 = attribute or 30
                                        if (primaryPart.Position - primaryPart2.Position).Magnitude <= n4 then
                                            return
                                        end
                                    end
                                end
                            end
                        end

                        return getgenv()._antiSentrySlowOriginalApply(arg2, arg3, arg4, arg5, ...)
                    end
                end
            elseif getgenv()._antiSentrySlowOriginalApply then
                require(ReplicatedStorage.Modules.Gameplay.Statuses).ApplyStatus = getgenv()._antiSentrySlowOriginalApply
                getgenv()._antiSentrySlowOriginalApply = nil
            end
        end,
    })

    local schematics = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Schematics")

    local function fn46(arg)
        local v25 = schematics:FindFirstChild(arg, true)

        if v25 then
            v25:Destroy()
        end
    end

    local function fn47(arg, arg2)
        local connection3 = nil

        Anti:AddCheckbox(fn(), {
            Text = arg,
            Default = false,
            Callback = function(arg3)
                if connection3 then
                    connection3:Disconnect()
                    connection3 = nil
                end

                if arg3 then
                    fn46(arg2)

                    connection3 = game:GetService("RunService").Heartbeat:Connect(function()
                        fn46(arg2)
                    end)
                end
            end,
        })
    end

    fn47("Anti Slow", "Slowness")
    fn47("Anti Stun", "Stunned")
    local statusEffects = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Schematics"):WaitForChild("StatusEffects")

    local function fn48(arg, arg2)
        local v25 = statusEffects

        if type(arg2) == "table" then
            for i, v26 in ipairs(arg2) do
                if not v25 then
                    break
                end
                v25 = v25:WaitForChild(v26, 10)
            end
        else
            v25 = statusEffects:WaitForChild(arg2, 10)
        end

        if not v25 then
            return
        end
        local ok, result = pcall(require, v25)
        if not ok or type(result) ~= "table" then
            return
        end
        local flag4 = false
        local v26 = nil

        if hookfunction then
            v26 = hookfunction(result.Applied, function(...)
                if not flag4 then
                    return v26(...)
                end
            end)
        else
            local applied = result.Applied

            result.Applied = function(...)
                if not flag4 then
                    return applied(...)
                end
            end
        end

        Anti:AddCheckbox(fn(), {
            Text = arg,
            Default = false,
            Callback = function(arg3)
                flag4 = arg3
            end,
        })
    end

    fn48("Anti Blindness", "Blindness")
    fn48("Anti Subspaced", {"SurvivorExclusive", "Subspaced"})
end)

task.spawn(function()
    getgenv().VX_KillerDoorsEnabled = false

    local function fn46(canCollide)
        pcall(function()
            local map = workspace:FindFirstChild("Map")
            local killerDoors = map and workspace.Map:FindFirstChild("Ingame") and workspace.Map.Ingame:FindFirstChild("Map") and workspace.Map.Ingame.Map:FindFirstChild("MapBoundaries") and workspace.Map.Ingame.Map.MapBoundaries:FindFirstChild("KillerDoors")
            if not killerDoors then
                return
            end

            for i, descendant in ipairs(killerDoors:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.CanCollide = canCollide
                end
            end
        end)
    end

    v22:AddCheckbox(fn(), {
        Text = "Noclip Killer Doors",
        Default = false,
        Callback = function(vxKillerDoorsEnabled)
            getgenv().VX_KillerDoorsEnabled = vxKillerDoorsEnabled
            local flag4

            if vxKillerDoorsEnabled then
                flag4 = false
            else
                flag4 = true
            end

            fn46(flag4)

            if vxKillerDoorsEnabled then
                task.spawn(function()
                    while getgenv().VX_KillerDoorsEnabled do
                        fn46(false)
                        task.wait(1)
                    end
                end)
            end
        end,
    })

    v22:AddCheckbox(fn(), {
        Text = "Allow Jump",
        Default = false,
        Callback = function(mhhmmm2)
            _G.mhhmmm2 = mhhmmm2

            task.spawn(function()
                local localPlayer = game:GetService("Players").LocalPlayer

                while task.wait() and _G.mhhmmm2 do
                    if localPlayer.Character then
                        local humanoid = localPlayer.Character:FindFirstChild("Humanoid")

                        if humanoid then
                            humanoid.UseJumpPower = true
                            humanoid.JumpPower = 50
                        end
                    end
                end
            end)
        end,
    })

    v22:AddCheckbox(fn(), {
        Text = "Noclip Walls",
        Default = false,
        Callback = function(nokia)
            _G.nokia = nokia
            local tbl6 = {}

            task.spawn(function()
                local localPlayer, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, n4
                n4 = 1

                while true do
                    if n4 == 1 then
                        localPlayer = game:GetService("Players").LocalPlayer
                        n4 = 2
                    elseif n4 == 2 then
                        if task.wait() then
                            n4 = 3
                        else
                            n4 = 14
                        end
                    elseif n4 == 3 then
                        if _G.nokia then
                            n4 = 4
                        else
                            n4 = 9
                        end
                    elseif n4 == 4 then
                        if localPlayer.Character then
                            n4 = 5
                        else
                            n4 = 2
                        end
                    elseif n4 == 5 then
                        v25, v26, v27 = ipairs(localPlayer.Character:GetChildren())
                        v28 = v27
                        n4 = 6
                    elseif n4 == 6 then
                        v29, v30 = v25(v26, v28)

                        if v29 == nil then
                            n4 = 2
                        else
                            n4 = 7
                        end
                    elseif n4 == 7 then
                        v28 = v29

                        if v30:IsA("BasePart") and v30.CanCollide == true then
                            n4 = 8
                        else
                            n4 = 6
                        end
                    elseif n4 == 8 then
                        tbl6[v30] = true
                        v30.CanCollide = false
                        n4 = 6
                    elseif n4 == 9 then
                        v31, v32, v33 = pairs(tbl6)
                        v34 = v33
                        n4 = 10
                    elseif n4 == 10 then
                        v35 = v31(v32, v34)

                        if v35 == nil then
                            n4 = 13
                        else
                            n4 = 11
                        end
                    elseif n4 == 11 then
                        v34 = v35

                        if v35 and v35.Parent then
                            n4 = 12
                        else
                            n4 = 10
                        end
                    elseif n4 == 12 then
                        v35.CanCollide = true
                        n4 = 10
                    elseif n4 == 13 then
                        tbl6 = {}
                        n4 = 14
                    elseif n4 == 14 then
                        return
                    end
                end
            end)
        end,
    })
end)

task.spawn(function()
    local tbl6 = {Username = true, PlayerName = true, PlayerUsername = true}
    local playerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    getgenv().VX_ProtectEnabled = false
    local connection2 = nil
    local connection3 = nil
    local tbl7 = {}
    local tbl8 = {}
    local tbl9 = {}
    local tbl10 = {}

    local function fn46(arg)
        if arg:IsA("TextLabel") and tbl6[arg.Name] then
            tbl9[arg] = true
        elseif (arg:IsA("ImageLabel") or arg:IsA("ImageButton")) and arg.Name == "Icon" then
            local parent = arg.Parent

            if parent then
                local flag4 = false

                for i, child in ipairs(parent:GetChildren()) do
                    if child:IsA("TextLabel") and tbl6[child.Name] then
                        flag4 = true
                        break
                    end
                end

                if flag4 then
                    tbl10[arg] = true
                end
            end
        end
    end

    local function fn47()
        tbl9 = {}
        tbl10 = {}

        for i, descendant in ipairs(playerGui:GetDescendants()) do
            fn46(descendant)
        end
    end

    local function fn48()
        for k in pairs(tbl10) do
            if k and k.Parent then
                if not tbl7[k] then
                    tbl7[k] = k.Image
                end

                if k.Image ~= "rbxassetid://89532725296741" then
                    k.Image = "rbxassetid://89532725296741"
                end
            else
                tbl10[k] = nil
            end
        end

        for k in pairs(tbl9) do
            if k and k.Parent then
                if not tbl8[k] then
                    tbl8[k] = k.Text
                end

                if k.Text ~= "Vexsaken" then
                    k.Text = "Vexsaken"
                end
            else
                tbl9[k] = nil
            end
        end
    end

    local function fn49()
        for k, v25 in pairs(tbl7) do
            if k and k.Parent then
                k.Image = v25
            end
        end

        tbl7 = {}

        for k, v25 in pairs(tbl8) do
            if k and k.Parent then
                k.Text = v25
            end
        end

        tbl8 = {}
    end

    getgenv()._hiddenStatsCache = {}

    ui:AddCheckbox(fn(), {
        Text = "See Hidden Stats",
        Default = false,
        Callback = function(arg)
            if arg then
                getgenv()._hiddenStatsCache = {}
                local v25, v26, v27 = ipairs(game.Players:GetPlayers())
                local v28 = v27
                local v29 = v25
                local v30 = v26

                while true do
                    local v31, v32 = v29(v30, v28)
                    if v31 == nil then
                        break
                    end
                    v28 = v31
                    local playerData = v32:FindFirstChild("PlayerData")
                    local privacy = playerData and v32.PlayerData:FindFirstChild("Settings") and v32.PlayerData.Settings:FindFirstChild("Privacy")

                    if privacy then
                        local tbl11 = {}

                        for i, v33 in ipairs({"HideSurvivorWins", "HidePlaytime", "HideKillerWins"}) do
                            local v34 = privacy:FindFirstChild(v33)

                            if v34 and v34:IsA("BoolValue") then
                                tbl11[v33] = v34.Value
                                v34.Value = false
                            end
                        end

                        v28 = v31
                        getgenv()._hiddenStatsCache[v32.UserId] = {privacy = privacy, values = tbl11}
                    end
                end
            else
                local v25, v26, v27 = pairs(getgenv()._hiddenStatsCache)
                local v28 = v27
                local v29 = v25
                local v30 = v26

                while true do
                    local v31, v32 = v29(v30, v28)
                    if v31 == nil then
                        break
                    end
                    v28 = v31

                    if v32.privacy and v32.privacy.Parent then
                        for k, value in pairs(v32.values) do
                            local v33 = v32.privacy:FindFirstChild(k)

                            if v33 and v33:IsA("BoolValue") then
                                v33.Value = value
                            end
                        end

                        v28 = v31
                    end
                end

                getgenv()._hiddenStatsCache = {}
            end
        end,
    })

    ui:AddCheckbox(fn(), {
        Text = "Vexsaken Protections",
        Default = false,
        Callback = function(vxProtectEnabled)
            getgenv().VX_ProtectEnabled = vxProtectEnabled

            if vxProtectEnabled then
                fn47()

                connection3 = playerGui.DescendantAdded:Connect(function(descendant)
                    if getgenv().VX_ProtectEnabled then
                        fn46(descendant)
                    end
                end)

                connection2 = game:GetService("RunService").Heartbeat:Connect(function()
                    if getgenv().VX_ProtectEnabled then
                        pcall(fn48)
                    end
                end)
            else
                getgenv().VX_ProtectEnabled = false

                if connection3 then
                    connection3:Disconnect()
                    connection3 = nil
                end

                if connection2 then
                    connection2:Disconnect()
                    connection2 = nil
                end

                fn49()
                tbl9 = {}
                tbl10 = {}
            end
        end,
    })

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local UserInputService = game:GetService("UserInputService")
    local Network = nil

    pcall(function()
        if ReplicatedStorage:FindFirstChild("Modules") and ReplicatedStorage.Modules:FindFirstChild("Network") then
            Network = require(ReplicatedStorage.Modules.Network.Network)
        elseif ReplicatedStorage:FindFirstChild("Network") then
            Network = require(ReplicatedStorage.Network)
        end
    end);

    (function()
        local lastInputType = UserInputService:GetLastInputType()
        if lastInputType.Name:find("Gamepad") then
            return "Console"
        end

        if not lastInputType.Name:find("Touch") then
            return "PC"
        end
        return "Mobile"
    end)()

    local v25 = nil

    local function fn50(arg)
        if Network then
            pcall(function()
                Network:FireServerConnection("SetDevice", "REMOTE_EVENT", arg)
            end)
        end
    end

    Spoofer:AddDropdown(fn(), {
        Text = "Device Spoofer",
        Values = {"Console", "Mobile", "PC", "Unknown"},
        Default = nil,
        Callback = function(arg)
            local str = arg == "Unknown" and "Idk" or arg
            v25 = str
            fn50(v25)
        end,
    })

    task.spawn(function()
        local spectate = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainUI"):WaitForChild("Spectate")
        local username = spectate:WaitForChild("Username")
        local clone = username:Clone()
        clone.Name = "FalseUser"
        clone.Visible = false
        clone.Parent = spectate

        ui:AddInput(fn(), {
            Text = "Custom Spectate Username",
            Placeholder = "Enter username",
            Callback = function(text)
                if text == "" then
                    clone.Visible = false
                    username.Visible = true
                else
                    username.Visible = false
                    clone.Text = text
                    clone.Visible = true
                end
            end,
        })
    end)
end)

task.spawn(function()
    local localPlayer = game:GetService("Players").LocalPlayer
    local players = workspace:FindFirstChild("Players")
    local survivors = players and workspace.Players:FindFirstChild("Survivors") or workspace:WaitForChild("Players", 10):WaitForChild("Survivors", 10)

    local function fn46()
        local mainUI = localPlayer.PlayerGui:FindFirstChild("MainUI")
        if not mainUI then
            return
        end
        local statusContainer = mainUI:FindFirstChild("StatusContainer")
        if not statusContainer then
            return
        end
        local slowness = statusContainer:FindFirstChild("Slowness")

        if slowness then
            slowness.Visible = false
        end
    end

    local tbl6 = {
        Slowness = {
            Values = {"SlowedStatus"},
            Connections = {},
            Enabled = false,
            hideUI = true,
        },
        Skills = {
            Values = {
                "StunningKiller",
                "EatFriedChicken",
                "GuestBlocking",
                "PunchAbility",
                "SubspaceTripmine",
                "TaphTripwire",
                "PlasmaBeam",
                "SpawnProtection",
                "c00lgui",
                "ShootingGun",
                "TwoTimeStab",
                "TwoTimeCrouching",
                "DrinkingCola",
                "DrinkingSlateskin",
                "SlateskinStatus",
                "EatingGhostburger",
            },
            Connections = {},
            Enabled = false,
        },
        Items = {
            Values = {"BloxyColaItem", "Medkit"},
            Connections = {},
            Enabled = false,
        },
        Emotes = {Values = {"Emoting"}, Connections = {}, Enabled = false},
        Builderman = {
            Values = {"DispenserConstruction", "SentryConstruction"},
            Connections = {},
            Enabled = false,
        },
    }

    local function fn47(arg, arg2)
        if arg:GetAttribute("Username") ~= localPlayer.Name then
            return
        end

        local connection2 = game:GetService("RunService").RenderStepped:Connect(function()
            if not arg.Parent or not arg2.Enabled then
                return
            end
            local speedMultipliers = arg:FindFirstChild("SpeedMultipliers")

            if speedMultipliers then
                for i, value in ipairs(arg2.Values) do
                    local v25 = speedMultipliers:FindFirstChild(value)

                    if v25 and v25:IsA("NumberValue") and v25.Value ~= 1 then
                        v25.Value = 1
                    end
                end
            end

            if arg2.hideUI then
                fn46()
            end
        end)

        table.insert(arg2.Connections, connection2)
    end

    local function fn48(arg)
        arg.Enabled = true

        for k, child in pairs(survivors:GetChildren()) do
            fn47(child, arg)
        end

        survivors.ChildAdded:Connect(function(child)
            task.wait(0.1)
            fn47(child, arg)
        end)
    end

    local function fn49(arg)
        arg.Enabled = false

        for i, connection2 in ipairs(arg.Connections) do
            if connection2 then
                connection2:Disconnect()
            end
        end

        arg.Connections = {}
    end

    v24:AddCheckbox(fn(), {
        Text = "Anti Slow Slowness",
        Default = false,
        Callback = function(arg)
            if arg then
                fn48(tbl6.Slowness)
            else
                fn49(tbl6.Slowness)
            end
        end,
    })

    v24:AddCheckbox(fn(), {
        Text = "Anti Slow Builderman",
        Default = false,
        Callback = function(arg)
            if arg then
                fn48(tbl6.Builderman)
            else
                fn49(tbl6.Builderman)
            end
        end,
    })

    v24:AddCheckbox(fn(), {
        Text = "Anti Slow Skills",
        Default = false,
        Callback = function(arg)
            local skills = tbl6.Skills

            if arg then
                fn48(skills)

                for k, descendant in pairs(game:GetDescendants()) do
                    if descendant.Name == "jdaw" or descendant.Name == "JDEndlagAxe" then
                        pcall(function()
                            descendant:Destroy()
                        end)
                    end
                end

                if not getgenv()._AntiSlowSkills_HatchetConn then
                    getgenv()._AntiSlowSkills_HatchetConn = game.DescendantAdded:Connect(function(descendant)
                        if descendant.Name == "jdaw" or descendant.Name == "JDEndlagAxe" then
                            task.spawn(function()
                                pcall(function()
                                    descendant:Destroy()
                                end)
                            end)
                        end
                    end)
                end
            else
                fn49(skills)

                if getgenv()._AntiSlowSkills_HatchetConn then
                    getgenv()._AntiSlowSkills_HatchetConn:Disconnect()
                    getgenv()._AntiSlowSkills_HatchetConn = nil
                end
            end
        end,
    })

    v24:AddCheckbox(fn(), {
        Text = "Anti Slow Items",
        Default = false,
        Callback = function(arg)
            if arg then
                fn48(tbl6.Items)
            else
                fn49(tbl6.Items)
            end
        end,
    })

    v24:AddCheckbox(fn(), {
        Text = "Anti Slow Emotes",
        Default = false,
        Callback = function(arg)
            if arg then
                fn48(tbl6.Emotes)
            else
                fn49(tbl6.Emotes)
            end
        end,
    })
end)

local Fun = v:AddTab("Fun", "smile", "Fun features to use")
local Animations = Fun:AddLeftGroupbox("Animations", "person-standing")
local v25 = Fun:AddRightGroupbox("Free Emotes", "person-standing")
local music = Fun:AddLeftTabbox("music")
local Music = music:AddTab("Music")
local Settings5 = music:AddTab("Settings")

task.spawn(function()
    local genv11 = getgenv()
    local runService = getgenv().RunService
    local RunService = runService or game:GetService("RunService")
    genv11.RunService = RunService
    local genv12 = getgenv()
    local players = getgenv().Players
    local Players = players or game:GetService("Players")
    genv12.Players = Players
    local genv13 = getgenv()
    local marketplaceService = getgenv().MarketplaceService
    local MarketplaceService = marketplaceService or game:GetService("MarketplaceService")
    genv13.MarketplaceService = MarketplaceService
    getgenv().player = getgenv().Players.LocalPlayer
    local genv14 = getgenv()
    local replacementAnimations = getgenv().replacementAnimations
    local v26 = replacementAnimations

    if not replacementAnimations then
        local tbl6 = {}
        v26 = tbl6
        tbl6.idle = "rbxassetid://134624270247120"
        tbl6.walk = "rbxassetid://132377038617766"
        tbl6.run = "rbxassetid://115946474977409"
    end

    genv14.replacementAnimations = v26
    local genv15 = getgenv()
    local animationNameCache = getgenv().animationNameCache
    local animationNameCache2 = animationNameCache or {}
    genv15.animationNameCache = animationNameCache2
    local genv16 = getgenv()
    local animReplaceState = getgenv()._animReplaceState
    local animReplaceState2 = animReplaceState or {}
    genv16._animReplaceState = animReplaceState2
    local genv17 = getgenv()
    local fakeinjuredanimation = getgenv().fakeinjuredanimation
    local fakeinjuredanimation2 = fakeinjuredanimation or false
    genv17.fakeinjuredanimation = fakeinjuredanimation2
    local genv18 = getgenv()
    local parseAssetId = getgenv().parseAssetId

    local parseAssetId2 = parseAssetId or function(arg)
        if not arg then
            return nil
        end
        local match = tostring(arg):match("(%d+)")
        local num = match and tonumber(match) or nil
        return num
    end

    genv18.parseAssetId = parseAssetId2
    local genv19 = getgenv()
    local getAnimationNameFromId = getgenv().getAnimationNameFromId

    local getAnimationNameFromId2 = getAnimationNameFromId or function(arg)
        if not arg then
            return nil
        end

        if getgenv().animationNameCache[arg] then
            return getgenv().animationNameCache[arg]
        end

        local ok, result = pcall(function()
            return getgenv().MarketplaceService:GetProductInfo(arg, Enum.InfoType.Asset)
        end)

        if not ok or not result or not result.Name then
            return nil
        end
        getgenv().animationNameCache[arg] = result.Name
        return result.Name
    end

    genv19.getAnimationNameFromId = getAnimationNameFromId2
    local genv20 = getgenv()
    local playReplacementAnimation = getgenv().playReplacementAnimation

    local playReplacementAnimation2 = playReplacementAnimation or function(arg, arg2)
        if not arg or not getgenv().replacementAnimations[arg2] then
            return nil
        end

        local ok, result = pcall(function()
            local flag4 = arg.Parent ~= nil
            return flag4
        end)

        if not ok or not result then
            return nil
        end
        local animation = Instance.new("Animation")
        animation.Name = string.format("__replacement_%s", arg2)
        animation.AnimationId = getgenv().replacementAnimations[arg2]

        local ok2, result2 = pcall(function()
            return arg:LoadAnimation(animation)
        end)

        if not ok2 or not result2 then
            return nil
        end
        result2.Priority = Enum.AnimationPriority.Movement
        result2:Play()
        return result2
    end

    genv20.playReplacementAnimation = playReplacementAnimation2
    local genv21 = getgenv()
    local disconnectIfAlive = getgenv().disconnectIfAlive

    local disconnectIfAlive2 = disconnectIfAlive or function(arg)
        if arg and typeof(arg) == "RBXScriptConnection" then
            arg:Disconnect()
        end
    end

    genv21.disconnectIfAlive = disconnectIfAlive2
    local genv22 = getgenv()
    local setupCharacter = getgenv().setupCharacter

    local setupCharacter2 = setupCharacter or function(arg)
        if not arg then
            return
        end
        local humanoid = arg:WaitForChild("Humanoid")
        local animator = humanoid:FindFirstChildOfClass("Animator")

        if not animator then
            animator = Instance.new("Animator")
            animator.Parent = humanoid
        end

        local tbl6 = getgenv()._animReplaceState[arg]

        if tbl6 then
            getgenv().disconnectIfAlive(tbl6.heartbeatConn)
            getgenv().disconnectIfAlive(tbl6.playedConn)

            if tbl6.currentTrack and tbl6.currentTrack.IsPlaying then
                pcall(function()
                    tbl6.currentTrack:Stop()
                end)
            end
        end

        tbl6 = {
            animator = animator,
            humanoid = humanoid,
            currentTrack = nil,
            currentType = nil,
            heartbeatConn = nil,
            playedConn = nil,
        }

        getgenv()._animReplaceState[arg] = tbl6
        local replSet = {}

        for k, replacementAnimation in pairs(getgenv().replacementAnimations) do
            local v27 = getgenv().parseAssetId(replacementAnimation)

            if v27 then
                replSet[v27] = true
            end
        end

        tbl6.replSet = replSet

        tbl6.heartbeatConn = getgenv().RunService.Heartbeat:Connect(function()
            if not getgenv().fakeinjuredanimation then
                return
            end
            local currentTrack = tbl6.currentTrack

            if currentTrack and tbl6.currentType and currentTrack.IsPlaying then
                local walkSpeed = tbl6.humanoid.WalkSpeed
                local n4 = walkSpeed or 16
                local n5 = math.clamp(n4, 0, 100)

                if tbl6.currentType == "idle" then
                    pcall(function()
                        currentTrack:AdjustSpeed(1)
                    end)
                elseif tbl6.currentType == "walk" then
                    pcall(function()
                        currentTrack:AdjustSpeed(math.max(n5 / 12, 0.2))
                    end)
                elseif tbl6.currentType == "run" then
                    pcall(function()
                        currentTrack:AdjustSpeed(math.max(n5 / 26, 0.2))
                    end)
                end
            end
        end)

        tbl6.playedConn = animator.AnimationPlayed:Connect(function(arg2)
            if not getgenv().fakeinjuredanimation then
                return
            end

            if not arg2 or not arg2.Animation then
                return
            end
            local animationId = arg2.Animation.AnimationId
            local str = animationId or ""
            local str2 = tostring(str)
            local v27 = getgenv().parseAssetId(str2)
            if v27 and tbl6.replSet[v27] then
                return
            end

            if tbl6.currentTrack == arg2 then
                return
            end
            local v28 = v27 and getgenv().getAnimationNameFromId(v27) or str2

            if type(v28) == "string" then
                local str3 = v28:lower()
                local pos = str3:find("idle")
                local currentType = pos and "idle"

                if not currentType then
                    local pos2 = str3:find("walk")
                    currentType = pos2 and "walk"
                end

                if not currentType then
                    local pos2 = str3:find("run")
                    currentType = pos2 and "run"
                end

                if currentType then
                    if tbl6.currentTrack then
                        pcall(function()
                            tbl6.currentTrack:Stop()
                        end)
                    end

                    local v29 = getgenv().playReplacementAnimation(animator, currentType)

                    if v29 then
                        tbl6.currentTrack = v29
                        tbl6.currentType = currentType
                    end
                end
            end
        end)
    end

    genv22.setupCharacter = setupCharacter2

    getgenv().player.CharacterRemoving:Connect(function(character)
        local v27 = getgenv()._animReplaceState[character]

        if v27 then
            getgenv().disconnectIfAlive(v27.heartbeatConn)
            getgenv().disconnectIfAlive(v27.playedConn)

            if v27.currentTrack then
                pcall(function()
                    v27.currentTrack:Stop()
                end)
            end

            getgenv()._animReplaceState[character] = nil
        end
    end)

    if getgenv().player.Character then
        getgenv().setupCharacter(getgenv().player.Character)
    end

    getgenv().player.CharacterAdded:Connect(getgenv().setupCharacter)

    Animations:AddCheckbox(fn(), {
        Text = "Fake Injured",
        Default = false,
        Callback = function(fakeinjuredanimation3)
            getgenv().fakeinjuredanimation = fakeinjuredanimation3

            if not fakeinjuredanimation3 then
                for k, v27 in pairs(getgenv()._animReplaceState) do
                    if v27.currentTrack then
                        pcall(function()
                            v27.currentTrack:Stop()
                        end)

                        v27.currentTrack = nil
                        v27.currentType = nil
                    end
                end
            end
        end,
    })

    local genv23 = getgenv()
    local n007MovementEnabled = getgenv()._007_movementEnabled
    local n007MovementEnabled2 = n007MovementEnabled or false
    genv23._007_movementEnabled = n007MovementEnabled2

    Animations:AddCheckbox(fn(), {
        Text = "Fake Clone",
        Default = false,
        Callback = function(n007MovementEnabled3)
            getgenv()._007_movementEnabled = n007MovementEnabled3

            if not n007MovementEnabled3 then
                pcall(function()
                    getgenv()._007_runTrack:Stop(0)
                end)

                pcall(function()
                    getgenv()._007_idleTrack:Stop(0)
                end)
            end
        end,
    })

    local tbl6 = {
        {
            Name = "Sancho",
            Idle = "rbxassetid://134912704311964",
            Walk = "rbxassetid://95213748170889",
            Run = "rbxassetid://75409814098993",
        },
        {
            Name = "Herobrine",
            Idle = "rbxassetid://107799240559806",
            Walk = "rbxassetid://89380107485006",
            Run = "rbxassetid://134157363854022",
        },
        {
            Name = "Sukuna",
            Idle = "rbxassetid://115268929362938",
            Walk = "rbxassetid://123678890237669",
            Run = "rbxassetid://132086389849889",
        },
        {
            Name = "Erlking",
            Idle = "rbxassetid://93727662665079",
            Walk = "rbxassetid://97625643261790",
            Run = "rbxassetid://119357938208454",
        },
        {
            Name = "Martial Artist",
            Idle = "rbxassetid://131082534135875",
            Walk = "rbxassetid://108018357044094",
            Run = "rbxassetid://136252471123500",
        },
    }

    local tbl7 = {}

    for i, v27 in ipairs(tbl6) do
        table.insert(tbl7, v27.Name)
    end

    local genv24 = getgenv()
    local customAnimEnabled = getgenv()._customAnim_enabled
    local customAnimEnabled2 = customAnimEnabled or false
    genv24._customAnim_enabled = customAnimEnabled2
    local genv25 = getgenv()
    local customAnimSelected = getgenv()._customAnim_selected
    local v27 = customAnimSelected or tbl6[1]
    genv25._customAnim_selected = v27
    local genv26 = getgenv()
    local customAnimConn = getgenv()._customAnim_conn
    local v28 = customAnimConn or nil
    genv26._customAnim_conn = v28

    local function fn46()
        pcall(function()
            getgenv()._customAnim_idleTrack:Stop(0)
            getgenv()._customAnim_idleTrack:Destroy()
        end)

        pcall(function()
            getgenv()._customAnim_walkTrack:Stop(0)
            getgenv()._customAnim_walkTrack:Destroy()
        end)

        pcall(function()
            getgenv()._customAnim_runTrack:Stop(0)
            getgenv()._customAnim_runTrack:Destroy()
        end)

        getgenv()._customAnim_idleTrack = nil
        getgenv()._customAnim_walkTrack = nil
        getgenv()._customAnim_runTrack = nil
    end

    local function fn47(arg, arg2)
        fn46()
        local animation = Instance.new("Animation")
        animation.AnimationId = arg2.Idle
        local animation2 = Instance.new("Animation")
        animation2.AnimationId = arg2.Walk
        local animation3 = Instance.new("Animation")
        animation3.AnimationId = arg2.Run
        getgenv()._customAnim_idleTrack = arg:LoadAnimation(animation)
        getgenv()._customAnim_walkTrack = arg:LoadAnimation(animation2)
        getgenv()._customAnim_runTrack = arg:LoadAnimation(animation3)
    end

    local function fn48()
        if getgenv()._customAnim_conn then
            getgenv()._customAnim_conn:Disconnect()
            getgenv()._customAnim_conn = nil
        end

        local localPlayer = game:GetService("Players").LocalPlayer
        local character = localPlayer.Character
        if not character then
            return
        end
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if not humanoid or not humanoidRootPart then
            return
        end
        fn47(humanoid, getgenv()._customAnim_selected)
        local animator = humanoid:FindFirstChildOfClass("Animator")

        if animator then
            for i, v29 in ipairs(animator:GetPlayingAnimationTracks()) do
                local animation = v29.Animation
                local animationId = animation and v29.Animation.AnimationId or ""

                if animationId ~= "" then
                    v29:Stop(0)
                end
            end
        end

        getgenv()._customAnim_conn = game:GetService("RunService").Heartbeat:Connect(function()
            if not getgenv()._customAnim_enabled then
                return
            end
            character = localPlayer.Character
            if not character then
                return
            end
            humanoid = character:FindFirstChildOfClass("Humanoid")
            humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if not humanoid or not humanoidRootPart then
                return
            end
            local flag4 = humanoid.MoveDirection.Magnitude > 0.1
            local sprintModule = getgenv().SprintModule
            local isSprinting = sprintModule and getgenv().SprintModule.IsSprinting

            if flag4 then
                if isSprinting then
                    if getgenv()._customAnim_idleTrack and getgenv()._customAnim_idleTrack.IsPlaying then
                        getgenv()._customAnim_idleTrack:Stop()
                    end

                    if getgenv()._customAnim_walkTrack and getgenv()._customAnim_walkTrack.IsPlaying then
                        getgenv()._customAnim_walkTrack:Stop()
                    end

                    if getgenv()._customAnim_runTrack and not getgenv()._customAnim_runTrack.IsPlaying then
                        getgenv()._customAnim_runTrack:Play()
                    end
                else
                    if getgenv()._customAnim_idleTrack and getgenv()._customAnim_idleTrack.IsPlaying then
                        getgenv()._customAnim_idleTrack:Stop()
                    end

                    if getgenv()._customAnim_runTrack and getgenv()._customAnim_runTrack.IsPlaying then
                        getgenv()._customAnim_runTrack:Stop()
                    end

                    if getgenv()._customAnim_walkTrack and not getgenv()._customAnim_walkTrack.IsPlaying then
                        getgenv()._customAnim_walkTrack:Play()
                    end
                end
            else
                if getgenv()._customAnim_runTrack and getgenv()._customAnim_runTrack.IsPlaying then
                    getgenv()._customAnim_runTrack:Stop()
                end

                if getgenv()._customAnim_walkTrack and getgenv()._customAnim_walkTrack.IsPlaying then
                    getgenv()._customAnim_walkTrack:Stop()
                end

                if getgenv()._customAnim_idleTrack and not getgenv()._customAnim_idleTrack.IsPlaying then
                    getgenv()._customAnim_idleTrack:Play()
                end
            end
        end)

        localPlayer.CharacterAdded:Connect(function(character2)
            task.wait(0.2)
            if not getgenv()._customAnim_enabled then
                return
            end
            local humanoid2 = character2:WaitForChild("Humanoid", 5)

            if humanoid2 then
                fn47(humanoid2, getgenv()._customAnim_selected)
            end
        end)
    end

    local function fn49()
        if getgenv()._customAnim_conn then
            getgenv()._customAnim_conn:Disconnect()
            getgenv()._customAnim_conn = nil
        end

        fn46()
    end

    Animations:AddCheckbox(fn(), {
        Text = "Enable Custom Animations",
        Default = false,
        Callback = function(customAnimEnabled3)
            getgenv()._customAnim_enabled = customAnimEnabled3

            if customAnimEnabled3 then
                fn48()
            else
                fn49()
            end
        end,
    })

    Animations:AddDropdown(fn(), {
        Text = "Character",
        Values = tbl7,
        Default = 1,
        Callback = function(arg)
            for i, v29 in ipairs(tbl6) do
                if v29.Name == arg then
                    getgenv()._customAnim_selected = v29
                    break
                end
            end

            if getgenv()._customAnim_enabled then
                local character = game:GetService("Players").LocalPlayer.Character

                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")

                    if humanoid then
                        fn47(humanoid, getgenv()._customAnim_selected)
                    end
                end
            end
        end,
    })
end)

task.spawn(function()
    local localPlayer = game:GetService("Players").LocalPlayer
    local v26 = nil
    local humanoid = nil
    local v27 = nil
    local humanoidRootPart = nil

    local function fn46(character)
        v26 = character
        humanoid = character:WaitForChild("Humanoid", 8)
        humanoidRootPart = character:WaitForChild("HumanoidRootPart", 8)
        local v28 = humanoid
        local animator = v28

        if v28 then
            local animator2 = humanoid:FindFirstChildOfClass("Animator")
            animator = animator2 or Instance.new("Animator", humanoid)
        end

        v27 = animator
    end

    if localPlayer.Character then
        fn46(localPlayer.Character)
    end

    localPlayer.CharacterAdded:Connect(fn46)

    local tbl6 = {
        Shucks = {
            Animation = "rbxassetid://74238051754912",
            Sound = "rbxassetid://123236721947419",
        },
        Subterfuge = {
            Animation = "rbxassetid://87482480949358",
            Sound = "rbxassetid://132297506693854",
        },
        ["I Miss The Quiet"] = {
            Animation = "rbxassetid://100986631322204",
            Sound = "rbxassetid://131936418953291",
        },
        ["Silly Billy"] = {
            Animation = "rbxassetid://107464355830477",
            Sound = "rbxassetid://77601084987544",
        },
        ["Thick of It"] = {
            Animation = "rbxassetid://120176009143091",
            Sound = "rbxassetid://120176009143091",
        },
        Hakari = {
            Animation = "rbxassetid://138019937280193",
            Sound = "rbxassetid://109474987384441",
            VFX = function(parent)
                local humanoidRootPart2 = parent and parent:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart2 then
                    return
                end
                local assets = game:GetService("ReplicatedStorage"):FindFirstChild("Assets")
                local hakariDance = assets and game:GetService("ReplicatedStorage").Assets:FindFirstChild("Emotes") and game:GetService("ReplicatedStorage").Assets.Emotes:FindFirstChild("HakariDance")
                if not hakariDance then
                    return
                end
                local hakariBeamEffect = hakariDance:FindFirstChild("HakariBeamEffect")
                if not hakariBeamEffect then
                    return
                end
                local clone = hakariBeamEffect:Clone()
                clone.Name = "PlayerEmoteVFX"
                clone.CFrame = humanoidRootPart2.CFrame * CFrame.new(0, -1, -0.3)
                clone.WeldConstraint.Part0 = humanoidRootPart2
                clone.WeldConstraint.Part1 = clone
                clone.Parent = parent
                return clone
            end,
        },
        ["Bang Bang Bang"] = {
            Animation = "rbxassetid://87633945335192",
            Sound = "rbxassetid://84366149407976",
        },
        Locked = {
            Animation = "rbxassetid://77920404652731",
            Sound = "rbxassetid://117520733630504",
            VFX = function(parent)
                local torso = parent and parent:FindFirstChild("Torso")
                if not torso then
                    return
                end
                local assets = game:GetService("ReplicatedStorage"):FindFirstChild("Assets")
                local locked = assets and game:GetService("ReplicatedStorage").Assets:FindFirstChild("Emotes") and game:GetService("ReplicatedStorage").Assets.Emotes:FindFirstChild("Locked")
                if not locked then
                    return
                end
                local folder = Instance.new("Folder")
                folder.Name = "PlayerEmoteVFX"
                folder.Parent = parent
                local effect1 = locked:FindFirstChild("Effect1")

                if effect1 then
                    effect1:Clone().Parent = torso
                end

                local effect2 = locked:FindFirstChild("Effect2")

                if effect2 then
                    effect2:Clone().Parent = torso
                end

                return folder
            end,
        },
        Encore = {
            Animation = "rbxassetid://119279036033739",
            Sound = "rbxassetid://128623442010139",
        },
        Rambunctious = {
            Animation = "rbxassetid://134229395028226",
            Sound = "rbxassetid://78302710217332",
        },
        Metroman = {
            Animation = "rbxassetid://130782464742780",
            Sound = "rbxassetid://134449853247802",
        },
        Sukuna = {
            Animation = "rbxassetid://112276030300130",
            Sound = "rbxassetid://137906124003434",
            VFX = function(parent)
                local assets = game:GetService("ReplicatedStorage"):FindFirstChild("Assets")
                local sukuna = assets and game:GetService("ReplicatedStorage").Assets:FindFirstChild("Emotes") and game:GetService("ReplicatedStorage").Assets.Emotes:FindFirstChild("Sukuna")
                if not sukuna then
                    return
                end
                local folder = Instance.new("Folder")
                folder.Name = "PlayerEmoteVFX"
                folder.Parent = parent
                local v28, v29, v30 = pairs(sukuna:GetChildren())
                local v31 = v30
                local v32 = v28
                local v33 = v29

                while true do
                    local v34, v35 = v32(v33, v31)
                    if v34 == nil then
                        break
                    end
                    v31 = v34

                    if v35.Name:find("Handle") then
                        local clone = v35:Clone()
                        local motor6D = clone:FindFirstChildWhichIsA("Motor6D")
                        local v36 = string.gsub(clone.Name, "Handle", "")
                        local v37 = parent:FindFirstChild(v36 .. " Arm")

                        if motor6D and v37 then
                            motor6D.Part0 = v37
                            clone.Name = "PlayerEmoteHand"

                            for k, descendant in pairs(clone:GetDescendants()) do
                                if descendant:IsA("BasePart") then
                                    descendant.Color = v37.Color
                                end
                            end

                            v31 = v34
                            clone.Parent = parent
                        end
                    end
                end

                local dismantleFX = sukuna:FindFirstChild("DismantleFX")

                if dismantleFX then
                    local clone = dismantleFX:Clone()
                    clone.DismantleFX.Part0 = parent:FindFirstChild("HumanoidRootPart")
                    clone.Parent = parent
                end

                return folder
            end,
        },
    }

    local v28 = nil
    local v29 = nil
    local v30 = nil

    local function fn47()
        if humanoidRootPart then
            humanoidRootPart.Anchored = true
        end
    end

    local function fn48()
        if humanoidRootPart then
            humanoidRootPart.Anchored = false
        end
    end

    local function fn49()
        if v28 then
            v28:Stop()
            v28 = nil
        end

        if v29 then
            v29:Stop()
            v29:Destroy()
            v29 = nil
        end

        if v30 then
            pcall(function()
                v30:Destroy()
            end)

            if v26 then
                for k, child in pairs(v26:GetChildren()) do
                    if child.Name == "PlayerEmoteVFX" or child.Name == "PlayerEmoteHand" or child.Name == "DismantleFX" then
                        child:Destroy()
                    end
                end

                local torso = v26:FindFirstChild("Torso")

                if torso then
                    for k, child in pairs(torso:GetChildren()) do
                        if child.Name == "Effect1" or child.Name == "Effect2" then
                            child:Destroy()
                        end
                    end
                end
            end

            v30 = nil
        end

        fn48()
    end

    local function fn50(arg)
        local v31 = tbl6[arg]
        if not v31 or not v27 then
            return
        end
        fn49()
        local animation = Instance.new("Animation")
        animation.AnimationId = v31.Animation
        local v32 = v27:LoadAnimation(animation)
        v32.Priority = Enum.AnimationPriority.Action
        v32.Looped = true
        v32:Play()
        local v33 = nil

        if v31.Sound then
            local sound = Instance.new("Sound")
            v33 = sound
            sound.SoundId = v31.Sound
            sound.Volume = 1
            sound.Looped = true
            sound.Parent = v26
            sound:Play()
        end

        v28 = v32
        v29 = v33
        local v34 = nil

        if v31.VFX then
            pcall(function()
                v34 = v31.VFX(v26)
            end)
        end

        v30 = v34
        fn47()
    end

    getgenv()._selectedEmote = "Shucks"

    v25:AddDropdown(fn(), {
        Text = "Play Removed Emote",
        Values = {"Shucks", "Subterfuge", "I Miss The Quiet", "Silly Billy"},
        Default = 1,
        Callback = function(selectedEmote)
            getgenv()._selectedEmote = selectedEmote
        end,
    })

    v25:AddDivider()

    v25:AddDropdown(fn(), {
        Text = "Purchasable Emotes",
        Values = {
            "Hakari",
            "Bang Bang Bang",
            "Locked",
            "Encore",
            "Rambunctious",
            "Metroman",
            "Sukuna",
        },
        Default = 1,
        Callback = function(selectedEmote)
            getgenv()._selectedEmote = selectedEmote
        end,
    })

    v25:AddCheckbox(fn(), {
        Text = "Play / Stop Emote",
        Default = false,
        Callback = function(arg)
            if arg then
                fn50(getgenv()._selectedEmote)
            else
                fn49()
            end
        end,
    })
end)

getgenv().MusicPlayers = game:GetService("Players")
getgenv().MusicRunService = game:GetService("RunService")
getgenv().MusicLocalPlayer = getgenv().MusicPlayers.LocalPlayer
local genv11 = getgenv()
local musicDownloadCache = getgenv().musicDownloadCache
local musicDownloadCache2 = musicDownloadCache or {}
genv11.musicDownloadCache = musicDownloadCache2
getgenv().currentPreviewSound = nil
getgenv().isToggleOn = false
getgenv().selectedSong = "A GRAVE SOUL (Default Lms Song)"
getgenv().customSongUrl = nil
getgenv().originalSongId = nil
getgenv().lastLMSApplied = nil
getgenv().lmsProcessing = false
local genv12 = getgenv()
local lmsConnections = getgenv().lmsConnections
local lmsConnections2 = lmsConnections or {}
genv12.lmsConnections = lmsConnections2
getgenv().isLobbyToggleOn = false
getgenv().selectedLobbySong = "Lost Media"
getgenv().customLobbyUrl = nil
getgenv().originalLobbySongId = nil
getgenv().lastLobbyApplied = nil
getgenv().lobbyProcessing = false
local genv13 = getgenv()
local lobbyConnections = getgenv().lobbyConnections
local lobbyConnections2 = lobbyConnections or {}
genv13.lobbyConnections = lobbyConnections2
getgenv().ambienceToggleOn = false
getgenv().selectedAmbienceTrack = "Gaiety Golden Age"
getgenv().customAmbienceUrl = nil
getgenv().originalAmbienceId = nil
getgenv().lastAmbienceApplied = nil
getgenv().processingAmbience = false
local genv14 = getgenv()
local ambienceConnections = getgenv().ambienceConnections
local ambienceConnections2 = ambienceConnections or {}
genv14.ambienceConnections = ambienceConnections2
getgenv().ambienceDownloadCache = {}

getgenv().lmsTracks = {
    ["A GRAVE SOUL (Default Lms Song)"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/A%20GRAVE%20SOUL%20(NOW,%20RUN)%20%5BAll%20Killers%20Vs%20All%20Survivors%5D.mp3",
    Plead = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Plead%20(c00lkidd%20Vs%20007n7).mp3",
    SMILE = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/SMILE%20(Cupcakes%20Vs%20All).mp3",
    Vanity = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Vanity%20(Vanity%20Jason%20Vs%20All).mp3",
    Compass = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Obsession%20(Gasharpoon%20Vs%20All).MP3",
    Burnout = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Burnout%20(Diva%20Vs%20Ghoul).mp3",
    ["Close To Me"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Close%20To%20Me%20(Annihilation%20Vs%20Friend).mp3",
    ["Creation Of Hatred"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Creation%20Of%20Hatred%20(1X4%20Vs%20Shedletsky).mp3",
    ["Through Patches of Violet"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Through%20Patches%20of%20Violet%20(Hacklord%20vs%20The%20Heartbroken).mp3",
    ["DEAD RINGER - (Guest 666 vs Noob)"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/DEAD%20RINGER%20-%20(Guest%20666%20vs%20Noob).mp3",
    ["ORDER UP (Elliot VS c00lkidd)"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/ORDER%20UP%20-%20(Elliot%20VS%20c00lkidd).mp3",
    ["Perpetuity (DOD Killer vs. DOD Survivor)"] = "https://github.com/NyanRescript/NyansakenHub/raw/refs/heads/main/Perpetuity%20(DOD%20Killer%20vs.%20DOD%20Survivor).mp3",
    ["Deep Sleep"] = "https://github.com/articbeatles0-ship-it/fuckyouretard/raw/refs/heads/main/Chimes%20of%20the%20Lucid%20(Deep%20Sleep%20Jason)%20%20FORSAKEN%20OST.mp3",
}

getgenv().lobbyTracks = {
    ["Lost Media"] = "https://github.com/articbeatles0-ship-it/fuckyouretard/raw/refs/heads/main/Mysterious%20Place.mp3",
    ["Lost Media 2"] = "https://github.com/articbeatles0-ship-it/fuckyouretard/raw/refs/heads/main/Uwa!!%20So%20Temperate.mp3",
    ["Living Tombstone"] = "https://github.com/articbeatles0-ship-it/fuckyouretard/raw/refs/heads/main/My%20Ordinary%20Life-The%20Living%20Tombstone.mp3",
    ["Stardew Valley"] = "https://github.com/articbeatles0-ship-it/fuckyouretard/raw/refs/heads/main/Stardew%20Valley%20OST%20-%20Summer%20(Nature's%20Crescendo).mp3",
}

getgenv().ambienceTracks = {
    ["Gaiety Golden Age"] = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770285763068_Gaiety_in_the_Golden_Age.mp3",
    Duvet = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770285812645_Boa_-_Duvet_Official_Video.mp3",
    ["My Way"] = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770285838090_My_Way_2008_Remastered.mp3",
    ["Gas Gas Gas"] = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770285982265_Muffled_eurobeat_Gas_gas_gas.mp3",
    ["Duran Duran"] = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770286207958_Duran_Duran_-_INVISIBLE.mp3",
    ["Subway Surfers"] = "https://raw.githubusercontent.com/NilTransfer/DataBase/main/sounds/1770286248497_Subway_Surfers_OST_Extended.mp3",
}

getgenv().musicFolderPath = "Vexsaken/Music/Themes"
getgenv().ambienceFolderPath = "Vexsaken/Music/Ambience"

for i, v26 in ipairs({
    "Vexsaken",
    "Vexsaken/Music",
    getgenv().musicFolderPath,
    getgenv().ambienceFolderPath,
}) do
    if not isfolder(v26) then
        makefolder(v26)
    end
end

getgenv().MusicDownloadTrack = function(arg, arg2, arg3, arg4)
    local musicDownloadCache3 = arg3 or getgenv().musicDownloadCache
    local v26 = musicDownloadCache3
    local musicFolderPath = arg4 or getgenv().musicFolderPath
    local v27 = musicFolderPath
    if v26[arg2] then
        return v26[arg2]
    end
    local str = v27 .. "/" .. arg:gsub("[^%w]", "_") .. ".mp3"

    if isfile(str) then
        pcall(function()
            delfile(str)
        end)
    end

    local ok, result = pcall(function()
        local v28 = http_request
        local request_ = v28

        if not v28 then
            local v29 = syn
            request_ = v29 and syn.request
        end

        if not request_ then
            request_ = request
        end

        if not request_ then
            return nil
        end
        local v29 = request_({Url = arg2, Method = "GET"})
        local body = v29.Body
        local bodyRaw = body or v29.BodyRaw
        if not bodyRaw then
            return nil
        end
        writefile(str, bodyRaw)
        v26[arg2] = str
        return str
    end)

    local v28 = ok and result or nil
    return v28
end

getgenv().MusicGetLastSurvivor = function()
    local themes = workspace:FindFirstChild("Themes")
    if not themes then
        return nil
    end
    local lastSurvivor = themes:FindFirstChild("LastSurvivor")
    local isSound = lastSurvivor and lastSurvivor:IsA("Sound") and lastSurvivor or nil
    return isSound
end

getgenv().MusicGetLobby = function()
    local themes = workspace:FindFirstChild("Themes")
    if not themes then
        return nil
    end
    local oldLobby = themes:FindFirstChild("oldLobby")
    local lobby = oldLobby or themes:FindFirstChild("lobby")
    local isSound = lobby and lobby:IsA("Sound") and lobby or nil
    return isSound
end

getgenv().MusicGetMapAmbience = function()
    local themes = workspace:FindFirstChild("Themes")
    if not themes then
        return nil
    end
    local mapAmbience = themes:FindFirstChild("MapAmbience")
    local isSound = mapAmbience and mapAmbience:IsA("Sound") and mapAmbience or nil
    return isSound
end

getgenv().MusicPlayPreview = function(arg, arg2, arg3, arg4)
    task.spawn(function()
        pcall(function()
            if getgenv().currentPreviewSound then
                getgenv().currentPreviewSound:Stop()
                getgenv().currentPreviewSound:Destroy()
                getgenv().currentPreviewSound = nil
            end

            local v26 = getgenv().MusicDownloadTrack(arg, arg2, arg4, arg3)
            if not v26 then
                return
            end
            local v27 = getcustomasset(v26)
            if not v27 then
                return
            end
            local sound = Instance.new("Sound")
            sound.SoundId = v27
            sound.Volume = 0.5
            sound.Parent = workspace
            getgenv().currentPreviewSound = sound
            sound:Play()

            task.spawn(function()
                task.wait(0.2)
                local timeLength = sound.TimeLength
                local wait = task.wait
                local n4 = timeLength > 0 and timeLength + 0.5 or 300
                wait(n4)

                if getgenv().currentPreviewSound == sound then
                    pcall(function()
                        sound:Destroy()
                    end)

                    getgenv().currentPreviewSound = nil
                end
            end)
        end)
    end)
end

getgenv().MusicStopPreview = function()
    if getgenv().currentPreviewSound then
        pcall(function()
            getgenv().currentPreviewSound:Stop()
            getgenv().currentPreviewSound:Destroy()
            getgenv().currentPreviewSound = nil
        end)
    end
end

getgenv().MusicSetLMS = function(arg, arg2)
    if getgenv().lmsProcessing then
        return
    end
    getgenv().lmsProcessing = true

    task.spawn(function()
        pcall(function()
            local v26 = getgenv().MusicGetLastSurvivor()
            if not v26 then
                getgenv().lmsProcessing = false
                return
            end

            if not getgenv().originalSongId then
                getgenv().originalSongId = v26.SoundId
            end

            local selectedSong = arg2 and "Custom_LMS" or getgenv().selectedSong
            local v27 = getgenv().MusicDownloadTrack(selectedSong, arg, getgenv().musicDownloadCache, getgenv().musicFolderPath)
            if not v27 then
                getgenv().lmsProcessing = false
                return
            end
            local v28 = getcustomasset(v27)
            if not v28 then
                getgenv().lmsProcessing = false
                return
            end
            v26.SoundId = v28
            local n4 = tick() + 5

            while not v26.IsLoaded and tick() < n4 do
                task.wait(0.1)
            end

            if v26.IsLoaded then
                v26:Play()
                local genv15 = getgenv()
                local lastLMSApplied = arg2 and "Custom" or selectedSong
                genv15.lastLMSApplied = lastLMSApplied
            end
        end)

        task.wait(0.5)
        getgenv().lmsProcessing = false
    end)
end

getgenv().MusicSetupLMSMonitor = function()
    for i, lmsConnection in ipairs(getgenv().lmsConnections) do
        pcall(function()
            lmsConnection:Disconnect()
        end)
    end

    getgenv().lmsConnections = {}
    local themes = workspace:FindFirstChild("Themes")

    if not themes then
        task.spawn(function()
            repeat
                task.wait(1)
            until workspace:FindFirstChild("Themes")

            getgenv().MusicSetupLMSMonitor()
        end)

        return
    end

    local connection2 = themes.ChildAdded:Connect(function(child)
        if child.Name == "LastSurvivor" and child:IsA("Sound") then
            task.wait(0.5)
            getgenv().originalSongId = nil
            getgenv().lastLMSApplied = nil

            if getgenv().isToggleOn then
                if getgenv().customSongUrl and getgenv().customSongUrl ~= "" then
                    getgenv().MusicSetLMS(getgenv().customSongUrl, true)
                elseif getgenv().selectedSong ~= "None" then
                    getgenv().MusicSetLMS(getgenv().lmsTracks[getgenv().selectedSong], false)
                end
            end
        end
    end)

    table.insert(getgenv().lmsConnections, connection2)
end

getgenv().MusicSetLobby = function(arg, arg2)
    if getgenv().lobbyProcessing then
        return
    end
    getgenv().lobbyProcessing = true

    task.spawn(function()
        pcall(function()
            local v26 = getgenv().MusicGetLobby()
            if not v26 then
                getgenv().lobbyProcessing = false
                return
            end

            if not getgenv().originalLobbySongId then
                getgenv().originalLobbySongId = v26.SoundId
            end

            local str = arg2 and "Custom_Lobby" or getgenv().selectedLobbySong .. "_Lobby"
            local v27 = getgenv().MusicDownloadTrack(str, arg, getgenv().musicDownloadCache, getgenv().musicFolderPath)
            if not v27 then
                getgenv().lobbyProcessing = false
                return
            end
            local v28 = getcustomasset(v27)
            if not v28 then
                getgenv().lobbyProcessing = false
                return
            end
            v26.SoundId = v28
            local n4 = tick() + 5

            while not v26.IsLoaded and tick() < n4 do
                task.wait(0.1)
            end

            if v26.IsLoaded then
                v26:Play()
                local genv15 = getgenv()
                local selectedLobbySong = arg2 and "Custom" or getgenv().selectedLobbySong
                genv15.lastLobbyApplied = selectedLobbySong
            end
        end)

        task.wait(0.5)
        getgenv().lobbyProcessing = false
    end)
end

getgenv().MusicSetupLobbyMonitor = function()
    for i, lobbyConnection in ipairs(getgenv().lobbyConnections) do
        pcall(function()
            lobbyConnection:Disconnect()
        end)
    end

    getgenv().lobbyConnections = {}
    local themes = workspace:FindFirstChild("Themes")

    if not themes then
        task.spawn(function()
            repeat
                task.wait(1)
            until workspace:FindFirstChild("Themes")

            getgenv().MusicSetupLobbyMonitor()
        end)

        return
    end

    local connection2 = themes.ChildAdded:Connect(function(child)
        if (child.Name == "lobby" or child.Name == "oldLobby") and child:IsA("Sound") then
            task.wait(0.5)
            getgenv().originalLobbySongId = nil
            getgenv().lastLobbyApplied = nil

            if getgenv().isLobbyToggleOn then
                if getgenv().customLobbyUrl and getgenv().customLobbyUrl ~= "" then
                    getgenv().MusicSetLobby(getgenv().customLobbyUrl, true)
                elseif getgenv().selectedLobbySong ~= "None" then
                    getgenv().MusicSetLobby(getgenv().lobbyTracks[getgenv().selectedLobbySong], false)
                end
            end
        end
    end)

    table.insert(getgenv().lobbyConnections, connection2)
end

getgenv().MusicSetAmbience = function(arg, arg2)
    if getgenv().processingAmbience then
        return
    end
    getgenv().processingAmbience = true

    task.spawn(function()
        pcall(function()
            local v26 = getgenv().MusicGetMapAmbience()
            if not v26 then
                getgenv().processingAmbience = false
                return
            end

            if not getgenv().originalAmbienceId then
                getgenv().originalAmbienceId = v26.SoundId
            end

            local selectedAmbienceTrack = arg2 and "Custom_Ambience" or getgenv().selectedAmbienceTrack
            local v27 = getgenv().MusicDownloadTrack(selectedAmbienceTrack, arg, getgenv().ambienceDownloadCache, getgenv().ambienceFolderPath)
            if not v27 then
                getgenv().processingAmbience = false
                return
            end
            local v28 = getcustomasset(v27)
            if not v28 then
                getgenv().processingAmbience = false
                return
            end
            v26.SoundId = v28
            local n4 = tick() + 5

            while not v26.IsLoaded and tick() < n4 do
                task.wait(0.1)
            end

            if v26.IsLoaded then
                v26:Play()
                local genv15 = getgenv()
                local lastAmbienceApplied = arg2 and "Custom" or selectedAmbienceTrack
                genv15.lastAmbienceApplied = lastAmbienceApplied
            end
        end)

        getgenv().processingAmbience = false
    end)
end

getgenv().MusicRestoreAmbience = function()
    local v26 = getgenv().MusicGetMapAmbience()

    if v26 and getgenv().originalAmbienceId then
        pcall(function()
            v26.SoundId = getgenv().originalAmbienceId
            local n4 = tick() + 5

            while not v26.IsLoaded and tick() < n4 do
                task.wait(0.1)
            end

            if v26.IsLoaded then
                v26:Play()
            end

            getgenv().originalAmbienceId = nil
            getgenv().lastAmbienceApplied = nil
        end)
    end
end

getgenv().MusicSetupAmbienceMonitor = function()
    for i, ambienceConnection in ipairs(getgenv().ambienceConnections) do
        pcall(function()
            ambienceConnection:Disconnect()
        end)
    end

    getgenv().ambienceConnections = {}
    local themes = workspace:FindFirstChild("Themes")
    if not themes then
        return
    end

    local connection2 = themes.ChildAdded:Connect(function(child)
        if child.Name == "MapAmbience" and child:IsA("Sound") then
            task.wait(0.3)

            if getgenv().ambienceToggleOn then
                if getgenv().customAmbienceUrl and getgenv().customAmbienceUrl ~= "" then
                    getgenv().MusicSetAmbience(getgenv().customAmbienceUrl, true)
                elseif getgenv().selectedAmbienceTrack ~= "None" then
                    getgenv().MusicSetAmbience(getgenv().ambienceTracks[getgenv().selectedAmbienceTrack], false)
                end
            end
        end
    end)

    table.insert(getgenv().ambienceConnections, connection2)
end

task.spawn(function()
    task.wait(2)
    getgenv().MusicSetupLMSMonitor()
    getgenv().MusicSetupLobbyMonitor()
    getgenv().MusicSetupAmbienceMonitor()
end)

Music:AddCheckbox(fn(), {
    Text = "Custom LMS Theme",
    Default = false,
    Callback = function(isToggleOn)
        getgenv().isToggleOn = isToggleOn
        local v26 = getgenv().MusicGetLastSurvivor()

        if isToggleOn then
            if getgenv().customSongUrl and getgenv().customSongUrl ~= "" then
                getgenv().MusicSetLMS(getgenv().customSongUrl, true)
            elseif getgenv().selectedSong ~= "None" then
                getgenv().MusicSetLMS(getgenv().lmsTracks[getgenv().selectedSong], false)
            end
        else
            getgenv().lastLMSApplied = nil

            if v26 and getgenv().originalSongId then
                v26.SoundId = getgenv().originalSongId
                v26:Play()
                getgenv().originalSongId = nil
            end
        end
    end,
})

Music:AddCheckbox(fn(), {
    Text = "Custom Map Theme",
    Default = false,
    Callback = function(ambienceToggleOn)
        getgenv().ambienceToggleOn = ambienceToggleOn

        if ambienceToggleOn then
            if getgenv().customAmbienceUrl and getgenv().customAmbienceUrl ~= "" then
                getgenv().MusicSetAmbience(getgenv().customAmbienceUrl, true)
            elseif getgenv().selectedAmbienceTrack ~= "None" then
                getgenv().MusicSetAmbience(getgenv().ambienceTracks[getgenv().selectedAmbienceTrack], false)
            end
        else
            getgenv().MusicRestoreAmbience()
        end
    end,
})

Music:AddCheckbox(fn(), {
    Text = "Custom Lobby Theme",
    Default = false,
    Callback = function(isLobbyToggleOn)
        getgenv().isLobbyToggleOn = isLobbyToggleOn
        local v26 = getgenv().MusicGetLobby()

        if isLobbyToggleOn then
            if getgenv().customLobbyUrl and getgenv().customLobbyUrl ~= "" then
                getgenv().MusicSetLobby(getgenv().customLobbyUrl, true)
            elseif getgenv().selectedLobbySong ~= "None" then
                getgenv().MusicSetLobby(getgenv().lobbyTracks[getgenv().selectedLobbySong], false)
            end
        else
            getgenv().lastLobbyApplied = nil

            if v26 and getgenv().originalLobbySongId then
                v26.SoundId = getgenv().originalLobbySongId
                v26:Play()
                getgenv().originalLobbySongId = nil
            end
        end
    end,
})

Music:AddDivider()
Music:AddLabel("Add your custom theme on\nCustom Link to use it,\nleave it blank to remove it.")
local tbl6 = {}

for k in pairs(getgenv().lmsTracks) do
    table.insert(tbl6, k)
end

table.sort(tbl6)
local n4 = 1

for i, v26 in ipairs(tbl6) do
    if v26 == getgenv().selectedSong then
        n4 = i
        break
    end
end

Settings5:AddDropdown(fn(), {
    Text = "LMS Track",
    Values = tbl6,
    Default = n4,
    Callback = function(selectedSong)
        getgenv().selectedSong = selectedSong
        getgenv().customSongUrl = nil
        getgenv().lastLMSApplied = nil

        if getgenv().isToggleOn and selectedSong ~= "None" then
            getgenv().MusicSetLMS(getgenv().lmsTracks[selectedSong], false)
        end
    end,
})

local tbl7 = {}

for k in pairs(getgenv().ambienceTracks) do
    table.insert(tbl7, k)
end

table.sort(tbl7)
local n5 = 1

for i, v26 in ipairs(tbl7) do
    if v26 == getgenv().selectedAmbienceTrack then
        n5 = i
        break
    end
end

Settings5:AddDropdown(fn(), {
    Text = "Map Theme Track",
    Values = tbl7,
    Default = n5,
    Callback = function(selectedAmbienceTrack)
        getgenv().selectedAmbienceTrack = selectedAmbienceTrack
        getgenv().customAmbienceUrl = nil
        getgenv().lastAmbienceApplied = nil

        if getgenv().ambienceToggleOn and selectedAmbienceTrack ~= "None" then
            getgenv().MusicSetAmbience(getgenv().ambienceTracks[selectedAmbienceTrack], false)
        end
    end,
})

local tbl8 = {}

for k in pairs(getgenv().lobbyTracks) do
    table.insert(tbl8, k)
end

table.sort(tbl8)
local n6 = 1

for i, v26 in ipairs(tbl8) do
    if v26 == getgenv().selectedLobbySong then
        n6 = i
        break
    end
end

Settings5:AddDropdown(fn(), {
    Text = "Lobby Track",
    Values = tbl8,
    Default = n6,
    Callback = function(selectedLobbySong)
        getgenv().selectedLobbySong = selectedLobbySong
        getgenv().customLobbyUrl = nil
        getgenv().lastLobbyApplied = nil

        if getgenv().isLobbyToggleOn and selectedLobbySong ~= "None" then
            getgenv().MusicSetLobby(getgenv().lobbyTracks[selectedLobbySong], false)
        end
    end,
})

Settings5:AddInput(fn(), {
    Text = "Custom Link",
    Placeholder = "raw.githubusercontent.com/...",
    Callback = function(arg)
        local customSongUrl = arg

        if arg == "" then
            getgenv().customSongUrl = nil
            getgenv().customLobbyUrl = nil
            getgenv().customAmbienceUrl = nil
            return
        end

        if not arg:match("^https?://") then
            customSongUrl = "https://" .. arg
        end

        getgenv().musicDownloadCache = {}
        getgenv().ambienceDownloadCache = {}

        if getgenv().isToggleOn then
            getgenv().customSongUrl = customSongUrl
            getgenv().selectedSong = "None"
            getgenv().lastLMSApplied = nil
            getgenv().MusicSetLMS(customSongUrl, true)
        elseif getgenv().ambienceToggleOn then
            getgenv().customAmbienceUrl = customSongUrl
            getgenv().selectedAmbienceTrack = "None"
            getgenv().lastAmbienceApplied = nil
            getgenv().MusicSetAmbience(customSongUrl, true)
        elseif getgenv().isLobbyToggleOn then
            getgenv().customLobbyUrl = customSongUrl
            getgenv().selectedLobbySong = "None"
            getgenv().lastLobbyApplied = nil
            getgenv().MusicSetLobby(customSongUrl, true)
        end
    end,
})

Settings5:AddSlider(fn(), {
    Text = "Volume",
    Min = 0,
    Max = 100,
    Default = 100,
    Rounding = 0,
    Callback = function(arg)
        local volume = tonumber(arg) / 100
        local v26 = getgenv().MusicGetLastSurvivor()
        local v27 = getgenv().MusicGetLobby()
        local v28 = getgenv().MusicGetMapAmbience()

        if v26 then
            pcall(function()
                v26.Volume = volume
            end)
        end

        if v27 then
            pcall(function()
                v27.Volume = volume
            end)
        end

        if v28 then
            pcall(function()
                v28.Volume = volume
            end)
        end
    end,
})

local v26 = v:AddTab("UI Settings", "settings", "theme and config management")
lib2:SetLibrary(lib)
lib2:IgnoreThemeSettings()
lib2:SetIgnoreIndexes({"MenuKeybind"})
lib2:SetFolder("Vexsaken")
lib2:BuildConfigSection(v26)
lib2:LoadAutoloadConfig()
lib3:SetLibrary(lib)
lib3:SetFolder("Vexsaken")

lib3:SetDefaultTheme({
    FontColor = Color3.fromRGB(230, 220, 255),
    MainColor = Color3.fromRGB(18, 14, 32),
    AccentColor = Color3.fromRGB(140, 80, 255),
    BackgroundColor = Color3.fromRGB(11, 8, 22),
    OutlineColor = Color3.fromRGB(35, 18, 65),
})

lib3:ApplyToTab(v26)
lib3:LoadDefault()
