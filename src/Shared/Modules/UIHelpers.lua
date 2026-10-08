local UIHelpers = {}

function UIHelpers.createFrame(parent, size, position, color)
    local frame = Instance.new("Frame")
    frame.Size = size
    frame.Position = position
    frame.BackgroundColor3 = color or Color3.fromRGB(30, 30, 30)
    frame.BorderSizePixel = 0
    frame.Parent = parent
    return frame
end

function UIHelpers.createTextLabel(parent, text, size, position, color, fontSize)
    local label = Instance.new("TextLabel")
    label.Size = size
    label.Position = position
    label.Text = text
    label.BackgroundTransparency = 1
    label.TextColor3 = color or Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.GothamBold
    label.TextSize = fontSize or 18
    label.Parent = parent
    return label
end

function UIHelpers.createButton(parent, text, size, position, callback)
    local button = Instance.new("TextButton")
    button.Size = size
    button.Position = position
    button.Text = text
    button.Font = Enum.Font.GothamBold
    button.TextSize = 18
    button.BackgroundColor3 = Color3.fromRGB(52, 152, 219)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = parent

    if callback then
        button.MouseButton1Click:Connect(callback)
    end

    return button
end

return UIHelpers