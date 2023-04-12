{ config, ... }: {
  imports = [
    ./common
    ./git
    ./nvim
    ./zsh
    ./packages
    ./direnv
    ./tmux
    ./hyprland
    ./dunst
    ./eww
    ./wofi
  ];
}
