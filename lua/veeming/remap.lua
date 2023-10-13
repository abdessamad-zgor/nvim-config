local keymap = vim.api.nvim_set_keymap
local opts = {silent=true, noremap=true}
vim.g.mapleader = " "
keymap("n", "<A-j>",":m .+1<CR>==",opts)
keymap("n", "<A-k>", ":m .-2<CR>==",opts)
keymap("n", "<leader>c", "0<C-v>$y",opts)
keymap("n", "<leader>x", "0<C-v>$d",opts)
-- open [], {} and indent them
keymap("i", '<A-n>', '<CR><Esc>%o',opts)
-- make reduces developement time 10x keymap("i", '"', '""<Esc>ha',opts)
keymap("i", '(', '()<Esc>ha', opts)
keymap("i", '{', '{}<Esc>ha',opts)
keymap("i", "'", "''<Esc>ha",opts)
keymap("i", '[', '[]<Esc>ha',opts)
keymap("i", "`", "``<Esc>ha",opts)
keymap("i", '"', '""<Esc>ha', opts)
-- insert mode got jealous
keymap("i", "<A-j>", "<Esc>:m .+1<CR>==a",opts)
keymap("i", "<A-k>", "<Esc>:m .-2<CR>==a",opts)
-- windows style save <3
keymap("i", "<C-s>", "<Esc>:w<CR>",opts)
keymap("n", "<leader>bf", ":buffers<CR>",opts)
keymap("n", "<leader>bp", ":bp<CR>",opts)
keymap("n", "<leader>bn", ":bNext<CR>",opts)
-- window navigation
keymap("n","<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
--indent block
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- move block
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
-- buffer editting
keymap("n", "q", ":q<CR>", opts)

