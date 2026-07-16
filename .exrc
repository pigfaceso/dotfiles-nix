let s:cpo_save=&cpo
set cpo&vim
inoremap <C-W> u
inoremap <C-U> u
nnoremap <silent>  zz
nnoremap <silent>  <Cmd>!tmux neww tmux-sessionizer
nnoremap <silent>  zz
nmap  d
tnoremap  
nnoremap <silent>  gl <Cmd>vertical Git log --oneline --graph --parent --decorate
nnoremap <silent>  go <Cmd>Git
nnoremap <silent>  tl <Cmd>Trouble lsp toggle focus=false win.position=right
nnoremap <silent>  ts <Cmd>Trouble symbols toggle focus=false
nnoremap <silent>  td <Cmd>Trouble diagnostics toggle
nnoremap <silent>  fh <Cmd>Pick help
nnoremap <silent>  fb <Cmd>Pick buffers
nnoremap <silent>  fg <Cmd>Pick grep_live
nnoremap <silent>  gg <Cmd>Pick files tool=git
nnoremap <silent>  ff <Cmd>Pick files
nnoremap <silent>  ew <Cmd>Yazi cwd
nnoremap <silent>  ee <Cmd>Yazi
vnoremap  P "+P
nnoremap  P "+P
vnoremap  p "+p
nnoremap  p "+p
vnoremap  y "+y
nnoremap  y "+y
nnoremap & :&&
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
vnoremap J :m '>+1gv=gv
vnoremap K :m '<-2gv=gv
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
nnoremap Y y$
vnoremap <Plug>OSCYankVisual :OSCYankVisual
nnoremap <expr> <Plug>OSCYankOperator OSCYankOperator()
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <C-F> <Cmd>!tmux neww tmux-sessionizer
nnoremap <silent> <C-U> zz
nnoremap <silent> <C-D> zz
nmap <C-W><C-D> d
inoremap <expr>  v:lua.require'nvim-autopairs'.completion_confirm()
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set confirm
set expandtab
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ -uu\ 
set helplang=en
set nohlsearch
set inccommand=split
set listchars=multispace:·,tab:>\ ,trail:·
set packpath=/nix/store/4z3yknlp5s6nblnzah4jq2a4n4gha48p-vim-pack-dir,~/.config/nvim,/etc/xdg/nvim,~/.local/share/nvim/site,/nix/store/8ckd3ram8v02vbzf9f2q23w0al864x5q-ghostty-1.3.1/share/nvim/site,/nix/store/nrsr9inxq0v02ihrm2cfc548yp0i234g-gsettings-desktop-schemas-50.1/share/gsettings-schemas/gsettings-desktop-schemas-50.1/nvim/site,/nix/store/2qlqp0la5f7q4hf90zw1f1qmvv3hsz25-gtk4-4.22.4/share/gsettings-schemas/gtk4-4.22.4/nvim/site,/nix/var/nix/profiles/default/share/nvim/site,~/.nix-profile/share/nvim/site,/usr/share/ubuntu/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,~/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/nix/store/6lrj6nwpcfc59m9ncb960dffmgwh5ilk-neovim-unwrapped-0.12.3/share/nvim/runtime,/nix/store/6lrj6nwpcfc59m9ncb960dffmgwh5ilk-neovim-unwrapped-0.12.3/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,~/.local/share/flatpak/exports/share/nvim/site/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,~/.nix-profile/share/nvim/site/after,/nix/var/nix/profiles/default/share/nvim/site/after,/nix/store/2qlqp0la5f7q4hf90zw1f1qmvv3hsz25-gtk4-4.22.4/share/gsettings-schemas/gtk4-4.22.4/nvim/site/after,/nix/store/nrsr9inxq0v02ihrm2cfc548yp0i234g-gsettings-desktop-schemas-50.1/share/gsettings-schemas/gsettings-desktop-schemas-50.1/nvim/site/after,/nix/store/8ckd3ram8v02vbzf9f2q23w0al864x5q-ghostty-1.3.1/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.config/nvim/after
set path=.,*
set pumborder=rounded
set pumheight=10
set runtimepath=/nix/store/4z3yknlp5s6nblnzah4jq2a4n4gha48p-vim-pack-dir,/nix/store/4z3yknlp5s6nblnzah4jq2a4n4gha48p-vim-pack-dir/pack/*/start/*,~/.config/nvim,/etc/xdg/nvim,~/.local/share/nvim/site,/nix/store/8ckd3ram8v02vbzf9f2q23w0al864x5q-ghostty-1.3.1/share/nvim/site,/nix/store/nrsr9inxq0v02ihrm2cfc548yp0i234g-gsettings-desktop-schemas-50.1/share/gsettings-schemas/gsettings-desktop-schemas-50.1/nvim/site,/nix/store/2qlqp0la5f7q4hf90zw1f1qmvv3hsz25-gtk4-4.22.4/share/gsettings-schemas/gtk4-4.22.4/nvim/site,/nix/var/nix/profiles/default/share/nvim/site,~/.nix-profile/share/nvim/site,/usr/share/ubuntu/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,~/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/nix/store/6lrj6nwpcfc59m9ncb960dffmgwh5ilk-neovim-unwrapped-0.12.3/share/nvim/runtime,/nix/store/6lrj6nwpcfc59m9ncb960dffmgwh5ilk-neovim-unwrapped-0.12.3/share/nvim/runtime/pack/dist/opt/matchit,/nix/store/6lrj6nwpcfc59m9ncb960dffmgwh5ilk-neovim-unwrapped-0.12.3/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,~/.local/share/flatpak/exports/share/nvim/site/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,~/.nix-profile/share/nvim/site/after,/nix/var/nix/profiles/default/share/nvim/site/after,/nix/store/2qlqp0la5f7q4hf90zw1f1qmvv3hsz25-gtk4-4.22.4/share/gsettings-schemas/gtk4-4.22.4/nvim/site/after,/nix/store/nrsr9inxq0v02ihrm2cfc548yp0i234g-gsettings-desktop-schemas-50.1/share/gsettings-schemas/gsettings-desktop-schemas-50.1/nvim/site/after,/nix/store/8ckd3ram8v02vbzf9f2q23w0al864x5q-ghostty-1.3.1/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.config/nvim/after
set scrolloff=9
set shiftround
set shiftwidth=2
set showmatch
set showtabline=2
set sidescrolloff=12
set smartindent
set softtabstop=2
set splitbelow
set splitright
set statusline=%#lualine_transparent#
set noswapfile
set tabline=%#lualine_a_buffers_inactive#%1@LualineSwitchBuffer@\ #[No\ Name]\ %T%#lualine_transitional_lualine_a_buffers_inactive_to_lualine_a_buffers_active#%#lualine_a_buffers_active#%2@LualineSwitchBuffer@\ tmux-sessionizer\ %T%#lualine_transitional_lualine_a_buffers_active_to_lualine_c_normal#%<%#lualine_c_normal#%=%#lualine_transitional_lualine_z_tabs_active_to_lualine_c_normal#%#lualine_z_tabs_active#%1@LualineSwitchTab@\ 1\ %T
set tabstop=2
set termguicolors
set ttimeoutlen=10
set undofile
set updatetime=50
set winborder=rounded
set window=27
" vim: set ft=vim :
