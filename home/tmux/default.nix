{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    clock24 = true;
    plugins = with pkgs.tmuxPlugins; [
      sensible
      yank
      {
        plugin = dracula;
        extraConfig = ''
          	set -g @dracula-show-battery true
          	set -g @dracula-show-powerline true
            set -g @dracula-refresh-rate 10
            set -g default-terminal "screen-256color"
            set -g mouse on
        '';
      }
    ];
  };
}
