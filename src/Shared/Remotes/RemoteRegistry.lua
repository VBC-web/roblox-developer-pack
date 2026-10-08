local ReplicatedStorage = game:GetService("ReplicatedStorage")

local RemoteRegistry = {}

local function ensureFolder(name)
    local folder = ReplicatedStorage:FindFirstChild(name)
    if not folder then
        folder = Instance.new("Folder")
        folder.Name = name
        folder.Parent = ReplicatedStorage
    end
    return folder
end

local function ensureRemote(folderName, remoteName, remoteType)
    local folder = ensureFolder(folderName)
    local remote = folder:FindFirstChild(remoteName)
    if not remote then
        if remoteType == "Function" then
            remote = Instance.new("RemoteFunction")
        else
            remote = Instance.new("RemoteEvent")
        end
        remote.Name = remoteName
        remote.Parent = folder
    end
    return remote
end

function RemoteRegistry.getRemote(folderName, remoteName, remoteType)
    return ensureRemote(folderName, remoteName, remoteType or "Event")
end

return RemoteRegistry