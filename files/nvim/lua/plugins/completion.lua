vim.api.nvim_create_autocmd('InsertEnter', { once = true, callback = function ()
  vim.pack.add({
    { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('^1'), name = 'blink.cmp' },
  })

  require('blink.cmp').setup({
    keymap = { preset = 'default' },
    completion = {
      keyword = { range = 'full' },
      documentation = { auto_show = true, auto_show_delay_ms = 200 },
      list = { selection = { preselect = false, auto_insert = true } },
      ghost_text = { enabled = false },
      menu = { },
    },
    cmdline = {
      enabled = false,
    },
    sources = {
      default = { 'lsp', 'buffer', 'path', 'snippets' },
    },
    fuzzy = { implementation = 'prefer_rust' },
    signature = { enabled = true }
  })

  vim.lsp.config('*', {
    capabilities = require('blink.cmp').get_lsp_capabilities()
  })
end })
