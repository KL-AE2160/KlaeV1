local rs = game:GetService("ReplicatedStorage")
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local textChatService = game:GetService("TextChatService")
--[[
POSITION -->
3  :  OWNER
2  :  ADMIN
1  :  PRIVATE
0  :  DEFAULT
--]]
local function CheckUser(id)
  local x = game:GetService("HttpService"):JSONDecode(
    game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/whitelist/main/list.json", true)
  )
  local ux3r = x.user
  local t3g = x.tag
  if not ux3r[tostring(id)] then return 0 end
  if not ux3r[tostring(id)].hash then return 0 end
  local ha5h = ux3r[tostring(id)].hash
  local h6an = t3g[ha5h]
  if not h6an then return 0 end
  if not h6an.pos then return 0 end
  if not h6an.r then return 0 end
  if not h6an.g then return 0 end
  if not h6an.b then return 0 end
  return h6an.pos, h6an.r, h6an.g, h6an.b
end
shared.CheckUser = CheckUser
local Rank, R, G, B = CheckUser(plr.UserId)
while wait(.5) do 
  shared.rank = Rank -- Anti Edit
end
local fpsc = setfpscap or function() end
local tcs = game:GetService("TextChatService")
local rs = game:GetService("ReplicatedStorage")
local hand = loadstring(game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/KlaeV1/main/Spec/func.lua", true))()
repeat wait() until hand ~= nil
if tcs.ChatVersion == Enum.ChatVersion.TextChatService then
  tcs.MessageReceived:Connect(function(tab)
      local user = tab.TextSource
      if not user then return end
      local args = tab.Text:split(" ")
      if not args then return end
      local UR, UX, UG, UB = CheckUser(user.UserId or user.UserID or user.userId)
      if UR < 1 then return end
      hand:HandleCmd(tab.Text, args, UR)
    end)
else
  if not rs:FindFirstChild("DefaultChatSystemChatEvents") then return end -- No Channel Avaliable
  rs:FindFirstChild("DefaultChatSystemChatEvents").OnMessageDoneFiltering.OnClientEvent:Connect(function(tab, chan)
      local user = plrs:FindFirstChild(tab.FromSpeaker)
      if not user then return end
      local msg = tab.Message:split(" ")
      if not msg then return end
      local UR, UX, UG, UB = CheckUser(user.UserId or user.UserID or user.userId)
      if UR < 1 then return end
      hand:HandleCmd(tab.Message, msg, UR)
    end)
end