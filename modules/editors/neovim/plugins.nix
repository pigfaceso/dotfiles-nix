{ pkgs, ... }:

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
        sources.providers = {
          latex-symbols = {
            module = "blink-cmp-latex";
            name = "Latex";
            opts = {
              # set to true to insert the latex command instead of the symbol
              insert_command = false;
            };
          };
        };
      };
    };

    # AI code
    opencode.enable = true;

    # Autopairs
    nvim-autopairs.enable = true;

    # Comment
    ts-comments.enable = true;

    # Surround
    mini-surround.enable = true;

    # Git
    fugitive.enable = true;

    # Highlight
    colorizer.enable = true;

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

    # Harpoon
    harpoon.enable = true;
  };

  # Plugins not in NixVim
  extraPlugins = with pkgs.vimPlugins; [
    vim-oscyank
  ];
}
