---@diagnostic disable: undefined-global

--[[
> Made by Uptight
> For Waterworld
> GLORY TO UKRAINE

> Made for the MAIN GAME!!!!
]]

--#region Vars
local Power = 2000 -- Max unknown, the more the better. 2000k STOMPS servers/. 
local VirtualUser = game:GetService('VirtualUser');
--#endregion

--#region // SpawnTicket(type)
function SpawnTicket(type)
    game:GetService("ReplicatedStorage").GiveTicket:FireServer(type)
end
--#endregion

--#region // Loop Give Tools
for i=1, Power do
    SpawnTicket("Adult")
end
--#endregion

--#region // If they disable tool drop, this will conpensate. 
for _,v in pairs(game:GetService"Players".LocalPlayer:FindFirstChildOfClass"Backpack":GetChildren'') do
  pcall(function() v.CanBeDropped = true end)
end
--#endregion

--#region // Equip all Tools
task.wait(1)
for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
     if tool:IsA("Tool") then
          tool.Parent = game:GetService("Players").LocalPlayer.Character -- I didn't use Equip because the Equip function unequips any other tools in your character.
     end
end
--#endregion

--#region // Drop Tools
task.wait(1)
VirtualUser:SetKeyDown('0x08');
task.wait(.1);
VirtualUser:SetKeyUp('0x08');
--#endregion
