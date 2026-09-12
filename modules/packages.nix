{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Find tools
    fd
    ripgrep
    yazi

    # General
    watchexec
    bat
    tree-sitter
    neovim

    # System/Disk
    fastfetch
    btop
    dua

    # Git
    github-cli
    forgejo-cli
    lazygit
    delta

    # Learn
    bootdev-cli
  ];
}
