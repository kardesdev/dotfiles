require('options')
require('plugins')
require('plugins.config')

vim.cmd('colorscheme onedark')

-- vim.g.material_style = 'darker'
-- vim.cmd('colorscheme material')

-- require('nightfox').load('duskfox')

-- require('github-theme').setup({
  -- theme_style = 'dark_default'
  -- dark_float = true
-- })

-- git command on current file 
vim.cmd([[
fun! GitCommand(command) 
  silent! !clear 
  exec "!git " . a:command . " %" 
endfun 

map <leader>b :call GitCommand("blame") <CR>

nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap <leader>a =ip
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k

set signcolumn=yes

]])

