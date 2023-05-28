{ pkgs, ... }:

{
  home.packages = with pkgs; [
    neofetch
    android-tools
    unzip
    wget
    unrar
    lsd
    htop
    pavucontrol
    bat
    luajit
    postman
    nodejs
    brightnessctl
    jq
    slurp
    wl-clipboard
    grim
    swaybg
    nodePackages.yarn
    nodePackages.pnpm
  ];
}
