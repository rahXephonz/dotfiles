{ config, ... }: {

  programs.zsh.enable = true;
  programs.zsh.enableCompletion = true;
  programs.zsh.enableAutosuggestions = true;
  programs.zsh.syntaxHighlighting.enable = true;
  programs.zsh.oh-my-zsh.enable = true;
  programs.zsh.oh-my-zsh.plugins = [ "git" ];
  programs.zsh.oh-my-zsh.theme = "intheloop";

  programs.zsh.initExtra = ''
    export PATH=~/.npm-packages/bin:$PATH
    export PATH=~/.grader/bin:$PATH
    export NODE_PATH=~/.npm-packages/lib/node_modules
    export XKB_DEFAULT_OPTIONS=caps:escape
    export PATH="$HOME/.local/bin:$PATH"
    export FLYCTL_INSTALL="/home/ms/.fly"
    export PATH="$FLYCTL_INSTALL/bin:$PATH"
    source ~/.config/dotfiles/home/zsh/z.sh
    eval "$(starship init zsh)"
  '';

  programs.zsh.shellAliases.update = "nix flake update ~/.config/dotfiles";
  programs.zsh.shellAliases.build =
    "nix run ~/.config/dotfiles switch -- --flake ~/.config/dotfiles --impure";
  programs.zsh.shellAliases.clean = "sudo nix-collect-garbage -d";
  programs.zsh.shellAliases.ls = "lsd";
  programs.zsh.shellAliases.lsa = "lsd -a";
  programs.zsh.shellAliases.ll = "lsd -l";
  programs.zsh.shellAliases.c = "clear";
  programs.zsh.shellAliases.v = "nvim";
  programs.zsh.shellAliases.t = "tmux";

  programs.zsh.history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
  };

}
