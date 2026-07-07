{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Font
    nerd-fonts.hack

    # General
    mise
    chezmoi
    fastfetch
    eza
    ripgrep
    curl
    curlie
    fd
    fzf
    bat
    glow
    btop
    yazi
    tree-sitter

    # Git
    github-cli
    forgejo-cli
    lazygit
    delta

    # AI
    opencode
    codex
  ];
}
