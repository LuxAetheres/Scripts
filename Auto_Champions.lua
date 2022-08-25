local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Auto Grind Champs", "Synapse")
local MainTab = Window:NewTab("Champions")
local AutoOpen = MainTab:NewSection("Activate Auto-Open-Champions")
local InfoTab = Window:NewTab("Keybinds")
local CreditsTab = Window:NewTab("Credits")
local KeybindSection = InfoTab:NewSection("Keybinds")
local CreditsSection = CreditsTab:NewSection("Scripts by LuxAetheres")
CreditsSection:NewLabel("Made for Céline")
local Opening = false

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

local function buy()
    fireclickdetector(game:GetService("Workspace").Shops.SaiyanPod2.ClickBox.ClickDetector)
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

AutoOpen:NewButton("Auto-Open", "Auto-Open", function()
    if Opening then
        Opening = false
        game.StarterGui:SetCore("SendNotification", {Title = "LuxScript";Text = "Auto-Champs : Disabled";Icon = "rbxassetid://3354469513";Duration = 3;})
    else
        Opening = true
        game.StarterGui:SetCore("SendNotification", {Title = "LuxScript";Text = "Auto-Champs : Enabled";Icon = "rbxassetid://3354469513";Duration = 3;})

    end
    while Opening do
        buy()
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