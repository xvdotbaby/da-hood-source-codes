--[[
    Releasing this due to it being leaked / sold amongst dahoodian retards, In which one of them is now trying to sell it after a year of it being leaked..?
    And yes, I know this code is horrible / unoptimised but guess what idc this is old as hell, I do not care about this script anymore code in it is shit.
    credits to dylan for helping on this and anyone else who helped :)
]]
repeat wait() until game:IsLoaded()
local Memory = 800.33
task.spawn(function()
    while task.wait(math.random(2, 3)) do
        Memory = tostring(math.random(750, 900)) .. "." .. tostring(math.random(10, 99))
    end
end)
game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        for i,v in pairs(game:GetService("CoreGui").RobloxGui.PerformanceStats:GetChildren()) do
            if v.Name == "PS_Button" then
                if v.StatsMiniTextPanelClass.TitleLabel.Text == "Mem" then
                    v.StatsMiniTextPanelClass.ValueLabel.Text = tostring(Memory) ..  " MB"
                end
            end
        end
    end)
    pcall(function()
        if game:GetService("CoreGui").RobloxGui.PerformanceStats["PS_Viewer"].Frame.TextLabel.Text == "Memory" then
            for i,v in pairs(game:GetService("CoreGui").RobloxGui.PerformanceStats["PS_Viewer"].Frame:GetChildren()) do
               if v.Name == "PS_DecoratedValueLabel" and string.find(v.Label.Text, 'Current') then
                 v.Label.Text = "Current: " .. Memory .. " MB"
               end
               if v.Name == "PS_DecoratedValueLabel" and string.find(v.Label.Text, 'Average') then
                 v.Label.Text = "Average: " .. Memory .. " MB"
               end
            end
        end
    end)
    pcall(function()
        game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.TopBar.LiveStatsModule["MemoryUsage_MB"].Text = math.round(tonumber(newmem)) .. " MB"
    end)
end)

for _,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
    v:Disable()
end
for _,v in pairs(getconnections(game:GetService("LogService").MessageOut)) do
    v:Disable()
end

local Settings = {
    Silent = {
        Enabled = true,
        UsePrediction = true,
        Prediction = 0.1142154,
        ShowFOV = false,
        showdot = false,
        SelectClosestPart = true,
        GunMode = true,
        Resolver = true,
    },
    FOVSettings = {
        FOV = 15,
        FOVSides = 300,
        FOVColour = Color3.fromRGB(0, 0, 0),
        FOVFilled = false
    },
    Lock = {
        Enabled = true,
        Prediction = 0.13,
        Target_Bind = Enum.KeyCode.Q,
        HitPart = "Nearest",
        Sensitivity = {
            X_Axis = {
                Saved = 0.09
            },
            Y_Axis = {
                Saved = 0.09
            }
        }
    },
    FakeSpike = {
        Status = false,
        Keybind = Enum.KeyCode.K,
        ReplicationLag = 1
    },
    HitChance = 100,
    Selected = nil,
    SelectedPart = nil,
    TargetPart = {"Head", "HumanoidRootPart"},
}

local GunSettings = {
    ["Double-Barrel SG"] = { --// dh
        ["FOV"] = 20
    },
    ["Double Barrel SG"] = { --// dhm
        ["FOV"] = 20
    },
    ["DoubleBarrel"] = { --// hood customs
    ["FOV"] = 20
    },
    ["Revolver"] = {
        ["FOV"] = 15
    },
    ["SMG"] = {
        ["FOV"] = 10
    },
    ["Shotgun"] = {
        ["FOV"] = 20
    }
}

local SupportedGames = {
    [1958807588] = {
      Name = "Da Hood Modded",
      MouseArguments = "MousePos",
      Functions = {
         GetKOValue = function(player)
            return player.Character["I_LOADED_I"]["K.O"].Value
         end
      },
    },
    [1008451066] = {
        Name = "Da Hood",
        MouseArguments = "UpdateMousePos",
        Functions = {
            GetKOValue = function(player)
               return player.Character.BodyEffects["K.O"].Value
            end
         },
    },
    [1590803567] = {
        Name = "The Hood",
        MouseArguments = "MousePosDEBUG",
        Functions = {
            GetKOValue = function(player)
               return player.BodyEffects["knocked"].Value
            end
         },
    },
    [3445639790] = {
        Name = "Untitled Hood",
        MouseArguments = "UpdateMousePos",
        Functions = {
            GetKOValue = function(player)
               return player.BodyEffects["K.O"].Value
            end
        },
    },
    [3682454970] = {
        Name = "n the hood",
        MouseArguments = "UpdateMousePos",
        Functions = {
            GetKOValue = function(player)
               return false
            end
        },
    },
    [3634139746] = {
        Name = "Hood Customs",
        MouseArguments = "GetMousePos",
        Functions = {
            GetKOValue = function(player)
               return false
            end
        },
    }   

}
getgenv().Settings = Settings

local Mouse = game.Players.LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")
local GetGuiInset = GuiService.GetGuiInset
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local cc = Workspace.CurrentCamera
local SelectedPart
local CanLock = false
local LocalPlayer = Players.LocalPlayer
local player = Players.LocalPlayer
local CurrentCamera = Workspace.CurrentCamera
local Camera = Workspace.CurrentCamera
local GetGuiInset = GuiService.GetGuiInset
local CharacterAdded = LocalPlayer.CharacterAdded
local CharacterAddedWait = CharacterAdded.Wait
local WorldToViewportPoint = CurrentCamera.WorldToViewportPoint
local RaycastParamsnew = RaycastParams.new
local EnumRaycastFilterTypeBlacklist = Enum.RaycastFilterType.Blacklist
local Raycast = Workspace.Raycast
local GetPlayers = Players.GetPlayers
local Instancenew = Instance.new
local IsDescendantOf = Instancenew("Part").IsDescendantOf
local FindFirstChildWhichIsA = Instancenew("Part").FindFirstChildWhichIsA
local FindFirstChild = Instancenew("Part").FindFirstChild
local Y = -0

local ScriptInformation = {
    Selected = nil,
}

local Script = {Functions = {}}

local circle = Drawing.new("Circle")
circle.Transparency = 1
circle.Thickness = 2
circle.Color = Settings.FOVSettings.FOVColour
circle.Filled = false
local FOVCircle = circle

local Tracer = Drawing.new("Circle")
Tracer.Visible = false
Tracer.Radius = 7
Tracer.Filled = true
Tracer.Color = Color3.fromRGB(255, 0, 212)
Tracer.Thickness = 1
Tracer.Transparency = 1

local function IsOnScreen(Object)
    local IsOnScreen = game.Workspace.CurrentCamera:WorldToScreenPoint(Object.Position)
    return IsOnScreen
end

local function Filter(Object)
    if string.find(Object.Name, "Gun") then
        return
    end
    if Object:IsA("Part") or Object:IsA("MeshPart") then
        return true
    end
end

local function WTSPos(Position)
    local ObjectVector = game.Workspace.CurrentCamera:WorldToScreenPoint(Position)
    return Vector2.new(ObjectVector.X, ObjectVector.Y)
end

local function WTS(Object)
    local ObjectVector = game.Workspace.CurrentCamera:WorldToScreenPoint(Object.Position)
    return Vector2.new(ObjectVector.X, ObjectVector.Y)
end

Script.Functions.CheckPlayer = function(player)
    if (player.Character) and player.Character:FindFirstChildWhichIsA("Humanoid") and player.Character:FindFirstChild("HumanoidRootPart") then
        return true
    end
    return false
end

Script.Functions.IsVisible = function(Position, Ignore)
    return #workspace.CurrentCamera:GetPartsObscuringTarget({game.Players.LocalPlayer.Character.Head.Position, Position}, Ignore) == 0 and true or false
end

Script.Functions.UpdateFOV = function() 
    if CurrentGame ~= 0 then
        if not (circle) then
            return
        end
        circle.Visible = Settings.Silent.ShowFOV
        circle.Radius = (Settings.FOVSettings.FOV * 3)
        circle.Position = Vector2.new(Mouse.X, Mouse.Y + GetGuiInset(GuiService).Y)
        circle.NumSides = Settings.FOVSettings.FOVSides
        circle.Color = Settings.FOVSettings.FOVColour
        return circle
    end
end

Script.Functions.CalcChance = function(percentage)
    percentage = math.floor(percentage)
    local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100
    return chance <= percentage / 100
end

Script.Functions.Character = function(Player)
    return Player.Character
end

Script.Functions.CheckHealth = function(Player)
    local Character = Script.Functions.Character(Player)
    local Humanoid = FindFirstChildWhichIsA(Character, "Humanoid")
    local Health = (Humanoid and Humanoid.Health or 0)
    return Health > 0
end

Script.Functions.GetClosestTargetPartToCursor = function(Character)
    local TargetParts = Settings.TargetPart
    local ClosestPart = nil
    local ClosestPartPosition = nil
    local ClosestPartOnScreen = false
    local ClosestPartMagnitudeFromMouse = nil
    local ShortestDistance = 1/0

    local function CheckTargetPart(TargetPart)
        if (typeof(TargetPart) == "string") then
            TargetPart = FindFirstChild(Character, TargetPart)
        end
        if not (TargetPart) then
            return
        end
        local PartPos, onScreen = WorldToViewportPoint(CurrentCamera, TargetPart.Position)
        local GuiInset = GetGuiInset(GuiService)
        local Magnitude = (Vector2.new(PartPos.X, PartPos.Y - GuiInset.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
        if (Magnitude < ShortestDistance) then
            ClosestPart = TargetPart
            ClosestPartPosition = PartPos
            ClosestPartOnScreen = onScreen
            ClosestPartMagnitudeFromMouse = Magnitude
            ShortestDistance = Magnitude
        end
    end
    if (typeof(TargetParts) == "string") then
        if (TargetParts == "All") then
            for _, v in ipairs(Character:GetChildren()) do
                if not (v:IsA("BasePart")) then
                    continue
                end
                CheckTargetPart(v)
            end
        else
            CheckTargetPart(TargetParts)
        end
    end
    if (typeof(TargetParts) == "table") then
        for _, TargetPartName in ipairs(TargetParts) do
            CheckTargetPart(TargetPartName)
        end
    end
    return ClosestPart, ClosestPartPosition, ClosestPartOnScreen, ClosestPartMagnitudeFromMouse
end

Script.Functions.GetClosestPlayer = function()
    local TargetPart = nil
    local ClosestPlayer = nil
    local Chance = Script.Functions.CalcChance(Settings.HitChance)
    local ShortestDistance = 1/0
    if (not Chance) then
        Settings.Selected = LocalPlayer
        Settings.SelectedPart = nil
        return LocalPlayer
    end
    for _, Player in ipairs(GetPlayers(Players)) do
        local Character = Script.Functions.Character(Player)
        if (Character) then
            local TargetPartTemp, _, _, Magnitude = Script.Functions.GetClosestTargetPartToCursor(Character)
            if (TargetPartTemp and Script.Functions.CheckHealth(Player)) then
                if (circle.Radius > Magnitude and Magnitude < ShortestDistance) then
                    if Script.Functions.IsVisible(Player.Character.Head.Position, {Player.Character, game.Players.LocalPlayer.Character, workspace.CurrentCamera}) then
                        ClosestPlayer = Player
                        ShortestDistance = Magnitude
                        TargetPart = TargetPartTemp
                    end
                end
            end
        end
    end

    Settings.Selected = ClosestPlayer
    Settings.SelectedPart = TargetPart
end

Script.Functions.GetClosestPlayerMulitple = function()
    local Target = nil
    local Distance = math.huge
    local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
    
    for i, v in next, game:GetService("Players"):GetPlayers() do
        if v ~= game:GetService("Players").LocalPlayer and Script.Functions.CheckPlayer(game:GetService("Players").LocalPlayer) and Script.Functions.CheckPlayer(v) then
            local RootPosition, RootVisible = workspace.CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)

            local MouseDis = (Vector2.new(RootPosition.X, RootPosition.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
            if (circle.Radius * 2 > MouseDis and MouseDis < Distance) then
                if RootVisible and Distance > MouseDis then
                    if Script.Functions.IsVisible(v.Character.Head.Position, {v.Character, game.Players.LocalPlayer.Character, workspace.CurrentCamera}) then
                        Target = v
                        Distance = MouseDis
                    end
                end
            end 
        end
    end

    return Target
end

Script.Functions.GetNearestPartToCursorOnCharacter = function(character)
    local ClosestDistance = math.huge
    local BodyPart = nil

    if (character and character:GetChildren()) then
        for k,  x in next, character:GetChildren() do
            if Filter(x) and IsOnScreen(x) then
                local Distance = (WTS(x) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
    
                if Distance < ClosestDistance then
                    ClosestDistance = Distance
                    BodyPart = x
                end
            end
        end
    end

    return BodyPart
end

game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Settings.Lock.Target_Bind and not processed then
        if ScriptInformation.Selected ~= nil then
            ScriptInformation.Selected = nil
        else
            ScriptInformation.Selected = Script.Functions.GetClosestPlayerMulitple()
        end
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Settings.FakeSpike.Keybind and not processed then
        Settings.FakeSpike.Status = not Settings.FakeSpike.Status
        settings().Network.IncomingReplicationLag = Settings.FakeSpike.Status == true and Settings.FakeSpike.ReplicationLag or 0
    end
end)

Script.Functions.Aim = function(Part)
    local hit = Part:GetRenderCFrame().Position + (Part.Velocity * Settings.Lock.Prediction)
    local newpos = workspace.CurrentCamera.WorldToScreenPoint(workspace.CurrentCamera, hit)

    if ScriptInformation.Selected ~= nil and Script.Functions.IsVisible(ScriptInformation.Selected.Character.Head.Position, {ScriptInformation.Selected.Character, game.Players.LocalPlayer.Character, workspace.CurrentCamera}) then
        mousemoverel((newpos.X - Mouse.X) * Settings.Lock.Sensitivity.X_Axis.Saved, (newpos.Y - Mouse.Y) * Settings.Lock.Sensitivity.Y_Axis.Saved)
    end
end

local CurrentGame = 0

if SupportedGames[game.GameId] then
    CurrentGame = SupportedGames[game.GameId]
else
    return;
end

Script.Functions.IsDowned = function(player) 
    if CurrentGame == 0 then
        return false
    end

    if (player.Character) and CurrentGame ~= 0 then
        return CurrentGame.Functions.GetKOValue(player)
    end

    return true
end

Script.Functions.CheckSilent = function() 
    if CurrentGame == 0 then
        return false
    end
    if CurrentGame ~= 0 then
        return (Settings.Silent.Enabled and Settings.Selected ~= nil and (Settings.Selected.Character) and Settings.Selected ~= game.Players.LocalPlayer and not Script.Functions.IsDowned(Settings.Selected) and SelectedPart ~= nil)
    end
    return true
end

Script.Functions.getToolName = function(name)
    local split = string.split(string.split(name, "[")[2], "]")[1]
    return split
end

Script.Functions.getEquippedWeaponName = function(player)
   if (player.Character) and player.Character:FindFirstChildWhichIsA("Tool") then
      local Tool =  player.Character:FindFirstChildWhichIsA("Tool")
      if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and not string.find(Tool.Name, "Phone") then 
         return Script.Functions.getToolName(Tool.Name)
      end
   end
   return nil
end

task.spawn(function()
    while task.wait() do
        if Settings.Silent.SelectClosestPart and Settings.Selected ~= nil and (Settings.Selected.Character) then
            SelectedPart = tostring(Script.Functions.GetNearestPartToCursorOnCharacter(Settings.Selected.Character))
        end
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    Script.Functions.UpdateFOV()
    Script.Functions.GetClosestPlayer()

    if Script.Functions.getEquippedWeaponName(game.Players.LocalPlayer) ~= nil and CurrentGame ~= 0 and Settings.Silent.GunMode then
        local WeaponSettings = GunSettings[Script.Functions.getEquippedWeaponName(game.Players.LocalPlayer)]
        if WeaponSettings ~= nil then
            Settings.FOVSettings.FOV = WeaponSettings.FOV
        else
            Settings.FOVSettings.FOV = Settings.FOVSettings.FOV
        end
    end    

    if Settings.Lock.Enabled and ScriptInformation.Selected ~= nil and (ScriptInformation.Selected.Character) and not Script.Functions.IsDowned(ScriptInformation.Selected) then
        local HitPart = Script.Functions.GetNearestPartToCursorOnCharacter(ScriptInformation.Selected.Character)
        Script.Functions.Aim(HitPart)
    end

    if Settings.Silent.showdot and Settings.Silent.Enabled and Settings.Selected ~= nil and Settings.Selected ~= game.Players.LocalPlayer and (Settings.Selected.Character) then
        local Vector, OnScreen = cc:worldToViewportPoint(Settings.Selected.Character[SelectedPart].Position + (Settings.Selected.Character[SelectedPart].Velocity * Settings.Silent.Prediction))
        Tracer.Visible = true
        Tracer.Position = Vector2.new(Vector.X, Vector.Y)
    else
        Tracer.Visible = false
    end

end)

local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(...)
    local args = {...};
    local method = getnamecallmethod();
    if method == "FireServer" and args[2] == CurrentGame.MouseArguments and Script.Functions.CheckSilent() then
        if Settings.Silent.UsePrediction then 
            if Settings.Silent.Resolver and Script.Functions.CheckSilent() then
                old_vel = game.Players[Settings.Selected.Name].Character.HumanoidRootPart.Velocity
                game.Players[Settings.Selected.Name].Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Y, old_vel.Z)
            end 
            args[3] = Settings.Selected.Character[SelectedPart].Position + (Settings.Selected.Character[SelectedPart].Velocity * Settings.Silent.Prediction)
        else
            if Settings.Silent.Resolver and Script.Functions.CheckSilent() then
                old_vel = game.Players[Settings.Selected.Name].Character.HumanoidRootPart.Velocity
                game.Players[Settings.Selected.Name].Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Y, old_vel.Z)
            end 
            args[3] = Settings.Selected.Character[SelectedPart].Position
        end
        return oldNamecall(unpack(args))
    end
    return oldNamecall(...)
end);
