vim.api.nvim_create_autocmd('LspAttach', {
  once = true,
  callback = function ()
    vim.pack.add({
      { src = 'https://github.com/folke/trouble.nvim', name = 'trouble' }
    })

    require('trouble').setup()

    vim.keymap.set('n', '<leader>ld', '<cmd>Trouble diagnostics toggle<cr>', { desc = "Diagnostics Toggle (Trouble)"})
    vim.keymap.set('n', 'gd', '<cmd>Trouble lsp_definitions<cr>', { desc = "LSP Definitions (Toggle)"})
  end
})
