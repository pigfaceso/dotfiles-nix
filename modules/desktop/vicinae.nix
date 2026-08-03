{ ... }:

{
  programs.vicinae = {
    enable = true;
    systemd.enable = true;
    # settings = {
    #   favicon_service = "twenty";
    #   close_on_focus_loss = true;
    #   font = {
    #     normal = {
    #       size = 14;
    #     };
    #   };
    #   launcher_window = {
    #     compact_mode = true;
    #     client_side_decorations = false;
    #   };
    #   theme = {
    #     light = {
    #       name = "vicinae-dark";
    #       icon_theme = "Adwaita";
    #     };
    #   };
    # };
  };
}
