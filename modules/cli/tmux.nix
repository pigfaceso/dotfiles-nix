{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    terminal = "tmux-256color";
    prefix = "C-a";
    mouse = true;
    baseIndex = 1;
    keyMode = "vi";
    extraConfig = ''
      # Shift+Enter on AI TUI
      set -g extended-keys on
      set -g extended-keys-format csi-u
      set -g focus-events on

      # Vim copying
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
      bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel
      unbind -T copy-mode-vi MouseDragEnd1Pane

      # Status line format
      set -g status-position bottom
      set -g status-justify left
      set -g status-style "fg=white"

      set -g status-left " [#S]> "
      set -g status-left-length 50

      # set -g status-right-style "fg=white"
      set -g status-right "[#H] %Y-%m-%d %H:%M "
      set -g status-right-length 50

      # setw -g window-status-current-style "fg=black bg=yellow"
      setw -g window-status-current-format " [#I:#W #F] "

      # setw -g window-status-style "fg=black"
      setw -g window-status-format " #I:#W #F "

      # Alt+number to select window
      bind -n M-1 select-window -t 1
      bind -n M-2 select-window -t 2
      bind -n M-3 select-window -t 3
      bind -n M-4 select-window -t 4
      bind -n M-5 select-window -t 5
      bind -n M-6 select-window -t 6
      bind -n M-7 select-window -t 7
      bind -n M-8 select-window -t 8
      bind -n M-9 select-window -t 9

      # Alt+{h,j,k,l} to select pane
      bind -n M-h select-pane -L
      bind -n M-j select-pane -D
      bind -n M-k select-pane -U
      bind -n M-l select-pane -R

      # tmux-sessionizer
      bind -n C-f run-shell "tmux neww ~/.local/bin/tmux-sessionizer"
      '';
    plugins = with pkgs.tmuxPlugins; [
      {
        plugin = resurrect;
        extraConfig = ''
        set -g @resurrect-processes '"~npm run dev" "~bun run dev" ssh telnet pi'
        '';
      }
      # {
      #   plugin = continuum;
      #   extraConfig = ''
      #   set -g @continuum-restore 'off'
      #   set -g @continuum-save-interval '60' # minutes
      #   '';
      # }
    ];
  };
}
