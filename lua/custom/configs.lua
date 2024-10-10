-- global options
vim.o.tabstop = 4 -- a TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
--

if vim.g.vscode then
  return {}
end
local harpoon = require 'harpoon'

-- REQUIRED
harpoon:setup()
-- REQUIRED

-- stylua: ignore start
vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end)
vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set('n', '<C-a>', function() harpoon:list():select(1) end)
vim.keymap.set('n', '<C-s>', function() harpoon:list():select(2) end)
vim.keymap.set('n', '<C-d>', function() harpoon:list():select(3) end)
vim.keymap.set('n', '<C-f>', function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set('n', '<C-S-P>', function() harpoon:list():prev() end)
vim.keymap.set('n', '<C-S-N>', function() harpoon:list():next() end)
-- stylua: ignore end
