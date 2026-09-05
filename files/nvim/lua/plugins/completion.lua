vim.api.nvim_create_autocmd('InsertEnter', { once = true, callback = function ()
  vim.pack.add({
    { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('^1'), name = 'blink.cmp' },
    { src = 'https://github.com/mgalliou/blink-cmp-tmux' },
  })

  require('blink.cmp').setup({
    keymap = { preset = 'default' },
    completion = {
      keyword = { range = 'full' },
      documentation = { auto_show = true, auto_show_delay_ms = 200 },
      list = { selection = { preselect = true, auto_insert = true } },
      ghost_text = { enabled = false },
      menu = { },
    },
    cmdline = {
      enabled = true,
    },
    fuzzy = { implementation = 'prefer_rust' },
    signature = { enabled = true },
    sources = {
      default = { 'lsp', 'buffer', 'path', 'snippets', 'tmux' },
      providers = {
        tmux = {
          module = "blink-cmp-tmux",
          name = "tmux",
          -- default options
          opts = {
            -- `panes` option supports these values:
            -- * `window`  - completions from current tmux window panes only
            -- * `session` - completions from current tmux session panes only
            -- * `all`     - completions from all tmux panes
            panes = "window",
            capture_history = false,
            -- only suggest completions from `tmux` if the `trigger_chars` are
            -- used
            triggered_only = false,
            trigger_chars = { "." }
          },
        },
      },
    },
  })

  vim.lsp.config('*', {
    capabilities = require('blink.cmp').get_lsp_capabilities()
  })
end })
