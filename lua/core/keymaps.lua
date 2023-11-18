vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "ii", "<Esc>")

keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

keymap.set("n", "<leader>x", ":BufferLinePickClose<cr>")
keymap.set("n", "<leader>l", ":BufferLineCycleNext<cr>")
keymap.set("n", "<leader>h", ":BufferLineCyclePrev<cr>")

keymap.set("n", "<leader>w", "<C-w>k")
keymap.set("n", "<leader>a", "<C-w>h")
keymap.set("n", "<leader>s", "<C-w>j")
keymap.set("n", "<leader>d", "<C-w>l")

keymap.set("n", "<leader>i", "<C-]>zz")
keymap.set("n", "<leader>t", "<C-t>zz")
keymap.set("n", "<leader>o", "<C-o>zz")
