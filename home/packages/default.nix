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
    bat
    luajit
    nodejs
    jq
    postman
    discord
    nodePackages.yarn
    nodePackages.pnpm
  ];
}
