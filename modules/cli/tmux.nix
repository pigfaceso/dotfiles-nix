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

      # Vim copying
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
      bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel
      unbind -T copy-mode-vi MouseDragEnd1Pane

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

      # tmux-sessionizer
      bind-key -r f run-shell "tmux neww ~/.local/bin/tmux-sessionizer"
      bind-key -n M-h run-shell "tmux neww tmux-sessionizer -s 0"
      bind-key -n M-j run-shell "tmux neww tmux-sessionizer -s 1"
      bind-key -n M-k run-shell "tmux neww tmux-sessionizer -s 2"
      bind-key -n M-l run-shell "tmux neww tmux-sessionizer -s 3"
    '';
    plugins = with pkgs.tmuxPlugins; [
      {
        plugin = resurrect;
        extraConfig = ''
        set -g @resurrect-processes '"~npm run dev" "~bun run dev" ssh telnet'
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
