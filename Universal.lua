local rs = game:GetService("ReplicatedStorage")
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local textChatService = game:GetService("TextChatService")
--[[
  VapeV4 - Auto Report Source

----
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
shared.rank = Rank