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
    brightnessctl
  ];

  #wayland.windowManager.hyprland = {
  #  enable = true;
  #  xwayland = {
  #    enable = true;
  #    hidpi = true;
  #  };
  #  nvidiaPatches = false;
  #  extraConfig = builtins.readFile ./hyprland.conf;
  #};
}
