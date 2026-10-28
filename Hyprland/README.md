# Hyprland / Noctalia overlay

These are additive settings for an existing Hyprland Lua setup. The installer
backs up conflicting files, copies this folder's `.config` contents into the
user's `.config`, and loads `visual-overlay.lua` from the existing
`hyprland.lua` entrypoint. It does not replace monitor, environment, keybinding,
or startup settings.

The Lua module requires Hyprland 0.55 or newer. It applies the visual defaults,
floats ordinary windows, keeps compositor-classified games and Steam game
windows tiled, and centers modal dialogs. It does not assign windows to
workspaces or change existing shortcuts.

`90-hyprland-overlay.toml` and `palettes/Violet-Noir.json` provide the Noctalia
top bar and palette. Noctalia loads the overlay alongside other TOML files;
GUI-managed values in `~/.local/state/noctalia/settings.toml` can override it.
No packages, plugins, or wallpapers are included.
