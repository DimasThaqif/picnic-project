--!strict

local Players = game:GetService("Players")

local DEFAULT_MONEY: number = 100

local function leaderstats(player: Player)
    local folder = Instance.new("Folder")
    folder.Name = "leaderstats"
    folder.Parent = player

    local money = Instance.new("IntValue")
    money.Name = "Money"
    money.Value = DEFAULT_MONEY
    money.Parent = folder
end

Players.PlayerAdded:Connect(leaderstats)
