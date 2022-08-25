local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Auto Grind Champs", "Synapse")
local MainTab = Window:NewTab("Champions")
local AutoOpen = MainTab:NewSection("Champions")
local InfoTab = Window:NewTab("Keybinds")
local CreditsTab = Window:NewTab("Credits")
local KeybindSection = InfoTab:NewSection("Keybinds")
local CreditsSection = CreditsTab:NewSection("Scripts by LuxAetheres")
CreditsSection:NewLabel("Made for Céline")
_G.Opening = false

KeybindSection:NewKeybind("open/close gui", "Closes or opens this gui", Enum.KeyCode.X, function()
    Library:ToggleUI()
end)

local function get_children()
    return game.Players.localPlayer.PlayerGui.Main.Category.Frames.Champions.Container.List:GetChildren()
end

local function num()
    num_chp = game:GetService("Players").PandArcElectric.PlayerGui.Main.Category.Frames.Champions.Container.Space.Text
    num_chp = num_chp:split("")
    chr = 0
    maxi = ""
    for i = 1,#num_chp,1 do
        if chr == 0 then
            if num_chp[i] == "/" then
                chr = 1
            end
        elseif chr == 1 then
            if num_chp[i] == "]" then
                chr = 2
            else
                maxi = maxi..num_chp[i]
            end
        end
    end
    l = get_children()
    game:GetService("Players").PandArcElectric.PlayerGui.Main.Category.Frames.Champions.Container.Space.Text = "Champion Inventory ["..tostring(#l-1).."/"..maxi.."]"
end

local function delete()
    Child = get_children()
    Child[#Child]:remove()
end

local function buy(p)
    fireclickdetector(game:GetService("Workspace").Shops["SaiyanPod"..tostring(p)].ClickBox.ClickDetector)
    wait()
    for k,v in next,getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.Category.Frames.SpecialObtain.Container.Buy.MouseButton1Click) do
    	v.Function()
    end
end


local function get_champions(tables)
    index = 0
    for i = 1,#tables,1 do
        if tables[i].Name == "UIGridLayout" then
            index = i
        end
    end
    table.remove(tables,index)
    return tables
end

local function champions_table()
    Children = get_children()
    Children = get_champions(Children)
    return #Children
end

local function sell(chp)
    local args = {
        [1] = "SellChamp",
        [2] = chp
    }
    game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer(unpack(args))
end

local function lock(locker)
    local args = {
        [1] = "LockChamp",
        [2] = locker
    }
    game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer(unpack(args))
end

AutoOpen:NewButton("Spawn - Chikaras Board : 5K Chikara Shards", "Automatically purchase champions from the chikaras board at spawn.", function()
    if _G.Opening then
        _G.Opening = false
        game.StarterGui:SetCore("SendNotification", {Title = "LuxScript";Text = "Auto-Champs : Disabled";Icon = "rbxassetid://3354469513";Duration = 3;})
    else
        _G.Opening = true
        game.StarterGui:SetCore("SendNotification", {Title = "LuxScript";Text = "Auto-Champs : Enabled";Icon = "rbxassetid://3354469513";Duration = 3;})

    end
    while _G.Opening do
        buy(1)
        if table.find(_G.Keep,game:GetService("Players").PandArcElectric.PlayerGui.Main.ObtainGranted.Champions.Details.Award.Text) then
            lock(champions_table())
        else
            sell(champions_table())
            delete()
            num()
        end
        wait()
    end
end)

AutoOpen:NewButton("Spawn - Spirits Board : 20K Spirit Shards", "Automatically purchase champions from the spirits board at spawn.", function()
    if _G.Opening then
        _G.Opening = false
        game.StarterGui:SetCore("SendNotification", {Title = "LuxScript";Text = "Auto-Champs : Disabled";Icon = "rbxassetid://3354469513";Duration = 3;})
    else
        _G.Opening = true
        game.StarterGui:SetCore("SendNotification", {Title = "LuxScript";Text = "Auto-Champs : Enabled";Icon = "rbxassetid://3354469513";Duration = 3;})

    end
    while _G.Opening do
        buy(2)
        if table.find(_G.Keep,game:GetService("Players").PandArcElectric.PlayerGui.Main.ObtainGranted.Champions.Details.Award.Text) then
            lock(champions_table())
        else
            sell(champions_table())
            delete()
            num()
        end
        wait()
    end
end)

AutoOpen:NewButton("Volcano - Spirits Board : 25M Spirit Shards", "Automatically purchase champions from the spirits board at volcano.", function()
    if _G.Opening then
        _G.Opening = false
        game.StarterGui:SetCore("SendNotification", {Title = "LuxScript";Text = "Auto-Champs : Disabled";Icon = "rbxassetid://3354469513";Duration = 3;})
    else
        _G.Opening = true
        game.StarterGui:SetCore("SendNotification", {Title = "LuxScript";Text = "Auto-Champs : Enabled";Icon = "rbxassetid://3354469513";Duration = 3;})

    end
    while _G.Opening do
        buy(4)
        if table.find(_G.Keep,game:GetService("Players").PandArcElectric.PlayerGui.Main.ObtainGranted.Champions.Details.Award.Text) then
            lock(champions_table())
        else
            sell(champions_table())
            delete()
            num()
        end
        wait()
    end
end)

AutoOpen:NewButton("Waterfall - Spirits Board : 3T Spirit Shards", "Automatically purchase champions from the spirits board at waterfall.", function()
    if _G.Opening then
        _G.Opening = false
        game.StarterGui:SetCore("SendNotification", {Title = "LuxScript";Text = "Auto-Champs : Disabled";Icon = "rbxassetid://3354469513";Duration = 3;})
    else
        _G.Opening = true
        game.StarterGui:SetCore("SendNotification", {Title = "LuxScript";Text = "Auto-Champs : Enabled";Icon = "rbxassetid://3354469513";Duration = 3;})

    end
    while _G.Opening do
        buy(5)
        if table.find(_G.Keep,game:GetService("Players").PandArcElectric.PlayerGui.Main.ObtainGranted.Champions.Details.Award.Text) then
            lock(champions_table())
        else
            sell(champions_table())
            delete()
            num()
        end
        wait()
    end
end)

local ChampionInformation = MainTab:NewSection("Desired champions must be in _G.Keep")
local ChampionInformation2 = MainTab:NewSection("Example : _G.Keep = {\"Bercoliu\",\"Drip Gokro\"}")
