{ ... }:

{
  autoCmd = [
    # Highlight on Yank
    {
      event = [ "TextYankPost" ];
      pattern = [ "*" ];
      callback.__raw = "function() vim.highlight.on_yank({ timeout = 80 }) end";
    }

    # Syntax highlight on *.rasi file
    {
      event = [ "BufRead" ];
      pattern = [ "rasi" ];
      callback.__raw  = "function() vim.bo.filetype = 'css' end";
    }

    # Syntax highlight on dotenv files
    {
      event = [ "BufRead" ];
      pattern = [ ".env" ".env.*" ];
      callback.__raw  = "function() vim.bo.filetype = 'dosini' end";
    }

    # No auto continue comments on new line
    {
      event = [ "FileType" ];
      pattern = [ "*" ];
      callback.__raw  = "function() vim.opt_local.formatoptions:remove({ 'c', 'r', 'o' }) end";
    }
  ];
}
