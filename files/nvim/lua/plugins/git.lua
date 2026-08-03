vim.pack.add({
  { src = 'https://github.com/tpope/vim-fugitive', name = 'vim-fugitive' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim', name = 'gitsigns' },
})

vim.keymap.set('n', '<leader>gg',function() vim.cmd.Git() end, { desc = 'Git (fugitive)' })
vim.keymap.set('n', '<leader>gl','<cmd>Git log --oneline --graph --parents --decorate<cr>', { desc = 'Git log (fugitive)' })
vim.keymap.set('n', '<leader>gdv','<cmd>Gvdiffsplit!<cr>', { desc = 'Gvdiffsplit! (fugitive)' })
