local debounce = false

local function doAction()
    if debounce then
        return
    end

    debounce = true

    task.delay(0.5, function()
        debounce = false
    end)

    print("Action executed")
end