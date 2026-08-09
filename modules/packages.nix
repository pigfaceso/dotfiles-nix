{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Find tools
    fd
    ripgrep
    yazi

    # General
    chezmoi
    bat
    gnumake
    watchexec
    tree-sitter
    universal-ctags
    neovim

    # System/Disk
    fastfetch
    btop
    dua

    # Network
    curl

    # Git
    github-cli
    forgejo-cli
    lazygit
    delta

    # Learn
    bootdev-cli

    # AI
    # opencode
    # codex
  ];
}
