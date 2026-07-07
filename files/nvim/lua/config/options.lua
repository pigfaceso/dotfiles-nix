vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.winborder = 'rounded'

-- Autocomplete
vim.opt.autocomplete = false
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.complete = '.,w,b,u,t'
vim.opt.pumheight = 30
vim.opt.pumborder = 'rounded'

-- Line number
vim.opt.number = true
vim.opt.relativenumber = true

-- StatusLine
vim.opt.showmatch = true

-- Statuscolumn
vim.opt.signcolumn = 'yes'

-- Split position
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Warp text
vim.opt.wrap = false

-- Scrolloff
vim.opt.scrolloff = 9
vim.opt.sidescrolloff = 12

-- Tab / Space
vim.opt.expandtab = false
vim.opt.smarttab = true
vim.opt.shiftround = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Indent
vim.opt.smartindent = false

-- List
vim.opt.listchars = {
  tab = '  ',
  multispace = '·',
  trail = '·',
}
vim.opt.list = true

-- Search
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.inccommand = 'split'

-- Diff
vim.opt.diffopt:remove('linematch:40')

-- File
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true

-- Other vim.options
vim.opt.clipboard = 'unnamedplus'
vim.opt.timeout = true
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 10
vim.opt.confirm = true
vim.opt.updatetime = 50
