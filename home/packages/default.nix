{ pkgs, ... }:

{
  home.packages = with pkgs; [
    docker
    neofetch
    gh
    android-tools
    unzip
    wget
    unrar
    lsd
    go
    htop
    bat
    vscodium
    luajit
    websocat
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
