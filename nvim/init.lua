--[[
require('nightfox').setup({
  options = {
    styles = {
      keywords = 'italic',
      functions = 'bold'
    }
  }
})

vim.cmd('colorscheme carbonfox')
--]]

require('onedark').setup({
  style = 'deep',
  code_style = {
    keywords = 'italic'
  },
})
require('onedark').load()
vim.cmd('colorscheme onedark')

require('options')
require('plugins')
require('plugins.config')


--[[
vim.g.tokyodark_enable_italic = true
vim.cmd('colorscheme tokyodark')
--]]

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
tmap <Esc> <C-\><C-n>

set signcolumn=yes

]])

