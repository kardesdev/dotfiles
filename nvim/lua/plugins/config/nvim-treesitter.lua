require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'rust',
    'go',
    'javascript',
    'typescript',
    'tsx',
  },
  highlight = {
    enable = true,
  },
}