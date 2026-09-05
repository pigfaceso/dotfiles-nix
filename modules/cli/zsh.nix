{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    defaultKeymap = "viins";
    enableCompletion = true;
    syntaxHighlighting.enable = false;
    autosuggestion.enable = false;
    historySubstringSearch.enable = true;
    initContent = ''
      # Source files
      # source ${pkgs.zsh-vi-mode}/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
      [ -f ~/.git-prompt.sh ] && source ~/.git-prompt.sh

      # Disable Ctrl-s, Crtl-q default keybind (stop,resume)
      stty -ixon

      # Bindkey
      bindkey -s ^f "tmux-sessionizer\n"

      # Prompt
      setopt PROMPT_SUBST
      PS1='[%1~]%F{8}$(__git_ps1 " git:(%s)")%f [%?]%% '

      # Start tmux
      tmux-start
    '';
  };
}
