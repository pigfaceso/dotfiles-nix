{ pkgs, flyline, ... }:

let
  flylinePkg = flyline.packages.${pkgs.system}.flyline;
in
{
  home.packages = with pkgs; [
    flylinePkg

    # Find tools
    fd
    ripgrep
    yazi

    # General
    watchexec
    bat
    kew
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
