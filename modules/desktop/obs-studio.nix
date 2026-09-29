{ pkgs, ... }:

{
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      obs-advanced-masks
      obs-composite-blur
      obs-backgroundremoval
      # obs-move-transition
    ];
  };
}
