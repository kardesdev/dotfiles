local function set_keymap(...) vim.api.nvim_set_keymap(...) end

-- Mappings.
local opts = { noremap=true, silent=true }

-- See `:help vim.lsp.*` for documentation on any of the below functions
set_keymap('n', 'ff', '<cmd>Telescope find_files<CR>', opts)
set_keymap('n', 'fg', '<cmd>Telescope live_grep<CR>', opts)
set_keymap('n', 'fb', '<cmd>Telescope buffers<CR>', opts)
set_keymap('n', 'fh', '<cmd>Telescope help_tags<CR>', opts)
set_keymap('n', 'fe', '<cmd>Telescope file_browser<CR>', opts)
set_keymap('n', 'fr', '<cmd>Telescope resume<CR>', opts)

require('telescope').setup{
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      mappings = {
        i = {
          ['<c-e>'] = 'delete_buffer',
        },
        n = {
          ['<c-e>'] = 'delete_buffer',
        }
      }
    }
  }
}

