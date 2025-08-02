{
  pkgs,
  ...
}:
{
  programs.ghostty = {
    enable = true;

    enableFishIntegration = true;
    enableBashIntegration = true;
    enableZshIntegration = true;

    # Configuration written to ~/.config/ghostty/config.txt
    settings = {
      theme = "catppuccin-macchiato";
      background-opacity = 0.5; # use 0.8 on cosmic and 0.5 on Plasma6
      background-blur = true;
      window-decoration = "none"; # use "none" on cosmic and "auto" on Plasma6
      command = "fish --login --interactive";
    };
  };
}