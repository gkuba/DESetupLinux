-- Arch-GKuba push-to-talk for Discord under Hyprland with Dank Shell.
-- Loaded from ~/.config/hypr/hyprland.lua with require("discord-ptt").
-- Wayland apps only see input while focused, and Discord does not record
-- mouse buttons as keybinds. The forward mouse button (Mouse5) therefore
-- holds F14 in Discord: F14 down on press, F14 up on release, whichever
-- window is focused. The button is consumed, so browsers do not also go
-- forward while talking.
-- Set it in Discord: click the push-to-talk keybind and press the button.

local discord = "class:^(discord)$"

hl.bind("mouse:276", hl.dsp.send_key_state({ window = discord, mods = "", key = "F14", state = "down" }))
hl.bind("mouse:276", hl.dsp.send_key_state({ window = discord, mods = "", key = "F14", state = "up" }), { release = true })
