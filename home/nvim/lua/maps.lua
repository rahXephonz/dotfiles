local map = vim.api.nvim_set_keymap

default_options = {noremap = true, silent = true}
expr_options = {noremap = true, expr = true, silent = true}

map("n", "<Space>", "<NOP>", default_options)
vim.g.mapleader = " "

map("n", "S", "<cmd>Telescope find_files<CR>", {noremap = true})
map("n", "T", "<cmd>Telescope buffers<CR>", {noremap = true})
map("n", "C", "<cmd>NvimTreeToggle<CR>", {noremap = true})
map("n", "t", "<cmd>Lspsaga term_toggle<CR>", {noremap = true})
map("n", "D", "<cmd>Lspsaga hover_doc<CR>", {noremap = true})
map("n", "Q", "<cmd>Lspsaga code_action<CR>", {noremap = true})
map("n", "E", "<cmd>Lspsaga diagnostic_jump_next<CR>", {noremap = true})
map("n", "e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", {noremap = true})
map("n", "F", "<cmd>Lspsaga peek_definition<CR>", {noremap = true})
map("n", "f", "<cmd>Lspsaga finder<CR>", {noremap = true})
map('n', '<Space>', '<C-w>w', {noremap = true})
map('', 'sh', '<C-w>h', {noremap = true})
map('', 'sk', '<C-w>k', {noremap = true})
map('', 'sj', '<C-w>j', {noremap = true})
map('', 'sl', '<C-w>l', {noremap = true})
