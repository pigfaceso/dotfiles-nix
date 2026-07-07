vim.pack.add({
  { src = 'https://github.com/folke/trouble.nvim', name = 'trouble' }
})

require('trouble').setup()
vim.keymap.set('n', '<leader>td', '<cmd>Trouble diagnostics toggle<cr>', { desc = "Diagnostics (Toggle)"})
vim.keymap.set('n', '<leader>ts', '<cmd>Trouble symbols toggle focus=false<cr>', { desc = "Symbols (Toggle)"})
vim.keymap.set('n', '<leader>tl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>', { desc = "LSP Definitions (Toggle)"})
