local tabs = {
    Inventory = false,
    Shop = false,
    Settings = true
}

local function switchTab(name)
    for tabName in pairs(tabs) do
        tabs[tabName] = false
    end
    tabs[name] = true
end