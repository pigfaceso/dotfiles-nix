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

      # env
      WWW_HOME="https://lite.duckduckgo.com/lite/"

      # Source file
      [[ -f ~/.git-prompt.sh ]] && source ~/.git-prompt.sh
      
      # Disable Ctrl-s, Crtl-q default keybind (stop,resume)
      stty -ixon

      # Vi mode
      set -o vi

      # Bash shell options
      shopt -s checkwinsize
      shopt -s histappend

      # Prompt (PS1 by ~/.git-prompt.sh)
      # PS1='\[\e[1;32m\]\W\[\e[1;93m\]$(__git_ps1 " git:(%s)")\[\e[0m\] $?] '
      PS1='[\W]\[\e[2m\]$(__git_ps1 " git:(%s)")\[\e[0m\] [$?]\$ '

      # Keybind
      bind '"\C-f":"tmux-sessionizer\n"'
      
      # Start tmux
      tmux-start
    '';
    historyControl = [
      "erasedups"
      "ignoreboth"
    ];
    historyIgnore = [
      ".."
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
      "make"
      "tmux-sessionizer"
    ];
  };
}
