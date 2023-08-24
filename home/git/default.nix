{
  programs.git = {
    enable = true;
    userName = "Rahxephonz";
    userEmail = "mynev.id@gmail.com";
    extraConfig = {
      init = { defaultBranch = "main"; };
      push = { autoSetupRemote = true; };
      core = { excludesfile = "$NIXOS_CONFIG_DIR/scripts/gitignore"; };
    };
  };
}
