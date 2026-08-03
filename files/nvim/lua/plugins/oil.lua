vim.pack.add({
  { src = 'https://github.com/stevearc/oil.nvim', name = 'oil'}
})

require('oil').setup()

vim.keymap.set('n', '-', function() vim.cmd.Oil('--float') end, { desc = 'Open current directory (Oil)' })
