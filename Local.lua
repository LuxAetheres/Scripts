local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Auto Grind Champs", "Synapse")
local MainTab = Window:NewTab("Champions")
local AutoOpen = MainTab:NewSection("Activate Auto-Open-Champions")
local function imported_function(funct)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/LuxAetheres/Scripts/Champions/"..funct..".lua"))() end
local Opening = false
