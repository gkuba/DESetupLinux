-- Arch-GKuba Hyprland visual overlay.
-- Loaded from the existing hyprland.lua entrypoint; does not replace its
-- monitor, environment, keybinding, or startup configuration.
-- Requires Hyprland 0.55+ with Lua configuration enabled.

hl.config({
  general = {
    gaps_in = 6,
    gaps_out = 12,
    border_size = 1,
    col = {
      active_border = {
        colors = { "rgb(8050D4)", "rgb(5377CC)" },
        angle = 45,
      },
      inactive_border = "rgba(30323A99)",
    },
  },
  decoration = {
    rounding = 12,
    rounding_power = 2.0,
    active_opacity = 0.96,
    inactive_opacity = 0.92,
    fullscreen_opacity = 1.0,
    blur = {
      enabled = true,
      size = 6,
      passes = 2,
      new_optimizations = true,
    },
    shadow = {
      enabled = true,
      range = 8,
      render_power = 3,
      color = "rgba(08090CCC)",
    },
  },
  animations = {
    enabled = true,
  },
})

-- Float ordinary desktop windows. Keep compositor-classified games tiled so
-- Steam and fullscreen game behavior remain under the application's control.
hl.window_rule({
  name = "arch-gkuba-float-ordinary-windows",
  match = { content = "none" },
  float = true,
})

hl.window_rule({
  name = "arch-gkuba-keep-games-tiled",
  match = { content = "game" },
  tile = true,
})

-- Steam game windows commonly use steam_app_<id> as their initial class.
hl.window_rule({
  name = "arch-gkuba-keep-steam-games-tiled",
  match = { initial_class = "^steam_app_.*$" },
  tile = true,
})

-- Center transient dialogs while leaving their parent and special layer
-- surfaces untouched.
hl.window_rule({
  name = "arch-gkuba-center-modal-dialogs",
  match = { modal = true },
  float = true,
  center = true,
})
