{ ... }:

{
  programs.zsh = {
    enable = true;
    defaultKeymap = "emacs";
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    historySubstringSearch.enable = true;
    initContent = ''
      export PNPM_HOME="$HOME/.local/share/pnpm"
      export PATH="$PNPM_HOME/bin:$PATH"
      bindkey -s ^f "tmux-sessionizer\n"
    '';
  };
}
