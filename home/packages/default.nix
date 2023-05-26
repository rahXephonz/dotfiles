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
    nodePackages.yarn
    nodePackages.pnpm
  ];
}
