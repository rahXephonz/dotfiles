{ pkgs, lib, ... }:

with lib;

{
  home.packages = with pkgs; [
    wofi
    swaybg
    wlsunset
    wl-clipboard
    sway
    slurp
    grim
  ];

  wayland.windowManager.hyprland.enable = true;

  home.file.".config/hypr/hyprland.conf".source = ./hyprland.conf;
}
