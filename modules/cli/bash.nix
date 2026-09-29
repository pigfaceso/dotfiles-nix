{ pkgs, flyline, ... }:

let
  flylinePkg = flyline.packages.${pkgs.system}.flyline;
in
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
      export EDITOR=nvim
      export VISUAL=nvim
      export WWW_HOME="https://lite.duckduckgo.com/lite/"
      export NNN_BMS="D:$HOME/Documents;d:$HOME/Downloads;p:$HOME/workspace/pigfaceso;u:$HOME/workspace/university"

      # Source file
      [[ -f ~/.git-prompt.sh ]] && source ~/.git-prompt.sh
      
      # Disable Ctrl-s, Crtl-q default keybind (stop,resume)
      stty -ixon

      # Vi mode
      set -o vi

      # Bash shell options
      shopt -s checkwinsize
      shopt -s histappend

      # Function
      function cd ()
      {
        __zoxide_z "$@" && ls --color=auto
      }

      function cdi ()
      {
        __zoxide_zi "$@" && ls --color=auto
      }

      # Alias
      alias ..="cd .."
      alias ...="cd ../.."
      alias ....="cd ../../.."
      alias ls="ls --color=auto"
      alias vi="nvim"
      alias vim="nvim"
      alias wlc="wl-copy"
      alias wlp="wl-paste"
      alias n="nnn"

      # Prompt
      PROMPT_COMMAND='history -a; history -c; history -r'
      # PS1='\[\e[1;32m\]\W\[\e[1;93m\]$(__git_ps1 " git:(%s)")\[\e[0m\] $?] '
      PS1='[\W]\[\e[2m\]$(__git_ps1 " git:(%s)")\[\e[0m\] [$?]\$ '
      [ -n "$NNNLVL" ] && PS1="{N$NNNLVL} $PS1"

      # Keybind
      bind '"\C-f":"tmux-sessionizer\n"'
      
      # flyline
      # enable flyline 2>/dev/null || enable -f ${flylinePkg}/lib/libflyline.so flyline --show-animations false

      # Start tmux
      tmux-start
    '';
    historyControl = [
      "erasedups"
      "ignoreboth"
    ];
    historyIgnore = [
      ".."
      "..."
      "...."
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
