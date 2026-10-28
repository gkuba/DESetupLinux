# Hyprland / Noctalia overlay

These are additive settings for an existing Hyprland Lua setup. The installer
backs up conflicting files, copies this folder's `.config` contents into the
user's `.config`, and loads `visual-overlay.lua` from the existing
`hyprland.lua` entrypoint. It preserves monitor, environment, and startup
settings, while setting a standalone Super press/release to open Noctalia
Launcher immediately. Any other key pressed while Super is held suppresses the
launcher, preserving shortcuts such as Super+Q. Super+Enter replaces the Kitty
terminal shortcut with Ghostty, and Super+X also opens Ghostty.

The Lua module requires Hyprland 0.55 or newer. It sets XCursor and Hyprcursor
theme and size for the Hyprland-specific copy of Empty-Butterfly-Purple, then
applies Violet-Noir border colors, translucent windows, and blur. It does
not change window placement, gaps, rounding, animations, workspaces, or
shortcuts.

The Hyprland installer keeps that adjusted cursor copy under
`~/.local/share/icons/Empty-Butterfly-Purple-Hyprland`; the shared cursor source
in `.icons/` remains unchanged for KDE Plasma.

`90-hyprland-overlay.toml` and `palettes/Violet-Noir.json` update the existing
Noctalia `default` bar in place. It keeps the launcher and wallpaper selector at
the start, clock/date/weather in the center, and the system widgets at the end;
the Network label is hidden and Workspaces has no capsule. The overlay also
sets the bar size and shape, applies the Violet-Noir palette, configures hourly
random wallpapers, and enables Greeter appearance auto-sync. GUI-managed values in
`~/.local/state/noctalia/settings.toml` can override the shell config. The
installer supplies the cursor and wallpaper assets from the repository's
`.icons/` and `Wallpapers/` folders.
