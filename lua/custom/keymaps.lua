-- Oil
-- vim.keymap.set('n', '<leader>wf', '<cmd>Oil<cr>', { desc = '[W]orkspace [F]ile Explorer' })
vim.keymap.set('n', '<leader>wf', require('oil').open_float, { desc = '[W]orkspace [F]ile Explorer' })
