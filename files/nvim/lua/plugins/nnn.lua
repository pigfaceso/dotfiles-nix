vim.pack.add({
  { src = 'https://github.com/luukvbaal/nnn.nvim' }
})

require('nnn').setup()

vim.keymap.set('n', '<leader>E', function() vim.cmd.NnnExplorer() end, { desc = 'Explorer (nnn)', silent = true })
vim.keymap.set('n', '<leader>e', function() vim.cmd.NnnPicker() end, { desc = 'Explorer Float (nnn)', silent = true })
