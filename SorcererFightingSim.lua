print("start")
if game:IsLoaded() == true then
    local vu = game:service'VirtualUser'

    game:service'Players'.LocalPlayer.Idled:connect(function()
        vu:CaptureController()
        vu:ClickButton2(Vector2.new())
end

game.Loaded:Connect(function()
    local vu = game:service'VirtualUser'

    game:service'Players'.LocalPlayer.Idled:connect(function()
        vu:CaptureController()
        vu:ClickButton2(Vector2.new())
end)


local LuxScript = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Close = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local NormalTab = Instance.new("Frame")
local AutoFarm = Instance.new("TextButton")
local AutoQuest = Instance.new("TextButton")
local NPC = Instance.new("TextButton")
local autofarm = false
local autoquest = false
local vim = game:service'VirtualInputManager'
local function power(key)
    vim:SendKeyEvent(true, key, false, game)
end
local function frappe()
    wait(1.2)
    vim:SendMouseButtonEvent(1000,500,0,true,game,1)
    wait(1.2)
    vim:SendMouseButtonEvent(1000,500,0,true,game,1)
    wait(1.2)
    vim:SendMouseButtonEvent(1000,500,0,true,game,1)
    wait(1.2)
    vim:SendMouseButtonEvent(1000,500,0,true,game,1)
    wait(1.2)
    vim:SendMouseButtonEvent(1000,500,0,true,game,1)
    wait(1.2)
end

local function dur()
    local ohString1 = "SG"
    local ohString2 = "Endurance"
    game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer(ohString1, ohString2)
end
local function swing()
    local ohString1 = "SG"
    game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer(ohString1)
end

LuxScript.Name = "LuxScript"
LuxScript.Parent = game:WaitForChild("CoreGui")
LuxScript.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Main.Name = "Main"
Main.Parent = LuxScript
Main.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Main.BackgroundTransparency = 1
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.421999991, 0, -1, 0)
Main.Size = UDim2.new(0, 300, 0, 250)
Main.Active = true
Main.Draggable = true
 
TopBar.Name = "TopBar"
TopBar.Parent = Main
TopBar.Transparency = 0.5
TopBar.BackgroundColor3 = Color3.new(0, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(0, 300, 0, 30)
 
Close.Name = "Close"
Close.Parent = TopBar
Close.BackgroundColor3 = Color3.new(0, 0, 0)
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.899999976, 0, 0, 0)
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Font = Enum.Font.SciFi
Close.Text = "x"
Close.TextColor3 = Color3.new(1, 0, 0.0156863)
Close.TextSize = 20
Close.MouseButton1Click:Connect(function()
    Main:TweenPosition(UDim2.new(0.421999991, 0, -1.28400004, 0))
    madara = 0
    crystals = 0
    wait(3)
    AnimationChanger:Destroy()
end)

TextLabel_2.Parent = TopBar
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 15, 0.15, 0)
TextLabel_2.Size = UDim2.new(0, 270, 0, 20)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.Text = "LuxScript"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 23
 
NormalTab.Name = "NormalTab"
NormalTab.Parent = Main
NormalTab.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
NormalTab.BackgroundTransparency = 1
NormalTab.BorderSizePixel = 0
NormalTab.Position = UDim2.new(0.5, 0, 0.119999997, 0)
NormalTab.Size = UDim2.new(0, 150, 0, 500)
 
AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = NormalTab
AutoFarm.BackgroundColor3 = Color3.new(0, 0, 0)
AutoFarm.BackgroundTransparency = 0.75
AutoFarm.BorderSizePixel = 0
AutoFarm.Position = UDim2.new(0, -150, 0, 0)
AutoFarm.Size = UDim2.new(0, 300, 0, 30)
AutoFarm.Font = Enum.Font.SciFi
AutoFarm.Text = "AutoFarm : Off"
AutoFarm.TextColor3 = Color3.new(1, 0, 0)
AutoFarm.TextSize = 20
AutoFarm.MouseButton1Click:Connect(function()
    if autofarm == false then
        autofarm = true
        AutoFarm.Text = "AutoFarm : On"
        AutoFarm.TextColor3 = Color3.new(0, 1, 0)
    else
        autofarm = false
        AutoFarm.Text = "AutoFarm : Off"
        AutoFarm.TextColor3 = Color3.new(1, 0, 0)
    end
    if autofarm == true then
        while autofarm == true do
            val_v = game:GetService("Players").LocalPlayer.PlayerGui.Main.Front.Hotbar:FindFirstChild("1").Main.AbsoluteSize
            val_v = tostring(val_v)
            val_w = game:GetService("Players").LocalPlayer.PlayerGui.Main.Front.Hotbar:FindFirstChild("2").Main.AbsoluteSize
            val_w = tostring(val_w)
            if val_v == "91.8899994, 91.8899994" then
                swing()
            elseif val_w == "91.8899994, 91.8899994" then
                dur()
            else
                wait()
            end
            wait(0.1)
        end
    end
end)
 
AutoQuest.Name = "AutoQuest"
AutoQuest.Parent = NormalTab
AutoQuest.BackgroundColor3 = Color3.new(0, 0, 0)
AutoQuest.BackgroundTransparency = 0.75
AutoQuest.BorderSizePixel = 0
AutoQuest.Position = UDim2.new(0, -150, 0.06, 0)
AutoQuest.Size = UDim2.new(0, 300, 0, 30)
AutoQuest.Font = Enum.Font.SciFi
AutoQuest.Text = "AutoQuest : Off"
AutoQuest.TextColor3 = Color3.new(1, 0, 0)
AutoQuest.TextSize = 20
AutoQuest.MouseButton1Click:Connect(function()
    if autoquest == false then
        autoquest = true
        AutoQuest.Text = "AutoFarm : On"
        AutoQuest.TextColor3 = Color3.new(0, 1, 0)
    else
        autoquest = false
        AutoQuest.Text = "AutoFarm : Off"
        AutoQuest.TextColor3 = Color3.new(1, 0, 0)
    end
    if autoquest == true then
        while autoquest == true do
            workspace.NPCs:FindFirstChild(NPC.Text).ClickBox.WorldPrompt.RemoteEvent:FireServer()
            wait(1)
        end
    end
end)

NPC.Name = "NPC"
NPC.Parent = NormalTab
NPC.BackgroundColor3 = Color3.new(0, 0, 0)
NPC.BackgroundTransparency = 0.75
NPC.BorderSizePixel = 0
NPC.Position = UDim2.new(0, -150, 0.12, 0)
NPC.Size = UDim2.new(0, 300, 0, 30)
NPC.Font = Enum.Font.SciFi
NPC.Text = "Marm"
NPC.TextColor3 = Color3.new(1, 0.694118, 0.0784314)
NPC.TextSize = 20
NPC.MouseButton1Click:Connect(function()
    if NPC.Text == "Marm" then
        NPC.Text = "Blaze"
        NPC.TextColor3 = Color3.new(1, 0.666667, 0)
    elseif NPC.Text == "Blaze" then
        NPC.Text = "Aquarius"
        NPC.TextColor3 = Color3.new(0, 0.666667, 1)
    elseif NPC.Text == "Aquarius" then
        NPC.Text = "Apollo"
        NPC.TextColor3 = Color3.new(1, 0.458824, 0.458824)
    elseif NPC.Text == "Apollo" then
        NPC.Text = "Riot"
        NPC.TextColor3 = Color3.new(0.85098, 0.85098, 0.639216)
    elseif NPC.Text == "Riot" then
        NPC.Text = "Violet"
        NPC.TextColor3 = Color3.new(0.666667, 0, 1)
    elseif NPC.Text == "Violet" then
        NPC.Text = "Tempest"
        NPC.TextColor3 = Color3.new(1, 1, 0)
    elseif NPC.Text == "Tempest" then
        NPC.Text = "Terra"
        NPC.TextColor3 = Color3.new(0.611765, 0.498039, 0.423529)
    elseif NPC.Text == "Terra" then
        NPC.Text = "Acerbic"
        NPC.TextColor3 = Color3.new(0, 0.666667, 0)
    elseif NPC.Text == "Acerbic" then
        NPC.Text = "Marm"
        NPC.TextColor3 = Color3.new(1, 0.694118, 0.0784314)
    end
end)

Main:TweenPosition(UDim2.new(0.421999991, 0, 0.28400004, 0))

while true do
    for j = 0,1,0.1 do
        TextLabel_2.TextColor3 = Color3.new(1, j, i)
        wait()
    end
    for j = 1,0,-0.1 do
        TextLabel_2.TextColor3 = Color3.new(1, j, i)
        wait()
    end
end
