vim.pack.add({
  { src = 'https://github.com/tpope/vim-fugitive', name = 'vim-fugitive' },
  { src = 'https://github.com/nvim-mini/mini.diff', name = 'mini.diff' },
})

require('mini.diff').setup({
  view = {
    style = 'sign',
    signs = { add = '+', change = '~', delete = '-'},
  },
})

vim.keymap.set('n', '<leader>go','<cmd>Git<cr>', { desc = 'Git (fugitive)' })
vim.keymap.set('n', '<leader>gl','<cmd>Git log --oneline --graph --parent --decorate<cr>', { desc = 'Git log (fugitive)' })
vim.keymap.set('n', '<leader>gdv','<cmd>Gvdiffsplit!<cr>', { desc = 'Gvdiffsplit! (fugitive)' })
