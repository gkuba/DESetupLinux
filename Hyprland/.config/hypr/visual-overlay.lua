-- Arch-GKuba Hyprland visual overlay.
-- Loaded from the existing hyprland.lua entrypoint; does not replace its
-- monitor, environment, keybinding, or startup configuration.
-- Requires Hyprland 0.55+ with Lua configuration enabled.

-- Use the bundled XCursor theme for Hyprland and applications inheriting its
-- session environment. Hyprland falls back to XCursor when no Hyprcursor theme
-- with this name is installed.
hl.env("XCURSOR_THEME", "Empty-Butterfly-Purple-Hyprland")
hl.env("XCURSOR_SIZE", "48")
hl.env(
  "XCURSOR_PATH",
  os.getenv("HOME") .. "/.local/share/icons:" .. os.getenv("HOME") .. "/.icons:/usr/share/icons"
)

-- Apply the cursor after Hyprland has initialized its cursor manager. Setting
-- XCURSOR_THEME alone during Lua config loading can be too late for startup.
hl.on("hyprland.start", function()
  hl.exec_cmd("hyprctl setcursor Empty-Butterfly-Purple-Hyprland 48")
end)

hl.config({
  general = {
    col = {
      active_border = {
        colors = { "rgb(8050D4)", "rgb(5377CC)" },
        angle = 45,
      },
      inactive_border = "rgba(30323A99)",
    },
  },
  decoration = {
    active_opacity = 0.96,
    inactive_opacity = 0.92,
    blur = {
      enabled = true,
      size = 6,
      passes = 2,
      new_optimizations = true,
    },
  },
})
