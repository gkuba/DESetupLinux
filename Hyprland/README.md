# Hyprland / Noctalia overlay

These are additive settings for an existing Hyprland Lua setup. The installer
backs up conflicting files, copies this folder's `.config` contents into the
user's `.config`, and loads `visual-overlay.lua` from the existing
`hyprland.lua` entrypoint. It does not replace monitor, environment, keybinding,
or startup settings.

The Lua module requires Hyprland 0.55 or newer. It selects the bundled
Empty-Butterfly-Purple XCursor theme, then applies Violet-Noir border colors,
translucent windows, and blur. It does not change window placement, gaps,
rounding, animations, workspaces, or shortcuts.

`90-hyprland-overlay.toml` and `palettes/Violet-Noir.json` provide the Noctalia
top bar, palette, hourly random wallpaper folder, and Greeter appearance
auto-sync. GUI-managed values in `~/.local/state/noctalia/settings.toml` can
override the shell config. The installer supplies the cursor and wallpaper
assets from the repository's `.icons/` and `Wallpapers/` folders.
