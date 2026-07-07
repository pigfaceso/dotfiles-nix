{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      scan_timeout = 10;
      format = "$directory$git_branch$git_status$git_metrics$character";
    };
  };
}
