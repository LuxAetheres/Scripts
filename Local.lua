local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Auto Grind Champs", "Synapse")
local MainTab = Window:NewTab("Champions")
local AutoOpen = MainTab:NewSection("Activate Auto-Open-Champions")
local function buy_champ(pod) loadstring(game:HttpGet("https://raw.githubusercontent.com/LuxAetheres/Scripts/Champions/Buying%20Champs.lua"))() end
local function sell_champ() loadstring(game:HttpGet("https://raw.githubusercontent.com/LuxAetheres/Scripts/Champions/Selling%20Champs.lua"))() end
local Opening = false
local Selling = false