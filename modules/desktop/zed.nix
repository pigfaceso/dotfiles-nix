{ ... }:

{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "material-icon-theme"
    ];
    userSettings = {
      disable_ai = true;
      buffer_font_size = 16;
      ui_font_size = 16;
      buffer_font_fallbacks = ["Nerd Font"];
      vim_mode = true;
      auto_signature_help = true;
      code_lens = "on";
    };
  };
}
