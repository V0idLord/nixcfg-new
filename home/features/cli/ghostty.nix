{
  pkgs,
  ...
}:
{
  programs.ghostty = {
    enable = true;

    enableFishIntegration = true;
    enableBashIntegration = true;

    # Configuration written to ~/.config/ghostty/config.txt
    settings = {
      theme = "catppuccin-macchiato";
      background-opacity = 0.5; # use 0.8 on cosmic and 0.5 on Plasma6
      background-blur = true;
      window-decoration = "auto"; # use "none" on cosmic and "auto" on Plasma6
    };
  };
}