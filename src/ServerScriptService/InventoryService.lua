local InventoryService = {}

local inventoryData = {}

local function getKey(player)
    return tostring(player.UserId)
end

function InventoryService.getInventory(player)
    local key = getKey(player)
    inventoryData[key] = inventoryData[key] or {}
    return inventoryData[key]
end

function InventoryService.addItem(player, itemName)
    local inventory = InventoryService.getInventory(player)
    table.insert(inventory, itemName)
    return inventory
end

function InventoryService.removeItem(player, itemName)
    local inventory = InventoryService.getInventory(player)
    for index, item in ipairs(inventory) do
        if item == itemName then
            table.remove(inventory, index)
            return true
        end
    end
    return false
end

return InventoryService