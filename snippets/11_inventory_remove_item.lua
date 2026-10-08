local inventory = { "Sword", "Potion", "Shield" }

local function removeItem(itemName)
    for index, item in ipairs(inventory) do
        if item == itemName then
            table.remove(inventory, index)
            return true
        end
    end

    return false
end