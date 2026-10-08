local ReplicatedStorage = game:GetService("ReplicatedStorage")

local inventoryFolder = ReplicatedStorage:FindFirstChild("InventoryRemotes")
if not inventoryFolder then
    inventoryFolder = Instance.new("Folder")
    inventoryFolder.Name = "InventoryRemotes"
    inventoryFolder.Parent = ReplicatedStorage
end

local addItemEvent = inventoryFolder:FindFirstChild("AddItem")
if not addItemEvent then
    addItemEvent = Instance.new("RemoteEvent")
    addItemEvent.Name = "AddItem"
    addItemEvent.Parent = inventoryFolder
end

local removeItemEvent = inventoryFolder:FindFirstChild("RemoveItem")
if not removeItemEvent then
    removeItemEvent = Instance.new("RemoteEvent")
    removeItemEvent.Name = "RemoveItem"
    removeItemEvent.Parent = inventoryFolder
end

local inventoryData = {}

local function getInventory(player)
    local key = tostring(player.UserId)
    inventoryData[key] = inventoryData[key] or {}
    return inventoryData[key]
end

addItemEvent.OnServerEvent:Connect(function(player, itemName)
    table.insert(getInventory(player), itemName)
end)

removeItemEvent.OnServerEvent:Connect(function(player, itemName)
    local inventory = getInventory(player)
    for index, item in ipairs(inventory) do
        if item == itemName then
            table.remove(inventory, index)
            break
        end
    end
end)

return {
    addItem = function(player, itemName)
        table.insert(getInventory(player), itemName)
    end,
    removeItem = function(player, itemName)
        return true
    end
}