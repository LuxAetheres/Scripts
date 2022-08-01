--[[
*****
***** Ajoute -- devant le wait(30) si tu l'éxécute une fois en jeu. Ne les met pas si tu auto-éxécute le script.
*****
--]]

wait(30)

if game.PlaceId == 6002047566 then
local function dur()
    local ohString1 = "SG"
    local ohString2 = "Endurance"
    game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer(ohString1, ohString2)
end
local function swing()
    local ohString1 = "SG"
    game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer(ohString1)
end
--2984.5274
--main
while true do
    val_v = game:GetService("Players").LocalPlayer.PlayerGui.Main.Front.Hotbar:FindFirstChild("1").Main.AbsoluteSize
    val_v = tostring(val_v)
    val_w = game:GetService("Players").LocalPlayer.PlayerGui.Main.Front.Hotbar:FindFirstChild("2").Main.AbsoluteSize
    val_w = tostring(val_w)
    if val_v == "91.8899994, 91.8899994" then
        swing()
    elseif val_w == "91.8899994, 91.8899994" then
        dur()
    else
        wait(0)
    end
    wait(0.1)
end
end