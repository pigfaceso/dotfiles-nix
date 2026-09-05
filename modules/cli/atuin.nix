{ ... }:

{
  programs.atuin = {
    enable = true;
    enableBashIntegration = false;
    flags = ["--disable-up-arrow"];
    settings = {
      search_mode = "fuzzy";
      history_filter = [
        "^cd"
        "^ls"
        "^pwd"
        "^history"
        "^clear"
        "^exit"
      ];
    };
  };
}
