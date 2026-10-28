-- Arch-GKuba Hyprland visual overlay.
-- Loaded from the existing hyprland.lua entrypoint; does not replace its
-- monitor, environment, or startup configuration. Only the explicit keybinds
-- below override existing bindings.
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

-- Route the standalone Super key to Noctalia's launcher, and replace the
-- default Super+Enter terminal binding (Kitty) with Ghostty. Super+X also opens
-- Ghostty. Unbind these first so they replace existing actions on these keys.
local noctalia_launcher = hl.dsp.exec_cmd("noctalia msg panel-toggle launcher")
local open_ghostty = hl.dsp.exec_cmd("ghostty")
local launcher_request = 0

local function schedule_noctalia_launcher()
  launcher_request = launcher_request + 1
  local request = launcher_request
  hl.timer(function()
    if launcher_request == request then
      hl.dispatch(noctalia_launcher)
    end
  end, { timeout = 500, type = "oneshot" })
end

local function launch_ghostty()
  -- A terminal chord pressed during the launcher delay wins.
  launcher_request = launcher_request + 1
  hl.dispatch(open_ghostty)
end

hl.unbind("Super_L")
hl.unbind("Super_R")
hl.bind("Super_L", schedule_noctalia_launcher)
hl.bind("Super_R", schedule_noctalia_launcher)

hl.unbind("SUPER + RETURN")
hl.bind("SUPER + RETURN", launch_ghostty)

hl.unbind("SUPER + X")
hl.bind("SUPER + X", launch_ghostty)

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
