if not vim.g.vscode then
  -- Oil
  -- files navigation
  vim.keymap.set('n', '<leader>wf', require('oil').open_float, { desc = '[W]orkspace [F]ile Explorer' })

  -- Harpoon
  -- fast management of marks
  local harpoon = require 'harpoon'

  vim.keymap.set('n', '<leader>ha', function()
    harpoon:list():add()
  end, { desc = '[H]arpoon [A]dd' })

  vim.keymap.set('n', '<leader>hu', function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
  end, { desc = '[H]arpoon [U]I' })

  vim.keymap.set('n', '<leader>h1', function()
    harpoon:list():select(1)
  end, { desc = '[H]arpoon go to [1]' })

  vim.keymap.set('n', '<leader>h2', function()
    harpoon:list():select(2)
  end, { desc = '[H]arpoon go to [2]' })

  vim.keymap.set('n', '<leader>h3', function()
    harpoon:list():select(3)
  end, { desc = '[H]arpoon go to [3]' })

  vim.keymap.set('n', '<leader>h4', function()
    harpoon:list():select(4)
  end, { desc = '[H]arpoon go to [4]' })

  vim.keymap.set('n', '<leader>hh', function()
    harpoon:list():prev()
  end, { desc = '[H]arpoon go to previous' })

  vim.keymap.set('n', '<leader>hl', function()
    harpoon:list():next()
  end, { desc = '[H]arpoon go to next' })

  -- Aerial
  -- shows code symbols in a separate pane
  vim.keymap.set('n', '<leader>cs', '<cmd>AerialToggle!<cr>', { desc = '[C]ode [S]ymbols' })
else
  local keymap = vim.keymap.set
  local opts = { noremap = true, silent = true }

  -- remap leader key
  keymap('n', '<Space>', '', opts)
  vim.g.mapleader = ' '
  vim.g.maplocalleader = ' '

  -- yank to system clipboard
  -- keymap({ 'n', 'v' }, '<leader>y', '"+y', opts)

  -- paste from system clipboard
  -- keymap({ 'n', 'v' }, '<leader>p', '"+p', opts)

  -- better indent handling
  keymap('v', '<', '<gv', opts)
  keymap('v', '>', '>gv', opts)

  -- move text up and down
  keymap('v', 'J', ':m .+1<CR>==', opts)
  keymap('v', 'K', ':m .-2<CR>==', opts)
  keymap('x', 'J', ":move '>+1<CR>gv-gv", opts)
  keymap('x', 'K', ":move '<-2<CR>gv-gv", opts)

  -- paste preserves primal yanked piece
  keymap('v', 'p', '"_dP', opts)

  -- removes highlighting after escaping vim search
  keymap('n', '<Esc>', '<Esc>:noh<CR>', opts)
end
