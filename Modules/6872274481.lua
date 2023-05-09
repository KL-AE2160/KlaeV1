pcall(function() 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua"))()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
-- Avoid Errors from reloading ^
shared.Notify("AutoScriptInject -> VXPE V4 & INFINITE YIELD.")
repeat task.wait() until game:IsLoaded()
repeat task.wait() until shared.GuiLibrary
local GuiLibrary = shared.GuiLibrary
local ScriptSettings = {}
local UIS = game:GetService("UserInputService")
local LIB = function(tab, argstable) 
  return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end

function notify(text, cap)
  local frame = GuiLibrary["CreateNotification"](cap, text, 5, "assets/WarningNotification.png")
  frame.Frame.Frame.ImageColor3 = Color3.fromRGB(255, 64, 64)
end
function boxnotify(text, cap)
  cap = cap or "Klae Config"
    if messagebox then
      messagebox(text, cap, 0)
    end
end
notify("Klae Config Loaded.")
local antivoidpart
local SolidAV = LIB("Utility", {
    Name = "SolidAntiVoid",
    Function = function(callback)
      if callback then
        antivoidpart = Instance.new("Part")
        antivoidpart.Size = Vector3.new(2100, 0.5, 2000)
        antivoidpart.Position = Vector3.new(160.5, 25, 247.5)
        antivoidpart.Transparency = 0.4
        antivoidpart.Anchored = true
        antivoidpart.Color = Color3.fromRGB(255, 255, 255)
        antivoidpart.Parent = workspace
      else
        if not antivoidpart then return end -- Maybe it got trolled by autoclick / drag click
        antivoidpart:Remove()
        antivoidpart = nil
      end
  end
})
local IY = LIB("Utility", {
  Name = "InfiniteYield",
  Function = function(cb)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    shared.Notify("Infinite Yield Loading")
  end,
  Default = false,
  HoverText = "Loaded IY in case it failed to load."
})
