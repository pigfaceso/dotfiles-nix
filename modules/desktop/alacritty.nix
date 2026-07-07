{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      font.normal.family = "Hack Nerd Font";
      font.normal.style = "Regular";
      font.size = 12;
      window.padding.x = 2;
      window.padding.y = 2;
    };
  };
}
