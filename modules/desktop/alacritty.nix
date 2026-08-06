{ ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      font.normal.family = "AdwaitaMono Nerd Font";
      font.normal.style = "Regular";
      font.size = 14;
      window.padding.x = 2;
      window.padding.y = 2;

      colors.primary.background = "#1c1c1c";
      colors.primary.foreground = "#c0c0c0";

      colors.cursor.cursor = "#bdfe58";
    };
  };
}
