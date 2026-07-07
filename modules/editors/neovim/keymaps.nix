{ ... }:

{
  keymaps = [
    # General
    {
      mode = "n";
      key = "L";
      action = "<cmd>bNext<cr>";
      options = {
        silent = true;
        desc = "Next Buffer";
      };
    }
    {
      mode = "n";
      key = "H";
      action = "<cmd>bprevious<cr>";
      options = {
        silent = true;
        desc = "Previous Buffer";
      };
    }
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        silent = true;
        desc = "Page Down";
      };
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        silent = true;
        desc = "Page Up";
      };
    }
    {
      mode = "n";
      key = "J";
      action = "maJ`a<cmd>delmarks a<cr>";
      options = {
        silent = true;
        desc = "Join";
      };
    }
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<cr>gv=gv";
      options.desc = "Move text up";
    }
    {
      mode = "v";
      key = "J";
      action = ":m '<-2<cr>gv=gv";
      options.desc = "Move text down";
    }
    {
      mode = "t";
      key = "<Esc>";
      action = "<C-\\><C-n>";
    }

    # Tmux-sessionizer
    {
      mode = "n";
      key = "<C-f>";
      action = "<cmd>!tmux neww tmux-sessionizer<cr>";
      options = {
        silent = true;
        desc = "tmux-sessionizer";
      };
    }

    # Yazi
    {
      mode = "n";
      key = "<leader>ee";
      action = "<cmd>Yazi<cr>";
      options = {
        silent = true;
        desc = "Current Directory (Yazi)";
      };
    }
    {
      mode = "n";
      key = "<leader>ew";
      action = "<cmd>Yazi cwd<cr>";
      options = {
        silent = true;
        desc = "Work Directory (Yazi)";
      };
    }

    # Mini Pick
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Pick files<cr>";
      options = {
        silent = true;
        desc = "Find Files (Pick)";
      };
    }
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>Pick files tool='git'<cr>";
      options = {
        silent = true;
        desc = "Git Files (Pick)";
      };
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Pick grep_live<cr>";
      options = {
        silent = true;
        desc = "Grep Live (Pick)";
      };
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>Pick buffers<cr>";
      options = {
        silent = true;
        desc = "Buffers (Pick)";
      };
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>Pick help<cr>";
      options = {
        silent = true;
        desc = "Help (Pick)";
      };
    }

    # Trouble
    {
      mode = "n";
      key = "<leader>td";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options = {
        silent = true;
        desc = "Diagnostics (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>ts";
      action = "<cmd>Trouble symbols toggle focus=false<cr>";
      options = {
        silent = true;
        desc = "Symbols (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>tl";
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
      options = {
        silent = true;
        desc = "LSP Definitions (Trouble)";
      };
    }

    # LazyGit
    {
      mode = "n";
      key = "<leader>go";
      action = "<cmd>LazyGit<cr>";
      options = {
        silent = true;
        desc = "LazyGit";
      };
    }
    {
      mode = "n";
      key = "<leader>gl";
      action = "<cmd>LazyGitLog<cr>";
      options = {
        silent = true;
        desc = "LazyGit log";
      };
    }

    # Treesitter Text Objects
    {
      mode = ["x" "o"];
      key = "af";
      action.__raw = "function() require('nvim-treesitter-textobjects.select').select_textobject('@function.outer', 'textobject') end";
    }
    {
      mode = ["x" "o"];
      key = "if";
      action.__raw = "function() require('nvim-treesitter-textobjects.select').select_textobject('@function.inner', 'textobject') end";
    }
    {
      mode = ["x" "o"];
      key = "ac";
      action.__raw = "function() require('nvim-treesitter-textobjects.select').select_textobject('@class.outer', 'textobject') end";
    }
    {
      mode = ["x" "o"];
      key = "ic";
      action.__raw = "function() require('nvim-treesitter-textobjects.select').select_textobject('@class.inner', 'textobject') end";
    }
    {
      mode = ["x" "o"];
      key = "ao";
      action.__raw = "function() require('nvim-treesitter-textobjects.select').select_textobject('@loop.outer', 'textobject') end";
    }
    {
      mode = ["x" "o"];
      key = "io";
      action.__raw = "function() require('nvim-treesitter-textobjects.select').select_textobject('@loop.inner', 'textobject') end";
    }
    {
      mode = ["x" "o"];
      key = "aa";
      action.__raw = "function() require('nvim-treesitter-textobjects.select').select_textobject('@parameter.outer', 'textobject') end";
    }
    {
      mode = ["x" "o"];
      key = "ia";
      action.__raw = "function() require('nvim-treesitter-textobjects.select').select_textobject('@parameter.inner', 'textobject') end";
    }
  ];
}
