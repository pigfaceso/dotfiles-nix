{ ... }:

{
  plugins = {
    # Utils
    web-devicons.enable = true;
    friendly-snippets.enable = true;

    # LSP Config
    lsp.enable = true;

    # Treesitter
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      folding.enable = false;
    };
    treesitter-textobjects.enable = true;
    ts-autotag.enable = true;

    # Completion
    blink-cmp = {
      enable = true;
      settings = {
        cmdline.enabled = false;
        signature.enabled = true;
      };
    };

    # AI code
    codecompanion.enable = true;

    # Autopairs
    nvim-autopairs.enable = true;

    # Comment
    ts-comments.enable = true;

    # Git
    fugitive.enable = true;
    lazygit.enable = true;

    # Highlight
    colorizer.enable = true;

    # Tmux
    tmux-navigator.enable = true;

    # Lsp diagnostic
    trouble.enable = true;

    # File explorer (Yazi)
    yazi.enable = true;

    # Statusline
    lualine = {
      enable = true;
      settings = {
        tabline = {
          lualine_a = ["buffers"];
          lualine_z = ["tabs"];
        };
      };
    };

    # Picker
    mini-pick.enable = true;

    # Surround (),{},[]
    mini-surround.enable = true;

    # Diffile (GitSign)
    mini-diff = {
      enable = true;
      settings = {
        view = {
          style = "sign";
          signs = {
            add = "+";
            change = "~";
            delete = "-";
          };
        };
      };
    };
  };
}
