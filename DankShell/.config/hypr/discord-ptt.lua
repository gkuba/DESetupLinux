-- Arch-GKuba push-to-talk for Discord under Hyprland with Dank Shell.
-- Loaded from ~/.config/hypr/hyprland.lua with require("discord-ptt").
-- Wayland apps only see input while focused, and Discord does not record
-- mouse buttons as keybinds. The forward mouse button (Mouse5) therefore
-- holds F14 in Discord: F14 down on press, F14 up on release, whichever
-- window is focused. The button is consumed, so browsers do not also go
-- forward while talking.
-- Set it in Discord: click the push-to-talk keybind and press the button.

local discord = "class:^(discord)$"
-- F14 by key code: xkb code 192 is evdev KEY_F14. The usual layouts map it
-- to the XF86Launch5 keysym, so the name "F14" is not found. Discord reads
-- the physical key and records it as F14.
local f14 = "code:192"

hl.bind("mouse:276", hl.dsp.send_key_state({ window = discord, mods = "", key = f14, state = "down" }))
hl.bind("mouse:276", hl.dsp.send_key_state({ window = discord, mods = "", key = f14, state = "up" }), { release = true })
