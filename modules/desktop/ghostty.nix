{ ... }:

{
  programs.ghostty = {
    enable = true;
    enableBashIntegration = false;
    enableZshIntegration = false;
    settings = {
      theme = "Tomorrow Night";
      shell-integration = "none";
      bell-features = "no-system";
      font-family = "Hack Nerd Font";
      font-size = 12;
      cursor-style = "block";
      cursor-style-blink = false;
      window-padding-x = "1,1";
      window-padding-y = "1,1";
      mouse-hide-while-typing = true;
      quit-after-last-window-closed = false;
      scrollback-limit = 1000000;

      # keybind = [
      #   "ctrl+n=new_tab"
      #   "ctrl+h=goto_split:left"
      #   "ctrl+j=goto_split:bottom"
      #   "ctrl+k=goto_split:top"
      #   "ctrl+l=goto_split:right"
      #   "ctrl+a>h=new_split:left"
      #   "ctrl+a>j=new_split:down"
      #   "ctrl+a>k=new_split:up"
      #   "ctrl+a>l=new_split:right"
      #   "ctrl+a>f=toggle_split_zoom"
      #   "ctrl+a>n=next_tab"
      #   "ctrl+a>p=previous_tab"
      # ];
    };
  };
}
