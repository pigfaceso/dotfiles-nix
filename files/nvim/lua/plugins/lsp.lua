vim.api.nvim_create_autocmd('BufReadPre', {
  once = true,
  callback = function ()
    vim.pack.add({
      { src = 'https://github.com/neovim/nvim-lspconfig', name = 'nvim-lspconfig' },
    })

    vim.lsp.enable(vim.tbl_keys(require('plugins.mason-installed').lsp))
  end
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function()
    vim.keymap.set({'n','v'}, 'gd', function()
      vim.lsp.buf.definition()
      vim.cmd.file()
    end, { desc = 'Definition (vim.lsp)'})

    vim.keymap.set('n', '<leader>li', function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())

      if vim.lsp.inlay_hint.is_enabled() then
        vim.notify('Inlay hint = true', vim.log.levels.INFO)
      else
        vim.notify('Inlay hint = false', vim.log.levels.INFO)
      end
    end, { desc = 'Toggle inline hint (vim.lsp)'})
  end
})

