vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.pick', name = 'mini.pick' },
  -- { src = 'https://github.com/ibhagwan/fzf-lua', name = 'fzf-lua' },
})

vim.keymap.set('n', '<leader>ff', function() require('mini.pick').builtin.files() end, { desc = 'Find File (mini.pick)' })
vim.keymap.set('n', '<leader>gg', function() require('mini.pick').builtin.files({ tool = "git" }) end, { desc = 'Git File (mini.pick)' })
vim.keymap.set('n', '<leader>fb', function() require('mini.pick').builtin.buffers() end, { desc = 'Buffers (mini.pick)' })
vim.keymap.set('n', '<leader>fg', function() require('mini.pick').builtin.grep_live() end, { desc = 'Grep Live (mini.pick)' })

-- vim.keymap.set('n', '<leader>ff', function() require('fzf-lua').files() end, { desc = 'Find File (FzF)' })
-- vim.keymap.set('n', '<leader>fb', function() require('fzf-lua').buffers() end, { desc = 'Buffers (FzF)' })
-- vim.keymap.set('n', '<leader>fg', function() require('fzf-lua').live_grep() end, { desc = 'Live Grep (FzF)' })
-- vim.keymap.set('n', '<leader>fh', function() require('fzf-lua').helptags() end, { desc = 'Help (FzF)' })
-- vim.keymap.set('n', '<leader>fm', function() require('fzf-lua').marks() end, { desc = 'Marks (FzF)' })
-- vim.keymap.set('n', '<leader>fj', function() require('fzf-lua').jumps() end, { desc = 'Jumplist (FzF)' })
-- vim.keymap.set('n', '<leader>gg', function() require('fzf-lua').git_files() end, { desc = 'Git Files (FzF)' })
-- vim.keymap.set('n', '<leader>ls', function() require('fzf-lua').lsp_workspace_symbols() end, { desc = 'Lsp Workspace Symbols (FzF)' })
-- vim.keymap.set('n', '<leader>lr', function() require('fzf-lua').lsp_references() end, { desc = 'Lsp References (FzF)' })
-- vim.keymap.set('n', '<leader>ld', function() require('fzf-lua').lsp_workspace_diagnostics() end, { desc = 'Lsp Diagnostics (FzF)' })
-- vim.keymap.set('n', '<leader>lc', function() require('fzf-lua').lsp_code_actions() end, { desc = 'Lsp Code Actions (FzF)' })
-- vim.keymap.set('n', '<leader>cd', function() require('fzf-lua').zoxide() end, { desc = 'Zoxide (FzF)' })
