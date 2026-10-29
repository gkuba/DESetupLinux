-- Arch-GKuba push-to-talk for Discord under Hyprland with Dank Shell.
-- Loaded from ~/.config/hypr/hyprland.lua with require("discord-ptt").
-- Discord registers push-to-talk as a global shortcut
-- (discord:discord-push-to-talk) once its push-to-talk has a keyboard key
-- assigned; the key itself does not matter (F13 avoids conflicts). The
-- global dispatcher sends the press and the release, so the forward mouse
-- button (Mouse5) holds push-to-talk whichever window is focused, with
-- Discord running natively on Wayland. non_consuming keeps the button
-- working in the focused app too.
-- Check the registration with: hyprctl globalshortcuts
-- To assign F14, which no keyboard has, run discord-ptt-key (or "Discord
-- Push-to-Talk Key" in the launcher) and click Discord's push-to-talk
-- keybind before its countdown ends; Discord shows it as UNK192.

hl.bind("mouse:276", hl.dsp.global("discord:discord-push-to-talk"), { non_consuming = true }) -- forward, Mouse5
