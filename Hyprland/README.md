# Hyprland / Noctalia overlay

These are additive settings for an existing Hyprland Lua setup. The installer
backs up conflicting files, copies this folder's `.config` contents into the
user's `.config`, and loads `visual-overlay.lua` from the existing
`hyprland.lua` entrypoint. It does not replace monitor, environment, keybinding,
or startup settings.

The Lua module requires Hyprland 0.55 or newer. It selects a Hyprland-specific
copy of the bundled Empty-Butterfly-Purple XCursor theme after Hyprland starts,
then applies Violet-Noir border colors, translucent windows, and blur. It does
not change window placement, gaps, rounding, animations, workspaces, or
shortcuts.

The Hyprland installer keeps that adjusted cursor copy under
`~/.local/share/icons/Empty-Butterfly-Purple-Hyprland`; the shared cursor source
in `.icons/` remains unchanged for KDE Plasma.

`90-hyprland-overlay.toml` and `palettes/Violet-Noir.json` update the existing
Noctalia `default` bar, preserving the committed Control Center, launcher,
taskbar, centered clock/date/weather group, and system widgets. They add the
wallpaper selector and Workspaces followed by Active Window. They also set the
palette, configure hourly random wallpapers, and enable Greeter appearance
auto-sync. GUI-managed values in
`~/.local/state/noctalia/settings.toml` can override the shell config. The
installer supplies the cursor and wallpaper assets from the repository's
`.icons/` and `Wallpapers/` folders.
