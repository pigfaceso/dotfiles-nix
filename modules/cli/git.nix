{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user.email = "winpigface2537@gmail.com";
      user.name = "pigfaceso";
      core.editor = "nvim";
      core.pager = "delta";
      interactive.diffFilter = "delta --color-only";
      delta.navigate = true;
      delta.dark = true;
      merge.tool = "nvimdiff";
      init.defaultBranch = "main";
    };
  };
}
