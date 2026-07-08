{ config, pkgs, ... }:

{
  # Let NixVim manage neovim configuration
  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };

  programs.nixvim.imports = [
    ./globals.nix
    ./options.nix
    ./keymaps.nix
    ./autocmds.nix
    ./colorschemes.nix
    ./lsp.nix
    ./diagnostics.nix
    ./plugins.nix
  ];
}
