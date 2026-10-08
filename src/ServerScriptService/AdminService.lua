local AdminService = {}

local administrators = {
    "Owner",
    "Moderator"
}

function AdminService.isAdmin(player)
    return table.find(administrators, player.Name) ~= nil
end

return AdminService