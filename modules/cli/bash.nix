{ pkgs, ... }:

{
  programs.bash = {
    enable = true;
    initExtra = ''
      # Colors
      # YELLOW_BOLD='\[\e[1;93m\]'
      # RED_BOLD='\[\e[1;91m\]'
      # GREEN_BOLD='\[\e[1;32m\]'
      # OLIVE_BOLD='\[\e[1;33m\]'
      # PURPLE_BOLD='\[\e[1;35m\]'
      # FUCHSIA_BOLD='\[\e[1;95m\]'
      # AQUA_BOLD='\[\e[1;96m\]'
      # NOCOLOR='\[\e[0m\]'

      # Source file
      [ -f ~/.git-prompt.sh ] && source ~/.git-prompt.sh
      
      # Vi mode
      set -o vi

      # Bash shell options
      shopt -s checkwinsize
      shopt -s histappend

      # Prompt (PS1 by ~/.git-prompt.sh)
      PROMPT_COMMAND='__git_ps1 "\[\e[1;32m\]\W\[\e[0m\]" " $?] " " \[\e[1;96m\]git:(\[\e[1;35m\]%s\[\e[1;96m\])\[\e[0m\]"'

      # Keybind
      bind '"\C-f":"tmux-sessionizer\n"'
    '';
    historyControl = [
      "erasedups"
      "ignoreboth"
    ];
    historyIgnore = [
      "pwd"
      "ls"
      "cd"
      "clear"
      "exit"
      "history"
      "hostname"
      "date"
      "vi"
      "vim"
      "nvim"
      "tmux-sessionizer"
    ];
  };
}
