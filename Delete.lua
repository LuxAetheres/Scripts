local champlist = game.Players.localPlayer.PlayerGui.Main.Category.Frames.Champions.Container.List
local Children = champlist:GetChildren()
if not #Children == 0 then
    for i = 1,#Children,1 do
        if Children[i] == "UIGrindLayout" then Children[i]:remove() end end end