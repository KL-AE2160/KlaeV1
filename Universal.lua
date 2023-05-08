local rs = game:GetService("ReplicatedStorage")
local events = rs.DefaultChatSystemChatEvents
local msgRequest = events.SayMessageRequest
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local OnMessageDoneFiltering = events:WaitForChild("OnMessageDoneFiltering");
OnMessageDoneFiltering.OnClientEvent:Connect(function(tab, chan)
    local user = plrs:FindFirstChild(tab.FromSpeaker)
    local args = tab.Message:split(" ")
    
end)