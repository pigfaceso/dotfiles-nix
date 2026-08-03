vim.pack.add({
  { src = 'https://github.com/tpope/vim-dispatch' },
})

vim.keymap.set('n', '<leader>m', '<cmd>Make<cr>', { desc = 'Make (vim-dispatch)', silent = true })
