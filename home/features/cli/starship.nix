{
  pkgs,
  ...
}:
with builtins;
let
  promptOrder = [
    "[╭](fg:current_line)"
    "os"
    "directory"
    "git_branch"
    "fill"
    "python"
    # "rust"
    "cmd_duration"
    "shell"
    "time"
    "username"
    "line_break"
    "character"
  ];

  promptFormat = concatStrings (map (s: "\$${s}") promptOrder);

in

{
  programs.starship = {
    enable = true;
    enableFishIntegration = false; # Disable if you set up fish integration manually in fish.nix, Integration is enabled by default and is not supported in login shell
    enableBashIntegration = false; 
    enableZshIntegration = true; 

    # Configuration written to ~/.config/starship.toml
    # settings = { };
  };
}
