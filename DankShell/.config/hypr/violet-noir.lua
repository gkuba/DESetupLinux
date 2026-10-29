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
    -- Window opacity and blur strength stay with Dank Shell's Settings
    -- (hyprlandWindowOpacity, blurStrength). Dank Shell's Xray toggle covers
    -- only its own layers, so blur app windows against the wallpaper here.
    blur = {
      enabled = true,
      xray = true,
    },
  },
})
