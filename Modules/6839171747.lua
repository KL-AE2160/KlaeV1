repeat wait() until shared.Notify
shared.Notify("KlaeV1 > Doors Loaded")
if game.PlaceID == 6516141723 then
  shared.Notify("KlaeV1 > ❌ - Please Go To An Elevator Before This Script Launches")
else
  -- Lazy to make gui library :P
  local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
  local Window = Library.CreateLib("Doors", "Synapse")
--  local Tab = Window:NewTab("TabName")
--  local Section = Tab:NewSection("Section Name")
  local A = Window:NewTab("External")
  local B = A:NewSection("Inject Scripts")
  B:NewButton("Banana Launcher", "External Script", function()
      pcall(function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/MasterOogway6147/Scripts/main/Doors/Kardin%20Hong/Banana%20Gun/Banana%20Gun.lua"))() 
      end)
  end)
  B:NewButton("Vynixius", "Discontinued", function()
      shared.xnotify("Just a warm reminder that Vynixius is deprecated. Use it at your own risk.")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))()
    end)
  B:NewTextBox("Inject", "Testing", function(txt)
      pcall(function() loadstring(txt)() end)
    end)
end