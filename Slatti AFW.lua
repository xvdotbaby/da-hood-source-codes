local repo = "https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/"

local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

legitaim = {
    Key = Enum.KeyCode.G,
    Hitpart = "Head",
    Prediction = 10,
    Enabled = false,
    iamgeshit = false,
    tracers = false
}
_G.yo = 100
_G.Amountw = 50

local Image = {
    Enabled = true,
    Url = "https://media.discordapp.net/attachments/976539509183348786/979496668837851136/unknown.png?width=387&height=517",
    hitpartidk = "UpperTorso"
}

local imagelocklollz = Drawing.new("Image")
imagelocklollz.Data = game:HttpGet(Image.Url)
imagelocklollz.Size = Vector2.new(70, 30)

imagelocklollz.Visible = false

local settings = {
    TargetKey = Enum.KeyCode.C,
    TargetHitpart = "LowerTorso",
    TargetPrediction = 0.13,
    TargetEnabled = false,
    TargetTargeting = false,
    Visualatationmode = "Visualize Health Drop",
    TracersOptions = "Character",
    TracersEnabled = false,
    HITBOXBS = false,
    boxcoloridk = Color3.fromRGB(255, 255, 255),
    e = 22,
    autostompuw3u = false,
    notifgasnegro = false,
    targetstwafeuwu = false,
    Strafelengthlol = 10,
    Strafespedlol = 2,
    fakehitcocx = false,
    Colorthingidkklolllllll = Color3.fromRGB(161, 165, 162),
    uuuuuuuuuuuuuuuuuuuucolourrrrrrr = 0.82,
    Raingaybow = false,
    spinbotgangy = false,
    spinbotangle = 110,
    cframespedtoggle = false,
    cframeoptions = "Blatant"
}
Lock = {
    Key = Enum.KeyCode.X,
    Hitpart = "Head",
    Prediction = 0.265,
    Enabled = true,
    Targeting = false,
    Smoothed = true,
    SmoothVelocity = 0.092,
    Airshot = false
}
Aimlock = {
    Key = Enum.KeyCode.Q,
    Hitpart = "Head",
    Prediction = 10,
    Enabled = false,
    Targeting = false,
    Smoothed = true,
    SmoothVelocity = 0.092,
    Airshot = false
}


local Legitaimbs = Instance.new("Part", game.Workspace)
Legitaimbs.Name = "uwu"
Legitaimbs.Anchored = true
Legitaimbs.CanCollide = false
Legitaimbs.Transparency = 0.70
Legitaimbs.Parent = game.Workspace
Legitaimbs.Shape = Enum.PartType.Block
Legitaimbs.Size = Vector3.new(3, 5, 3)
Legitaimbs.Color = Color3.fromRGB(255, 255, 255)

-- // variables

local circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255, 255, 255)
circle.Thickness = 2
circle.NumSides = 350
circle.Transparency = 0.6
circle.Radius = 70
circle.Visible = false
circle.Filled = false

local text = Drawing.new("Text")
text.Visible = true
text.Center = true
text.Outline = true
text.Font = 2
text.Color = Color3.fromRGB(0, 255, 0)
text.Size = 20

local circle2 = Drawing.new("Circle")
circle2.Color = Color3.fromRGB(150, 97, 255)
circle2.Thickness = 2
circle2.NumSides = 350
circle2.Transparency = 1
circle2.Radius = 5.5
circle2.Visible = false
circle2.Filled = true

local line = Drawing.new("Line")
line.Visible = false
line.From = Vector2.new(0, 0)
line.To = Vector2.new(200, 200)
_G.FUCKYUN = Color3.fromRGB(255, 110, 238)
line.Color = _G.FUCKYUN
line.Thickness = 0.89
line.Transparency = 1.

local CurrentCamera = game:GetService("Workspace").CurrentCamera
local Lighting = game:GetService("Lighting")

local LocalMouse = game.Players.LocalPlayer:GetMouse()

-- // uis
local UserInputService = game:GetService("UserInputService")
local Plr

UserInputService.InputBegan:Connect(
    function(keyinput)
        if keyinput.KeyCode == settings.TargetKey then -- the 2nd var checks every fucking key so we finna stop this hoe
            settings.TargetTargeting = not settings.TargetTargeting
            if settings.TargetTargeting then
                Plr = getClosestPlayerToCursor()
                TargetPlayer = tostring(Plr)

                if settings.autostompuw3u == true then
                    spawn(
                        function()
                            repeat
                                task.wait()
                                if game.Players[TargetPlayer].Character.Humanoid.health < 1 then
                                    repeat
                                        task.wait()

                                        wait(5)
                                        break
                                    until settings.TargetEnabled == false or settings.TargetTargeting == false
                                end
                            until settings.TargetEnabled == false or settings.TargetTargeting == false
                        end
                    )
                end

                spawn(
                    function()
                        while settings.Raingaybow == true do
                            for i = 0, 1, 0.01 do
                                line.Color = Color3.fromHSV(i, 1, 1)
                                wait()
                            end
                        end
                    end
                )

                if settings.HITBOXBS and settings.TargetEnabled == true then
                    local Tracer = Instance.new("Part", game.Workspace)
                    Tracer.Name = "uwu"
                    Tracer.Anchored = true
                    Tracer.CanCollide = false
                    Tracer.Transparency = 0.70
                    Tracer.Parent = game.Workspace
                    Tracer.Shape = Enum.PartType.Block
                    Tracer.Size = Vector3.new(3, 5, 3)
                    Tracer.Color = Color3.fromRGB(170, 0, 255)
                    Tracer.Material = "ForceField"
                    spawn(
                        function()
                            game:GetService("RunService").Stepped:Connect(
                                function()
                                    Tracer.Position = game.Players[TargetPlayer].Character.HumanoidRootPart.Position
                                end
                            )
                        end
                    )
                end

                if settings.targetstwafeuwu == true and settings.TargetEnabled then
                    spawn(
                        function()
                            -- uwu dev forums
                            repeat
                                task.wait()

                                for i = 0, 360, settings.Strafespedlol do
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        CFrame.new(game.Players[TargetPlayer].Character.HumanoidRootPart.Position) *
                                        CFrame.Angles(0, math.rad(i), 0) *
                                        CFrame.new(settings.Strafelengthlol, 0, 0)
                                    task.wait()
                                end
                            until game.Players[TargetPlayer].Character.Humanoid.health < 1 or
                                settings.TargetTargeting == false or
                                settings.targetstwafeuwu == false
                        end
                    )
                end
                if settings.notifgasnegro == true then
                    spawn(
                        function()
                            Library:Notify("Targeting : " .. tostring(TargetPlayer))
                        end
                    )
                end

                if settings.Visualatationmode == "Visualize Target View" then
                    game:GetService("Workspace").CurrentCamera.CameraSubject =
                        game.Players[TargetPlayer].Character.Humanoid
                end

                if settings.fakehitcocx == true and settings.TargetEnabled then
                    local Tracerhfsdisyfdfd = Instance.new("Part", game.Workspace)
                    Tracerhfsdisyfdfd.Name = "uwu2"
                    Tracerhfsdisyfdfd.Anchored = true
                    Tracerhfsdisyfdfd.CanCollide = false
                    Tracerhfsdisyfdfd.Transparency = 0.78
                    Tracerhfsdisyfdfd.Parent = game.Workspace
                    Tracerhfsdisyfdfd.Shape = Enum.PartType.Block
                    Tracerhfsdisyfdfd.Size = Vector3.new(7, 7, 7)
                    Tracerhfsdisyfdfd.Color = Color3.fromRGB(161, 165, 162)
                    spawn(
                        function()
                            game:GetService("RunService").Stepped:Connect(
                                function()
                                    Tracerhfsdisyfdfd.Color = settings.Colorthingidkklolllllll
                                    Tracerhfsdisyfdfd.Position =
                                        game.Players[TargetPlayer].Character.HumanoidRootPart.Position
                                    Tracerhfsdisyfdfd.Transparency = settings.uuuuuuuuuuuuuuuuuuuucolourrrrrrr
                                end
                            )
                        end
                    )
                end
            elseif not settings.TargetTargeting then
                if settings.TargetEnabled == true then
                    if settings.HITBOXBS == true then
                        if game.Workspace:FindFirstChild("uwu") then
                            vvv = game.Workspace.uwu
                            vvv:Destroy()
                        end
                    end

                    if settings.Visualatationmode == "Visualize Target View" then
                        game:GetService("Workspace").CurrentCamera.CameraSubject =
                            game.Players.LocalPlayer.Character.Humanoid
                    end

                    if settings.notifgasnegro == true then
                        spawn(
                            function()
                                Library:Notify("Untargeting : " .. tostring(TargetPlayer))
                            end
                        )
                    end

                    if settings.fakehitcocx == true then
                        if game.Workspace:FindFirstChild("uwu2") then
                            v = game.Workspace.uwu2
                            v:Destroy()
                        end
                    end

                    if
                        TargetPlayer ~= nil and settings.TargetEnabled == true and
                            settings.Visualatationmode == "Visualize Health Drop"
                     then
                        text.Visible = false
                    elseif
                        TargetPlayer ~= nil and settings.TargetEnabled == true and
                            settings.Visualatationmode == "Visualize Velocity"
                     then
                        circle2.Visible = false
                    end
                end
            end
        end
    end
)

UserInputService.InputBegan:Connect(
    function(keyinput, stupid)
        if keyinput.KeyCode == Lock.Key then -- the 2nd var checks every fucking key so we finna stop this hoe
            Lock.Targeting = not Lock.Targeting
            if Lock.Targeting then
                Plr2 = getClosestPlayerToCursor()
                TargetPlayer2 = tostring(Plr2)
            elseif not Lock.Targeting then
                if Lock.Enabled == true then
                    if settings.HITBOXBS == true then
                    end
                end
            end
        end
    end
)

UserInputService.InputBegan:Connect(
    function(keyinput, stupid)
        if keyinput.KeyCode == Aimlock.Key then -- the 2nd var checks every fucking key so we finna stop this hoe
            Aimlock.Targeting = not Aimlock.Targeting
            if Aimlock.Targeting then
                PlrbRop = getClosestPlayerToCursor()
            elseif not Aimlock.Targeting then
                if Aimlock.Enabled == true then
                end
            end
        end
    end
)

function getClosestPlayerToCursor()
    local ClosestDistance, ClosestPlayer = math.huge, nil
    for _, Player in next, game:GetService("Players"):GetPlayers() do
        local ISNTKNOCKED = Player.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
        local ISNTGRABBED = Player.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil

        if Player ~= game.Players.LocalPlayer then
            local Character = Player.Character
            if Character and Character.Humanoid.Health > 1 and ISNTKNOCKED and ISNTGRABBED then
                local Position, IsVisibleOnViewPort =
                    CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart.Position)
                if IsVisibleOnViewPort then
                    local Distance =
                        (Vector2.new(LocalMouse.X, LocalMouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude
                    if Distance < ClosestDistance then
                        ClosestPlayer = Player
                        ClosestDistance = Distance
                    end
                end
            end
        end
    end
    return ClosestPlayer, ClosestDistance
end

local Window =
    Library:CreateWindow(
    {
        Title = "$$$$ AFW 🚬 $$$$                                         (10% done)",
        Center = true,
        AutoShow = true
    }
)

local Tabs = {
    Main = Window:AddTab(" Legit "),
    Main2 = Window:AddTab(" Rage "),
    Main5 = Window:AddTab(" Credits "),
    ["UI Settings"] = Window:AddTab(" Settings ")
}
---
local TargetAimSector = Tabs.Main:AddLeftGroupbox("Target Aim")
local FOVSETGSSSSSSS = Tabs.Main:AddRightGroupbox("Fov Settings")
local mouselockAimSector = Tabs.Main:AddRightGroupbox("Mouse Lock (beta)")
local aimlockshhh = Tabs.Main:AddRightGroupbox("Aimbot")
---

local LEgitAImdd = Tabs.Main2:AddLeftGroupbox("Legit Aim")

---


local creditssss5 = Tabs.Main5:AddLeftGroupbox("LEAKED BY")

local cframeboxlol = Tabs.Main2:AddRightGroupbox("CFrame")
local movmentskid = Tabs.Main2:AddRightGroupbox("Movement")

---

creditssss5:AddLabel("skin#0009")



movmentskid:AddToggle(
    "spinbottoggle",
    {
        Text = "Spin Bot",
        Default = false,
        Tooltip = " Spin XD "
    }
)

Toggles.spinbottoggle:OnChanged(
    function()
        settings.spinbotgangy = Toggles.spinbottoggle.Value
    end
)

movmentskid:AddSlider(
    "SpinAnglesstuff",
    {
        Text = "Angle Point",
        Default = 445,
        Min = 1,
        Max = 500,
        Rounding = 2,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.SpinAnglesstuff:OnChanged(
    function()
        settings.spinbotangle = Options.SpinAnglesstuff.Value
    end
)

---
---
cframeboxlol:AddToggle(
    "CFrameSpeedToggle",
    {
        Text = "Enable",
        Default = false,
        Tooltip = " Cframe pro sanic "
    }
):AddKeyPicker(
    "Keypickersanic",
    {
        Default = "Z",
        SyncToggleState = false,
        Mode = "Hold",
        Text = "CFrame",
        NoUI = false
    }
)

Toggles.CFrameSpeedToggle:OnChanged(
    function()
        settings.cframespedtoggle = Toggles.CFrameSpeedToggle.Value
    end
)

cframeboxlol:AddSlider(
    "speedgangyimocolerstop",
    {
        Text = "Speed",
        Default = 35,
        Min = 1,
        Max = 200,
        Rounding = 2,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.speedgangyimocolerstop:OnChanged(
    function()
        settings.CFramespedamout = Options.speedgangyimocolerstop.Value
    end
)

cframeboxlol:AddDropdown(
    "typeofcframe",
    {
        Values = {
            "Blatant",
            "Legit"
        },
        Default = "Blatant", -- number index of the value / string
        Multi = false, -- true / false, allows multiple choices to be selected
        Text = "Options",
        Tooltip = "Type of movment" -- Information shown when you hover over the textbox
    }
)

Options.typeofcframe:OnChanged(
    function()
        settings.cframeoptions = Options.typeofcframe.Value
    end
)

LEgitAImdd:AddToggle(
    "legitaimtoggle",
    {
        Text = "Enable",
        Default = false,
        Tooltip = "Toggle to enable or disable Aimlock"
    }
):AddKeyPicker(
    "Keypickerforlegitaim",
    {
        Default = "G",
        SyncToggleState = false,
        Mode = "Always",
        Text = "Aimlock",
        NoUI = false
    }
)

Options.Keypickerforlegitaim:OnClick(
    function()
        legitaim.Key = Enum.KeyCode[Options.Keypickerforlegitaim.Value]
    end
)

LEgitAImdd:AddDropdown(
    "Hitpartforlegitaim",
    {
        Values = {
            "Head",
            "UpperTorso",
            "HumanoidRootPart",
            "LowerTorso",
            "RightUpperArm",
            "LeftUpperArm",
            "RightLowerArm",
            "RightUpperLeg",
            "LeftUpperLeg",
            "LeftLowerLeg",
            "RightLowerLeg",
            "RightHand",
            "LeftHand",
            "100% Streamproof (beta)"
        },
        Default = "UpperTorso", -- number index of the value / string
        Multi = false, -- true / false, allows multiple choices to be selected
        Text = "HitPart",
        Tooltip = "Where legit aim flicks to" -- Information shown when you hover over the textbox
    }
)

Toggles.legitaimtoggle:OnChanged(
    function()
        legitaim.Enabled = Toggles.legitaimtoggle.Value
    end
)

LEgitAImdd:AddSlider(
    "distancethingy",
    {
        Text = "Plr to Cursor Ratio",
        Default = 25,
        Min = 1,
        Max = 100,
        Rounding = 2,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.distancethingy:OnChanged(
    function()
        _G.Amountw = Options.distancethingy.Value
    end
)

LEgitAImdd:AddToggle(
    "aurosetsez",
    {
        Text = "Ping Based Prediction",
        Default = false,
        Tooltip = " auto ping based settings "
    }
)

LEgitAImdd:AddSlider(
    "Prediction",
    {
        Text = "Enter Your Ping",
        Default = 70,
        Min = 1,
        Max = 100,
        Rounding = 0.1,
        Compact = false -- If set to true, then it will hide the label
    }
)

LEgitAImdd:AddToggle(
    "NOTOUYLOLLL",
    {
        Text = "Slight Cursor Follow",
        Default = false,
        Tooltip = " This is not out yet / toggle for your cursor to slowly follow the opponent to look more legit "
    }
)

LEgitAImdd:AddDivider()
LEgitAImdd:AddLabel("Non-Legit \n")

---

LEgitAImdd:AddToggle(
    "Tracertolegitaim",
    {
        Text = "Tracers",
        Default = false,
        Tooltip = "Toggle to show a tracer to opponent"
    }
):AddColorPicker(
    "COLORCPIUEKRIRIFIIFF",
    {
        Default = Color3.fromRGB(164, 95, 237), -- Bright green
        Title = "Some color" -- Optional. Allows you to have a custom color picker title (when you open it)
    }
)

LEgitAImdd:AddToggle(
    "Imagelocklol",
    {
        Text = "Image / labels",
        Default = false,
        Tooltip = "Toggle to show a cool image on a person"
    }
)

Toggles.Imagelocklol:OnChanged(
    function()
        legitaim.iamgeshit = Toggles.Imagelocklol.Value
    end
)

---

aimlockshhh:AddToggle(
    "aiimlocktoggle",
    {
        Text = "Enable",
        Default = false,
        Tooltip = "Toggle to enable or disable Aimlock"
    }
):AddKeyPicker(
    "KeyPickerforaimlock",
    {
        Default = "Q",
        SyncToggleState = false,
        Mode = "Toggle",
        Text = "Aimlock",
        NoUI = false
    }
)

Toggles.aiimlocktoggle:OnChanged(
    function()
        Aimlock.Enabled = Toggles.aiimlocktoggle.Value
    end
)

aimlockshhh:AddSlider(
    "aimlockpred",
    {
        Text = "Prediction ",
        Default = 20,
        Min = 1,
        Max = 40,
        Rounding = 2,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.aimlockpred:OnChanged(
    function()
        Aimlock.Prediction = Options.aimlockpred.Value
    end
)

aimlockshhh:AddToggle(
    "SMoothingToggleee",
    {
        Text = "Smoothing",
        Default = false,
        Tooltip = "Toggle to enable or disable Aimlock"
    }
)

Toggles.SMoothingToggleee:OnChanged(
    function()
        Aimlock.Smoothed = Toggles.SMoothingToggleee.Value
    end
)

aimlockshhh:AddSlider(
    "smoothamount",
    {
        Text = "Smoothing Multiplier ",
        Default = 0.019,
        Min = 0.004,
        Max = 0.1,
        Rounding = 4,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.smoothamount:OnChanged(
    function()
        Aimlock.SmoothVelocity = Options.smoothamount.Value
    end
)

aimlockshhh:AddDropdown(
    "HITPARTHITCOCKAIM",
    {
        Values = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"},
        Default = "UpperTorso", -- number index of the value / string
        Multi = false, -- true / false, allows multiple choices to be selected
        Text = "HitPart",
        Tooltip = "Part where cc looks at" -- Information shown when you hover over the textbox
    }
)

aimlockshhh:AddDivider()

---

FOVSETGSSSSSSS:AddToggle(
    "ddddnegro",
    {
        Text = "Filled Fov",
        Default = false,
        Tooltip = "Toggle to enable or disable fov visibility"
    }
)

Toggles.ddddnegro:OnChanged(
    function()
        circle.Filled = Toggles.ddddnegro.Value
    end
)

FOVSETGSSSSSSS:AddSlider(
    "dwcwwwdwddwdwwd",
    {
        Text = "Fov Size ",
        Default = 70,
        Min = 1,
        Max = 250,
        Rounding = 0.1,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.dwcwwwdwddwdwwd:OnChanged(
    function()
        circle.Radius = Options.dwcwwwdwddwdwwd.Value
    end
)

FOVSETGSSSSSSS:AddSlider(
    "cccccccccccccccccccccccccccccccccccccccc",
    {
        Text = "Fov Thickness  ",
        Default = 2,
        Min = 1,
        Max = 10,
        Rounding = 0.1,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.cccccccccccccccccccccccccccccccccccccccc:OnChanged(
    function()
        circle.Thickness = Options.cccccccccccccccccccccccccccccccccccccccc.Value
    end
)

TargetAimSector:AddToggle(
    "TargetAimENable",
    {
        Text = "Enable",
        Default = false,
        Tooltip = "Toggle to enable or disable target aim"
    }
):AddKeyPicker(
    "KeyPicker",
    {
        Default = "C",
        SyncToggleState = false,
        Mode = "Hold",
        Text = "Target Aim",
        NoUI = false
    }
)

TargetAimSector:AddToggle(
    "TargetAimShowFovvv",
    {
        Text = "Draw Fov",
        Default = false,
        Tooltip = "Toggle to Show fov "
    }
):AddColorPicker(
    "ColorPickerfiv",
    {
        Default = Color3.fromRGB(233, 203, 255), -- Bright green
        Title = "Some color" -- Optional. Allows you to have a custom color picker title (when you open it)
    }
)

Toggles.TargetAimShowFovvv:OnChanged(
    function()
        circle.Visible = Toggles.TargetAimShowFovvv.Value
    end
)

Options.ColorPickerfiv:OnChanged(
    function()
        circle.Color = Options.ColorPickerfiv.Value
    end
)

game:GetService("RunService").RenderStepped:Connect(
    function()
        circle.Position = Vector2.new(LocalMouse.X, LocalMouse.Y + 35)
    end
)

TargetAimSector:AddSlider(
    "PredictionSliderTarget",
    {
        Text = "Prediction ",
        Default = 0.11,
        Min = 0,
        Max = 0.2,
        Rounding = 4,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.PredictionSliderTarget:OnChanged(
    function()
        settings.TargetPrediction = Options.PredictionSliderTarget.Value
    end
)

TargetAimSector:AddDropdown(
    "TargetAimHitp",
    {
        Values = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"},
        Default = "LowerTorso", -- number index of the value / string
        Multi = false, -- true / false, allows multiple choices to be selected
        Text = "HitPart",
        Tooltip = "Part where silent aim connects" -- Information shown when you hover over the textbox
    }
)

Options.TargetAimHitp:OnChanged(
    function()
        settings.TargetHitpart = Options.TargetAimHitp.Value
    end
)

TargetAimSector:AddDropdown(
    "Vussy",
    {
        Values = {
            "Visualize Health Drop",
            "Visualize Velocity W/ Circle",
            "Visualize Cursor Colour Change",
            "Visualize Target View"
        },
        Default = "Visualize Health Drop", -- number index of the value / string
        Multi = false, -- true / false, allows multiple choices to be selected
        Text = "Visualization",
        Tooltip = "Visualization options lol" -- Information shown when you hover over the textbox
    }
)

Options.Vussy:OnChanged(
    function()
        settings.Visualatationmode = Options.Vussy.Value
    end
)

TargetAimSector:AddToggle(
    "RANDOMIZEDDDDDDDDDDDDDDDDCICK",
    {
        Text = "Randomize HitPart",
        Default = false,
        Tooltip = "Toggle to enable or disable randamazation gay boi"
    }
)

TargetAimSector:AddToggle(
    "ShowTracer",
    {
        Text = "Tracer",
        Default = false,
        Tooltip = "Toggle to enable or disable to show a tracer to the opponent"
    }
):AddColorPicker(
    "ShowTracercpPORM",
    {
        Default = Color3.new(1, 1, 1), -- Bright green
        Title = "Some color" -- Optional. Allows you to have a custom color picker title (when you open it)
    }
)

TargetAimSector:AddToggle(
    "xxveari",
    {
        Text = "Rainbow Tracer",
        Default = false,
        Tooltip = "Toggle to enable or disable to edit the tracer color to be rainbow"
    }
)

Toggles.xxveari:OnChanged(
    function()
        settings.Raingaybow = Toggles.xxveari.Value
    end
)

Options.ShowTracercpPORM:OnChanged(
    function()
        if settings.Raingaybow == true then
        else
            _G.FUCKYUN = Options.ShowTracercpPORM.Value
        end
    end
)

Toggles.ShowTracer:OnChanged(
    function()
        settings.TracersEnabled = Toggles.ShowTracer.Value
    end
)

TargetAimSector:AddDropdown(
    "TracerHome",
    {
        Values = {"Mouse", "Character"},
        Default = "Character", -- number index of the value / string
        Multi = false, -- true / false, allows multiple choices to be selected
        Text = "Tracer Home",
        Tooltip = "Part where silent aim connects" -- Information shown when you hover over the textbox
    }
)

Options.TracerHome:OnChanged(
    function()
        settings.TracersOptions = Options.TracerHome.Value
    end
)

TargetAimSector:AddToggle(
    "NOTIFICVATTTTTTTTTT",
    {
        Text = "Notify When Targeting",
        Default = false,
        Tooltip = "Toggle to notify when locked"
    }
)

Toggles.NOTIFICVATTTTTTTTTT:OnChanged(
    function()
        settings.notifgasnegro = Toggles.NOTIFICVATTTTTTTTTT.Value
    end
)

TargetAimSector:AddToggle(
    "Showhitbox",
    {
        Text = "Show Hitbox",
        Default = false,
        Tooltip = "Toggle to enable or disable to show the fake hitbox of opponent"
    }
):AddColorPicker(
    "ShowTracercpPORMRBRBRBRBR",
    {
        Default = Color3.fromRGB(233, 203, 255), -- Bright green
        Title = "Some color" -- Optional. Allows you to have a custom color picker title (when you open it)
    }
)

TargetAimSector:AddToggle(
    "FAKEHITBOXXXXXXXXXXXXXXX",
    {
        Text = "Fake HitBox",
        Default = false,
        Tooltip = "Toggle to enable or disable to show a big retarded box"
    }
):AddColorPicker(
    "Showuwudiockcuddddddm",
    {
        Default = Color3.fromRGB(233, 203, 255), -- Bright green
        Title = "Some color" -- Optional. Allows you to have a custom color picker title (when you open it)
    }
)

Toggles.FAKEHITBOXXXXXXXXXXXXXXX:OnChanged(
    function()
        settings.fakehitcocx = Toggles.FAKEHITBOXXXXXXXXXXXXXXX.Value
    end
)

Options.Showuwudiockcuddddddm:OnChanged(
    function()
        settings.Colorthingidkklolllllll = Options.Showuwudiockcuddddddm.Value
    end
)

TargetAimSector:AddSlider(
    "pussyeatergrablollll",
    {
        Text = "Fake HitBox Transparency ",
        Default = 0.9,
        Min = 0.,
        Max = 1,
        Rounding = 2,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.pussyeatergrablollll:OnChanged(
    function()
        settings.uuuuuuuuuuuuuuuuuuuucolourrrrrrr = Options.pussyeatergrablollll.Value
    end
)

Options.ShowTracercpPORMRBRBRBRBR:OnChanged(
    function()
        settings.boxcoloridk = Options.ShowTracercpPORMRBRBRBRBR.Value
    end
)

Toggles.Showhitbox:OnChanged(
    function()
        settings.HITBOXBS = Toggles.Showhitbox.Value
    end
)

TargetAimSector:AddDivider()

TargetAimSector:AddToggle(
    "BIGDICKTARGETSTRAFEEEEE",
    {
        Text = "Target Strafe",
        Default = false,
        Tooltip = "Toggle to enable or disable shitty strafe"
    }
)

Toggles.BIGDICKTARGETSTRAFEEEEE:OnChanged(
    function()
        settings.targetstwafeuwu = Toggles.BIGDICKTARGETSTRAFEEEEE.Value
    end
)

TargetAimSector:AddSlider(
    "STEAAEFGEGGGGGGGGGdddddddddddddddddddddddG",
    {
        Text = "Strafe Speed ",
        Default = 2,
        Min = 1,
        Max = 10,
        Rounding = 0.1,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.STEAAEFGEGGGGGGGGGdddddddddddddddddddddddG:OnChanged(
    function()
        settings.Strafespedlol = Options.STEAAEFGEGGGGGGGGGdddddddddddddddddddddddG.Value
    end
)

TargetAimSector:AddSlider(
    "STEAAEFGEGGGGGGGGGG",
    {
        Text = "Strafe Distance ",
        Default = 6,
        Min = 1,
        Max = 20,
        Rounding = 0.5,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.STEAAEFGEGGGGGGGGGG:OnChanged(
    function()
        settings.Strafelengthlol = Options.STEAAEFGEGGGGGGGGGG.Value
    end
)

----

mouselockAimSector:AddToggle(
    "msloiceeeAimENable",
    {
        Text = "Enable",
        Default = false,
        Tooltip = "Toggle to enable or disable mouse lock"
    }
):AddKeyPicker(
    "KeyPickerformouselock",
    {
        Default = "T",
        SyncToggleState = false,
        Mode = "Toggle",
        Text = "Enable",
        NoUI = false
    }
)

Toggles.msloiceeeAimENable:OnChanged(
    function()
        Lock.Enabled = Toggles.msloiceeeAimENable.Value
    end
)

Options.KeyPickerformouselock:OnClick(
    function()
        Lock.Key = Enum.KeyCode[Options.KeyPickerformouselock.Value]
    end
)

mouselockAimSector:AddSlider(
    "PredictionSlidermslock",
    {
        Text = "Prediction ",
        Default = 0.265,
        Min = 0,
        Max = 0.5,
        Rounding = 4,
        Compact = false -- If set to true, then it will hide the label
    }
)

Options.PredictionSlidermslock:OnChanged(
    function()
        Lock.Prediction = Options.PredictionSlidermslock.Value
    end
)

mouselockAimSector:AddDropdown(
    "pussymouselockccAimHitp",
    {
        Values = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"},
        Default = "UpperTorso", -- number index of the value / string
        Multi = false, -- true / false, allows multiple choices to be selected
        Text = "HitPart",
        Tooltip = "Part where TargetAim connects" -- Information shown when you hover over the textbox
    }
)

TargetAimSector:AddDropdown(
    "pusyeater123",
    {
        Values = {"Blatant", "Kinda Blatant", "Legit", "Noobie"},
        Default = "Blatant", -- number index of the value / string
        Multi = false, -- true / false, allows multiple choices to be selected
        Text = "HitStyle",
        Tooltip = "Hitstyle gay negro" -- Information shown when you hover over the textbox
    }
)

Options.pussymouselockccAimHitp:OnChanged(
    function()
        Lock.Hitpart = Options.pussymouselockccAimHitp.Value
    end
)

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if settings.Visualatationmode == "Visualize Health Drop" then
                    if TargetPlayer ~= nil and settings.TargetEnabled and settings.TargetTargeting == true then
                        text.Visible = true
                        local CurrentCamera = game:GetService("Workspace").CurrentCamera
                        local rayhit, hitpos =
                            workspace:FindPartOnRayWithIgnoreList(
                            Ray.new(
                                game.Players[TargetPlayer].Character.Head.Position,
                                game.Players[TargetPlayer].Character.Head.CFrame.LookVector * 1
                            ),
                            {CurrentCamera, game.Players[TargetPlayer].Character},
                            false,
                            true,
                            ""
                        )

                        local viewportpointhit, isOnScreen = CurrentCamera:WorldToViewportPoint(hitpos)
                        local headpos =
                            CurrentCamera:WorldToViewportPoint(
                            (game.Players[TargetPlayer].Character.Head.Position + Vector3.new(0, 2, 0))
                        )

                        text.Position = Vector2.new(headpos.X, headpos.Y)

                        text.Text = tostring(game.Players[TargetPlayer].Character.Humanoid.health)

                        if game.Players[TargetPlayer].Character.Humanoid.health > 90 then
                            text.Color = Color3.fromRGB(0, 255, 0)
                        elseif game.Players[TargetPlayer].Character.Humanoid.health > 80 then
                            text.Color = Color3.fromRGB(111, 255, 0)
                        elseif game.Players[TargetPlayer].Character.Humanoid.health > 70 then
                            text.Color = Color3.fromRGB(153, 255, 0)
                        elseif game.Players[TargetPlayer].Character.Humanoid.health > 50 then
                            text.Color = Color3.fromRGB(187, 255, 0)
                        elseif game.Players[TargetPlayer].Character.Humanoid.health > 40 then
                            text.Color = Color3.fromRGB(229, 255, 0)
                        elseif game.Players[TargetPlayer].Character.Humanoid.health > 30 then
                            text.Color = Color3.fromRGB(255, 179, 0)
                        elseif game.Players[TargetPlayer].Character.Humanoid.health > 20 then
                            text.Color = Color3.fromRGB(255, 98, 0)
                        elseif game.Players[TargetPlayer].Character.Humanoid.health < 15 then
                            text.Color = Color3.fromRGB(255, 0, 0)
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if
                    TargetPlayer ~= nil and settings.Visualatationmode == "Visualize Velocity W/ Circle" and
                        settings.TargetEnabled and
                        settings.TargetTargeting == true
                 then
                    local worldPosition = game.Players[TargetPlayer].Character.HumanoidRootPart.Position
                    local screenPosition, onScreen = CurrentCamera:WorldToScreenPoint(worldPosition)

                    if onScreen then
                        circle2.Visible = true
                    else
                        circle2.Visible = false
                    end
                    local rayhit69, hitpos69 =
                        workspace:FindPartOnRayWithIgnoreList(
                        Ray.new(
                            game.Players[TargetPlayer].Character.Head.Position,
                            game.Players[TargetPlayer].Character.Head.CFrame.LookVector * 1
                        ),
                        {CurrentCamera, game.Players[TargetPlayer].Character},
                        false,
                        true,
                        ""
                    )

                    local viewportpointhit, isOnScreen = CurrentCamera:WorldToViewportPoint(hitpos69)
                    local headpos123 =
                        CurrentCamera:WorldToViewportPoint(
                        game.Players[TargetPlayer].Character[settings.TargetHitpart].Position +
                            (game.Players[TargetPlayer].Character.LowerTorso.Velocity * settings.TargetPrediction)
                    )

                    circle2.Position = Vector2.new(headpos123.X, headpos123.Y)
                elseif
                    TargetPlayer ~= nil and settings.Visualatationmode == "Visualize Velocity W/ Circle" and
                        settings.TargetEnabled == true and
                        settings.TargetTargeting == false
                 then
                    local rayhit69, hitpos69 =
                        workspace:FindPartOnRayWithIgnoreList(
                        Ray.new(
                            game.Players[TargetPlayer].Character.Head.Position,
                            game.Players[TargetPlayer].Character.Head.CFrame.LookVector * 1
                        ),
                        {CurrentCamera, game.Players[TargetPlayer].Character},
                        false,
                        true,
                        ""
                    )

                    local viewportpointhit, isOnScreen = CurrentCamera:WorldToViewportPoint(hitpos69)
                    local eeeeeeehut = CurrentCamera:WorldToViewportPoint(LocalMouse.Hit.Position)

                    circle2.Position = Vector2.new(eeeeeeehut.X, eeeeeeehut.Y)
                else
                    circle2.Visible = false
                end
            end
        )
    end
)

Toggles.TargetAimENable:OnChanged(
    function()
        settings.TargetEnabled = Toggles.TargetAimENable.Value
    end
)

Options.KeyPicker:OnClick(
    function()
        settings.TargetKey = Enum.KeyCode[Options.KeyPicker.Value]
    end
)

Library:SetWatermarkVisibility(true)

Library:SetWatermark("$$$$ AFW 🚬 $$$$")

Library.KeybindFrame.Visible = false

local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu")

MenuGroup:AddButton(
    "Unload",
    function()
        Library:Unload()
    end
)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker(
    "MenuKeybind",
    {
        Default = "RightShift",
        NoUI = true,
        Text = "Menu keybind"
    }
)
local MyButton =
    MenuGroup:AddButton(
    "Show Keybinds",
    function()
        Library.KeybindFrame.Visible = true
    end
)
local MyButton2 =
    MyButton:AddButton(
    "Destroy Keybinds",
    function()
        Library.KeybindFrame.Visible = false
    end
)

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)

SaveManager:SetLibrary(Library)

--SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({"MenuKeybind"})

ThemeManager:SetFolder("MyScriptHub")

SaveManager:SetFolder("MyScriptHub/specific-game")

SaveManager:BuildConfigSection(Tabs["UI Settings"])

ThemeManager:ApplyToTab(Tabs["UI Settings"])

local __Namecall
__Namecall =
    hookmetamethod(
    game,
    "__namecall",
    function(self, ...)
        local Args = {...}
        local Method = getnamecallmethod()

        if tostring(self.Name) == "MainEvent" and tostring(Method) == "FireServer" then
            if Args[1] == "TeleportDetect" or Args[1] == "CHECKER_1" or Args[1] == "OneMoreTime" then
                return
            end
        end

        return __Namecall(self, ...)
    end
)

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall =
    newcclosure(
    function(...)
        local args = {...}
        if
            Plr ~= nil and settings.TargetEnabled and TargetPlayer and settings.TargetTargeting == true and
                settings.TargetEnabled == true and
                getnamecallmethod() == "FireServer" and
                args[2] == "UpdateMousePos"
         then
            args[3] =
                game.Players[TargetPlayer].Character[settings.TargetHitpart].Position +
                (game.Players[TargetPlayer].Character.LowerTorso.Velocity * settings.TargetPrediction)
            return old(unpack(args))
        end
        return old(...)
    end
)

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if settings.TracersOptions == "Character" then
                    if
                        Plr ~= nil and settings.TracersEnabled and settings.TargetEnabled and
                            settings.TargetTargeting == true and
                            game.Players[TargetPlayer].Character.Humanoid.health > 0
                     then
                        local rayhit, hitpos =
                            workspace:FindPartOnRayWithIgnoreList(
                            Ray.new(
                                game.Players[TargetPlayer].Character[settings.TargetHitpart].Position,
                                game.Players[TargetPlayer].Character[settings.TargetHitpart].CFrame.LookVector * 1
                            ),
                            {CurrentCamera, game.Players[TargetPlayer].Character},
                            false,
                            true,
                            ""
                        )

                        local viewportpointhit, isOnScreen = CurrentCamera:WorldToViewportPoint(hitpos)

                        local headpos =
                            CurrentCamera:WorldToViewportPoint(
                            game.Players[TargetPlayer].Character[settings.TargetHitpart].Position +
                                (game.Players[TargetPlayer].Character.LowerTorso.Velocity * settings.TargetPrediction)
                        )

                        local rayhit2, hitpos2 =
                            workspace:FindPartOnRayWithIgnoreList(
                            Ray.new(
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 1
                            ),
                            {CurrentCamera, game.Players.LocalPlayer.Character},
                            false,
                            true,
                            ""
                        )

                        local viewportpointhit2, isOnScreen2 = CurrentCamera:WorldToViewportPoint(hitpos)

                        local headpos2 =
                            CurrentCamera:WorldToViewportPoint(
                            game.Players.LocalPlayer.Character.LowerTorso.Position +
                                (game.Players.LocalPlayer.Character.LowerTorso.Velocity * 0.007)
                        )

                        line.To = Vector2.new(headpos.X, headpos.Y)
                        line.From = Vector2.new(headpos2.X, headpos2.Y)
                        local worldPosition = game.Players[TargetPlayer].Character.HumanoidRootPart.Position
                        local screenPosition, onScreen = CurrentCamera:WorldToScreenPoint(worldPosition)

                        if onScreen then
                            line.Visible = true
                        else
                            line.Visible = false
                        end
                        if settings.Raingaybow == true then
                        else
                            line.Color = _G.FUCKYUN
                        end
                    else
                        line.Visible = false
                    end
                elseif settings.TracersOptions == "Mouse" then
                    if
                        Plr ~= nil and settings.TracersEnabled and settings.TargetEnabled and
                            settings.TargetTargeting == true and
                            game.Players[TargetPlayer].Character.Humanoid.health > 0
                     then
                        idx = 10

                        local rayhit5, hitpos5 =
                            workspace:FindPartOnRayWithIgnoreList(
                            Ray.new(
                                game.Players[TargetPlayer].Character[settings.TargetHitpart].Position,
                                game.Players[TargetPlayer].Character[settings.TargetHitpart].CFrame.LookVector * idx
                            ),
                            {CurrentCamera, game.Players[TargetPlayer].Character},
                            false,
                            true,
                            ""
                        )

                        local viewportpointhit5, isOnScreen5 = CurrentCamera:WorldToViewportPoint(hitpos5)
                        local headpos5 =
                            CurrentCamera:WorldToViewportPoint(
                            game.Players[TargetPlayer].Character[settings.TargetHitpart].Position +
                                (game.Players[TargetPlayer].Character.LowerTorso.Velocity * settings.TargetPrediction)
                        )
                        line.To = Vector2.new(headpos5.X, headpos5.Y)
                        line.From =
                            Vector2.new(
                            game.Players.LocalPlayer:GetMouse().X,
                            game.Players.LocalPlayer:GetMouse().Y + 35
                        )
                        line.Visible = true

                        if settings.Raingaybow == true then
                        else
                            line.Color = _G.FUCKYUN
                        end
                    else
                        line.Visible = false
                    end
                end
            end
        )
    end
)

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if
                    settings.Visualatationmode == "Visualize Cursor Colour Change" and settings.TargetTargeting and
                        settings.TargetEnabled
                 then
                    local color = Color3.fromRGB(255, 0, 0)
                    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Aim.BackgroundColor3 = color
                    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.BackgroundColor3 = color
                    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.BackgroundColor3 = color
                    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.BackgroundColor3 = color
                    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.BackgroundColor3 = color
                 elseif  settings.Visualatationmode ~= "Visualize Cursor Colour Change" and settings.TargetTargeting and
                 settings.TargetEnabled then
                    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Aim.BackgroundColor3 =
                        Color3.fromRGB(255, 255, 255)
                    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.BackgroundColor3 =
                        Color3.fromRGB(255, 255, 255)
                    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.BackgroundColor3 =
                        Color3.fromRGB(255, 255, 255)
                    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.BackgroundColor3 =
                        Color3.fromRGB(255, 255, 255)
                    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.BackgroundColor3 =
                        Color3.fromRGB(255, 255, 255)
                 
                end
            end
        )
    end
)

local Yung = loadstring(game:HttpGet("https://raw.githubusercontent.com/JsfuayASbsfuWGakCmhzVwaKJsfuayASbsfuWGa/AFW/main/3D%20CIRCLE"))()
local Circle2222 = Yung:New3DCircle()
Circle2222.Visible = false
Circle2222.ZIndex = 1
Circle2222.Transparency = 1
Circle2222.Color = Color3.fromRGB(255, 255, 255)
Circle2222.Thickness = 1

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if
                    TargetPlayer ~= nil and settings.TargetEnabled and settings.TargetTargeting and
                        settings.targetstwafeuwu == true
                 then
                    Circle2222.Visible = true
                    Circle2222.Radius = settings.Strafelengthlol
                    Circle2222.Position = game.Players[TargetPlayer].Character.HumanoidRootPart.Position
                else
                    Circle2222.Visible = false
                end
            end
        )
    end
)

spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if TargetPlayer2 ~= nil and Lock.Targeting and Lock.Enabled == true then
                    local rayhit, hitpos =
                        workspace:FindPartOnRayWithIgnoreList(
                        Ray.new(
                            game.Players[TargetPlayer2].Character[Lock.Hitpart].Position,
                            game.Players[TargetPlayer2].Character[Lock.Hitpart].CFrame.LookVector * 1
                        ),
                        {CC, game.Players[TargetPlayer2].Character},
                        false,
                        true,
                        ""
                    )

                    local viewportpointhit, isOnScreen = CurrentCamera:WorldToViewportPoint(hitpos)
                    local headpos =
                        CurrentCamera:WorldToScreenPoint(
                        game.Players[TargetPlayer2].Character[Lock.Hitpart].Position +
                            (game.Players[TargetPlayer2].Character.LowerTorso.Velocity * Lock.Prediction / 2)
                    )

                    local worldPosition = game.Players[TargetPlayer2].Character.HumanoidRootPart.Position
                    local screenPosition, onScreen = CurrentCamera:WorldToScreenPoint(worldPosition)

                    if onScreen then
                        mousemoverel(headpos.X - LocalMouse.X, headpos.Y - LocalMouse.Y)
                    else
                    end
                end
            end
        )
    end
)

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if settings.spinbotgangy == true then
                    task.wait()
                    local LocalPlayer = game.Players.LocalPlayer
                    local Jit = Speed or math.random(30, 90)
                    LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
                        CFrame.Angles(
                            0,
                            math.rad(settings.spinbotangle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)),
                            0
                        )
                end
            end
        )
    end
)

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                uwugangy = getClosestPlayerToCursor()
                if uwugangy ~= nil then
                    TargetPlayer4legit = tostring(uwugangy)
                end
            end
        )
    end
)

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if uwugangy ~= nil and legitaim.iamgeshit and legitaim.Enabled == true then
                    imagelocklollz.Visible = true
                    local idfklol, OnScreen =
                        CurrentCamera:worldToViewportPoint(game.Players[TargetPlayer4legit].Character.Head.Position)
                    imagelocklollz.Position = Vector2.new(idfklol.X, idfklol.Y)
                else
                    imagelocklollz.Visible = false
                end
            end
        )
    end
)

spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if TargetPlayer4legit ~= nil then
                    Legitaimbs.Transparency = 1
                    Legitaimbs.Position = game.Players[TargetPlayer4legit].Character.HumanoidRootPart.Position
                else
                    Legitaimbs.Transparency = 1
                end
            end
        )
    end
)





spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if Aimlock.Smoothed and Aimlock.Enabled and Aimlock.Targeting == true then
                    local Main =
                        CFrame.new(
                        workspace.CurrentCamera.CFrame.p,
                        PlrbRop.Character[Aimlock.Hitpart].Position +
                            PlrbRop.Character[Aimlock.Hitpart].Velocity * Aimlock.Prediction / 100
                    )
                    workspace.CurrentCamera.CFrame =
                        workspace.CurrentCamera.CFrame:Lerp(
                        Main,
                        Aimlock.SmoothVelocity,
                        Enum.EasingStyle.Elastic,
                        Enum.EasingDirection.InOut
                    )
                elseif Aimlock.Smoothed == false and Aimlock.Enabled and Aimlock.Targeting == true then
                    workspace.CurrentCamera.CFrame =
                        CFrame.new(
                        workspace.CurrentCamera.CFrame.Position,
                        PlrbRop.Character[Aimlock.Hitpart].Position +
                            PlrbRop.Character[Aimlock.Hitpart].Velocity * Aimlock.Prediction / 100
                    )
                end
            end
        )
    end
)

plr = game:GetService("Players").LocalPlayer
LocalPlayer = game.Players.LocalPlayer

down = true

function onButton1Down(mouse)
    down = true

    while down and settings.cframespedtoggle == true and settings.cframeoptions == "Blatant" do
        if not down then
            break
        end

        local char = plr.Character

        LocalPlayer.Character:TranslateBy(
            LocalPlayer.Character.Humanoid.MoveDirection * (settings.CFramespedamout / 10)
        )

        task.wait()
    end
end

function onButton1Up(mouse)
    down = false
end

function onSelected(mouse)
    mouse.KeyDown:connect(
        function(c)
            if c:lower() == "z" then
                onButton1Down(mouse)
            end
        end
    )

    mouse.KeyUp:connect(
        function(c)
            if c:lower() == "z" then
                onButton1Up(mouse)
            end
        end
    )
end

onSelected(game.Players.LocalPlayer:GetMouse())


spawn(
    function()
        game:GetService("RunService").Stepped:Connect(
            function()
                if uwugangy ~= nil and legitaim.Enabled == true then
                    local rayhit1, hitpos1 =
                        workspace:FindPartOnRayWithIgnoreList(
                        Ray.new(
                            game.Players.LocalPlayer.Character.Head.Position,
                            game.Players.LocalPlayer.Character.Head.CFrame.LookVector * 1
                        ),
                        {CurrentCamera, game.Players.LocalPlayer.Character},
                        false,
                        true,
                        ""
                    )

                    local viewportpointhit, isOnScreen = CurrentCamera:WorldToViewportPoint(hitpos1)
                    local mouse3d = CurrentCamera:WorldToViewportPoint(Legitaimbs.Position)

                    ---

                    local rayhit2, hitpos2 =
                        workspace:FindPartOnRayWithIgnoreList(
                        Ray.new(
                            game.Players[TargetPlayer4legit].Character.Head.Position,
                            game.Players[TargetPlayer4legit].Character.Head.CFrame.LookVector * 1
                        ),
                        {CurrentCamera, game.Players[TargetPlayer4legit].Character},
                        false,
                        true,
                        ""
                    )

                    local viewportpointhit, isOnScreen = CurrentCamera:WorldToViewportPoint(hitpos2)
                    local plr3d = CurrentCamera:WorldToViewportPoint(LocalMouse.Hit.Position)

                    _G.yo = (mouse3d - plr3d).Magnitude
                    print(_G.yo)
                end
            end
        )
    end
)


local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall =
    newcclosure(
    function(...)
        local args = {...}
        if
            uwugangy ~= nil and _G.yo < _G.Amountw and legitaim.Enabled == true and getnamecallmethod() == "FireServer" and
                args[2] == "UpdateMousePos"
         then
            args[3] =
                game.Players[TargetPlayer4legit].Character.Head.Position +
                (game.Players[TargetPlayer4legit].Character.LowerTorso.Velocity * 0.13)
            return old(unpack(args))
             
        end
        return old(...)
    end
)


--[[
39,39,39 
45,45,45 
232,203,255 
20,20,20 
255,255,255

]]
