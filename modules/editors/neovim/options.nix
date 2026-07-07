{ ... }:

{
  opts = {
    # General
    termguicolors = true;

    # Cursor
    cursorline = true;
    cursorcolumn = false;

    # Winborder
    winborder = "rounded";

    # Showmatch
    showmatch = true;

    # Statuscolumn
    signcolumn = "yes";

    # Line number
    number = true;
    relativenumber = true;

    # Autocomplete
    autocomplete = false;
    pumheight = 10;
    pumborder = "rounded";

    # Tab / Space
    expandtab = true;
    smarttab = true;
    shiftround = true;
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;

    # Indent
    smartindent = true;

    # Search
    hlsearch = false;
    inccommand = "split";

    # Scrolloff
    scrolloff = 9;
    sidescrolloff = 12;

    # Wrap text
    wrap = false;

    # Split position
    splitbelow = true;
    splitright = true;

    # List
    list = true;
    listchars = {
      tab = "> ";
      multispace = "·";
      trail = "·";
    };

    # File
    backup = false;
    swapfile = false;
    undofile = true;

    # Clipboard
    clipboard = "unnamedplus";

    # Confirm
    confirm = true;

    # Timeout
    timeout = true;
    timeoutlen = 1000;
    ttimeoutlen = 10;

    # Updatetime
    updatetime = 50;
  };
}
