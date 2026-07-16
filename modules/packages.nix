{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Font
    nerd-fonts.hack

    # Find tools
    fd
    fzf
    ripgrep
    yazi

    # General
    chezmoi
    bat
    gnumake
    go-task

    # System/Disk
    fastfetch
    htop
    btop
    dua
    lazydocker

    # Network
    curl
    curlie

    # Git
    github-cli
    forgejo-cli
    lazygit
    delta

    # Learn
    bootdev-cli

    # AI
    opencode
    codex
  ];
}
