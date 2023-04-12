{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fd
    jq
    git-crypt
    neofetch
    lazygit
    ripgrep
    android-tools
    unzip
    wget
    unrar
    flameshot
    lsd
    htop
    xorg.xbacklight
    pavucontrol
    bat
    luajit
    vscode
    nitrogen
    pcmanfm
  ];
}
