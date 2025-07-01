{
  pkgs,
  system,
  ...
}:

{
    imports = [
    ./features/cli
  ];

  features = {
    cli = {
      fish.enable = true;
      fastfetch.enable = true;
    };
  };

  home = {
    username = "greg";
    homeDirectory = "/home/greg";
    stateVersion = "24.11";
  };

  programs.home-manager.enable = true;
  
  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "Greg";
    userEmail = "platongrigore@gmail.com";
    extraConfig.init.defaultBranch = "main";
  };

  # programs.zen-browser = {
  #   enable = true;
  #   policies = {
  #     DisableAppUpdate = true;
  #     DisableTelemetry = true;
  #     # find more options here: https://mozilla.github.io/policy-templates/
  #   };
  # };

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
}