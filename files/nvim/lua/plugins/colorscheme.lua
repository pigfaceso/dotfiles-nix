vim.pack.add({
  -- { src = 'https://github.com/craftzdog/solarized-osaka.nvim', name = 'solarized-osaka' },
  -- { src = 'https://github.com/folke/tokyonight.nvim', name = 'tokyonight' },
  { src = 'https://github.com/darkvoid-theme/darkvoid.nvim', name = 'darkvoid' },
})

require('darkvoid').setup({
  transparent = true,
})

vim.cmd.colorscheme('darkvoid')
-- vim.cmd.colorscheme('tokyonight-night')
-- vim.cmd.colorscheme('solarized-osaka')
