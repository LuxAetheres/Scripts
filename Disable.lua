local player = game.Players.LocalPlayer.Name
if player == "Celine_Biscuit" or player == "PandaGivrant" or player == "PandArcElectric" then
    _G.Allowed = true
else
    _G.Allowed = false
end

print("function",_G.Allowed)
