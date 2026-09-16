vim.pack.add({
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/olimorris/codecompanion.nvim' },
})

require('codecompanion').setup({
  interactions = {
    --NOTE: Change the adapter as required
    chat = { adapter = 'codex' },
    inline = { adapter = 'codex' },
  },
  opts = {
    log_level = 'DEBUG', -- or 'TRACE'
  }
})

