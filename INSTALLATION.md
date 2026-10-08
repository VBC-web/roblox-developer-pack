# Installation Guide

## Prerequisites

- Roblox Studio
- Basic Luau knowledge
- Optional: Rojo for local file syncing

## Folder structure

```text
ReplicatedStorage/
├── Shared/
│   ├── Modules/
│   ├── Config/
│   └── Remotes/

ServerScriptService/
├── Main.server.lua
├── EconomyService.lua
├── InventoryService.lua
├── DataService.lua
└── AdminService.lua

StarterPlayer/
└── StarterPlayerScripts/
    ├── Main.client.lua
    ├── HUD.client.lua
    ├── InventoryUI.client.lua
    ├── ShopUI.client.lua
    └── SettingsUI.client.lua
```

## Setup

1. Open Roblox Studio.
2. Create a new place or use an existing game.
3. Place shared modules in `ReplicatedStorage/Shared/Modules`.
4. Place server logic in `ServerScriptService`.
5. Place client scripts in `StarterPlayer/StarterPlayerScripts`.
6. Make sure all `RemoteEvent` names match on server and client.
7. Test in a local server.

## Example bootstrap

```lua
-- ServerScriptService/Main.server.lua
local Players = game:GetService("Players")

local function onPlayerAdded(player)
    print(player.Name .. " joined the server.")
end

Players.PlayerAdded:Connect(onPlayerAdded)
```

```lua
-- StarterPlayer/StarterPlayerScripts/Main.client.lua
local player = game.Players.LocalPlayer
print("Client ready for " .. player.Name)
```

## DataStore safety

- Use `DataStoreService` only on the server.
- Keep data keys consistent and unique.
- Handle failures with `pcall`.
- Never trust client-supplied state.