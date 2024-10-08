let s:cpo_save=&cpo
set cpo&vim
inoremap <C-L> <Right>
inoremap <C-B> ^i
inoremap <C-K> <Up>
inoremap <C-H> <Left>
inoremap <C-J> <Down>
inoremap <C-E> <End>
inoremap <C-W> u
inoremap <C-U> u
nnoremap  <Cmd> %y+ 
nnoremap  h
nnoremap <NL> j
nnoremap  k
nnoremap  l
nnoremap  <Cmd> NvimTreeToggle 
nnoremap <silent>  :Telescope find_files
nnoremap  <Cmd> w 
nmap  d
tnoremap  
nnoremap  <Cmd> noh 
tnoremap  
nnoremap  ff <Cmd> Telescope find_files 
nnoremap  fo <Cmd> Telescope oldfiles 
nnoremap  th <Cmd> Telescope themes 
nnoremap  fh <Cmd> Telescope help_tags 
nnoremap  pt <Cmd> Telescope terms 
nnoremap  fb <Cmd> Telescope buffers 
nnoremap  gt <Cmd> Telescope git_status 
nnoremap  fw <Cmd> Telescope live_grep 
nnoremap  cm <Cmd> Telescope git_commits 
nnoremap  fa <Cmd> Telescope find_files follow=true no_ignore=true hidden=true 
nnoremap  fz <Cmd> Telescope current_buffer_fuzzy_find 
nnoremap  ma <Cmd> Telescope marks 
nnoremap  e <Cmd> NvimTreeFocus 
vnoremap  / <Cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())
nnoremap  rn <Cmd> set rnu! 
nnoremap  n <Cmd> set nu! 
nnoremap  b <Cmd> enew 
nnoremap  ch <Cmd> NvCheatsheet 
nnoremap & :&&
vnoremap < <gv
vnoremap > >gv
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
nnoremap Y y$
xnoremap <expr> j v:count || mode(1)[0:1] == "no" ? "j" : "gj"
nnoremap <expr> j v:count || mode(1)[0:1] == "no" ? "j" : "gj"
xnoremap <expr> k v:count || mode(1)[0:1] == "no" ? "k" : "gk"
nnoremap <expr> k v:count || mode(1)[0:1] == "no" ? "k" : "gk"
xnoremap <silent> p p:let @+=@0:let @"=@0
nnoremap <C-N> <Cmd> NvimTreeToggle 
vnoremap <expr> <Down> v:count || mode(1)[0:1] == "no" ? "j" : "gj"
vnoremap <expr> <Up> v:count || mode(1)[0:1] == "no" ? "k" : "gk"
nnoremap <C-H> h
nnoremap <expr> <Up> v:count || mode(1)[0:1] == "no" ? "k" : "gk"
nnoremap <expr> <Down> v:count || mode(1)[0:1] == "no" ? "j" : "gj"
nnoremap <C-C> <Cmd> %y+ 
nnoremap <C-K> k
nnoremap <C-S> <Cmd> w 
nnoremap <C-J> j
tnoremap <C-X> 
nnoremap <silent> <C-P> :Telescope find_files
nnoremap <silent> <M-.> <Cmd>bn
nnoremap <silent> <M-,> <Cmd>bp
nmap <C-W><C-D> d
nnoremap <C-L> l
inoremap  ^i
inoremap  <End>
inoremap  <Left>
inoremap <NL> <Down>
inoremap  <Up>
inoremap  <Right>
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set expandtab
set fillchars=eob:\ 
set ignorecase
set laststatus=3
set noloadplugins
set mouse=a
set packpath=/usr/share/nvim/runtime
set noruler
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/arduino-nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/indent-blankline.nvim,~/.local/share/nvim/lazy/nvim-colorizer.lua,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/nvim-web-devicons,~/.local/share/nvim/lazy/nvim-tree.lua,~/.local/share/nvim/lazy/nvim-lint,~/.local/share/nvim/lazy/null-ls.nvim,~/.local/share/nvim/lazy/ui,~/.local/share/nvim/lazy/ranger.nvim,/usr/share/nvim/runtime,/usr/lib64/nvim,~/.local/state/nvim/lazy/readme
set shiftwidth=2
set shortmess=oIslFOCtT
set noshowmode
set smartcase
set smartindent
set softtabstop=2
set splitbelow
set splitright
set statusline=%!v:lua.require('nvchad.statusline.default').run()
set tabstop=2
set termguicolors
set timeoutlen=400
set undofile
set updatetime=250
set whichwrap=<>[]hl,b,s
set window=51
" vim: set ft=vim :
