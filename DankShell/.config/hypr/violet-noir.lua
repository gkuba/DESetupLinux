-- Arch-GKuba Violet-Noir looks for Hyprland with Dank Shell.
-- Loaded last from ~/.config/hypr/hyprland.lua with require("violet-noir"),
-- after the dms.* fragments, so these values win over the generated ones.
-- Colors, cursor, keybinds and wallpapers stay with Dank Shell; this file
-- only adds what a Dank Shell theme cannot express.
-- Requires Hyprland 0.55+ with Lua configuration enabled.

hl.config({
  general = {
    col = {
      -- Dank Shell's theme gives a solid primary border; keep the gradient.
      active_border = {
        colors = { "rgb(8050D4)", "rgb(5377CC)" },
        angle = 45,
      },
      inactive_border = "rgba(30323A99)",
    },
  },
  decoration = {
    -- Glassy windows; this overrides Dank Shell's Window opacity slider.
    active_opacity = 0.90,
    inactive_opacity = 0.82,
    -- Xray blurs the wallpaper behind windows, not the windows beneath.
    -- Dank Shell's Xray toggle covers only its own bar and popups.
    blur = {
      enabled = true,
      size = 6,
      passes = 2,
      new_optimizations = true,
      xray = true,
    },
  },
})
