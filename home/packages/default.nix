{ config, pkgs, ... }:

{
 home.packages = with pkgs; [
   zig fd jq git-crypt
   neofetch lazygit python3
   ripgrep android-tools unzip unrar wget
   nodePackages.yarn
   nodePackages.typescript
   nodePackages.live-server lsd
   nodePackages.prettier htop
   nodejs tdesktop
   bat luajit
   slack
 ];
}
