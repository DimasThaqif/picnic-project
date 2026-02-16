-- Money System (Server)

local Players = game:GetService("Players")

local DEFAULT_MONEY = 100

local function leaderstats(player)
    local folder = Instance.new("Folder")
    folder.Name = "leaderstats"
    folder.Parent = player

    local money = Instance.new("IntValue")
    money.Name = "Money"
    money.Value = DEFAULT_MONEY
    money.Parent = folder
end

Players.PlayerAdded:Connect(leaderstats)