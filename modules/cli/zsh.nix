{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    defaultKeymap = "viins";
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    historySubstringSearch.enable = true;
    initContent = ''
      export PNPM_HOME="$HOME/.local/share/pnpm"
      export PATH="$PNPM_HOME/bin:$PATH"

      # Source files
      # source ${pkgs.zsh-vi-mode}/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

      # Bindkey
      bindkey -s ^f "tmux-sessionizer\n"
      bindkey -s '\eh' "tmux-sessionizer -s 0\n"
      bindkey -s '\ej' "tmux-sessionizer -s 1\n"
      bindkey -s '\ek' "tmux-sessionizer -s 2\n"
      bindkey -s '\es' "tmux-sessionizer -s 3\n"
    '';
  };
}
