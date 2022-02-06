local actions = require "fzf-lua.actions"
local function set_keymap(...) vim.api.nvim_set_keymap(...) end

-- Mappings.
local opts = { noremap=true, silent=true }

-- Files and buffers
set_keymap('n', 'ff', '<cmd>FzfLua files<CR>', opts)
set_keymap('n', 'fj', '<cmd>FzfLua live_grep<CR>', opts)
set_keymap('n', 'fh', '<cmd>FzfLua live_grep_resume<CR>', opts)
set_keymap('n', 'fb', '<cmd>FzfLua buffers<CR>', opts)
set_keymap('n', 'fg', '<cmd>FzfLua git_status<CR>', opts)
set_keymap('n', 'fr', '<cmd>FzfLua resume<CR>', opts)
-- LSP
set_keymap('n', 'gd', '<cmd>FzfLua lsp_definitions<CR>', opts)
set_keymap('n', 'gr', '<cmd>FzfLua lsp_references<CR>', opts)
set_keymap('n', 'gt', '<cmd>FzfLua lsp_typedefs<CR>', opts)
set_keymap('n', 'gi', '<cmd>FzfLua lsp_implementations<CR>', opts)
set_keymap('n', 'ga', '<cmd>FzfLua lsp_code_actions<CR>', opts)

require'fzf-lua'.setup {
  winopts = {
    width = 0.95,
    preview = {
      delay = 50
    },
    on_create = function()
      vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', '<Down>', opts)
      vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', '<Up>', opts)
    end,
  },
}
