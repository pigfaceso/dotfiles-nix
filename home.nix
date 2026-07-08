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
    ".local/bin/gnome-personal-setup.sh" = {
      source = ./files/scripts/gnome-personal-setup.sh;
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

    # CLI
    ./modules/cli/zsh.nix
    ./modules/cli/starship.nix
    ./modules/cli/zoxide.nix
    ./modules/cli/git.nix
    ./modules/cli/tmux.nix
    ./modules/cli/direnv.nix

    # Editors
    ./modules/editors/neovim/init.nix
    ./modules/editors/zed.nix

    # Desktop
    # ./modules/desktop/alacritty.nix
    # ./modules/desktop/rio.nix
    ./modules/desktop/ghostty.nix
    ./modules/desktop/vlc.nix
    ./modules/desktop/obs-studio.nix
    ./modules/desktop/onlyoffice.nix

    # Services
    ./modules/services/blanket.nix
    ./modules/services/ollama.nix

    # Development
    ./modules/development/node.nix
    ./modules/development/python.nix
    ./modules/development/go.nix
    ./modules/development/rust.nix
    ./modules/development/ruby.nix
  ];
}
