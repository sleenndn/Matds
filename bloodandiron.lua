local Arceus = Instance.new("ScreenGui")
Arceus.Name = "Arceus"
Arceus.Enabled = true
Arceus.ResetOnSpawn = true
Arceus.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Arceus.DisplayOrder = 999999999

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Noclipping = nil
local Clip = true
local floatName = ""
local speaker = Players.LocalPlayer

local HitBoxesEnabled = false
local HitBoxesTargets = {Players = true, NPCs = false}
local HitBoxesTargetPart = "RootPart"
local HitBoxesExpand = 1
local HitBoxesModified = {}
local HitBoxesLoop = nil

local cmdList = {}

local function addcmd(cmdName, aliases, callback)
    cmdList[cmdName] = {
        aliases = aliases or {},
        func = callback
    }
    for _, alias in ipairs(aliases) do
        cmdList[alias] = {
            aliases = {cmdName},
            func = callback
        }
    end
end

local function execCmd(cmdName, args)
    local cmd = cmdList[cmdName]
    if cmd then
        cmd.func(args or {}, speaker)
    end
end

local function notify(title, content)
    local Notif = Instance.new("TextLabel")
    Notif.Name = "NocliptNotif"
    Notif.Parent = Arceus
    Notif.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Notif.BackgroundTransparency = 0.3
    Notif.Position = UDim2.new(0.5, 0, 0.1, 0)
    Notif.AnchorPoint = Vector2.new(0.5, 0)
    Notif.Size = UDim2.new(0.3, 0, 0.08, 0)
    Notif.Font = Enum.Font.TitilliumWeb
    Notif.Text = string.format("[%s] %s", title, content)
    Notif.TextColor3 = Color3.fromRGB(255, 255, 255)
    Notif.TextScaled = true
    Notif.TextWrapped = true
    local NotifCorner = Instance.new("UICorner")
    NotifCorner.CornerRadius = UDim.new(0.2, 0)
    NotifCorner.Parent = Notif
    task.delay(3, function()
        Notif:Destroy()
    end)
end

addcmd('noclip', {}, function(args, speaker)
    if not speaker.Character then
        notify('穿墙功能', '角色不存在，无法启用穿墙')
        return
    end
    Clip = false
    wait(0.1)
    
    if Noclipping then
        Noclipping:Disconnect()
        Noclipping = nil
    end
    
    local function NoclipLoop()
        if Clip == false and speaker.Character then
            for _, child in pairs(speaker.Character:GetDescendants()) do
                if child:IsA("BasePart") and child.CanCollide and child.Name ~= floatName then
                    child.CanCollide = false
                end
            end
        end
    end
    
    Noclipping = RunService.Stepped:Connect(NoclipLoop)
    
    if args[1] ~= 'nonotify' then
        notify('穿墙功能', '穿墙已启用（点击开关可关闭）')
    end
end)

addcmd('clip', {'unnoclip'}, function(args, speaker)
    if Noclipping then
        Noclipping:Disconnect()
        Noclipping = nil
    end
    Clip = true
    
    if args[1] ~= 'nonotify' then
        notify('穿墙功能', '穿墙已禁用')
    end
end)

addcmd('togglenoclip', {}, function(args, speaker)
    if Clip then
        execCmd('noclip', args)
    else
        execCmd('clip', args)
    end
end)

local function getEntities()
    local entities = {}
    if HitBoxesTargets.Players then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= Players.LocalPlayer and player.Character then
                table.insert(entities, {
                    Targetable = true,
                    Player = true,
                    NPC = false,
                    RootPart = player.Character:FindFirstChild("HumanoidRootPart"),
                    Head = player.Character:FindFirstChild("Head")
                })
            end
        end
    end
    
    if HitBoxesTargets.NPCs then
        for _, npc in pairs(workspace:GetChildren()) do
            if npc:FindFirstChild("Humanoid") and npc ~= Players.LocalPlayer.Character then
                table.insert(entities, {
                    Targetable = true,
                    Player = false,
                    NPC = true,
                    RootPart = npc:FindFirstChild("HumanoidRootPart"),
                    Head = npc:FindFirstChild("Head")
                })
            end
        end
    end
    
    return entities
end

local function startHitBoxes()
    if HitBoxesLoop then
        HitBoxesLoop:Disconnect()
        HitBoxesLoop = nil
    end
    
    HitBoxesLoop = RunService.Stepped:Connect(function()
        if not HitBoxesEnabled then return end
        
        local entities = getEntities()
        for _, entity in pairs(entities) do
            if entity.Targetable then
                local part = entity[HitBoxesTargetPart]
                if part and part:IsA("BasePart") then
                    if not HitBoxesModified[part] then
                        HitBoxesModified[part] = part.Size
                    end
                    part.Size = HitBoxesModified[part] + Vector3.new(HitBoxesExpand, HitBoxesExpand, HitBoxesExpand)
                end
            end
        end
    end)
end

local function stopHitBoxes()
    if HitBoxesLoop then
        HitBoxesLoop:Disconnect()
        HitBoxesLoop = nil
    end
    
    for part, originalSize in pairs(HitBoxesModified) do
        if part and part.Parent then
            part.Size = originalSize
        end
    end
    HitBoxesModified = {}
end

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Parent = Arceus
Main.Active = true
Main.Draggable = true
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, -0.2, 0)
Main.Size = UDim2.new(0.3, 0, 0.3, 0)

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.1, 0)
UICorner.Parent = Main

local Intro = Instance.new("Frame")
Intro.Name = "Intro"
Intro.Parent = Main
Intro.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Intro.ClipsDescendants = true
Intro.Size = UDim2.new(1, 0, 1, 0)
Intro.ZIndex = 2

local UICorner_2 = Instance.new("UICorner")
UICorner_2.CornerRadius = UDim.new(0.1, 0)
UICorner_2.Parent = Intro

local Logo = Instance.new("ImageButton")
Logo.Parent = Intro
Logo.AnchorPoint = Vector2.new(0.5, 0.5)
Logo.BackgroundTransparency = 1
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
Logo.Size = UDim2.new(0.75, 0, 0.75, 0)
Logo.ZIndex = 2
Logo.Image = "http://www.roblox.com/asset/?id=9178187770"
Logo.ScaleType = Enum.ScaleType.Fit
Logo.Active = false

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.Parent = Logo

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Parent = Main
Title.AnchorPoint = Vector2.new(1, 0)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.975, 0, 0.075, 0)
Title.Size = UDim2.new(0.85, 0, 0.155, 0)
Title.Font = Enum.Font.TitilliumWeb
Title.FontFace = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Bold)
Title.RichText = true
Title.Text = "林墨玦 <font color=\"rgb(255, 0, 0)\">|</font> 血与铁专用(自瞄有问题，请等国庆后)"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Center

local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Parent = Main
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.8, 0, 0.1, 0)
Close.Size = UDim2.new(0.15, 0, 0.125, 0)
Close.Font = Enum.Font.FredokaOne
Close.Text = "关闭"
Close.TextColor3 = Color3.fromRGB(255, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
Close.TextXAlignment = Enum.TextXAlignment.Right

local Menu = Instance.new("ScrollingFrame")
Menu.Name = "Menu"
Menu.Parent = Main
Menu.Active = true
Menu.AnchorPoint = Vector2.new(0.5, 1)
Menu.BackgroundTransparency = 1
Menu.AutomaticCanvasSize = Enum.AutomaticSize.Y
Menu.BorderSizePixel = 0
Menu.Position = UDim2.new(0.5, 0, 0.95, 0)
Menu.Size = UDim2.new(0.95, 0, 0.65, 0)
Menu.CanvasSize = UDim2.new(0, 0, 0, 0)
Menu.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
Menu.ScrollBarThickness = Menu.AbsoluteSize.X / 25

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = Menu
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local Toggle = Instance.new("ImageButton")
Toggle.Name = "Toggle"
Toggle.Visible = false
Toggle.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Toggle.Size = UDim2.new(0.95, 0, 0, 50)

local UICorner_3 = Instance.new("UICorner")
UICorner_3.CornerRadius = UDim.new(0.25, 0)
UICorner_3.Parent = Toggle

local Enabled = Instance.new("Frame")
Enabled.Name = "Enabled"
Enabled.Parent = Toggle
Enabled.AnchorPoint = Vector2.new(1, 0.5)
Enabled.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Enabled.Position = UDim2.new(0.975, 0, 0.5, 0)
Enabled.Size = UDim2.new(0.75, 0, 0.75, 0)

local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint_2.Parent = Enabled

local UICorner_4 = Instance.new("UICorner")
UICorner_4.CornerRadius = UDim.new(0.3, 0)
UICorner_4.Parent = Enabled

local Check = Instance.new("Frame")
Check.Name = "Check"
Check.Parent = Enabled
Check.AnchorPoint = Vector2.new(0.5, 0.5)
Check.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Check.Position = UDim2.new(0.5, 0, 0.5, 0)
Check.Size = UDim2.new(0.65, 0, 0.65, 0)

local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint_3.Parent = Check

local UICorner_5 = Instance.new("UICorner")
UICorner_5.CornerRadius = UDim.new(0.3, 0)
UICorner_5.Parent = Check

local Name = Instance.new("TextLabel")
Name.Name = "Name"
Name.Parent = Toggle
Name.AnchorPoint = Vector2.new(0, 0.5)
Name.BackgroundTransparency = 1
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.05, 0, 0.5, 0)
Name.Size = UDim2.new(0.75, 0, 0.8, 0)
Name.Font = Enum.Font.TitilliumWeb
Name.Text = "Script"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 14
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left
Name.TextYAlignment = Enum.TextYAlignment.Bottom

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))
}
UIGradient.Parent = Toggle

local Button = Instance.new("ImageButton")
Button.Name = "Button"
Button.Visible = false
Button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Button.Size = UDim2.new(0.95, 0, 0, 50)

local UICorner_6 = Instance.new("UICorner")
UICorner_6.CornerRadius = UDim.new(0.25, 0)
UICorner_6.Parent = Button

local Name_2 = Instance.new("TextLabel")
Name_2.Name = "Name"
Name_2.Parent = Button
Name_2.AnchorPoint = Vector2.new(0, 0.5)
Name_2.BackgroundTransparency = 1
Name_2.BorderSizePixel = 0
Name_2.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_2.Size = UDim2.new(0.95, 0, 0.82, 0)
Name_2.Font = Enum.Font.TitilliumWeb
Name_2.Text = "Enabled"
Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_2.TextScaled = true
Name_2.TextSize = 14
Name_2.TextWrapped = true
Name_2.TextXAlignment = Enum.TextXAlignment.Left
Name_2.TextYAlignment = Enum.TextYAlignment.Bottom

local UIGradient_2 = Instance.new("UIGradient")
UIGradient_2.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))
}
UIGradient_2.Parent = Button

local tab = Instance.new("Frame")
tab.Name = "Tab"
tab.Visible = false
tab.BackgroundTransparency = 1
tab.Size = UDim2.new(0.95, 0, 0.025, 0)

local ComboElem = Instance.new("ImageButton")
ComboElem.Name = "ComboElem"
ComboElem.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ComboElem.Size = UDim2.new(0.95, 0, 0, 50)
local UICorner_7 = Instance.new("UICorner")
UICorner_7.CornerRadius = UDim.new(0.25, 0)
UICorner_7.Parent = ComboElem
local Name_3 = Instance.new("TextLabel")
Name_3.Name = "Name"
Name_3.Parent = ComboElem
Name_3.AnchorPoint = Vector2.new(0, 0.5)
Name_3.BackgroundTransparency = 1
Name_3.BorderSizePixel = 0
Name_3.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_3.Size = UDim2.new(0.75, 0, 0.8, 0)
Name_3.Font = Enum.Font.TitilliumWeb
Name_3.Text = "Enabled"
Name_3.TextColor3 = Color3.fromRGB(255, 0, 0)
Name_3.TextScaled = true
Name_3.TextSize = 14
Name_3.TextWrapped = true
Name_3.TextXAlignment = Enum.TextXAlignment.Left
Name_3.TextYAlignment = Enum.TextYAlignment.Bottom
local UIGradient_3 = Instance.new("UIGradient")
UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
UIGradient_3.Rotation = 180
UIGradient_3.Parent = ComboElem
local Img = Instance.new("TextLabel")
Img.Name = "Img"
Img.Parent = ComboElem
Img.AnchorPoint = Vector2.new(1, 0.5)
Img.BackgroundTransparency = 1
Img.BorderSizePixel = 0
Img.Position = UDim2.new(0.975, 0, 0.5, 0)
Img.Rotation = 90
Img.Size = UDim2.new(0.75, 0, 0.75, 0)
Img.Font = Enum.Font.FredokaOne
Img.Text = "^"
Img.TextColor3 = Color3.fromRGB(255, 255, 255)
Img.TextScaled = true
Img.TextSize = 14
Img.TextWrapped = true
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint_4.Parent = Img

local ComboBox = Instance.new("ImageButton")
ComboBox.Name = "ComboBox"
ComboBox.Visible = false
ComboBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ComboBox.Size = UDim2.new(0.95, 0, 0, 50)
local UICorner_8 = Instance.new("UICorner")
UICorner_8.CornerRadius = UDim.new(0.25, 0)
UICorner_8.Parent = ComboBox
local Name_4 = Instance.new("TextLabel")
Name_4.Name = "Name"
Name_4.Parent = ComboBox
Name_4.AnchorPoint = Vector2.new(0, 0.5)
Name_4.BackgroundTransparency = 1
Name_4.BorderSizePixel = 0
Name_4.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_4.Size = UDim2.new(0.75, 0, 0.8, 0)
Name_4.Font = Enum.Font.TitilliumWeb
Name_4.Text = "Enabled"
Name_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_4.TextScaled = true
Name_4.TextSize = 14
Name_4.TextWrapped = true
Name_4.TextXAlignment = Enum.TextXAlignment.Left
Name_4.TextYAlignment = Enum.TextYAlignment.Bottom
local UIGradient_4 = Instance.new("UIGradient")
UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
UIGradient_4.Parent = ComboBox
local Img_2 = Instance.new("TextLabel")
Img_2.Name = "Img"
Img_2.Parent = ComboBox
Img_2.AnchorPoint = Vector2.new(1, 0.5)
Img_2.BackgroundTransparency = 1
Img_2.BorderSizePixel = 0
Img_2.Position = UDim2.new(0.975, 0, 0.5, 0)
Img_2.Rotation = 180
Img_2.Size = UDim2.new(0.75, 0, 0.75, 0)
Img_2.Font = Enum.Font.FredokaOne
Img_2.Text = "^"
Img_2.TextColor3 = Color3.fromRGB(255, 0, 0)
Img_2.TextScaled = true
Img_2.TextSize = 14
Img_2.TextWrapped = true
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint_5.Parent = Img_2

local Slider = Instance.new("ImageButton")
Slider.Name = "Slider"
Slider.Visible = false
Slider.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Slider.Size = UDim2.new(0.95, 0, 0, 60)

local UICorner_9 = Instance.new("UICorner")
UICorner_9.CornerRadius = UDim.new(0.25, 0)
UICorner_9.Parent = Slider

local SliderName = Instance.new("TextLabel")
SliderName.Name = "Name"
SliderName.Parent = Slider
SliderName.AnchorPoint = Vector2.new(0, 0.5)
SliderName.BackgroundTransparency = 1
SliderName.BorderSizePixel = 0
SliderName.Position = UDim2.new(0.05, 0, 0.3, 0)
SliderName.Size = UDim2.new(0.9, 0, 0.4, 0)
SliderName.Font = Enum.Font.TitilliumWeb
SliderName.Text = "Slider"
SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderName.TextScaled = true
SliderName.TextSize = 14
SliderName.TextWrapped = true
SliderName.TextXAlignment = Enum.TextXAlignment.Left
SliderName.TextYAlignment = Enum.TextYAlignment.Center

local SliderTrack = Instance.new("Frame")
SliderTrack.Name = "Track"
SliderTrack.Parent = Slider
SliderTrack.AnchorPoint = Vector2.new(0, 0.5)
SliderTrack.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
SliderTrack.BorderSizePixel = 0
SliderTrack.Position = UDim2.new(0.05, 0, 0.7, 0)
SliderTrack.Size = UDim2.new(0.9, 0, 0.15, 0)

local SliderTrackCorner = Instance.new("UICorner")
SliderTrackCorner.CornerRadius = UDim.new(0.5, 0)
SliderTrackCorner.Parent = SliderTrack

local SliderFill = Instance.new("Frame")
SliderFill.Name = "Fill"
SliderFill.Parent = SliderTrack
SliderFill.AnchorPoint = Vector2.new(0, 0.5)
SliderFill.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
SliderFill.BorderSizePixel = 0
SliderFill.Position = UDim2.new(0, 0, 0.5, 0)
SliderFill.Size = UDim2.new(0.5, 0, 1, 0)

local SliderFillCorner = Instance.new("UICorner")
SliderFillCorner.CornerRadius = UDim.new(0.5, 0)
SliderFillCorner.Parent = SliderFill

local SliderValue = Instance.new("TextLabel")
SliderValue.Name = "Value"
SliderValue.Parent = Slider
SliderValue.AnchorPoint = Vector2.new(1, 0.5)
SliderValue.BackgroundTransparency = 1
SliderValue.BorderSizePixel = 0
SliderValue.Position = UDim2.new(0.95, 0, 0.3, 0)
SliderValue.Size = UDim2.new(0.3, 0, 0.4, 0)
SliderValue.Font = Enum.Font.TitilliumWeb
SliderValue.Text = "0"
SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderValue.TextScaled = true
SliderValue.TextSize = 14
SliderValue.TextWrapped = true
SliderValue.TextXAlignment = Enum.TextXAlignment.Right
SliderValue.TextYAlignment = Enum.TextYAlignment.Center

local UIGradient_5 = Instance.new("UIGradient")
UIGradient_5.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))
}
UIGradient_5.Parent = Slider

local elements = 0
local function addSpace(parent)
    local space = tab:Clone()
    space.Parent = parent
    space.LayoutOrder = elements
    space.Visible = true
    elements += 1
end

local function addToggle(name, enabled, callback)
    local newTog = Toggle:Clone()
    newTog:WaitForChild("Enabled"):WaitForChild("Check").Visible = enabled
    newTog:WaitForChild("Name").Text = name
    newTog.Size = UDim2.new(0.95, 0, 0, 50)
    newTog.Name = name
    newTog.Parent = Menu
    newTog.LayoutOrder = elements
    newTog.Visible = true
    
    newTog.MouseButton1Click:Connect(function()
        local currentBtnState = newTog:WaitForChild("Enabled"):WaitForChild("Check").Visible
        local newState = not currentBtnState
        newTog:WaitForChild("Enabled"):WaitForChild("Check").Visible = newState
        callback(newState)
    end)
    
    elements += 1
    addSpace(Menu)
    return newTog
end

local function addComboBox(text, options, callback)
    local newCombo = ComboBox:Clone()
    local enabled = false
    local elems = {}
    local function setBoxState()
        newCombo:WaitForChild("Img").Rotation = enabled and 0 or 180
        for _, elem in ipairs(elems) do
            elem.Visible = enabled
        end
    end
    newCombo.MouseButton1Click:Connect(function()
        enabled = not enabled
        setBoxState()
    end)
    local defaultSel = #options > 0 and options[1] or ""
    newCombo:WaitForChild("Name").Text = text .. ": " .. defaultSel
    newCombo.Size = UDim2.new(0.95, 0, 0, 50)
    newCombo.Name = defaultSel
    newCombo.Parent = Menu
    newCombo.LayoutOrder = elements
    newCombo.Visible = true
    elements += 1
    addSpace(Menu)
    for _, name in ipairs(options) do
        local newElem = ComboElem:Clone()
        table.insert(elems, newElem)
        newElem.MouseButton1Click:Connect(function()
            newCombo:WaitForChild("Name").Text = text .. ": " .. name
            enabled = false
            setBoxState()
            if callback then callback(name) end
        end)
        newElem:WaitForChild("Name").Text = name
        newElem.Size = UDim2.new(0.95, 0, 0, 50)
        newElem.Name = name
        newElem.Parent = Menu
        newElem.LayoutOrder = elements
        newElem.Visible = false
        elements += 1
        addSpace(Menu)
    end
    return newCombo
end

local function addSlider(name, min, max, defaultValue, suffix, callback)
    local newSlider = Slider:Clone()
    newSlider:WaitForChild("Name").Text = name
    newSlider.Size = UDim2.new(0.95, 0, 0, 60)
    newSlider.Name = name
    newSlider.Parent = Menu
    newSlider.LayoutOrder = elements
    newSlider.Visible = true
    
    local track = newSlider:WaitForChild("Track")
    local fill = track:WaitForChild("Fill")
    local valueLabel = newSlider:WaitForChild("Value")
    
    local currentValue = defaultValue or min
    local function updateSlider(value)
        currentValue = math.clamp(value, min, max)
        local percentage = (currentValue - min) / (max - min)
        fill.Size = UDim2.new(percentage, 0, 1, 0)
        
        local displayValue = currentValue
        if suffix then
            if type(suffix) == "function" then
                valueLabel.Text = tostring(displayValue) .. " " .. suffix(displayValue)
            else
                valueLabel.Text = tostring(displayValue) .. " " .. suffix
            end
        else
            valueLabel.Text = tostring(displayValue)
        end
        
        if callback then
            callback(currentValue)
        end
    end
    
    updateSlider(defaultValue or min)
    
    local function onMouseInput(input)
        local relativeX = (input.Position.X - track.AbsolutePosition.X) / track.AbsoluteSize.X
        local value = min + (max - min) * math.clamp(relativeX, 0, 1)
        updateSlider(value)
    end
    
    newSlider.MouseButton1Down:Connect(function()
        local connection
        connection = game:GetService("UserInputService").InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                onMouseInput(input)
            end
        end)
        
        game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                connection:Disconnect()
            end
        end)
    end)
    
    elements += 1
    addSpace(Menu)
    return newSlider, updateSlider
end

addToggle("瞄准辅助开关", false, function(isEnabled)
    if isEnabled then
        notify("瞄准辅助", "瞄准辅助已启用")
    else
        notify("瞄准辅助", "瞄准辅助已禁用")
    end
end)

addToggle("团队检测", false, function(isEnabled)
    teamcheck = isEnabled
    notify("团队设置", isEnabled and "仅瞄准非队友" or "取消团队检测")
end)

addComboBox("瞄准部位", {"Head", "Torso"}, function(selection)
    aimpart = selection
    notify("瞄准设置", "当前瞄准部位：" .. selection)
end)

addToggle("穿墙功能", true, function(isEnabled)
    Clip = not isEnabled
    if isEnabled then
        execCmd("noclip")
    else
        execCmd("clip")
    end
end)

local hitboxesToggle = addToggle("HitBoxes扩展(重生后开启)", false, function(isEnabled)
    HitBoxesEnabled = isEnabled
    if isEnabled then
        startHitBoxes()
        notify("HitBoxes", "HitBoxes扩展已启用")
    else
        stopHitBoxes()
        notify("HitBoxes", "HitBoxes扩展已禁用")
    end
end)

addComboBox("HitBoxes目标", {"玩家", "NPC"}, function(selection)
    if selection == "玩家" then
        HitBoxesTargets.Players = true
        HitBoxesTargets.NPCs = false
    else
        HitBoxesTargets.Players = true
        HitBoxesTargets.NPCs = true
    end
    notify("HitBoxes", "目标设置为：" .. selection)
    
    if HitBoxesEnabled then
        stopHitBoxes()
        startHitBoxes()
    end
end)

addComboBox("HitBox部位", {"RootPart", "Head"}, function(selection)
    HitBoxesTargetPart = selection
    notify("HitBoxs", "部位设置为：" .. selection)
    
    if HitBoxesEnabled then
        stopHitBoxes()
        startHitBoxes()
    end
end)

local hitboxesSlider, updateHitBoxesSlider = addSlider("HitBox范围", 0, 30, 8, function(val)
    return val == 8 and "stud" or 30 and "studs"
end, function(value)
    HitBoxesExpand = value
    notify("HitBoxs", "范围设置为：" .. value .. (value == 8 and " stud" or 30 and " studs"))
    
    if HitBoxesEnabled then
        stopHitBoxes()
        startHitBoxes()
    end
end)

local TweenService = game:GetService("TweenService")

Close.MouseButton1Click:Connect(function()
    Logo.Active = true
    
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
    task.wait(0.3)
    
    Logo:TweenSizeAndPosition(
        UDim2.fromScale(0.75, 0.75),
        UDim2.fromScale(0.5, 0.5),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.25, true
    )
    task.wait(0.3)
    
    Main:TweenSize(
        UDim2.fromScale(0.1, 0.175),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.25, true
    )
    task.wait(0.3)
    
    for _, obj in pairs(Main:GetChildren()) do
        if obj:IsA("GuiObject") and obj ~= Intro then
            obj.Visible = false
        end
    end
    
    TweenService:Create(Logo, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageTransparency = 0.8}):Play()
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
    TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0.8}):Play()
end)

Logo.MouseButton1Click:Connect(function()
    Logo.Active = false
    
    TweenService:Create(Logo, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageTransparency = 0}):Play()
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
    TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
    task.wait(0.3)
    
    Main:TweenSize(
        UDim2.fromScale(0.3, 0.3),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.25, true
    )
    task.wait(0.3)
    
    Logo:TweenSizeAndPosition(
        UDim2.fromScale(0.175, 0.175),
        UDim2.fromScale(0.075, 0.15),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.25, true
    )
    
    for _, obj in pairs(Main:GetChildren()) do
        if obj:IsA("GuiObject") and obj ~= Intro then
            obj.Visible = true
        end
    end
    task.wait(0.3)
    
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
end)

local function uiparent()
    local success, parent = pcall(function()
        return gethui()
    end)
    if not success then
        return game:GetService("CoreGui")
    end
    return parent
end

local success, err = pcall(function()
    Arceus.Parent = uiparent()
end)
if not success then
    Arceus.Parent = game:GetService("Players").LocalPlayer.PlayerGui
end

Main:TweenPosition(
    UDim2.fromScale(0.5, 0.5),
    Enum.EasingDirection.In,
    Enum.EasingStyle.Quad,
    1, true
)
task.wait(1.5)

Logo:TweenSizeAndPosition(
    UDim2.fromScale(0.175, 0.175),
    UDim2.fromScale(0.075, 0.15),
    Enum.EasingDirection.In,
    Enum.EasingStyle.Quad,
    1, true
)
task.wait(1.5)

TweenService:Create(Intro, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()

game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
    stopHitBoxes()
    HitBoxesEnabled = false
    if hitboxesToggle then
        hitboxesToggle:WaitForChild("Enabled"):WaitForChild("Check").Visible = false
    end
end)

game:GetService("Players").LocalPlayer.CharacterRemoving:Connect(function()
    stopHitBoxes()
end)
