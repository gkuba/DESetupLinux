# Dank Shell / Violet-Noir

Violet-Noir appearance for Dank Shell on Hyprland. Arch-GKuba's Dank Shell
step installs Dank Shell with the DuxLabs headless installer, then applies
these files:

- `.config/dms/themes/Violet-Noir.json` is a Dank Shell custom theme built
  from the Violet-Noir palette. It is installed to
  `~/.config/dms/themes/Violet-Noir.json` and selected in
  `~/.config/dms/settings.json` (`currentThemeName: "custom"`,
  `customThemeFile`). Dank Shell derives the bar, popouts, Hyprland border,
  Ghostty and GTK colors from it.
- `.config/hypr/violet-noir.lua` adds only what the theme cannot express: the
  purple-to-blue gradient active border, the dim inactive border, glassy
  windows (90% focused, 82% unfocused) and xray blur, so windows blur the
  wallpaper rather than the windows beneath. These override Dank Shell's
  Window opacity slider; Dank Shell's own Xray toggle covers only its bar and
  popups, and the installer turns it on. It also selects the qtengine Qt
  platform theme (`QT_QPA_PLATFORMTHEME` and `_QT6`), so Qt apps such as
  Dolphin take Dank Shell's matugen colors; qtengine comes from the AUR. It is
  loaded with `require("violet-noir")` at the end of
  `~/.config/hypr/hyprland.lua`, after the `dms.*` fragments, so it wins over
  the generated colors. It sets no keybinds, cursor, or wallpaper.
- `.config/hypr/discord-ptt.lua` makes the forward mouse button (Mouse5)
  hold F14 in Discord with Hyprland's `send_key_state` dispatcher (down on
  press, up on release), so push-to-talk works whichever window is focused;
  Discord does not record mouse buttons as keybinds. The button is consumed,
  so browsers do not also go forward. It is loaded with
  `require("discord-ptt")` after `violet-noir`. Set push-to-talk in Discord
  by clicking the keybind and pressing the forward button, which records F14.

The installer also sets, through Dank Shell's own settings:

- the Empty-Butterfly-Purple cursor at 32px (`cursorSettings` in
  `settings.json`), taken from the repository's `.icons/` folder;
- a random wallpaper from `~/Pictures/Wallpapers` (the repository's
  `Wallpapers/` folder, without `Archive/`) for each monitor, rotating in
  random order every hour (`session.json`, per-monitor wallpaper and cycling);
- the login screen through `dms-greeter sync`, which shows each monitor's
  current wallpaper with the Violet-Noir theme.

The theme and Lua file need Hyprland 0.55 or newer with the Lua config that
duxinstall deploys.
