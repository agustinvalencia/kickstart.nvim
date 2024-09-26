return {
  {
    '3rd/image.nvim',
    event = 'VeryLazy',
    ft = { 'markdown' },
    dependencies = {
      { 'leafo/magick', lazy = true },
      { 'nvim-treesitter/nvim-treesitter', lazy = true },
    },
    opts = {
      -- image.nvim config
      backend = 'kitty',
      kitty_method = 'normal',
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = nil,
      max_height_window_percentage = 50,
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { 'markdown', 'vimwiki' }, -- markdown extensions (ie. quarto) can go here
        },
      },
    },
  },
}
