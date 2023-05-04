{ config, ... }: {
  imports = [
    ./common
    ./git
    ./nvim
    ./zsh
    ./packages
    ./direnv
    ./tmux
    ./dunst
    ./eww
    ./wofi
  ];
}
