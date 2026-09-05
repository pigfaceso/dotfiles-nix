{ config, pkgs, ... }:
{ 
  home.username = "wonwow"; 
  home.homeDirectory = "/home/wonwow";
  home.stateVersion = "26.05";

  home.shell.enableShellIntegration = true;

  home.shellAliases = {
    ".." = "cd ..";
    ls = "ls --color=auto";
    vi = "nvim";
    vim = "nvim";
  };

  home.file = { 
    ".git-prompt.sh" = {
      source = ./files/scripts/git-prompt.sh;
      executable = true;
    };
    ".local/bin/tmux-sessionizer" = {
      source = ./files/scripts/tmux-sessionizer;
      executable = true;
    };
    ".local/bin/tmux-toggle-term" = {
      source = ./files/scripts/tmux-toggle-term;
      executable = true;
    };
    ".local/bin/tmux-start" = {
      source = ./files/scripts/tmux-start;
      executable = true;
    };
    ".local/bin/gnome-personal-setup" = {
      source = ./files/scripts/gnome-personal-setup;
      executable = true;
    };
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/.npm-global/bin"
    "$HOME/.local/share/nvim/mason/bin"
  ];

  # Setting to work better wiht non-NixOS
  targets.genericLinux.enable = true;

  # GPU integration for non-NixOS
  targets.genericLinux.gpu.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  imports = [
    ./modules/packages.nix

    # Fonts
    ./modules/fonts.nix

    # CLI
    ./modules/cli/bash.nix
    ./modules/cli/zsh.nix
    ./modules/cli/readline.nix
    ./modules/cli/fzf.nix
    ./modules/cli/zoxide.nix
    ./modules/cli/git.nix
    ./modules/cli/tmux.nix
    ./modules/cli/direnv.nix
    # ./modules/cli/starship.nix
    ./modules/cli/newsboat.nix
    ./modules/cli/atuin.nix

    # Editors
    # ./modules/editors/neovim/init.nix
    # ./modules/editors/zed.nix

    # Desktop
    # ./modules/desktop/rio.nix
    ./modules/desktop/ghostty.nix
    # ./modules/desktop/vesktop.nix
    # ./modules/desktop/vicinae.nix
    ./modules/desktop/alacritty.nix
    # ./modules/desktop/vlc.nix
    ./modules/desktop/obs-studio.nix
    # ./modules/desktop/onlyoffice.nix

    # Services
    # ./modules/services/blanket.nix
    # ./modules/services/ollama.nix

    # Development
    ./modules/development/node.nix
    ./modules/development/python.nix
    ./modules/development/go.nix
    ./modules/development/rust.nix
    # ./modules/development/ruby.nix
  ];
}
