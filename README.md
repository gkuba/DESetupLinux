# DESetupLinux

This repository contains desktop assets and configuration files used by the
[Arch-GKuba post-install script](https://github.com/gkuba/Arch-GKuba):

- `Wallpapers/` contains wallpaper images. Arch-GKuba copies its contents into
  `~/Pictures/Wallpapers/` but skips `Wallpapers/Archive/`. Keep older images
  there for Git storage without installing them by default.
- `.icons/` contains cursor themes copied into `~/.icons/` when cursor themes
  are selected.
- `coolercontrol/config.toml` is the CoolerControl profile fetched by the
  optional CoolerControl setup.
- `DankShell/` contains the Violet-Noir Dank Shell theme and the Hyprland
  border, opacity and blur settings applied after Dank Shell is installed. See
  [DankShell/README.md](DankShell/README.md).

The cursor themes inherit from `hicolor`; earlier copies inherited from
themselves, which some compositors could not resolve.

This repository is an asset source; installation and configuration are handled
by Arch-GKuba.
