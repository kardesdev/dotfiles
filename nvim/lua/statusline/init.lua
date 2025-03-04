local utils = require 'statusline.modules'
local colors = require 'statusline.colors'
colors.set_hl()
 
function Statusline()
  return table.concat {
    utils.Mode(),
    utils.Spacer(),
    utils.Git(),
    utils.Spacer(),
    '%=',
		utils.Codeium(),
    utils.FileInfo(),
    utils.Spacer(),
    utils.CursorPosition(),
    '%=',
    utils.LSP_Diagnostics(),
    utils.LSP_status(),
    utils.Spacer(),
    utils.Treesitter(),
    utils.Spacer()
  }
end
 
vim.o.statusline = '%!v:lua.Statusline()'
