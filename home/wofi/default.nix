{ pkgs, ... }: {

  home.packages = with pkgs; [ wofi ];
  home.file.".config/wofi.css".source = ./wofi.css;
}
