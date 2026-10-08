local connections = {}

local function connect(signal, callback)
    local connection = signal:Connect(callback)
    table.insert(connections, connection)
end

local function disconnectAll()
    for _, connection in ipairs(connections) do
        connection:Disconnect()
    end
    table.clear(connections)
end