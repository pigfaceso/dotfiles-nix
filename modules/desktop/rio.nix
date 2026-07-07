{ config, pkgs, ... }:

{
  programs.rio = {
    enable = true;
    settings = {
      fonts.size = 12;
      fonts.family = "Hack Nerd Font";

      confirm-before-quit = false;
      bell.audio = false;
      editor.program = "nvim";
      navigation.mode = "Plain";
      hide-mouse-cursor-when-typing = true;
    };
  };
}
