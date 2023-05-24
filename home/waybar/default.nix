{
  programs.waybar = {
    systemd = { enable = false; };
    enable = true;
    settings = builtins.readFile "./config";
    style = builtins.readFile "./style.css";
  };
}
