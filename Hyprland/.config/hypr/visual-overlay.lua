-- Arch-GKuba Hyprland visual overlay.
-- Loaded from the existing hyprland.lua entrypoint; does not replace its
-- monitor, environment, or startup configuration. Only the explicit keybinds
-- below override existing bindings.
-- Requires Hyprland 0.55+ with Lua configuration enabled.

-- Use the bundled XCursor theme for Hyprland and applications inheriting its
-- session environment. It is a legacy XCursor theme, so configure it with
-- XCURSOR variables rather than `hyprctl setcursor` (Hyprcursor only).
hl.env("XCURSOR_THEME", "Empty-Butterfly-Purple-Hyprland")
hl.env("XCURSOR_SIZE", "48")
hl.env("HYPRCURSOR_THEME", "Empty-Butterfly-Purple-Hyprland")
hl.env("HYPRCURSOR_SIZE", "48")
hl.env(
  "XCURSOR_PATH",
  os.getenv("HOME") .. "/.local/share/icons:" .. os.getenv("HOME") .. "/.icons:/usr/share/icons"
)

-- Open Noctalia only when Super is pressed and released by itself. Track raw
-- key events so every Super chord (including existing user shortcuts) cancels
-- the launcher. Hyprland reports XKB keycodes; left/right Super are 133/134.
local noctalia_launcher = hl.dsp.exec_cmd("noctalia msg panel-toggle launcher")
local super_keys_down = {}
local super_chord_used = false

-- Replace any earlier standalone Super launcher binds from the base config.
hl.unbind("Super_L")
hl.unbind("Super_R")
hl.unbind("SUPER + SUPER_L")
hl.unbind("SUPER + SUPER_R")

hl.on("input.keyboard.key", function(keycode, _, state)
  local is_super = keycode == 133 or keycode == 134

  if is_super then
    if state == 1 then
      if next(super_keys_down) == nil then
        super_chord_used = false
      end
      super_keys_down[keycode] = true
    elseif state == 0 then
      super_keys_down[keycode] = nil
      if next(super_keys_down) == nil then
        if super_chord_used then
          super_chord_used = false
        else
          hl.dispatch(noctalia_launcher)
        end
      end
    end
  elseif state == 1 and next(super_keys_down) ~= nil then
    super_chord_used = true
  end
end)

-- Replace the default Super+Enter terminal binding (Kitty) with Ghostty.
-- Super+X also opens Ghostty.
local open_ghostty = hl.dsp.exec_cmd("ghostty")
hl.unbind("SUPER + RETURN")
hl.bind("SUPER + RETURN", open_ghostty)
hl.unbind("SUPER + X")
hl.bind("SUPER + X", open_ghostty)

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
