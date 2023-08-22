{ pkgs, ... }:

{
  home.packages = with pkgs; [
    docker
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
    slack
    iterm2
    flameshot
    prettierd
    nodePackages.yarn
    nodePackages.pnpm
  ];
}
