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
