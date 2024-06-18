return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  setup = {
    columns = { 'icon' },
    keymaps = {
      ['<esc>'] = 'actions.close',
    },
  },
}
