vim.api.nvim_create_autocmd('BufReadPost',{ once = true, callback = function()
  vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig', name = 'nvim-lspconfig' },
    -- { src = 'https://github.com/mason-org/mason.nvim', name = 'mason' },
    -- { src = 'https://github.com/mason-org/mason-lspconfig.nvim', name = 'mason-lspconfig' },
  })

  -- require('mason').setup()
  -- require('mason-lspconfig').setup({
  -- 	ensure_installed = {
  -- 		'arduino_language_server',
  -- 		'bashls',
  -- 		'clangd',
  -- 		'cssls',
  -- 		'eslint',
  -- 		'html',
  -- 		'lua_ls',
  -- 		'phpactor',
  -- 		'pyright',
  -- 		'rust_analyzer',
  -- 		'tailwindcss',
  -- 		'ts_ls',
  -- 	},
  -- })
end })
