{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    terminal = "screen-256color";
    prefix = "C-b";
    mouse = true;
    baseIndex = 0;
    keyMode = "vi";
    extraConfig = ''
      set -g extended-keys on
      set -g extended-keys-format csi-u
      bind-key -r f run-shell "tmux neww ~/.local/bin/tmux-sessionizer"
    '';
    plugins = with pkgs.tmuxPlugins; [
      {
        plugin = cpu;
        extraConfig = ''
        set -g status-right '#{cpu_bg_color} CPU: #{cpu_icon} #{cpu_percentage} | %a %h-%d %H:%M '
        '';
      }
      {
        plugin = resurrect;
        extraConfig = ''
        set -g @resurrect-strategy-nvim 'session'
        set -g @resurrect-processes '"~npm run dev" ssh telnet'
        '';
      }
      {
        plugin = continuum;
        extraConfig = ''
        set -g @continuum-restore 'off'
        set -g @continuum-save-interval '60' # minutes
        '';
      }
      {
        plugin = vim-tmux-navigator;
        extraConfig = ''
        set -g @vim_navigator_mapping_left "C-Left C-h"  # use C-h and C-Left
        set -g @vim_navigator_mapping_right "C-Right C-l"
        set -g @vim_navigator_mapping_up "C-k"
        set -g @vim_navigator_mapping_down "C-j"
        set -g @vim_navigator_mapping_prev ""  # removes the C-\ binding
        '';
      }
    ];
  };
}
