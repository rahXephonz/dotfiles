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
    slack
    postman
    nodejs
    nodePackages.yarn
    nodePackages.pnpm
  ];
}
