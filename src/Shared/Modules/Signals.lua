local Signals = {}

function Signals.new()
    local connections = {}

    local signal = {}

    function signal:Connect(callback)
        local connection = {
            callback = callback,
            connected = true
        }

        table.insert(connections, connection)

        return {
            Disconnect = function()
                if not connection.connected then
                    return
                end

                connection.connected = false
                for index, item in ipairs(connections) do
                    if item == connection then
                        table.remove(connections, index)
                        break
                    end
                end
            end
        }
    end

    function signal:Fire(...)
        for _, connection in ipairs(connections) do
            if connection.connected then
                task.spawn(connection.callback, ...)
            end
        end
    end

    return signal
end

return Signals