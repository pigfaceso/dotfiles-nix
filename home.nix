{ config, pkgs, ... }:

{
  home.username = "wonwow";
  home.homeDirectory = "/home/wonwow";

  home.stateVersion = "26.05";

  home.shell.enableShellIntegration = true;

  home.shellAliases = {
    ls = "eza";
  };

  home.file = { 
    ".local/bin/tmux-sessionizer" = {
      source = ./files/scripts/tmux-sessionizer;
      executable = true;
    };
  };

  # xdg.configFile = {
  # 	"nvim".source = ./files/nvim;
  # };

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  home.sessionPath = [
    "$HOME/.local/bin"
  ];

  # Setting to work better wiht non-NixOS
  targets.genericLinux.enable = true;

  # GPU integration for non-NixOS
  targets.genericLinux.gpu.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  imports = [
    ./modules/packages.nix

    ./modules/cli/zsh.nix
    ./modules/cli/starship.nix
    ./modules/cli/zoxide.nix
    ./modules/cli/git.nix
    ./modules/cli/tmux.nix
    ./modules/cli/ollama.nix

    ./modules/editors/neovim/init.nix

    ./modules/desktop/alacritty.nix
    ./modules/desktop/rio.nix
  ];
}
