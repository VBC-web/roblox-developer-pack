# RoBolox Developer Pack

A production-friendly Roblox/Luau starter pack for building games faster. This project includes modular systems for economy, inventory, DataStore persistence, shop flows, settings UI, HUD, admin patterns, reusable Luau utilities, and example templates.

## Features

- Inventory system starter
- Currency / economy starter
- DataStore persistence helpers
- Shop flow example
- Leaderboard starter
- Settings UI starter
- Admin panel starter
- HUD starter
- Reusable Luau utilities
- Reusable snippet library

## Project structure

```text
roblox-developer-pack/
├── README.md
├── INSTALLATION.md
├── LICENSE
├── .gitignore
├── src/
│   ├── Shared/
│   │   ├── Modules/
│   │   │   ├── Utils.lua
│   │   │   ├── Signals.lua
│   │   │   ├── Formatting.lua
│   │   │   ├── DataStoreHelper.lua
│   │   │   └── UIHelpers.lua
│   │   ├── Config/
│   │   │   └── GameConfig.lua
│   │   └── Remotes/
│   │       └── RemoteRegistry.lua
│   ├── ServerScriptService/
│   │   ├── Main.server.lua
│   │   ├── EconomyService.lua
│   │   ├── InventoryService.lua
│   │   ├── DataService.lua
│   │   └── AdminService.lua
│   └── StarterPlayer/
│       └── StarterPlayerScripts/
│           ├── Main.client.lua
│           ├── HUD.client.lua
│           ├── InventoryUI.client.lua
│           ├── ShopUI.client.lua
│           └── SettingsUI.client.lua
├── templates/
│   ├── inventory-system/
│   │   ├── InventoryServer.lua
│   │   ├── InventoryClient.lua
│   │   └── InventoryUI.lua
│   ├── currency-system/
│   │   ├── CurrencyServer.lua
│   │   ├── CurrencyClient.lua
│   │   └── CurrencyUI.lua
│   ├── leaderboard/
│   │   ├── LeaderboardServer.lua
│   │   ├── LeaderboardClient.lua
│   │   └── LeaderboardUI.lua
│   ├── datastore-example/
│   │   ├── DataStoreExample.lua
│   │   ├── SaveManager.lua
│   │   └── DataStoreUI.lua
│   ├── shop-system/
│   │   ├── ShopServer.lua
│   │   ├── ShopClient.lua
│   │   └── ShopUI.lua
│   ├── settings-menu/
│   │   ├── SettingsClient.lua
│   │   └── SettingsUI.lua
│   └── admin-panel/
│       ├── AdminPanelClient.lua
│       ├── AdminPanelServer.lua
│       └── AdminPanelUI.lua
├── snippets/
│   ├── 01_require_module.lua
│   ├── 02_debounce.lua
│   ├── 03_format_currency.lua
│   ├── 04_create_button.lua
│   ├── 05_open_close_ui.lua
│   ├── 06_update_label.lua
│   ├── 07_save_data.lua
│   ├── 08_load_data.lua
│   ├── 09_sort_leaderboard.lua
│   ├── 10_inventory_add_item.lua
│   ├── 11_inventory_remove_item.lua
│   ├── 12_shop_purchase.lua
│   ├── 13_tab_switcher.lua
│   ├── 14_confirm_prompt.lua
│   ├── 15_clamp_value.lua
│   ├── 16_get_random_choice.lua
│   ├── 17_tween_ui.lua
│   ├── 18_number_format.lua
│   ├── 19_safe_json.lua
│   └── 20_clean_connections.lua
├── examples/
│   └── Bootstraps/
│       ├── Main.server.lua
│       └── Main.client.lua
```

## Quick start

1. Open Roblox Studio.
2. Create a new experience.
3. Copy the relevant files into the correct Roblox paths.
4. Put shared files under `ReplicatedStorage`.
5. Put server code under `ServerScriptService`.
6. Put client scripts under `StarterPlayerScripts`.
7. Test in play mode.

## Security best practices

- Server is authoritative for state and economy.
- Never trust the client for money or inventory updates.
- Validate all `RemoteEvent` payloads before writing to DataStore.
- Use server-side persistence for player data.

## License

This project is provided as a starter kit for Roblox development. Please ensure any commercial or public use complies with Roblox policies and local laws.