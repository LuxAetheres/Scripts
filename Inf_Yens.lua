local function suppresslag()
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Notifs.Visible = false
    game:GetService("Workspace").MouseIgnore:remove()
    print("Chest Entity Removed")
end
local function notif(text)
    game.StarterGui:SetCore("SendNotification", {Title = "LuxScript";Text = text;Icon = "rbxassetid://3354469513";Duration = 5;})
end
local function lspin(n)
    for i = 1,n do
        task.spawn(function()
            game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer("LotteryRandomDraw")
            game:GetService("ReplicatedStorage").RSPackage.Events.GeneralEvent:FireServer("SpinFinished")
        end)
    end
end
local function sspin()
    for i = 1,3 do
        task.spawn(function()
            lspin(_G.Spin)
        end)
    end
end
local function totalspin()
    for i = 1,3 do
        for i = 1,_G.Loop do
            task.spawn(function()
                sspin()
            end)
            wait(_G.Wait)
        end
    end
end
if _G.LuxScript_Chest == true then suppresslag() notif("Chest deleted.") end
_G.Chest = 0
while _G.LuxScript_Yens == true do totalspin() _G.Chest = _G.Chest + 20000 notif("Opened : ~"..tostring(_G.Chest)) end






