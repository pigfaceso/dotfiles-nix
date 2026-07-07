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
      bindkey -s ^f "tmux-sessionizer\n"
    '';
  };
}
