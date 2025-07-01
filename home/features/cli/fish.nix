{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.features.cli.fish;
in {
  options.features.cli.fish.enable = mkEnableOption "enable extended fish configuration";

  config = mkIf cfg.enable {
    programs.fish = {
      enable = true;
      interactiveShellInit = ''
        fish_config theme choose Dracula
        set -g fish_greeting

        if test "$TERM" != "dumb"; and test "$TERM" != "linux"
          starship init fish | source
        end
      '';

      loginShellInit = ''
        set -x NIX_PATH nixpkgs=channel:nixos-unstable
        set -x NIX_LOG info
        set -x TERMINAL ghostty
      '';
      # shellAbbrs = {};
    };
  };
}