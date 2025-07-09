{ pkgs, ... }:
{
  imports = [
    ./fish.nix
    ./fastfetch.nix
    ./starship.nix
    ./ghostty.nix
  ];

  programs.zoxide = {
    enable = true;
    #enableNushellIntegration = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
  };

  programs.eza = {
    enable = true;
    # enableNushellIntegration = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    extraOptions = [
      "-l"
      "--icons"
      "--git"
      "-a"
    ];
  };

  programs.bat.enable = true;

  home.packages = with pkgs; [
    helix
    btop
    fd
    ripgrep
    tealdeer
    zip
    yazi
    rustup
    uv
    pixi
    ruff
    pyright
    pylyzer
    typst
    tinymist
    marksman
    harper
    # julia-bin
    gcr # Provides org.gnome.keyring.SystemPrompter
  ];

}
