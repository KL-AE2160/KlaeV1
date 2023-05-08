local CurT = os.time()
repeat wait() until game:IsLoaded()
local isfile = isfile or function(ew) 
  local suc,res = pcall(function() 
    return readfile(ew)
  end)
  return suc and res ~= nil
end
local delfile = delfile or function(ex)
  writefile(ex,"")
end
local setidentity = syn and syn.set_thread_identity or set_thread_identity or setidentity or setthreadidentity or function() end
local getidentity = syn and syn.get_thread_identity or get_thread_identity or getidentity or getthreadidentity or function() return 0 end
local getcustomasset = getsynasset or getcustomasset or function(location) return "rbxasset://"..location end
local queueonteleport = syn and syn.queue_on_teleport or queue_on_teleport or function() end
local function rblxnotify(text, funclist)
	local oldidentity = getidentity()
	setidentity(8)
	local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
	local prompt = ErrorPrompt.new("Default")
	prompt._hideErrorCode = true
	local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
	prompt:setErrorTitle("Vape")
	local funcs
	if funclist then 
		funcs = {}
		local num = 0
		for i,v in pairs(funclist) do 
			num = num + 1
			table.insert(funcs, {
				Text = i,
				Callback = function() 
					prompt:_close() 
					v()
				end,
				Primary = num == #funclist
			})
		end
	end
	prompt:updateButtons(funcs or {{
		Text = "OK",
		Callback = function() 
			prompt:_close() 
		end,
		Primary = true
	}}, 'Default')
	prompt:setParent(gui)
	prompt:_open(text)
	setidentity(oldidentity)
end
shared.notify = rblxnotify
shared.qot = queueonteleport
local function check(id)
  local suc, res = pcall(function() 
      return game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/KlaeV1/main/Modules/"..id..".lua") 
  end)
  return suc and res ~= nil and res ~= "404: Not Found"
end
if check(game.PlaceID) then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/KlaeV1/main/Modules/"..game.PlaceID..".lua"))()
end
-- shared.GuiLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/KlaeV1/main/GuiLib.lua"))
shared.LoadedKa = true
assert(not shared.LoadedKa, "KlaeV1 Already Injected")
local NTime = os.date()
local LTime = NTime - CurT
if LTime < 0 then LTime = 0 end
local sgI = game:GetService("StarterGui")
shared["Notify"] = function(text)
  sgI:SetCore("ChatMakeSystemMessage", {
      ["Text"] = "\n<font color='rgb(255,85,85)'>[KlaeV1]</font> <font color='rgb(200,200,200)'>"..tostring(text).."</font>"
  })
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/KlaeV1/main/Word.lua"))()
shared.Notify('👍 KlaeV1 Loaded In '..tostring(LTime).." Seconds!")
loadstring(game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/KlaeV1/main/Universal.lua"))()

queueonteleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/KL-AE2160/KlaeV1/main/MainScript.lua\"))()")