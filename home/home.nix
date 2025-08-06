{
  pkgs,
  system,
  ...
}:

{
  imports = [
    ./features/cli
  ];

  home = {
    username = "greg";
    homeDirectory = "/home/greg";
    stateVersion = "24.11";
  };

  programs.home-manager.enable = true;
  # basic configuration of git, please change to your own
  
  gtk = {
    enable = true;
    theme = {
      name = "Cosmic";
      package = pkgs.cosmic-icons;
    };
  };
  
  programs.git = {
    enable = true;
    userName = "Greg";
    userEmail = "platongrigore@gmail.com";
    extraConfig.init.defaultBranch = "main";
  };

  programs.vscode = {
    enable = true;
    package = pkgs.vscode.fhs;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history.size = 10000;
  };

  services.udiskie = {
    enable = true;
    tray = "auto";
    settings = {
      # workaround for
      # https://github.com/nix-community/home-manager/issues/632
      program_options = {
        # replace with your favorite file manager
        file_manager = "${pkgs.cosmic-files}/bin/cosmic-files";
      };
    };
  };
}
