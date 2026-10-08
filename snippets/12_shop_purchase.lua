local coins = 200

local function purchaseItem(price)
    if coins >= price then
        coins = coins - price
        print("Purchase successful")
        return true
    end

    print("Not enough coins")
    return false
end