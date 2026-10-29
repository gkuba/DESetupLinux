-- Arch-GKuba Violet-Noir looks for Hyprland with Dank Shell.
-- Loaded last from ~/.config/hypr/hyprland.lua with require("violet-noir"),
-- after the dms.* fragments, so these values win over the generated ones.
-- Colors, cursor, keybinds and wallpapers stay with Dank Shell; this file
-- only adds what a Dank Shell theme cannot express.
-- Requires Hyprland 0.55+ with Lua configuration enabled.

-- Qt apps (Dolphin among them) take Dank Shell's matugen colors through the
-- qtengine platform theme (AUR) instead of the gtk3 passthrough. The
-- _QT6 variable is set too, since it wins over the plain one in Qt 6.
-- Hyprland exports both to the systemd session, so Dank Shell and the apps
-- it launches see them as well.
hl.env("QT_QPA_PLATFORMTHEME", "qtengine")
hl.env("QT_QPA_PLATFORMTHEME_QT6", "qtengine")

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
