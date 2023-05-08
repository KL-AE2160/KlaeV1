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
if not game.PlaceId then
  game.Players.LocalPlayer:Kick("[UnsupportedExecutor]: Sorry. We are not currently supporting this executor. PlaceId is missing.")
  -- I guess it will work in krnl & synpase or  ill be very sad :< HOW THEY CANNOT DO THAT FOR FLUXUS OR CELERY TRASH@!!@@!@!@!
end
local function check(id)
  local suc, res = pcall(function() 
      return game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/KlaeV1/main/Modules/"..id..".lua") 
  end)
  return suc and res ~= nil and res ~= "404: Not Found"
end
if check(game.PlaceID) then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/KlaeV1/main/Modules/"..game.PlaceID..".lua"))()
else 
  --NOnE 
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
local KlaeUi = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
local KaLog = Instance.new("Frame", KlaeUi)
local KaTxt = Instance.new("TextLabel", KaLog)
local Rain = Instance.new("TextLabel", KaLog)
KlaeUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
KaLog.Name = "logo"
KaLog.BackgroundColor3 = Color3.fromRGB(255,255,255)
KaLog.BackgroundTransparency = 1.000
KaLog.BorderSizePixel = 0
KaLog.Size = UDim2.new(0,272,0,23)
KaTxt.Name = "actuallogo"
KaTxt.BackgroundColor3 = Color3.fromRGB(0,0,0)
KaTxt.BorderSizePixel = 0
KaTxt.BackgroundTransparency = 0.700
KaTxt.BorderColor3 = Color3.fromRGB(0,0,0)
KaTxt.Position = UDim2.new(0.0294117648, 0, 0.434782594, 0)
KaTxt.Font = Enum.Font.Ubuntu
KaTxt.Text = "KlaeV1 | "..game.PlaceID.." | "..game.Name
KaTxt.TextColor3 = Color3.fromRGB(255,255,255)
KaTxt.TextSize = 14.000
Rain.Name = "rainbow"
Rain.Size = UDim2.new(0,272,0,4)
Rain.Position = UDim2.new(0.0294117648, 0, 0.260869503, 0)
Rain.BackgroundColor3 = Color3.fromRGB(255,255,255)
Rain.BorderSizePixel = 0
Rain.BorderColor3 = Color3.fromRGB(0,0,0)
Rain.Font = Enum.Font.SourceSans
Rain.TextSize = 14.000
Rain.TextColor3 = Color3.fromRGB(0,0,0)
local function xl()
  local Script = Instance.new("LocalScript", Rain)
  local r = {
    Color3.fromRGB(254, 0, 0);		--red

		Color3.fromRGB(255, 127, 0);	--orange

		Color3.fromRGB(255, 221, 1);	--yellow

		Color3.fromRGB(0, 200, 0);		--green

		Color3.fromRGB(0, 160, 199);	--light blue

		Color3.fromRGB(0, 55, 230);		--dark blue

		Color3.fromRGB(129, 16, 210) -- Purple
  }
  local info = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)

	script.Parent.BackgroundColor3 = r[1]

	i = 1

	while true do

		local tween = game:GetService("TweenService"):Create(script.Parent, info, { 
        BackgroundColor3 = r[i]
      })
    tween:Play()
		repeat wait() until tween.Completed
		wait(0.2)
		if i == #r then i = 1 else i = i + 1 end
  end
end
coroutine.wrap(xl)
queueonteleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/KL-AE2160/KlaeV1/main/MainScript.lua\"))()")