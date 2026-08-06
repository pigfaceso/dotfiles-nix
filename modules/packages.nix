{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Shell Scripts
    gum

    # Find tools
    fd
    ripgrep
    yazi
    ulauncher

    # General
    chezmoi
    bat
    gnumake
    go-task
    watchexec
    tree-sitter
    neovim

    # System/Disk
    fastfetch
    htop
    btop
    dua

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
