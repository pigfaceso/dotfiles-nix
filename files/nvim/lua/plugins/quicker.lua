vim.pack.add({
  { src = 'https://github.com/stevearc/quicker.nvim', name = 'quicker'}
})

require('quicker').setup()

vim.keymap.set("n", "<leader>q", function() require("quicker").toggle() end, { desc = "Toggle quickfix", })
