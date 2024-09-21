local function custom_lua_line()
  return {
    options = {
      -- theme = bubbles_theme,
      theme = 'catppuccin',
      component_separators = '|',
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = {
        { 'mode', separator = { left = '' }, right_padding = 1 },
      },
      lualine_b = { 'branch', 'diagnostics', 'searchcount', 'selectioncount' },
      lualine_c = {},
      lualine_x = {},
      lualine_y = { 'filetype', 'diff' },
      lualine_z = {
        { 'filename', separator = { right = '' }, left_padding = 1 },
      },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = {},
  }
end

return {
  -- the opts function can also be used to change the default opts:
  -- {
  --   'nvim-lualine/lualine.nvim',
  --   event = 'VeryLazy',
  -- },
  --
  -- or you can return new options to override all the defaults
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = function()
      return custom_lua_line()
    end,
  },
}
