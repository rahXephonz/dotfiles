{ config, pkgs, ... }:

{
 home.packages = with pkgs; [
   zig fd jq git-crypt
   neofetch lazygit python3
   ripgrep android-tools unzip
   wget unrar flameshot
   lsd htop xorg.xbacklight
   nodejs tdesktop pavucontrol
   bat luajit vscode nitrogen
 ];
}
