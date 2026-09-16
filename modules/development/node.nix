{ pkgs, ... }:

{
  programs.npm = {
    enable = true;
    settings = {
      prefix = "~/.npm-global";
    };
  };
}
