local ReplicatedStorage = game:GetService("ReplicatedStorage")

local folder = ReplicatedStorage:WaitForChild("InventoryRemotes")
local addItemEvent = folder:WaitForChild("AddItem")
local removeItemEvent = folder:WaitForChild("RemoveItem")

local items = {}

local function addItem(itemName)
    table.insert(items, itemName)
    addItemEvent:FireServer(itemName)
end

local function removeItem(itemName)
    for index, value in ipairs(items) do
        if value == itemName then
            table.remove(items, index)
            break
        end
    end
    removeItemEvent:FireServer(itemName)
end

return {
    addItem = addItem,
    removeItem = removeItem
}