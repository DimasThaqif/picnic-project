--!strict

local Players = game:GetService("Players")

type ItemName = "Flower" | "Apple" | "Berry"

type Inventory = {
    [ItemName]: number
}

local playerInventories: {[Player]: Inventory} = {}

local function createInventory(): Inventory
    return {
        Flower = 0,
        Apple = 0,
        Berry = 0,
    }
end

local function setupPlayer(player: Player)
    playerInventories[player] = createInventory()
end

local function cleanupPlayer(player: Player)
    playerInventories[player] = nil
end

Players.PlayerAdded:Connect(setupPlayer)
Players.PlayerRemoving:Connect(cleanupPlayer)

-- API (biar nanti bisa dipakai sistem lain)
local InventoryService = {}

function InventoryService.AddItem(player: Player, item: ItemName, amount: number)
    local inv = playerInventories[player]
    if not inv then return end
    inv[item] += amount
end

function InventoryService.GetInventory(player: Player): Inventory?
    return playerInventories[player]
end

return InventoryService
