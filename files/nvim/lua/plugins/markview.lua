vim.api.nvim_create_autocmd('FileType', {
  once = true,
  pattern = { 'tex', 'markdown', 'html' },
  callback = function()
    vim.pack.add({
      'https://github.com/OXY2DEV/markview.nvim',
    })
  end
})
