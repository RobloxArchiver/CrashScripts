---@diagnostic disable: undefined-global

--[[
> Made by Uptight
> For Waterworld
> GLORY TO UKRAINE

> Made for the EventCenter
]]

--#region // Variables
local Power = 2000 -- Max unknown, the more the better. 2000k STOMPS servers/. 
local VirtualUser = game:GetService('VirtualUser');
--#endregion

--#region // Give Cup
function GiveCup()
    fireclickdetector(game:GetService("Workspace").Model.Model.ClickDetector)
end
--#endregion

--#region // Glory to Ukraine
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("GLORY TO UKRAINE, Celia Team Sends Regards you Pro-Russians (We saw your ad)", "All")
--#endregion

--#region // Give tools
for i=1, Power do
    GiveCup()
end
--#endregion

--#region // Enable Drop
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
