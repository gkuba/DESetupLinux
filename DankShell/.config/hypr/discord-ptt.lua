-- Arch-GKuba push-to-talk for Discord under Hyprland with Dank Shell.
-- Loaded from ~/.config/hypr/hyprland.lua with require("discord-ptt").
-- Wayland apps only see input while focused; pass forwards both the press
-- and the release of a side mouse button to Discord, so push-to-talk works
-- with any window focused. non_consuming keeps the button working in the
-- focused app too (back and forward in a browser).
-- Set the push-to-talk key in Discord by pressing the button there.

hl.bind("mouse:275", hl.dsp.pass({ window = "class:^(discord)$" }), { non_consuming = true }) -- back, Mouse4
hl.bind("mouse:276", hl.dsp.pass({ window = "class:^(discord)$" }), { non_consuming = true }) -- forward, Mouse5
