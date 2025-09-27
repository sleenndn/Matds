local MY_Andlua=(function()


local Char={}
local STRING={}
local _Char=(function(_)
Char["\n\x00"]=_
for i=0,255 do
Char[i]=string.char(i)
Char[(Char[i])]=i
end
end)(pairs)
local String_Char=function(VirMox)
if(STRING[VirMox])then;return(STRING[VirMox])end
local res=''
for index,value in Char["\n\x00"](VirMox) do
res=res..Char[(value)]
end
STRING[VirMox]=res
return(res)
end

local _Andlua=(function(_Andlua,_ENV)
local Arceus = Instance.new((String_Char((function();
local VirMox={219,1071,6654,131,33,4585,2410,10,-49}
local VirMox=(function(tab);return({tab[1]-136,tab[2]~1100,tab[3]~6540,tab[4]-30,tab[5]+68,tab[6]~4487,tab[7]~2349,tab[8]+107,tab[9]+154})end)(VirMox)
return VirMox
end)()))
)
Arceus.Name = (String_Char((function();
local VirMox={226,-74,-56,8702,-113,12}
local VirMox=(function(tab);return({tab[1]-161,tab[2]+188,tab[3]+155,tab[4]~8603,tab[5]+230,tab[6]+103})end)(VirMox)
return VirMox
end)()))
                      Arceus.Enabled = true                       Arceus.ResetOnSpawn = true                  Arceus.ZIndexBehavior = Enum.ZIndexBehavior.Sibling  Arceus.DisplayOrder = 999999999             
local RunService = game:GetService((String_Char((function();
local VirMox={7398,9614,-85,8066,8868,-105,228,260,-90,8564}
local VirMox=(function(tab);return({tab[1]~7348,tab[2]~9723,tab[3]+195,tab[4]~8145,tab[5]~8897,tab[6]+219,tab[7]-110,tab[8]-155,tab[9]+189,tab[10]~8465})end)(VirMox)
return VirMox
end)()))
)  local Players = game:GetService((String_Char((function();
local VirMox={8693,-39,197,9,4275,-39,101}
local VirMox=(function(tab);return({tab[1]~8613,tab[2]+147,tab[3]-100,tab[4]+112,tab[5]~4310,tab[6]+153,tab[7]+14})end)(VirMox)
return VirMox
end)()))
)        local Noclipping = nil                           local Clip = true                                local floatName = ""                             local speaker = Players.LocalPlayer              
local HitBoxesEnabled = false
local HitBoxesTargets = {Players = true, NPCs = false}
local HitBoxesTargetPart = (String_Char((function();
local VirMox={1,-162,2587,4663,87,120,327,-78}
local VirMox=(function(tab);return({tab[1]+81,tab[2]+273,tab[3]~2676,tab[4]~4675,tab[5]-7,tab[6]-23,tab[7]-213,tab[8]+194})end)(VirMox)
return VirMox
end)()))

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
        cmd.func(args or {}, speaker)      end
end

local function notify(title, content)
        local Notif = Instance.new((String_Char((function();
local VirMox={7940,389,-184,321,236,80,6367,-107,163}
local VirMox=(function(tab);return({tab[1]~8016,tab[2]-288,tab[3]+304,tab[4]~309,tab[5]-160,tab[6]+17,tab[7]~6333,tab[8]+208,tab[9]-55})end)(VirMox)
return VirMox
end)()))
)
    Notif.Name = (String_Char((function();
local VirMox={79,385,202,-106,6990,115,85,39,-126,3498,8492,164}
local VirMox=(function(tab);return({tab[1]-1,tab[2]-274,tab[3]-103,tab[4]+214,tab[5]~6951,tab[6]-3,tab[7]+31,tab[8]+39,tab[9]+237,tab[10]~3550,tab[11]~8517,tab[12]-62})end)(VirMox)
return VirMox
end)()))

    Notif.Parent = Arceus
    Notif.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Notif.BackgroundTransparency = 0.3
    Notif.Position = UDim2.new(0.5, 0, 0.1, 0)
    Notif.AnchorPoint = Vector2.new(0.5, 0)
    Notif.Size = UDim2.new(0.3, 0, 0.08, 0)
    Notif.Font = Enum.Font.TitilliumWeb
    Notif.Text = _ENV[(String_Char((function();
local VirMox={14,342,6908,-106,-122,352}
local VirMox=(function(tab);return({tab[1]+101,tab[2]-226,tab[3]~6798,tab[4]+211,tab[5]+232,tab[6]-249})end)(VirMox)
return VirMox
end)()))
].format((String_Char((function();
local VirMox={281,4579,-158,6615,29,-35,-201}
local VirMox=(function(tab);return({tab[1]-190,tab[2]~4550,tab[3]+273,tab[4]~6538,tab[5]+3,tab[6]+72,tab[7]+316})end)(VirMox)
return VirMox
end)()))
, title, content)
    Notif.TextColor3 = Color3.fromRGB(255, 255, 255)
    Notif.TextScaled = true
    Notif.TextWrapped = true
        local NotifCorner = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
    NotifCorner.CornerRadius = UDim.new(0.2, 0)
    NotifCorner.Parent = Notif
        task.delay(3, function()
        Notif:Destroy()
    end)
end

addcmd((String_Char((function();
local VirMox={1052,6140,7294,6714,-96,387}
local VirMox=(function(tab);return({tab[1]~1138,tab[2]~6035,tab[3]~7197,tab[4]~6742,tab[5]+201,tab[6]-275})end)(VirMox)
return VirMox
end)()))
, {}, function(args, speaker)
    if not speaker.Character then
        notify((String_Char((function();
local VirMox={9614,27,-293,123,-194,50,661,9218,-127,8606,4996,9944}
local VirMox=(function(tab);return({tab[1]~9577,tab[2]+142,tab[3]+484,tab[4]+106,tab[5]+356,tab[6]+103,tab[7]~624,tab[8]~9352,tab[9]+286,tab[10]~8566,tab[11]~4871,tab[12]~9829})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={687,440,7995,818,482,557,-214,78,-190,5124,-11,7400,2181,4,96,10208,70,461,3412,-192,87,8429,3237,411,6940,-263,6186,128,-75,628,-187,335,-178,13,427,8498}
local VirMox=(function(tab);return({tab[1]-455,tab[2]-273,tab[3]~8105,tab[4]-586,tab[5]-345,tab[6]-379,tab[7]+442,tab[8]~246,tab[9]+331,tab[10]~5345,tab[11]+184,tab[12]~7280,tab[13]~2144,tab[14]+152,tab[15]+72,tab[16]~9999,tab[17]~250,tab[18]-321,tab[19]~3506,tab[20]+343,tab[21]+73,tab[22]~8203,tab[23]~3094,tab[24]-262,tab[25]~7161,tab[26]+407,tab[27]~6277,tab[28]+103,tab[29]+223,tab[30]-460,tab[31]+418,tab[32]-166,tab[33]+369,tab[34]+216,tab[35]-265,tab[36]~8619})end)(VirMox)
return VirMox
end)()))
)
        return
    end
    Clip = false      wait(0.1)         
        if Noclipping then
        Noclipping:Disconnect()
        Noclipping = nil
    end
    
        local function NoclipLoop()
                if Clip == false and speaker.Character then
            for _, child in pairs(speaker.Character:GetDescendants()) do
                                if child:IsA((String_Char((function();
local VirMox={133,326,215,-24,23,19,208,-172}
local VirMox=(function(tab);return({tab[1]-67,tab[2]-229,tab[3]-100,tab[4]+125,tab[5]+57,tab[6]+78,tab[7]-94,tab[8]+288})end)(VirMox)
return VirMox
end)()))
) and child.CanCollide and child.Name ~= floatName then
                    child.CanCollide = false
                end
            end
        end
    end
    
        Noclipping = RunService.Stepped:Connect(NoclipLoop)
    
        if args[1] ~= (String_Char((function();
local VirMox={6581,189,-87,129,7507,324,-58,6334}
local VirMox=(function(tab);return({tab[1]~6619,tab[2]-78,tab[3]+197,tab[4]-18,tab[5]~7463,tab[6]-219,tab[7]+160,tab[8]~6343})end)(VirMox)
return VirMox
end)()))
 then
        notify((String_Char((function();
local VirMox={9614,27,-293,123,-194,50,661,9218,-127,8606,4996,9944}
local VirMox=(function(tab);return({tab[1]~9577,tab[2]+142,tab[3]+484,tab[4]+106,tab[5]+356,tab[6]+103,tab[7]~624,tab[8]~9352,tab[9]+286,tab[10]~8566,tab[11]~4871,tab[12]~9829})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={-70,656,-207,104,634,46,5589,705,542,508,160,-163,8024,472,-257,190,7853,260,-355,519,6784,303,-161,3753,-11,3674,119,4837,-34,676,7669,385,439,599,329,613,625,259,421,-18,-107,3827}
local VirMox=(function(tab);return({tab[1]+301,tab[2]-487,tab[3]+398,tab[4]+125,tab[5]-472,tab[6]+107,tab[7]~5424,tab[8]-522,tab[9]-364,tab[10]-279,tab[11]-16,tab[12]+338,tab[13]~8127,tab[14]-324,tab[15]+425,tab[16]+49,tab[17]~7697,tab[18]-124,tab[19]+586,tab[20]-389,tab[21]~6713,tab[22]-74,tab[23]+296,tab[24]~3602,tab[25]+240,tab[26]~3814,tab[27]+9,tab[28]~4608,tab[29]+167,tab[30]-497,tab[31]~7440,tab[32]-242,tab[33]~280,tab[34]-370,tab[35]-196,tab[36]-434,tab[37]-392,tab[38]-108,tab[39]-248,tab[40]+257,tab[41]+295,tab[42]~3706})end)(VirMox)
return VirMox
end)()))
)
    end
end)

addcmd((String_Char((function();
local VirMox={6581,-78,415,254}
local VirMox=(function(tab);return({tab[1]~6614,tab[2]+186,tab[3]-310,tab[4]-142})end)(VirMox)
return VirMox
end)()))
, {(String_Char((function();
local VirMox={9193,-61,-8,444,218,396,7344,6046}
local VirMox=(function(tab);return({tab[1]~9116,tab[2]+171,tab[3]+118,tab[4]-333,tab[5]-119,tab[6]-288,tab[7]~7385,tab[8]~6126})end)(VirMox)
return VirMox
end)()))
}, function(args, speaker)
        if Noclipping then
        Noclipping:Disconnect()
        Noclipping = nil
    end
    Clip = true      
        if args[1] ~= (String_Char((function();
local VirMox={6581,189,-87,129,7507,324,-58,6334}
local VirMox=(function(tab);return({tab[1]~6619,tab[2]-78,tab[3]+197,tab[4]-18,tab[5]~7463,tab[6]-219,tab[7]+160,tab[8]~6343})end)(VirMox)
return VirMox
end)()))
 then
        notify((String_Char((function();
local VirMox={9614,27,-293,123,-194,50,661,9218,-127,8606,4996,9944}
local VirMox=(function(tab);return({tab[1]~9577,tab[2]+142,tab[3]+484,tab[4]+106,tab[5]+356,tab[6]+103,tab[7]~624,tab[8]~9352,tab[9]+286,tab[10]~8566,tab[11]~4871,tab[12]~9829})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={719,8896,-290,3001,-81,23,776,-342,7367,-382,1745,3104,321,804,599}
local VirMox=(function(tab);return({tab[1]-488,tab[2]~8809,tab[3]+481,tab[4]~2908,tab[5]+243,tab[6]+130,tab[7]-547,tab[8]+525,tab[9]~7285,tab[10]+613,tab[11]~1655,tab[12]~3233,tab[13]-90,tab[14]~944,tab[15]-431})end)(VirMox)
return VirMox
end)()))
)
    end
end)

addcmd((String_Char((function();
local VirMox={253,142,295,3452,4430,131,-92,-166,9959,-161,7976,302}
local VirMox=(function(tab);return({tab[1]-137,tab[2]~225,tab[3]-192,tab[4]~3355,tab[5]~4386,tab[6]-30,tab[7]+202,tab[8]+277,tab[9]~9860,tab[10]+269,tab[11]~8001,tab[12]-190})end)(VirMox)
return VirMox
end)()))
, {}, function(args, speaker)
    if Clip then
        execCmd((String_Char((function();
local VirMox={1052,6140,7294,6714,-96,387}
local VirMox=(function(tab);return({tab[1]~1138,tab[2]~6035,tab[3]~7197,tab[4]~6742,tab[5]+201,tab[6]-275})end)(VirMox)
return VirMox
end)()))
, args)      else
        execCmd((String_Char((function();
local VirMox={6581,-78,415,254}
local VirMox=(function(tab);return({tab[1]~6614,tab[2]+186,tab[3]-310,tab[4]-142})end)(VirMox)
return VirMox
end)()))
, args)       end
end)

local function getEntities()
    local entities = {}
        if HitBoxesTargets.Players then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= Players.LocalPlayer and player.Character then
                _ENV[(String_Char((function();
local VirMox={81,-117,8923,288,249}
local VirMox=(function(tab);return({tab[1]+35,tab[2]+214,tab[3]~8889,tab[4]-180,tab[5]-148})end)(VirMox)
return VirMox
end)()))
].insert(entities, {
                    Targetable = true,
                    Player = true,
                    NPC = false,
                    RootPart = player.Character:FindFirstChild((String_Char((function();
local VirMox={211,6180,359,122,5086,9756,275,2149,-132,405,185,299,9224,479,199,6628}
local VirMox=(function(tab);return({tab[1]-139,tab[2]~6225,tab[3]-250,tab[4]-25,tab[5]~5040,tab[6]~9843,tab[7]-170,tab[8]~2049,tab[9]+214,tab[10]-294,tab[11]-74,tab[12]~351,tab[13]~9304,tab[14]~446,tab[15]-85,tab[16]~6544})end)(VirMox)
return VirMox
end)()))
),
                    Head = player.Character:FindFirstChild((String_Char((function();
local VirMox={47,10,9968,3698}
local VirMox=(function(tab);return({tab[1]+25,tab[2]+91,tab[3]~9873,tab[4]~3606})end)(VirMox)
return VirMox
end)()))
)
                })
            end
        end
    end
    
        if HitBoxesTargets.NPCs then
                for _, npc in pairs(workspace:GetChildren()) do
            if npc:FindFirstChild((String_Char((function();
local VirMox={4011,8609,-84,264,-164,118,387,20}
local VirMox=(function(tab);return({tab[1]~4067,tab[2]~8660,tab[3]+193,tab[4]-167,tab[5]+274,tab[6]-7,tab[7]-282,tab[8]+80})end)(VirMox)
return VirMox
end)()))
) and npc ~= Players.LocalPlayer.Character then
                _ENV[(String_Char((function();
local VirMox={81,-117,8923,288,249}
local VirMox=(function(tab);return({tab[1]+35,tab[2]+214,tab[3]~8889,tab[4]-180,tab[5]-148})end)(VirMox)
return VirMox
end)()))
].insert(entities, {
                    Targetable = true,
                    Player = false,
                    NPC = true,
                    RootPart = npc:FindFirstChild((String_Char((function();
local VirMox={211,6180,359,122,5086,9756,275,2149,-132,405,185,299,9224,479,199,6628}
local VirMox=(function(tab);return({tab[1]-139,tab[2]~6225,tab[3]-250,tab[4]-25,tab[5]~5040,tab[6]~9843,tab[7]-170,tab[8]~2049,tab[9]+214,tab[10]-294,tab[11]-74,tab[12]~351,tab[13]~9304,tab[14]~446,tab[15]-85,tab[16]~6544})end)(VirMox)
return VirMox
end)()))
),
                    Head = npc:FindFirstChild((String_Char((function();
local VirMox={47,10,9968,3698}
local VirMox=(function(tab);return({tab[1]+25,tab[2]+91,tab[3]~9873,tab[4]~3606})end)(VirMox)
return VirMox
end)()))
)
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
                if part and part:IsA((String_Char((function();
local VirMox={133,326,215,-24,23,19,208,-172}
local VirMox=(function(tab);return({tab[1]-67,tab[2]-229,tab[3]-100,tab[4]+125,tab[5]+57,tab[6]+78,tab[7]-94,tab[8]+288})end)(VirMox)
return VirMox
end)()))
) then
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

local Main = Instance.new((String_Char((function();
local VirMox={163,337,222,1603,380}
local VirMox=(function(tab);return({tab[1]-93,tab[2]-223,tab[3]-125,tab[4]~1582,tab[5]-279})end)(VirMox)
return VirMox
end)()))
)
Main.Name = (String_Char((function();
local VirMox={-131,497,7706,-77}
local VirMox=(function(tab);return({tab[1]+208,tab[2]~400,tab[3]~7795,tab[4]+187})end)(VirMox)
return VirMox
end)()))

Main.Parent = Arceus                        Main.Active = true                          Main.Draggable = true                       Main.AnchorPoint = Vector2.new(0.5, 0.5)     Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)  Main.BorderSizePixel = 0                    Main.Position = UDim2.new(0.5, 0, -.2, 0)  Main.Size = UDim2.new(0.3, 0, 0.3, 0)        
local UICorner = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
UICorner.CornerRadius = UDim.new(0.1, 0)    UICorner.Parent = Main

local Intro = Instance.new((String_Char((function();
local VirMox={163,337,222,1603,380}
local VirMox=(function(tab);return({tab[1]-93,tab[2]-223,tab[3]-125,tab[4]~1582,tab[5]-279})end)(VirMox)
return VirMox
end)()))
)
Intro.Name = (String_Char((function();
local VirMox={123,-48,5718,11,287}
local VirMox=(function(tab);return({tab[1]-50,tab[2]+158,tab[3]~5666,tab[4]+103,tab[5]-176})end)(VirMox)
return VirMox
end)()))

Intro.Parent = Main                          Intro.BackgroundColor3 = Color3.fromRGB(40, 40, 40)  Intro.ClipsDescendants = true               Intro.Size = UDim2.new(1, 0, 1, 0)          Intro.ZIndex = 2                            
local UICorner_2 = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
UICorner_2.CornerRadius = UDim.new(0.1, 0)
UICorner_2.Parent = Intro

local Logo = Instance.new((String_Char((function();
local VirMox={207,8867,-123,-158,6475,2470,446,205,7323,4981,2495}
local VirMox=(function(tab);return({tab[1]-134,tab[2]~8910,tab[3]+220,tab[4]+261,tab[5]~6446,tab[6]~2532,tab[7]-329,tab[8]-89,tab[9]~7407,tab[10]~4890,tab[11]~2513})end)(VirMox)
return VirMox
end)()))
)
Logo.Parent = Intro                          Logo.AnchorPoint = Vector2.new(0.5, 0.5)     Logo.BackgroundTransparency = 1             Logo.BorderSizePixel = 0                    Logo.Position = UDim2.new(0.5, 0, 0.5, 0)    Logo.Size = UDim2.new(0.75, 0, 0.75, 0)      Logo.ZIndex = 2                             Logo.Image = (String_Char((function();
local VirMox={133,8349,2525,-189,3343,-25,8607,422,377,-93,1918,367,430,322,182,-195,-128,8029,197,5367,24,-61,44,440,143,68,154,-63,3102,-152,3826,18,-74,-29,214,26,-65,8027,634,6999,4677,574}
local VirMox=(function(tab);return({tab[1]-29,tab[2]~8425,tab[3]~2473,tab[4]+301,tab[5]~3381,tab[6]+72,tab[7]~8624,tab[8]-303,tab[9]-258,tab[10]+212,tab[11]~1872,tab[12]-253,tab[13]-319,tab[14]-224,tab[15]-74,tab[16]+306,tab[17]+248,tab[18]~8051,tab[19]-98,tab[20]~5272,tab[21]+85,tab[22]+108,tab[23]+53,tab[24]-325,tab[25]-28,tab[26]+33,tab[27]-38,tab[28]+110,tab[29]~3105,tab[30]+257,tab[31]~3734,tab[32]+43,tab[33]+131,tab[34]+78,tab[35]-159,tab[36]+30,tab[37]+114,tab[38]~8035,tab[39]~589,tab[40]~7008,tab[41]~4722,tab[42]~526})end)(VirMox)
return VirMox
end)()))
  Logo.ScaleType = Enum.ScaleType.Fit         Logo.Active = false                         
local UIAspectRatioConstraint = Instance.new((String_Char((function();
local VirMox={107,863,200,422,7861,-22,-179,-32,290,1978,-15,-90,291,202,364,-18,333,719,3637,3861,244,41,-152}
local VirMox=(function(tab);return({tab[1]-22,tab[2]~790,tab[3]-135,tab[4]-307,tab[5]~7877,tab[6]+123,tab[7]+278,tab[8]+148,tab[9]-208,tab[10]~2011,tab[11]+131,tab[12]+195,tab[13]-180,tab[14]-135,tab[15]-253,tab[16]+128,tab[17]-218,tab[18]~699,tab[19]~3655,tab[20]~3956,tab[21]-139,tab[22]+69,tab[23]+268})end)(VirMox)
return VirMox
end)()))
)
UIAspectRatioConstraint.Parent = Logo

local Title = Instance.new((String_Char((function();
local VirMox={7940,389,-184,321,236,80,6367,-107,163}
local VirMox=(function(tab);return({tab[1]~8016,tab[2]-288,tab[3]+304,tab[4]~309,tab[5]-160,tab[6]+17,tab[7]~6333,tab[8]+208,tab[9]-55})end)(VirMox)
return VirMox
end)()))
)
Title.Name = (String_Char((function();
local VirMox={222,8499,583,374,29}
local VirMox=(function(tab);return({tab[1]-138,tab[2]~8538,tab[3]~563,tab[4]-266,tab[5]+72})end)(VirMox)
return VirMox
end)()))

Title.Parent = Main                          Title.AnchorPoint = Vector2.new(1, 0)        Title.BackgroundTransparency = 1             Title.BorderSizePixel = 0                    Title.Position = UDim2.new(0.975, 0, 0.075, 0)  Title.Size = UDim2.new(0.85, 0, 0.155, 0)    Title.Font = Enum.Font.TitilliumWeb          Title.FontFace = Font.new((String_Char((function();
local VirMox={269,3479,388,-144,8841,130,211,-49,-4,51,12,8208,117,6415,363,-216,28,62,65,-48,107,210,-169,-113,3299,186,9614,347,2023,9066,4564,5154,6078,1404,218,119,42,58,2310,185,5869,4060,68}
local VirMox=(function(tab);return({tab[1]-155,tab[2]~3573,tab[3]-268,tab[4]+241,tab[5]~8954,tab[6]-15,tab[7]-110,tab[8]+165,tab[9]+62,tab[10]-4,tab[11]+35,tab[12]~8310,tab[13]-6,tab[14]~6497,tab[15]-247,tab[16]+331,tab[17]+19,tab[18]+40,tab[19]+32,tab[20]+157,tab[21]-2,tab[22]-102,tab[23]+274,tab[24]+214,tab[25]~3216,tab[26]-139,tab[27]~9690,tab[28]-242,tab[29]~1939,tab[30]~8963,tab[31]~4536,tab[32]~5198,tab[33]~6103,tab[34]~1289,tab[35]-109,tab[36]-32,tab[37]+59,tab[38]+40,tab[39]~2344,tab[40]-79,tab[41]~5790,tab[42]~4019,tab[43]+42})end)(VirMox)
return VirMox
end)()))
, Enum.FontWeight.Bold)  Title.RichText = true                       Title.Text = (String_Char((function();
local VirMox={534,-260,191,87,184,451,5298,-103,5804,96,-42,-180,6463,-88,934,27,7252,1721,8559,426,448,-94,-46,8431,310,4015,-50,85,9502,-5,-74,4062,142,-10,92,42,-35,105,5431,5501,3218,40,390,6922,264,297,235,122,532,3145,462,296,-306,28,615,2146,3611,283,3715,445,7533,-64,7999,265,180,446,201,806,186,268,902,-162,-42,296,195,-192,622,7435,165,1774,1617,215,162,375,49,193,89,122,8698,68,-193,5876,1531,361,571,568,2098,161}
local VirMox=(function(tab);return({tab[1]-304,tab[2]+418,tab[3]-40,tab[4]+142,tab[5]~26,tab[6]-283,tab[7]~5205,tab[8]+245,tab[9]~5642,tab[10]-64,tab[11]+102,tab[12]+282,tab[13]~6480,tab[14]+198,tab[15]~978,tab[16]+5,tab[17]~7223,tab[18]~1750,tab[19]~8451,tab[20]-315,tab[21]-334,tab[22]+155,tab[23]+80,tab[24]~8349,tab[25]-207,tab[26]~4045,tab[27]+90,tab[28]-35,tab[29]~9515,tab[30]+58,tab[31]+118,tab[32]~4094,tab[33]-94,tab[34]+54,tab[35]-60,tab[36]+6,tab[37]+76,tab[38]-71,tab[39]~5385,tab[40]~5377,tab[41]~3246,tab[42]+7,tab[43]-288,tab[44]~7013,tab[45]-154,tab[46]-181,tab[47]-173,tab[48]-90,tab[49]-300,tab[50]~3304,tab[51]-334,tab[52]-68,tab[53]+490,tab[54]+114,tab[55]-382,tab[56]~2289,tab[57]~3738,tab[58]-55,tab[59]~3643,tab[60]-298,tab[61]~7562,tab[62]+212,tab[63]~8087,tab[64]~289,tab[65]+52,tab[66]-311,tab[67]-31,tab[68]-575,tab[69]-28,tab[70]-136,tab[71]-672,tab[72]+318,tab[73]+179,tab[74]-63,tab[75]-44,tab[76]+366,tab[77]-389,tab[78]~7593,tab[79]-13,tab[80]~1537,tab[81]~1773,tab[82]-75,tab[83]+70,tab[84]-200,tab[85]+134,tab[86]+38,tab[87]+84,tab[88]+15,tab[89]~8479,tab[90]+87,tab[91]+382,tab[92]~5649,tab[93]~1345,tab[94]-227,tab[95]-342,tab[96]-424,tab[97]~2236,tab[98]-120})end)(VirMox)
return VirMox
end)()))
  Title.TextColor3 = Color3.fromRGB(255, 255, 255)  Title.TextScaled = true                     Title.TextSize = 14                         Title.TextWrapped = true                    Title.TextXAlignment = Enum.TextXAlignment.Left  Title.TextYAlignment = Enum.TextYAlignment.Center  
local Close = Instance.new((String_Char((function();
local VirMox={4309,265,-180,4856,145,-29,5568,74,5514,307}
local VirMox=(function(tab);return({tab[1]~4225,tab[2]-164,tab[3]+300,tab[4]~4748,tab[5]-79,tab[6]+146,tab[7]~5556,tab[8]+42,tab[9]~5605,tab[10]-197})end)(VirMox)
return VirMox
end)()))
)
Close.Name = (String_Char((function();
local VirMox={166,126,-157,409,7}
local VirMox=(function(tab);return({tab[1]-99,tab[2]-18,tab[3]+268,tab[4]-294,tab[5]+94})end)(VirMox)
return VirMox
end)()))

Close.Parent = Main                          Close.BackgroundTransparency = 1             Close.BorderSizePixel = 0                    Close.Position = UDim2.new(0.8, 0, 0.1, 0)   Close.Size = UDim2.new(0.15, 0, 0.125, 0)    Close.Font = Enum.Font.FredokaOne            Close.Text = (String_Char((function();
local VirMox={278,439,1171,231,239,249}
local VirMox=(function(tab);return({tab[1]-49,tab[2]-306,tab[3]~1056,tab[4]+2,tab[5]-88,tab[6]-76})end)(VirMox)
return VirMox
end)()))
                             Close.TextColor3 = Color3.fromRGB(255, 0, 0) Close.TextScaled = true                     Close.TextSize = 14                          Close.TextWrapped = true                     Close.TextXAlignment = Enum.TextXAlignment.Right  
local Menu = Instance.new((String_Char((function();
local VirMox={-34,248,672,4641,407,121,364,106,145,9303,4927,3846,9140,4760}
local VirMox=(function(tab);return({tab[1]+117,tab[2]~155,tab[3]~722,tab[4]~4686,tab[5]-299,tab[6]-13,tab[7]-259,tab[8]+4,tab[9]-42,tab[10]~9233,tab[11]~4941,tab[12]~3943,tab[13]~9177,tab[14]~4861})end)(VirMox)
return VirMox
end)()))
)
Menu.Name = (String_Char((function();
local VirMox={4480,-23,312,308}
local VirMox=(function(tab);return({tab[1]~4557,tab[2]+124,tab[3]-202,tab[4]-191})end)(VirMox)
return VirMox
end)()))

Menu.Parent = Main                          Menu.Active = true                          Menu.AnchorPoint = Vector2.new(0.5, 1)       Menu.BackgroundTransparency = 1             Menu.AutomaticCanvasSize = Enum.AutomaticSize.Y  Menu.BorderSizePixel = 0                    Menu.Position = UDim2.new(0.5, 0, 0.95, 0)  Menu.Size = UDim2.new(0.95, 0, 0.65, 0)      Menu.CanvasSize = UDim2.new(0, 0, 0, 0)      Menu.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)  Menu.ScrollBarThickness = Menu.AbsoluteSize.X / 25  
local UIListLayout = Instance.new((String_Char((function();
local VirMox={-1,236,-145,3704,-74,-202,6493,176,7206,-20,-201,148}
local VirMox=(function(tab);return({tab[1]+86,tab[2]-163,tab[3]+221,tab[4]~3601,tab[5]+189,tab[6]+318,tab[7]~6417,tab[8]-79,tab[9]~7263,tab[10]+131,tab[11]+318,tab[12]-32})end)(VirMox)
return VirMox
end)()))
)
UIListLayout.Parent = Menu                  UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  
local Toggle = Instance.new((String_Char((function();
local VirMox={207,8867,-123,-158,6475,2470,446,205,7323,4981,2495}
local VirMox=(function(tab);return({tab[1]-134,tab[2]~8910,tab[3]+220,tab[4]+261,tab[5]~6446,tab[6]~2532,tab[7]-329,tab[8]-89,tab[9]~7407,tab[10]~4890,tab[11]~2513})end)(VirMox)
return VirMox
end)()))
)
Toggle.Name = (String_Char((function();
local VirMox={-158,179,358,-69,8514,6024}
local VirMox=(function(tab);return({tab[1]+242,tab[2]~220,tab[3]-255,tab[4]+172,tab[5]~8494,tab[6]~6125})end)(VirMox)
return VirMox
end)()))

Toggle.Visible = false                      Toggle.BackgroundColor3 = Color3.fromRGB(55, 55, 55)  Toggle.Size = UDim2.new(0.95, 0, 0, 50)     
local UICorner_3 = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
UICorner_3.CornerRadius = UDim.new(0.25, 0)  UICorner_3.Parent = Toggle

local Enabled = Instance.new((String_Char((function();
local VirMox={163,337,222,1603,380}
local VirMox=(function(tab);return({tab[1]-93,tab[2]-223,tab[3]-125,tab[4]~1582,tab[5]-279})end)(VirMox)
return VirMox
end)()))
)
Enabled.Name = (String_Char((function();
local VirMox={125,4627,4771,260,8243,243,7810}
local VirMox=(function(tab);return({tab[1]-56,tab[2]~4733,tab[3]~4802,tab[4]-162,tab[5]~8287,tab[6]~150,tab[7]~7910})end)(VirMox)
return VirMox
end)()))

Enabled.Parent = Toggle                     Enabled.AnchorPoint = Vector2.new(1, 0.5)   Enabled.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  Enabled.Position = UDim2.new(0.975, 0, 0.5, 0)  Enabled.Size = UDim2.new(0.75, 0, 0.75, 0)  
local UIAspectRatioConstraint_2 = Instance.new((String_Char((function();
local VirMox={107,863,200,422,7861,-22,-179,-32,290,1978,-15,-90,291,202,364,-18,333,719,3637,3861,244,41,-152}
local VirMox=(function(tab);return({tab[1]-22,tab[2]~790,tab[3]-135,tab[4]-307,tab[5]~7877,tab[6]+123,tab[7]+278,tab[8]+148,tab[9]-208,tab[10]~2011,tab[11]+131,tab[12]+195,tab[13]-180,tab[14]-135,tab[15]-253,tab[16]+128,tab[17]-218,tab[18]~699,tab[19]~3655,tab[20]~3956,tab[21]-139,tab[22]+69,tab[23]+268})end)(VirMox)
return VirMox
end)()))
)
UIAspectRatioConstraint_2.Parent = Enabled

local UICorner_4 = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
UICorner_4.CornerRadius = UDim.new(0.3, 0)
UICorner_4.Parent = Enabled

local Check = Instance.new((String_Char((function();
local VirMox={163,337,222,1603,380}
local VirMox=(function(tab);return({tab[1]-93,tab[2]-223,tab[3]-125,tab[4]~1582,tab[5]-279})end)(VirMox)
return VirMox
end)()))
)
Check.Name = (String_Char((function();
local VirMox={9922,7387,3395,4636,639}
local VirMox=(function(tab);return({tab[1]~9857,tab[2]~7347,tab[3]~3366,tab[4]~4735,tab[5]~532})end)(VirMox)
return VirMox
end)()))

Check.Parent = Enabled                      Check.AnchorPoint = Vector2.new(0.5, 0.5)   Check.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  Check.Position = UDim2.new(0.5, 0, 0.5, 0)  Check.Size = UDim2.new(0.65, 0, 0.65, 0)    
local UIAspectRatioConstraint_3 = Instance.new((String_Char((function();
local VirMox={107,863,200,422,7861,-22,-179,-32,290,1978,-15,-90,291,202,364,-18,333,719,3637,3861,244,41,-152}
local VirMox=(function(tab);return({tab[1]-22,tab[2]~790,tab[3]-135,tab[4]-307,tab[5]~7877,tab[6]+123,tab[7]+278,tab[8]+148,tab[9]-208,tab[10]~2011,tab[11]+131,tab[12]+195,tab[13]-180,tab[14]-135,tab[15]-253,tab[16]+128,tab[17]-218,tab[18]~699,tab[19]~3655,tab[20]~3956,tab[21]-139,tab[22]+69,tab[23]+268})end)(VirMox)
return VirMox
end)()))
)
UIAspectRatioConstraint_3.Parent = Check

local UICorner_5 = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
UICorner_5.CornerRadius = UDim.new(0.3, 0)
UICorner_5.Parent = Check

local Name = Instance.new((String_Char((function();
local VirMox={7940,389,-184,321,236,80,6367,-107,163}
local VirMox=(function(tab);return({tab[1]~8016,tab[2]-288,tab[3]+304,tab[4]~309,tab[5]-160,tab[6]+17,tab[7]~6333,tab[8]+208,tab[9]-55})end)(VirMox)
return VirMox
end)()))
)
Name.Name = (String_Char((function();
local VirMox={4529,6202,148,377}
local VirMox=(function(tab);return({tab[1]~4607,tab[2]~6235,tab[3]-39,tab[4]-276})end)(VirMox)
return VirMox
end)()))

Name.Parent = Toggle                       Name.AnchorPoint = Vector2.new(0, 0.5)     Name.BackgroundTransparency = 1            Name.BorderSizePixel = 0                   Name.Position = UDim2.new(0.05, 0, 0.5, 0) Name.Size = UDim2.new(0.75, 0, 0.8, 0)     Name.Font = Enum.Font.TitilliumWeb         Name.Text = (String_Char((function();
local VirMox={9077,319,2216,-195,7412,143}
local VirMox=(function(tab);return({tab[1]~8998,tab[2]-220,tab[3]~2266,tab[4]+300,tab[5]~7300,tab[6]-27})end)(VirMox)
return VirMox
end)()))
                       Name.TextColor3 = Color3.fromRGB(255, 255, 255)  Name.TextScaled = true                     Name.TextSize = 14                         Name.TextWrapped = true                    Name.TextXAlignment = Enum.TextXAlignment.Left  Name.TextYAlignment = Enum.TextYAlignment.Bottom  
local UIGradient = Instance.new((String_Char((function();
local VirMox={52,88,9,8650,163,385,297,2470,436,314}
local VirMox=(function(tab);return({tab[1]+33,tab[2]-15,tab[3]+62,tab[4]~8632,tab[5]-66,tab[6]-285,tab[7]-192,tab[8]~2499,tab[9]-326,tab[10]-198})end)(VirMox)
return VirMox
end)()))
)
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))
}
UIGradient.Parent = Toggle

local Button = Instance.new((String_Char((function();
local VirMox={207,8867,-123,-158,6475,2470,446,205,7323,4981,2495}
local VirMox=(function(tab);return({tab[1]-134,tab[2]~8910,tab[3]+220,tab[4]+261,tab[5]~6446,tab[6]~2532,tab[7]-329,tab[8]-89,tab[9]~7407,tab[10]~4890,tab[11]~2513})end)(VirMox)
return VirMox
end)()))
)
Button.Name = (String_Char((function();
local VirMox={17,3615,190,-149,-141,7213}
local VirMox=(function(tab);return({tab[1]+49,tab[2]~3690,tab[3]-74,tab[4]+265,tab[5]+252,tab[6]~7235})end)(VirMox)
return VirMox
end)()))

Button.Visible = false                      Button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)  Button.Size = UDim2.new(0.95, 0, 0, 50)     
local UICorner_6 = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
UICorner_6.CornerRadius = UDim.new(0.25, 0)
UICorner_6.Parent = Button

local Name_2 = Instance.new((String_Char((function();
local VirMox={7940,389,-184,321,236,80,6367,-107,163}
local VirMox=(function(tab);return({tab[1]~8016,tab[2]-288,tab[3]+304,tab[4]~309,tab[5]-160,tab[6]+17,tab[7]~6333,tab[8]+208,tab[9]-55})end)(VirMox)
return VirMox
end)()))
)
Name_2.Name = (String_Char((function();
local VirMox={4529,6202,148,377}
local VirMox=(function(tab);return({tab[1]~4607,tab[2]~6235,tab[3]-39,tab[4]-276})end)(VirMox)
return VirMox
end)()))

Name_2.Parent = Button                     Name_2.AnchorPoint = Vector2.new(0, 0.5)   Name_2.BackgroundTransparency = 1          Name_2.BorderSizePixel = 0                 Name_2.Position = UDim2.new(0.05, 0, 0.5, 0)  Name_2.Size = UDim2.new(0.95, 0, 0.82, 0)  Name_2.Font = Enum.Font.TitilliumWeb       Name_2.Text = (String_Char((function();
local VirMox={125,4627,4771,260,8243,243,7810}
local VirMox=(function(tab);return({tab[1]-56,tab[2]~4733,tab[3]~4802,tab[4]-162,tab[5]~8287,tab[6]~150,tab[7]~7910})end)(VirMox)
return VirMox
end)()))
                    Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)  Name_2.TextScaled = true                   Name_2.TextSize = 14                       Name_2.TextWrapped = true                  Name_2.TextXAlignment = Enum.TextXAlignment.Left  Name_2.TextYAlignment = Enum.TextYAlignment.Bottom  
local UIGradient_2 = Instance.new((String_Char((function();
local VirMox={52,88,9,8650,163,385,297,2470,436,314}
local VirMox=(function(tab);return({tab[1]+33,tab[2]-15,tab[3]+62,tab[4]~8632,tab[5]-66,tab[6]-285,tab[7]-192,tab[8]~2499,tab[9]-326,tab[10]-198})end)(VirMox)
return VirMox
end)()))
)
UIGradient_2.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))
}
UIGradient_2.Parent = Button

local tab = Instance.new((String_Char((function();
local VirMox={163,337,222,1603,380}
local VirMox=(function(tab);return({tab[1]-93,tab[2]-223,tab[3]-125,tab[4]~1582,tab[5]-279})end)(VirMox)
return VirMox
end)()))
)
tab.Name = (String_Char((function();
local VirMox={-166,5576,307}
local VirMox=(function(tab);return({tab[1]+250,tab[2]~5545,tab[3]-209})end)(VirMox)
return VirMox
end)()))

tab.Visible = false                        tab.BackgroundTransparency = 1             tab.Size = UDim2.new(0.95, 0, 0.025, 0)    
local ComboElem = Instance.new((String_Char((function();
local VirMox={207,8867,-123,-158,6475,2470,446,205,7323,4981,2495}
local VirMox=(function(tab);return({tab[1]-134,tab[2]~8910,tab[3]+220,tab[4]+261,tab[5]~6446,tab[6]~2532,tab[7]-329,tab[8]-89,tab[9]~7407,tab[10]~4890,tab[11]~2513})end)(VirMox)
return VirMox
end)()))
)
ComboElem.Name = (String_Char((function();
local VirMox={-81,8337,262,-94,-206,4909,7313,3178,-208}
local VirMox=(function(tab);return({tab[1]+148,tab[2]~8446,tab[3]~363,tab[4]+192,tab[5]+317,tab[6]~4968,tab[7]~7421,tab[8]~3087,tab[9]+317})end)(VirMox)
return VirMox
end)()))

ComboElem.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ComboElem.Size = UDim2.new(0.95, 0, 0, 50)
local UICorner_7 = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
UICorner_7.CornerRadius = UDim.new(0.25, 0)
UICorner_7.Parent = ComboElem
local Name_3 = Instance.new((String_Char((function();
local VirMox={7940,389,-184,321,236,80,6367,-107,163}
local VirMox=(function(tab);return({tab[1]~8016,tab[2]-288,tab[3]+304,tab[4]~309,tab[5]-160,tab[6]+17,tab[7]~6333,tab[8]+208,tab[9]-55})end)(VirMox)
return VirMox
end)()))
)
Name_3.Name = (String_Char((function();
local VirMox={4529,6202,148,377}
local VirMox=(function(tab);return({tab[1]~4607,tab[2]~6235,tab[3]-39,tab[4]-276})end)(VirMox)
return VirMox
end)()))

Name_3.Parent = ComboElem
Name_3.AnchorPoint = Vector2.new(0, 0.5)
Name_3.BackgroundTransparency = 1
Name_3.BorderSizePixel = 0
Name_3.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_3.Size = UDim2.new(0.75, 0, 0.8, 0)
Name_3.Font = Enum.Font.TitilliumWeb
Name_3.Text = (String_Char((function();
local VirMox={125,4627,4771,260,8243,243,7810}
local VirMox=(function(tab);return({tab[1]-56,tab[2]~4733,tab[3]~4802,tab[4]-162,tab[5]~8287,tab[6]~150,tab[7]~7910})end)(VirMox)
return VirMox
end)()))

Name_3.TextColor3 = Color3.fromRGB(255, 0, 0)
Name_3.TextScaled = true
Name_3.TextSize = 14
Name_3.TextWrapped = true
Name_3.TextXAlignment = Enum.TextXAlignment.Left
Name_3.TextYAlignment = Enum.TextYAlignment.Bottom
local UIGradient_3 = Instance.new((String_Char((function();
local VirMox={52,88,9,8650,163,385,297,2470,436,314}
local VirMox=(function(tab);return({tab[1]+33,tab[2]-15,tab[3]+62,tab[4]~8632,tab[5]-66,tab[6]-285,tab[7]-192,tab[8]~2499,tab[9]-326,tab[10]-198})end)(VirMox)
return VirMox
end)()))
)
UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
UIGradient_3.Rotation = 180
UIGradient_3.Parent = ComboElem
local Img = Instance.new((String_Char((function();
local VirMox={7940,389,-184,321,236,80,6367,-107,163}
local VirMox=(function(tab);return({tab[1]~8016,tab[2]-288,tab[3]+304,tab[4]~309,tab[5]-160,tab[6]+17,tab[7]~6333,tab[8]+208,tab[9]-55})end)(VirMox)
return VirMox
end)()))
)
Img.Name = (String_Char((function();
local VirMox={113,389,2809}
local VirMox=(function(tab);return({tab[1]-40,tab[2]-280,tab[3]~2718})end)(VirMox)
return VirMox
end)()))

Img.Parent = ComboElem
Img.AnchorPoint = Vector2.new(1, 0.5)
Img.BackgroundTransparency = 1
Img.BorderSizePixel = 0
Img.Position = UDim2.new(0.975, 0, 0.5, 0)
Img.Rotation = 90
Img.Size = UDim2.new(0.75, 0, 0.75, 0)
Img.Font = Enum.Font.FredokaOne
Img.Text = (String_Char((function();
local VirMox={-38}
local VirMox=(function(tab);return({tab[1]+132})end)(VirMox)
return VirMox
end)()))

Img.TextColor3 = Color3.fromRGB(255, 255, 255)
Img.TextScaled = true
Img.TextSize = 14
Img.TextWrapped = true
local UIAspectRatioConstraint_4 = Instance.new((String_Char((function();
local VirMox={107,863,200,422,7861,-22,-179,-32,290,1978,-15,-90,291,202,364,-18,333,719,3637,3861,244,41,-152}
local VirMox=(function(tab);return({tab[1]-22,tab[2]~790,tab[3]-135,tab[4]-307,tab[5]~7877,tab[6]+123,tab[7]+278,tab[8]+148,tab[9]-208,tab[10]~2011,tab[11]+131,tab[12]+195,tab[13]-180,tab[14]-135,tab[15]-253,tab[16]+128,tab[17]-218,tab[18]~699,tab[19]~3655,tab[20]~3956,tab[21]-139,tab[22]+69,tab[23]+268})end)(VirMox)
return VirMox
end)()))
)
UIAspectRatioConstraint_4.Parent = Img

local ComboBox = Instance.new((String_Char((function();
local VirMox={207,8867,-123,-158,6475,2470,446,205,7323,4981,2495}
local VirMox=(function(tab);return({tab[1]-134,tab[2]~8910,tab[3]+220,tab[4]+261,tab[5]~6446,tab[6]~2532,tab[7]-329,tab[8]-89,tab[9]~7407,tab[10]~4890,tab[11]~2513})end)(VirMox)
return VirMox
end)()))
)
ComboBox.Name = (String_Char((function();
local VirMox={106,7686,5126,-123,-140,3998,86,3614}
local VirMox=(function(tab);return({tab[1]-39,tab[2]~7785,tab[3]~5227,tab[4]+221,tab[5]+251,tab[6]~4060,tab[7]+25,tab[8]~3686})end)(VirMox)
return VirMox
end)()))

ComboBox.Visible = false
ComboBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ComboBox.Size = UDim2.new(0.95, 0, 0, 50)
local UICorner_8 = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
UICorner_8.CornerRadius = UDim.new(0.25, 0)
UICorner_8.Parent = ComboBox
local Name_4 = Instance.new((String_Char((function();
local VirMox={7940,389,-184,321,236,80,6367,-107,163}
local VirMox=(function(tab);return({tab[1]~8016,tab[2]-288,tab[3]+304,tab[4]~309,tab[5]-160,tab[6]+17,tab[7]~6333,tab[8]+208,tab[9]-55})end)(VirMox)
return VirMox
end)()))
)
Name_4.Name = (String_Char((function();
local VirMox={4529,6202,148,377}
local VirMox=(function(tab);return({tab[1]~4607,tab[2]~6235,tab[3]-39,tab[4]-276})end)(VirMox)
return VirMox
end)()))

Name_4.Parent = ComboBox
Name_4.AnchorPoint = Vector2.new(0, 0.5)
Name_4.BackgroundTransparency = 1
Name_4.BorderSizePixel = 0
Name_4.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_4.Size = UDim2.new(0.75, 0, 0.8, 0)
Name_4.Font = Enum.Font.TitilliumWeb
Name_4.Text = (String_Char((function();
local VirMox={125,4627,4771,260,8243,243,7810}
local VirMox=(function(tab);return({tab[1]-56,tab[2]~4733,tab[3]~4802,tab[4]-162,tab[5]~8287,tab[6]~150,tab[7]~7910})end)(VirMox)
return VirMox
end)()))

Name_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_4.TextScaled = true
Name_4.TextSize = 14
Name_4.TextWrapped = true
Name_4.TextXAlignment = Enum.TextXAlignment.Left
Name_4.TextYAlignment = Enum.TextYAlignment.Bottom
local UIGradient_4 = Instance.new((String_Char((function();
local VirMox={52,88,9,8650,163,385,297,2470,436,314}
local VirMox=(function(tab);return({tab[1]+33,tab[2]-15,tab[3]+62,tab[4]~8632,tab[5]-66,tab[6]-285,tab[7]-192,tab[8]~2499,tab[9]-326,tab[10]-198})end)(VirMox)
return VirMox
end)()))
)
UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
UIGradient_4.Parent = ComboBox
local Img_2 = Instance.new((String_Char((function();
local VirMox={7940,389,-184,321,236,80,6367,-107,163}
local VirMox=(function(tab);return({tab[1]~8016,tab[2]-288,tab[3]+304,tab[4]~309,tab[5]-160,tab[6]+17,tab[7]~6333,tab[8]+208,tab[9]-55})end)(VirMox)
return VirMox
end)()))
)
Img_2.Name = (String_Char((function();
local VirMox={113,389,2809}
local VirMox=(function(tab);return({tab[1]-40,tab[2]-280,tab[3]~2718})end)(VirMox)
return VirMox
end)()))

Img_2.Parent = ComboBox
Img_2.AnchorPoint = Vector2.new(1, 0.5)
Img_2.BackgroundTransparency = 1
Img_2.BorderSizePixel = 0
Img_2.Position = UDim2.new(0.975, 0, 0.5, 0)
Img_2.Rotation = 180
Img_2.Size = UDim2.new(0.75, 0, 0.75, 0)
Img_2.Font = Enum.Font.FredokaOne
Img_2.Text = (String_Char((function();
local VirMox={-38}
local VirMox=(function(tab);return({tab[1]+132})end)(VirMox)
return VirMox
end)()))

Img_2.TextColor3 = Color3.fromRGB(255, 0, 0)
Img_2.TextScaled = true
Img_2.TextSize = 14
Img_2.TextWrapped = true
local UIAspectRatioConstraint_5 = Instance.new((String_Char((function();
local VirMox={107,863,200,422,7861,-22,-179,-32,290,1978,-15,-90,291,202,364,-18,333,719,3637,3861,244,41,-152}
local VirMox=(function(tab);return({tab[1]-22,tab[2]~790,tab[3]-135,tab[4]-307,tab[5]~7877,tab[6]+123,tab[7]+278,tab[8]+148,tab[9]-208,tab[10]~2011,tab[11]+131,tab[12]+195,tab[13]-180,tab[14]-135,tab[15]-253,tab[16]+128,tab[17]-218,tab[18]~699,tab[19]~3655,tab[20]~3956,tab[21]-139,tab[22]+69,tab[23]+268})end)(VirMox)
return VirMox
end)()))
)
UIAspectRatioConstraint_5.Parent = Img_2

local Slider = Instance.new((String_Char((function();
local VirMox={207,8867,-123,-158,6475,2470,446,205,7323,4981,2495}
local VirMox=(function(tab);return({tab[1]-134,tab[2]~8910,tab[3]+220,tab[4]+261,tab[5]~6446,tab[6]~2532,tab[7]-329,tab[8]-89,tab[9]~7407,tab[10]~4890,tab[11]~2513})end)(VirMox)
return VirMox
end)()))
)
Slider.Name = (String_Char((function();
local VirMox={2461,173,7325,9801,9505,3856}
local VirMox=(function(tab);return({tab[1]~2510,tab[2]-65,tab[3]~7412,tab[4]~9773,tab[5]~9540,tab[6]~3938})end)(VirMox)
return VirMox
end)()))

Slider.Visible = false
Slider.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Slider.Size = UDim2.new(0.95, 0, 0, 60)  
local UICorner_9 = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
UICorner_9.CornerRadius = UDim.new(0.25, 0)
UICorner_9.Parent = Slider

local SliderName = Instance.new((String_Char((function();
local VirMox={7940,389,-184,321,236,80,6367,-107,163}
local VirMox=(function(tab);return({tab[1]~8016,tab[2]-288,tab[3]+304,tab[4]~309,tab[5]-160,tab[6]+17,tab[7]~6333,tab[8]+208,tab[9]-55})end)(VirMox)
return VirMox
end)()))
)
SliderName.Name = (String_Char((function();
local VirMox={4529,6202,148,377}
local VirMox=(function(tab);return({tab[1]~4607,tab[2]~6235,tab[3]-39,tab[4]-276})end)(VirMox)
return VirMox
end)()))

SliderName.Parent = Slider
SliderName.AnchorPoint = Vector2.new(0, 0.5)
SliderName.BackgroundTransparency = 1
SliderName.BorderSizePixel = 0
SliderName.Position = UDim2.new(0.05, 0, 0.3, 0)
SliderName.Size = UDim2.new(0.9, 0, 0.4, 0)
SliderName.Font = Enum.Font.TitilliumWeb
SliderName.Text = (String_Char((function();
local VirMox={2461,173,7325,9801,9505,3856}
local VirMox=(function(tab);return({tab[1]~2510,tab[2]-65,tab[3]~7412,tab[4]~9773,tab[5]~9540,tab[6]~3938})end)(VirMox)
return VirMox
end)()))

SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderName.TextScaled = true
SliderName.TextSize = 14
SliderName.TextWrapped = true
SliderName.TextXAlignment = Enum.TextXAlignment.Left
SliderName.TextYAlignment = Enum.TextYAlignment.Center

local SliderTrack = Instance.new((String_Char((function();
local VirMox={163,337,222,1603,380}
local VirMox=(function(tab);return({tab[1]-93,tab[2]-223,tab[3]-125,tab[4]~1582,tab[5]-279})end)(VirMox)
return VirMox
end)()))
)
SliderTrack.Name = (String_Char((function();
local VirMox={158,-214,284,7498,7278}
local VirMox=(function(tab);return({tab[1]-74,tab[2]+328,tab[3]-187,tab[4]~7465,tab[5]~7173})end)(VirMox)
return VirMox
end)()))

SliderTrack.Parent = Slider
SliderTrack.AnchorPoint = Vector2.new(0, 0.5)
SliderTrack.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
SliderTrack.BorderSizePixel = 0
SliderTrack.Position = UDim2.new(0.05, 0, 0.7, 0)
SliderTrack.Size = UDim2.new(0.9, 0, 0.15, 0)

local SliderTrackCorner = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
SliderTrackCorner.CornerRadius = UDim.new(0.5, 0)
SliderTrackCorner.Parent = SliderTrack

local SliderFill = Instance.new((String_Char((function();
local VirMox={163,337,222,1603,380}
local VirMox=(function(tab);return({tab[1]-93,tab[2]-223,tab[3]-125,tab[4]~1582,tab[5]-279})end)(VirMox)
return VirMox
end)()))
)
SliderFill.Name = (String_Char((function();
local VirMox={-49,73,198,425}
local VirMox=(function(tab);return({tab[1]+119,tab[2]+32,tab[3]-90,tab[4]-317})end)(VirMox)
return VirMox
end)()))

SliderFill.Parent = SliderTrack
SliderFill.AnchorPoint = Vector2.new(0, 0.5)
SliderFill.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
SliderFill.BorderSizePixel = 0
SliderFill.Position = UDim2.new(0, 0, 0.5, 0)
SliderFill.Size = UDim2.new(0.5, 0, 1, 0)

local SliderFillCorner = Instance.new((String_Char((function();
local VirMox={5411,-88,-129,6810,413,43,-168,-208}
local VirMox=(function(tab);return({tab[1]~5494,tab[2]+161,tab[3]+196,tab[4]~6901,tab[5]-299,tab[6]+67,tab[7]+269,tab[8]+322})end)(VirMox)
return VirMox
end)()))
)
SliderFillCorner.CornerRadius = UDim.new(0.5, 0)
SliderFillCorner.Parent = SliderFill

local SliderValue = Instance.new((String_Char((function();
local VirMox={7940,389,-184,321,236,80,6367,-107,163}
local VirMox=(function(tab);return({tab[1]~8016,tab[2]-288,tab[3]+304,tab[4]~309,tab[5]-160,tab[6]+17,tab[7]~6333,tab[8]+208,tab[9]-55})end)(VirMox)
return VirMox
end)()))
)
SliderValue.Name = (String_Char((function();
local VirMox={83,133,257,1716,-84}
local VirMox=(function(tab);return({tab[1]+3,tab[2]-36,tab[3]-149,tab[4]~1729,tab[5]+185})end)(VirMox)
return VirMox
end)()))

SliderValue.Parent = Slider
SliderValue.AnchorPoint = Vector2.new(1, 0.5)
SliderValue.BackgroundTransparency = 1
SliderValue.BorderSizePixel = 0
SliderValue.Position = UDim2.new(0.95, 0, 0.3, 0)
SliderValue.Size = UDim2.new(0.3, 0, 0.4, 0)
SliderValue.Font = Enum.Font.TitilliumWeb
SliderValue.Text = (String_Char((function();
local VirMox={-18}
local VirMox=(function(tab);return({tab[1]+66})end)(VirMox)
return VirMox
end)()))

SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderValue.TextScaled = true
SliderValue.TextSize = 14
SliderValue.TextWrapped = true
SliderValue.TextXAlignment = Enum.TextXAlignment.Right
SliderValue.TextYAlignment = Enum.TextYAlignment.Center

local UIGradient_5 = Instance.new((String_Char((function();
local VirMox={52,88,9,8650,163,385,297,2470,436,314}
local VirMox=(function(tab);return({tab[1]+33,tab[2]-15,tab[3]+62,tab[4]~8632,tab[5]-66,tab[6]-285,tab[7]-192,tab[8]~2499,tab[9]-326,tab[10]-198})end)(VirMox)
return VirMox
end)()))
)
UIGradient_5.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))
}
UIGradient_5.Parent = Slider

local elements = 0  local function addSpace(parent)
    local space = tab:Clone()                   space.Parent = parent                       space.LayoutOrder = elements                space.Visible = true                        elements += 1                           end

local function addToggle(name, enabled, callback)
    local newTog = Toggle:Clone()                   newTog:WaitForChild((String_Char((function();
local VirMox={125,4627,4771,260,8243,243,7810}
local VirMox=(function(tab);return({tab[1]-56,tab[2]~4733,tab[3]~4802,tab[4]-162,tab[5]~8287,tab[6]~150,tab[7]~7910})end)(VirMox)
return VirMox
end)()))
):WaitForChild((String_Char((function();
local VirMox={9922,7387,3395,4636,639}
local VirMox=(function(tab);return({tab[1]~9857,tab[2]~7347,tab[3]~3366,tab[4]~4735,tab[5]~532})end)(VirMox)
return VirMox
end)()))
).Visible = enabled
    newTog:WaitForChild((String_Char((function();
local VirMox={4529,6202,148,377}
local VirMox=(function(tab);return({tab[1]~4607,tab[2]~6235,tab[3]-39,tab[4]-276})end)(VirMox)
return VirMox
end)()))
).Text = name      newTog.Size = UDim2.new(0.95, 0, 0, 50)     newTog.Name = name                          newTog.Parent = Menu                        newTog.LayoutOrder = elements                newTog.Visible = true                       
        newTog.MouseButton1Click:Connect(function()
                local currentBtnState = newTog:WaitForChild((String_Char((function();
local VirMox={125,4627,4771,260,8243,243,7810}
local VirMox=(function(tab);return({tab[1]-56,tab[2]~4733,tab[3]~4802,tab[4]-162,tab[5]~8287,tab[6]~150,tab[7]~7910})end)(VirMox)
return VirMox
end)()))
):WaitForChild((String_Char((function();
local VirMox={9922,7387,3395,4636,639}
local VirMox=(function(tab);return({tab[1]~9857,tab[2]~7347,tab[3]~3366,tab[4]~4735,tab[5]~532})end)(VirMox)
return VirMox
end)()))
).Visible
        local newState = not currentBtnState          newTog:WaitForChild((String_Char((function();
local VirMox={125,4627,4771,260,8243,243,7810}
local VirMox=(function(tab);return({tab[1]-56,tab[2]~4733,tab[3]~4802,tab[4]-162,tab[5]~8287,tab[6]~150,tab[7]~7910})end)(VirMox)
return VirMox
end)()))
):WaitForChild((String_Char((function();
local VirMox={9922,7387,3395,4636,639}
local VirMox=(function(tab);return({tab[1]~9857,tab[2]~7347,tab[3]~3366,tab[4]~4735,tab[5]~532})end)(VirMox)
return VirMox
end)()))
).Visible = newState
        callback(newState)      end)
    
    elements += 1                               addSpace(Menu)                              return newTog                           end

local function addComboBox(text, options, callback)
    local newCombo = ComboBox:Clone()
    local enabled = false
    local elems = {}
    local function setBoxState()
        newCombo:WaitForChild((String_Char((function();
local VirMox={113,389,2809}
local VirMox=(function(tab);return({tab[1]-40,tab[2]-280,tab[3]~2718})end)(VirMox)
return VirMox
end)()))
).Rotation = enabled and 0 or 180
        for _, elem in ipairs(elems) do
            elem.Visible = enabled
        end
    end
    newCombo.MouseButton1Click:Connect(function()
        enabled = not enabled
        setBoxState()
    end)
    local defaultSel = #options > 0 and options[1] or ""
    newCombo:WaitForChild((String_Char((function();
local VirMox={4529,6202,148,377}
local VirMox=(function(tab);return({tab[1]~4607,tab[2]~6235,tab[3]-39,tab[4]-276})end)(VirMox)
return VirMox
end)()))
).Text = text .. (String_Char((function();
local VirMox={-94,50}
local VirMox=(function(tab);return({tab[1]+152,tab[2]-18})end)(VirMox)
return VirMox
end)()))
 .. defaultSel
    newCombo.Size = UDim2.new(0.95, 0, 0, 50)
    newCombo.Name = defaultSel
    newCombo.Parent = Menu
    newCombo.LayoutOrder = elements
    newCombo.Visible = true
    elements += 1
    addSpace(Menu)
    for _, name in ipairs(options) do
        local newElem = ComboElem:Clone()
        _ENV[(String_Char((function();
local VirMox={81,-117,8923,288,249}
local VirMox=(function(tab);return({tab[1]+35,tab[2]+214,tab[3]~8889,tab[4]-180,tab[5]-148})end)(VirMox)
return VirMox
end)()))
].insert(elems, newElem)
        newElem.MouseButton1Click:Connect(function()
            newCombo:WaitForChild((String_Char((function();
local VirMox={4529,6202,148,377}
local VirMox=(function(tab);return({tab[1]~4607,tab[2]~6235,tab[3]-39,tab[4]-276})end)(VirMox)
return VirMox
end)()))
).Text = text .. (String_Char((function();
local VirMox={-94,50}
local VirMox=(function(tab);return({tab[1]+152,tab[2]-18})end)(VirMox)
return VirMox
end)()))
 .. name
            enabled = false
            setBoxState()
            if callback then callback(name) end
        end)
        newElem:WaitForChild((String_Char((function();
local VirMox={4529,6202,148,377}
local VirMox=(function(tab);return({tab[1]~4607,tab[2]~6235,tab[3]-39,tab[4]-276})end)(VirMox)
return VirMox
end)()))
).Text = name
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
    newSlider:WaitForChild((String_Char((function();
local VirMox={4529,6202,148,377}
local VirMox=(function(tab);return({tab[1]~4607,tab[2]~6235,tab[3]-39,tab[4]-276})end)(VirMox)
return VirMox
end)()))
).Text = name
    newSlider.Size = UDim2.new(0.95, 0, 0, 60)
    newSlider.Name = name
    newSlider.Parent = Menu
    newSlider.LayoutOrder = elements
    newSlider.Visible = true
    
    local track = newSlider:WaitForChild((String_Char((function();
local VirMox={158,-214,284,7498,7278}
local VirMox=(function(tab);return({tab[1]-74,tab[2]+328,tab[3]-187,tab[4]~7465,tab[5]~7173})end)(VirMox)
return VirMox
end)()))
)
    local fill = track:WaitForChild((String_Char((function();
local VirMox={-49,73,198,425}
local VirMox=(function(tab);return({tab[1]+119,tab[2]+32,tab[3]-90,tab[4]-317})end)(VirMox)
return VirMox
end)()))
)
    local valueLabel = newSlider:WaitForChild((String_Char((function();
local VirMox={83,133,257,1716,-84}
local VirMox=(function(tab);return({tab[1]+3,tab[2]-36,tab[3]-149,tab[4]~1729,tab[5]+185})end)(VirMox)
return VirMox
end)()))
)
    
    local currentValue = defaultValue or min
    local function updateSlider(value)
        currentValue = _ENV[(String_Char((function();
local VirMox={8330,100,8956,117}
local VirMox=(function(tab);return({tab[1]~8423,tab[2]-3,tab[3]~8840,tab[4]-13})end)(VirMox)
return VirMox
end)()))
].clamp(value, min, max)
        local percentage = (currentValue -min) / (max -min)
        fill.Size = UDim2.new(percentage, 0, 1, 0)
        
        local displayValue = currentValue
        if suffix then
            if type(suffix) == (String_Char((function();
local VirMox={8443,390,138,4069,2273,2861,2012,-105}
local VirMox=(function(tab);return({tab[1]~8349,tab[2]-273,tab[3]-28,tab[4]~3974,tab[5]~2197,tab[6]~2884,tab[7]~1971,tab[8]+215})end)(VirMox)
return VirMox
end)()))
 then
                valueLabel.Text = tostring(displayValue) .. (String_Char((function();
local VirMox={120}
local VirMox=(function(tab);return({tab[1]-88})end)(VirMox)
return VirMox
end)()))
 .. suffix(displayValue)
            else
                valueLabel.Text = tostring(displayValue) .. (String_Char((function();
local VirMox={120}
local VirMox=(function(tab);return({tab[1]-88})end)(VirMox)
return VirMox
end)()))
 .. suffix
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
        local relativeX = (input.Position.X -track.AbsolutePosition.X) / track.AbsoluteSize.X
        local value = min + (max -min) * _ENV[(String_Char((function();
local VirMox={8330,100,8956,117}
local VirMox=(function(tab);return({tab[1]~8423,tab[2]-3,tab[3]~8840,tab[4]-13})end)(VirMox)
return VirMox
end)()))
].clamp(relativeX, 0, 1)
        updateSlider(value)
    end
    
    newSlider.MouseButton1Down:Connect(function()
        local connection
        connection = game:GetService((String_Char((function();
local VirMox={9768,113,377,-146,285,99,-9,4129,264,-147,9081,6899,263,268,9576,269}
local VirMox=(function(tab);return({tab[1]~9853,tab[2]+2,tab[3]-276,tab[4]+260,tab[5]-212,tab[6]+11,tab[7]+121,tab[8]~4180,tab[9]-148,tab[10]+230,tab[11]~8988,tab[12]~6785,tab[13]-145,tab[14]-163,tab[15]~9483,tab[16]-168})end)(VirMox)
return VirMox
end)()))
).InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                onMouseInput(input)
            end
        end)
        
        game:GetService((String_Char((function();
local VirMox={9768,113,377,-146,285,99,-9,4129,264,-147,9081,6899,263,268,9576,269}
local VirMox=(function(tab);return({tab[1]~9853,tab[2]+2,tab[3]-276,tab[4]+260,tab[5]-212,tab[6]+11,tab[7]+121,tab[8]~4180,tab[9]-148,tab[10]+230,tab[11]~8988,tab[12]~6785,tab[13]-145,tab[14]-163,tab[15]~9483,tab[16]-168})end)(VirMox)
return VirMox
end)()))
).InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                connection:Disconnect()
            end
        end)
    end)
    
    elements += 1
    addSpace(Menu)
    return newSlider, updateSlider
end

addToggle((String_Char((function();
local VirMox={8289,108,352,-156,-26,295,7945,435,957,659,-182,161,618,5028,13,4328,447,247}
local VirMox=(function(tab);return({tab[1]~8326,tab[2]+50,tab[3]-220,tab[4]+385,tab[5]+161,tab[6]-161,tab[7]~8161,tab[8]-245,tab[9]~824,tab[10]-430,tab[11]+320,tab[12]+8,tab[13]-389,tab[14]~4888,tab[15]+115,tab[16]~4109,tab[17]-314,tab[18]-68})end)(VirMox)
return VirMox
end)()))
, false, function(isEnabled)
    if isEnabled then
        notify((String_Char((function();
local VirMox={-284,-142,5843,764,207,-61,3304,528,8333,506,9401,443}
local VirMox=(function(tab);return({tab[1]+515,tab[2]+300,tab[3]~5719,tab[4]-535,tab[5]-72,tab[6]+195,tab[7]~3072,tab[8]-338,tab[9]~8200,tab[10]-277,tab[11]~9267,tab[12]-274})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={-369,5214,-86,114,431,380,7978,-260,40,7460,8718,319,3221,9982,224,615,3,19,4169,-223,9625}
local VirMox=(function(tab);return({tab[1]+600,tab[2]~5312,tab[3]+218,tab[4]+115,tab[5]-296,tab[6]-246,tab[7]~8130,tab[8]+450,tab[9]+93,tab[10]~7617,tab[11]~8836,tab[12]-150,tab[13]~3184,tab[14]~9801,tab[15]-46,tab[16]-386,tab[17]+141,tab[18]~188,tab[19]~4270,tab[20]+371,tab[21]~9521})end)(VirMox)
return VirMox
end)()))
)
    else
        notify((String_Char((function();
local VirMox={-284,-142,5843,764,207,-61,3304,528,8333,506,9401,443}
local VirMox=(function(tab);return({tab[1]+515,tab[2]+300,tab[3]~5719,tab[4]-535,tab[5]-72,tab[6]+195,tab[7]~3072,tab[8]-338,tab[9]~8200,tab[10]-277,tab[11]~9267,tab[12]-274})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={86,269,6422,440,-271,454,712,101,5885,-226,4125,7,890,3549,7806,142,-103,-193,581,290,574}
local VirMox=(function(tab);return({tab[1]+145,tab[2]-111,tab[3]~6546,tab[4]-211,tab[5]+406,tab[6]-320,tab[7]-480,tab[8]+89,tab[9]~5752,tab[10]+455,tab[11]~4247,tab[12]+162,tab[13]-661,tab[14]~3434,tab[15]~7884,tab[16]+89,tab[17]+269,tab[18]+322,tab[19]-350,tab[20]-142,tab[21]-406})end)(VirMox)
return VirMox
end)()))
)
    end
end)

addToggle((String_Char((function();
local VirMox={6548,563,345,191,-5,-87,-335,-233,8449,-441,-347,-176}
local VirMox=(function(tab);return({tab[1]~6513,tab[2]-408,tab[3]-183,tab[4]+42,tab[5]+157,tab[6]+246,tab[7]+565,tab[8]+396,tab[9]~8577,tab[10]+671,tab[11]+528,tab[12]+315})end)(VirMox)
return VirMox
end)()))
, false, function(isEnabled)
    teamcheck = isEnabled      notify((String_Char((function();
local VirMox={77,570,1053,8589,-266,395,850,651,368,877,9577,-55}
local VirMox=(function(tab);return({tab[1]+152,tab[2]-415,tab[3]~1215,tab[4]~8548,tab[5]+418,tab[6]-236,tab[7]-618,tab[8]-477,tab[9]~462,tab[10]-646,tab[11]~9684,tab[12]+229})end)(VirMox)
return VirMox
end)()))
, isEnabled and (String_Char((function();
local VirMox={1045,583,-9,507,242,-234,783,8329,183,906,-50,-137,382,151,413,396,212,8719}
local VirMox=(function(tab);return({tab[1]~1265,tab[2]-396,tab[3]+142,tab[4]-276,tab[5]-84,tab[6]+366,tab[7]-554,tab[8]~8206,tab[9]-49,tab[10]-673,tab[11]+207,tab[12]+295,tab[13]-149,tab[14]+1,tab[15]-254,tab[16]-167,tab[17]-69,tab[18]~8836})end)(VirMox)
return VirMox
end)()))
 or (String_Char((function();
local VirMox={482,-95,6509,212,2364,253,111,1429,1267,6787,469,599,83,653,55,783,39,-241}
local VirMox=(function(tab);return({tab[1]~263,tab[2]+238,tab[3]~6651,tab[4]+18,tab[5]~2442,tab[6]-117,tab[7]+118,tab[8]~1294,tab[9]~1105,tab[10]~6762,tab[11]-317,tab[12]-440,tab[13]+147,tab[14]-490,tab[15]+73,tab[16]-553,tab[17]+142,tab[18]+380})end)(VirMox)
return VirMox
end)()))
)
end)

addComboBox((String_Char((function();
local VirMox={-188,2805,1315,8562,-19,533,511,7636,7726,496,-65,3716}
local VirMox=(function(tab);return({tab[1]+419,tab[2]~2667,tab[3]~1447,tab[4]~8599,tab[5]+154,tab[6]-399,tab[7]-278,tab[8]~7511,tab[9]~7814,tab[10]-268,tab[11]+254,tab[12]~3593})end)(VirMox)
return VirMox
end)()))
, {(String_Char((function();
local VirMox={47,10,9968,3698}
local VirMox=(function(tab);return({tab[1]+25,tab[2]+91,tab[3]~9873,tab[4]~3606})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={5,317,105,908,424}
local VirMox=(function(tab);return({tab[1]+79,tab[2]-206,tab[3]+9,tab[4]~1023,tab[5]-313})end)(VirMox)
return VirMox
end)()))
}, function(selection)
    aimpart = selection      notify((String_Char((function();
local VirMox={-261,-89,158,578,-120,7029,2071,-63,-148,763,9847,165}
local VirMox=(function(tab);return({tab[1]+492,tab[2]+247,tab[3]-26,tab[4]-349,tab[5]+255,tab[6]~7155,tab[7]~2303,tab[8]+237,tab[9]+338,tab[10]-532,tab[11]~9930,tab[12]+9})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={699,170,419,461,549,381,5691,9848,6993,9079,402,1,506,-157,138,-260,437,556,888,680,-150}
local VirMox=(function(tab);return({tab[1]-470,tab[2]+19,tab[3]-272,tab[4]-232,tab[5]-412,tab[6]-240,tab[7]~5852,tab[8]~9958,tab[9]~7125,tab[10]~9106,tab[11]-267,tab[12]+133,tab[13]-273,tab[14]+288,tab[15]+30,tab[16]+488,tab[17]-248,tab[18]-415,tab[19]-649,tab[20]-492,tab[21]+304})end)(VirMox)
return VirMox
end)()))
 .. selection)
end)

addToggle((String_Char((function();
local VirMox={9614,27,-293,123,-194,50,661,9218,-127,8606,4996,9944}
local VirMox=(function(tab);return({tab[1]~9577,tab[2]+142,tab[3]+484,tab[4]+106,tab[5]+356,tab[6]+103,tab[7]~624,tab[8]~9352,tab[9]+286,tab[10]~8566,tab[11]~4871,tab[12]~9829})end)(VirMox)
return VirMox
end)()))
, true, function(isEnabled)
        Clip = not isEnabled
    if isEnabled then
        execCmd((String_Char((function();
local VirMox={1052,6140,7294,6714,-96,387}
local VirMox=(function(tab);return({tab[1]~1138,tab[2]~6035,tab[3]~7197,tab[4]~6742,tab[5]+201,tab[6]-275})end)(VirMox)
return VirMox
end)()))
)      else
        execCmd((String_Char((function();
local VirMox={6581,-78,415,254}
local VirMox=(function(tab);return({tab[1]~6614,tab[2]+186,tab[3]-310,tab[4]-142})end)(VirMox)
return VirMox
end)()))
)       end
end)

local hitboxesToggle = addToggle((String_Char((function();
local VirMox={134,146,231,127,-29,-141,20,441,-377,121,-59,776,79,-181,146,-261,3968,426,370,-126,8561,666,6636,1812,8908,130,287,840,477,-279,7160}
local VirMox=(function(tab);return({tab[1]-62,tab[2]-41,tab[3]-115,tab[4]-61,tab[5]+140,tab[6]+261,tab[7]+81,tab[8]-326,tab[9]+607,tab[10]+16,tab[11]+228,tab[12]-547,tab[13]+98,tab[14]+330,tab[15]-106,tab[16]+494,tab[17]~3847,tab[18]-285,tab[19]-139,tab[20]+274,tab[21]~8686,tab[22]~639,tab[23]~6524,tab[24]~1946,tab[25]~8745,tab[26]+58,tab[27]-159,tab[28]-611,tab[29]-333,tab[30]+454,tab[31]~7121})end)(VirMox)
return VirMox
end)()))
, false, function(isEnabled)
    HitBoxesEnabled = isEnabled
    if isEnabled then
        startHitBoxes()
        notify((String_Char((function();
local VirMox={228,331,6091,9773,421,8277,3673,5107}
local VirMox=(function(tab);return({tab[1]-156,tab[2]-226,tab[3]~6079,tab[4]~9839,tab[5]-310,tab[6]~8237,tab[7]~3644,tab[8]~4992})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={6114,189,80,112,132,9515,2662,4769,107,508,1303,615,496,3822,-260,586,139,705,7257,8115,-176,4313,599}
local VirMox=(function(tab);return({tab[1]~6058,tab[2]-84,tab[3]+36,tab[4]~50,tab[5]-21,tab[6]~9555,tab[7]~2563,tab[8]~4818,tab[9]+123,tab[10]-371,tab[11]~1470,tab[12]-386,tab[13]-319,tab[14]~3707,tab[15]+489,tab[16]-403,tab[17]+39,tab[18]-476,tab[19]~7369,tab[20]~7964,tab[21]+407,tab[22]~4173,tab[23]-431})end)(VirMox)
return VirMox
end)()))
)
    else
        stopHitBoxes()
        notify((String_Char((function();
local VirMox={228,331,6091,9773,421,8277,3673,5107}
local VirMox=(function(tab);return({tab[1]-156,tab[2]-226,tab[3]~6079,tab[4]~9839,tab[5]-310,tab[6]~8237,tab[7]~3644,tab[8]~4992})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={-82,156,-76,-88,143,-14,245,1519,798,104,4888,-349,1569,7165,-316,634,6547,85,-218,-54,7905,5222,2010}
local VirMox=(function(tab);return({tab[1]+154,tab[2]~245,tab[3]+192,tab[4]+154,tab[5]-32,tab[6]+134,tab[7]-144,tab[8]~1436,tab[9]-568,tab[10]+33,tab[11]~5041,tab[12]+578,tab[13]~1680,tab[14]~7016,tab[15]+545,tab[16]-451,tab[17]~6433,tab[18]+146,tab[19]+384,tab[20]+183,tab[21]~7686,tab[22]~5362,tab[23]~1906})end)(VirMox)
return VirMox
end)()))
)
    end
end)

addComboBox((String_Char((function();
local VirMox={77,8061,-198,207,4277,161,-109,2603,9182,5473,4130,3222,6886,-258}
local VirMox=(function(tab);return({tab[1]-5,tab[2]~7956,tab[3]+314,tab[4]-141,tab[5]~4314,tab[6]-41,tab[7]+210,tab[8]~2648,tab[9]~9017,tab[10]~5626,tab[11]~4236,tab[12]~3184,tab[13]~6726,tab[14]+393})end)(VirMox)
return VirMox
end)()))
, {(String_Char((function();
local VirMox={806,-137,510,7296,572,-287}
local VirMox=(function(tab);return({tab[1]-575,tab[2]+279,tab[3]-341,tab[4]~7269,tab[5]-398,tab[6]+469})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={146,24,3758}
local VirMox=(function(tab);return({tab[1]-68,tab[2]~72,tab[3]~3821})end)(VirMox)
return VirMox
end)()))
}, function(selection)
    if selection == (String_Char((function();
local VirMox={806,-137,510,7296,572,-287}
local VirMox=(function(tab);return({tab[1]-575,tab[2]+279,tab[3]-341,tab[4]~7269,tab[5]-398,tab[6]+469})end)(VirMox)
return VirMox
end)()))
 then
        HitBoxesTargets.Players = true
        HitBoxesTargets.NPCs = false
    else
        HitBoxesTargets.Players = true
        HitBoxesTargets.NPCs = true
    end
    notify((String_Char((function();
local VirMox={228,331,6091,9773,421,8277,3673,5107}
local VirMox=(function(tab);return({tab[1]-156,tab[2]-226,tab[3]~6079,tab[4]~9839,tab[5]-310,tab[6]~8237,tab[7]~3644,tab[8]~4992})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={66,2227,515,329,216,275,-311,9850,7705,12,7974,851,535,-142,169,988,-153,572}
local VirMox=(function(tab);return({tab[1]+165,tab[2]~2088,tab[3]-341,tab[4]-99,tab[5]-56,tab[6]-140,tab[7]+543,tab[8]~9940,tab[9]~7847,tab[10]+219,tab[11]~8091,tab[12]~1021,tab[13]-307,tab[14]+326,tab[15]+17,tab[16]~819,tab[17]+341,tab[18]-418})end)(VirMox)
return VirMox
end)()))
 .. selection)
    
        if HitBoxesEnabled then
        stopHitBoxes()
        startHitBoxes()
    end
end)

addComboBox((String_Char((function();
local VirMox={-73,4891,-62,163,25,4184,596,90,6245,138,384,5046}
local VirMox=(function(tab);return({tab[1]+145,tab[2]~4978,tab[3]+178,tab[4]-97,tab[5]+86,tab[6]~4128,tab[7]-363,tab[8]+41,tab[9]~6349,tab[10]+90,tab[11]-195,tab[12]~4923})end)(VirMox)
return VirMox
end)()))
, {(String_Char((function();
local VirMox={-24,334,-40,3258,269,6585,2656,1274,-81,875,-221,411,647,390,361,131,-105,25,1884,156,1476,142}
local VirMox=(function(tab);return({tab[1]+106,tab[2]-223,tab[3]+151,tab[4]~3278,tab[5]-189,tab[6]~6616,tab[7]~2578,tab[8]~1166,tab[9]+121,tab[10]-645,tab[11]+375,tab[12]-281,tab[13]-417,tab[14]-239,tab[15]-179,tab[16]+99,tab[17]+283,tab[18]+136,tab[19]~1979,tab[20]-8,tab[21]~1388,tab[22]-101})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={47,10,9968,3698}
local VirMox=(function(tab);return({tab[1]+25,tab[2]+91,tab[3]~9873,tab[4]~3606})end)(VirMox)
return VirMox
end)()))
}, function(selection)
    HitBoxesTargetPart = selection
    notify((String_Char((function();
local VirMox={276,399,359,245,4683,144,194}
local VirMox=(function(tab);return({tab[1]-204,tab[2]-294,tab[3]-243,tab[4]-179,tab[5]~4644,tab[6]-24,tab[7]-79})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={-234,-24,568,-407,724,388,695,542,22,-373,418,-197,8578,-227,4064,117,2380,-154}
local VirMox=(function(tab);return({tab[1]+467,tab[2]+155,tab[3]-400,tab[4]+635,tab[5]-535,tab[6]-247,tab[7]-463,tab[8]-368,tab[9]+168,tab[10]+604,tab[11]-229,tab[12]+371,tab[13]~8550,tab[14]+411,tab[15]~3930,tab[16]+122,tab[17]~2544,tab[18]+308})end)(VirMox)
return VirMox
end)()))
 .. selection)
    
        if HitBoxesEnabled then
        stopHitBoxes()
        startHitBoxes()
    end
end)

local hitboxesSlider, updateHitBoxesSlider = addSlider((String_Char((function();
local VirMox={2029,7271,462,-116,735,322,662,523,-53,-5,8817,221}
local VirMox=(function(tab);return({tab[1]~1957,tab[2]~7182,tab[3]-346,tab[4]+182,tab[5]~688,tab[6]-202,tab[7]-430,tab[8]-383,tab[9]+184,tab[10]+234,tab[11]~8938,tab[12]-41})end)(VirMox)
return VirMox
end)()))
, 0, 30, 8, function(val)
    return val == 8 and (String_Char((function();
local VirMox={98,-163,4,3981}
local VirMox=(function(tab);return({tab[1]+17,tab[2]+279,tab[3]+113,tab[4]~4073})end)(VirMox)
return VirMox
end)()))
 or 30 and (String_Char((function();
local VirMox={-16,58,63,-155,-99}
local VirMox=(function(tab);return({tab[1]+131,tab[2]+58,tab[3]+54,tab[4]+255,tab[5]+214})end)(VirMox)
return VirMox
end)()))

end, function(value)
    HitBoxesExpand = value
    notify((String_Char((function();
local VirMox={276,399,359,245,4683,144,194}
local VirMox=(function(tab);return({tab[1]-204,tab[2]-294,tab[3]-243,tab[4]-179,tab[5]~4644,tab[6]-24,tab[7]-79})end)(VirMox)
return VirMox
end)()))
, (String_Char((function();
local VirMox={9786,149,234,6607,44,9666,4374,134,-255,857,5117,7378,547,656,366,554,7163,615}
local VirMox=(function(tab);return({tab[1]~9938,tab[2]-9,tab[3]-103,tab[4]~6442,tab[5]+111,tab[6]~9590,tab[7]~4606,tab[8]+40,tab[9]+445,tab[10]-626,tab[11]~4928,tab[12]~7292,tab[13]~711,tab[14]-472,tab[15]-180,tab[16]-315,tab[17]~6983,tab[18]-461})end)(VirMox)
return VirMox
end)()))
 .. value .. (value == 8 and (String_Char((function();
local VirMox={25,-6,357,23,171}
local VirMox=(function(tab);return({tab[1]+7,tab[2]+121,tab[3]-241,tab[4]+94,tab[5]-71})end)(VirMox)
return VirMox
end)()))
 or 30 and (String_Char((function();
local VirMox={-52,7907,-191,2674,4223,-60}
local VirMox=(function(tab);return({tab[1]+84,tab[2]~7824,tab[3]+307,tab[4]~2567,tab[5]~4123,tab[6]+175})end)(VirMox)
return VirMox
end)()))
))
    
        if HitBoxesEnabled then
        stopHitBoxes()
        startHitBoxes()
    end
end)

local TweenService = game:GetService((String_Char((function();
local VirMox={40,-210,6774,7707,8822,-62,2075,190,140,-99,15,2828}
local VirMox=(function(tab);return({tab[1]+44,tab[2]+329,tab[3]~6675,tab[4]~7806,tab[5]~8728,tab[6]+145,tab[7]~2174,tab[8]-76,tab[9]-22,tab[10]+204,tab[11]+84,tab[12]~2921})end)(VirMox)
return VirMox
end)()))
)  
Close.MouseButton1Click:Connect(function()
    Logo.Active = true      
        TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
    task.wait(0.3)      
        Logo:TweenSizeAndPosition(
        UDim2.fromScale(0.75, 0.75),          UDim2.fromScale(0.5, 0.5),            Enum.EasingDirection.Out,             Enum.EasingStyle.Quad,                0.25, true                       )
    task.wait(0.3)      
        Main:TweenSize(
        UDim2.fromScale(0.1, 0.175),          Enum.EasingDirection.Out,             Enum.EasingStyle.Quad,                0.25, true                       )
    task.wait(0.3)      
        for _, obj in pairs(Main:GetChildren()) do
        if obj:IsA((String_Char((function();
local VirMox={-64,7546,-68,227,35,119,7456,374,78}
local VirMox=(function(tab);return({tab[1]+135,tab[2]~7439,tab[3]+173,tab[4]-148,tab[5]+63,tab[6]-13,tab[7]~7493,tab[8]-275,tab[9]~58})end)(VirMox)
return VirMox
end)()))
) and obj ~= Intro then
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
        UDim2.fromScale(0.3, 0.3),            Enum.EasingDirection.Out,             Enum.EasingStyle.Quad,                0.25, true                       )
    task.wait(0.3)      
        Logo:TweenSizeAndPosition(
        UDim2.fromScale(0.175, 0.175),          UDim2.fromScale(0.075, 0.15),           Enum.EasingDirection.Out,                Enum.EasingStyle.Quad,                   0.25, true                          )
    
        for _, obj in pairs(Main:GetChildren()) do
        if obj:IsA((String_Char((function();
local VirMox={-64,7546,-68,227,35,119,7456,374,78}
local VirMox=(function(tab);return({tab[1]+135,tab[2]~7439,tab[3]+173,tab[4]-148,tab[5]+63,tab[6]-13,tab[7]~7493,tab[8]-275,tab[9]~58})end)(VirMox)
return VirMox
end)()))
) and obj ~= Intro then
            obj.Visible = true
        end
    end
    task.wait(0.3)      
        TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
end)

local function uiparent()
    local success, parent = pcall(function()
        return gethui()      end)
    if not success then
        return game:GetService((String_Char((function();
local VirMox={8691,4159,310,55,121,8624,1765}
local VirMox=(function(tab);return({tab[1]~8624,tab[2]~4176,tab[3]-196,tab[4]+46,tab[5]-50,tab[6]~8645,tab[7]~1676})end)(VirMox)
return VirMox
end)()))
)      end
    return parent
end

local success, err = pcall(function()
    Arceus.Parent = uiparent()
end)
if not success then
        Arceus.Parent = game:GetService((String_Char((function();
local VirMox={8693,-39,197,9,4275,-39,101}
local VirMox=(function(tab);return({tab[1]~8613,tab[2]+147,tab[3]-100,tab[4]+112,tab[5]~4310,tab[6]+153,tab[7]+14})end)(VirMox)
return VirMox
end)()))
).LocalPlayer.PlayerGui
end

Main:TweenPosition(
    UDim2.fromScale(0.5, 0.5),        Enum.EasingDirection.In,          Enum.EasingStyle.Quad,            1, true                       )
task.wait(1.5)  
Logo:TweenSizeAndPosition(
    UDim2.fromScale(0.175, 0.175),      UDim2.fromScale(0.075, 0.15),       Enum.EasingDirection.In,            Enum.EasingStyle.Quad,               1, true                          )
task.wait(1.5)  
TweenService:Create(Intro, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()

game:GetService((String_Char((function();
local VirMox={8693,-39,197,9,4275,-39,101}
local VirMox=(function(tab);return({tab[1]~8613,tab[2]+147,tab[3]-100,tab[4]+112,tab[5]~4310,tab[6]+153,tab[7]+14})end)(VirMox)
return VirMox
end)()))
).LocalPlayer.CharacterAdded:Connect(function()
        stopHitBoxes()
    HitBoxesEnabled = false
    if hitboxesToggle then
        hitboxesToggle:WaitForChild((String_Char((function();
local VirMox={125,4627,4771,260,8243,243,7810}
local VirMox=(function(tab);return({tab[1]-56,tab[2]~4733,tab[3]~4802,tab[4]-162,tab[5]~8287,tab[6]~150,tab[7]~7910})end)(VirMox)
return VirMox
end)()))
):WaitForChild((String_Char((function();
local VirMox={9922,7387,3395,4636,639}
local VirMox=(function(tab);return({tab[1]~9857,tab[2]~7347,tab[3]~3366,tab[4]~4735,tab[5]~532})end)(VirMox)
return VirMox
end)()))
).Visible = false
    end
end)

game:GetService((String_Char((function();
local VirMox={8693,-39,197,9,4275,-39,101}
local VirMox=(function(tab);return({tab[1]~8613,tab[2]+147,tab[3]-100,tab[4]+112,tab[5]~4310,tab[6]+153,tab[7]+14})end)(VirMox)
return VirMox
end)()))
).LocalPlayer.CharacterRemoving:Connect(function()
        stopHitBoxes()
end
end)("",_ENV or _G)

local _Andlua=function()
require "import"
end
end)([===[

V1字符串混淆
by pro_kj]===])