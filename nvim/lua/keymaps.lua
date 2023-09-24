-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd
-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- clear search highlighting
map('n', '<leader>c', ':nohl<CR>', default_opts)

-- map Esc to kk
map('i', 'kk', '<Esc>', {noremap = true})

-- don't use arrow keys
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)

-- NeoTree
map('n', '<C-n>', ':Neotree<CR>', default_opts)            -- open/close
-- LazyGit
map('n', '<C-g>', ':LazyGit<CR>', default_opts)            -- open/close

-- Abrir una nueva pesta–a
vim.api.nvim_set_keymap('n', '<leader>ta', ':tabnew<CR>', { noremap = true })

-- Cerrar la pesta–a actual
vim.api.nvim_set_keymap('n', '<leader>tc', ':q<CR>', { noremap = true })

-- Desplazarse a la siguiente pesta–a
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnext<CR>', { noremap = true })

-- Desplazarse a la pesta–a anterior
vim.api.nvim_set_keymap('n', '<leader>tp', ':tabprev<CR>', { noremap = true })
