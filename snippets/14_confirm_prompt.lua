local function confirmPurchase()
    local answer = "yes"
    return answer == "yes"
end

if confirmPurchase() then
    print("Confirmed")
else
    print("Cancelled")
end