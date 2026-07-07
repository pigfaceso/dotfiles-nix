-- Normal Mode
vim.keymap.set('n', '<tab>', function() vim.cmd.tabNext() end, { desc = 'NextTab', silent = true })
vim.keymap.set('n', '<S-tab>', function() vim.cmd.tabprevious() end, { desc = 'PreTab', silent = true })
vim.keymap.set('n', 'L', function() vim.cmd.bNext() end, { desc = 'NextBuffer', silent = true })
vim.keymap.set('n', 'H', function() vim.cmd.bprevious() end, { desc = 'PreBuffer', silent = true })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Page Down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Page Up' })
vim.keymap.set('n', 'J', 'maJ`a<cmd>delmarks a<cr>', { desc = 'Join', silent = true })
vim.keymap.set('n', '<leader>u', function() vim.cmd.Undotree() end, { desc = 'Undotree', silent = true })
vim.keymap.set("n", "<C-f>", "<cmd>!tmux neww tmux-sessionizer<cr>", { desc = 'tmux-sessionizer', silent = true })
-- vim.keymap.set('n', '<leader>e', function() vim.cmd.Explore() end, { desc = 'FileExplorer', silent = true })

-- Visual Mode
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv", { desc = 'Move text Up' })
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv", { desc = 'Move text Down' })


-- Terminal Mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
-- vim.keymap.set('t', '<C-w>h', '<C-\\><C-n><C-w>h')
-- vim.keymap.set('t', '<C-w>j', '<C-\\><C-n><C-w>j')
-- vim.keymap.set('t', '<C-w>k', '<C-\\><C-n><C-w>k')
-- vim.keymap.set('t', '<C-w>l', '<C-\\><C-n><C-w>l')
