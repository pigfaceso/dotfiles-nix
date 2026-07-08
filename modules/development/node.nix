{ pkgs, ... }:

{
  home.packages = with pkgs; [
    yarn
    pnpm
    bun
  ];

  programs.npm = {
    enable = true;
    settings = {
      prefix = "~/.npm-global";
    };
  };
}
