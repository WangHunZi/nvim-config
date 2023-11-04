local opt = vim.o
local cmd = vim.cmd

-- Set delete the any chatacter during the insert mode
opt.backspace = "indent,eol,start"

-- Blink the cursor
cmd([[set guicursor+=a:blinkon100]])

-- Do not copy line numbers
vim.api.nvim_set_option("mouse", "a")

-- change the mode form `insert` to `normal`
vim.api.nvim_set_keymap("i", "jk", "<esc>", {silent = true, noremap = true})
-- disable the Ctrl + [
vim.api.nvim_set_keymap("i", "<C-[>", "<nop>", {silent = true, noremap = true})
-- quickly come back
vim.api.nvim_set_keymap("n", "tt", "<C-t>zz", {silent = true, noremap = true})
-- quickly step in
vim.api.nvim_set_keymap("n", "ti", "<C-]>zz", {silent = true, noremap = true})
-- quickly change window
vim.api.nvim_set_keymap("n", "tw", "<C-w>w", {silent = true, noremap = true})
-- quickly jump the bottom
vim.api.nvim_set_keymap("n", "tg", "G", {silent = true, noremap = true})

-- Enable to copy character to the system clipboard
if vim.fn.has('wsl') then
  vim.cmd [[
	  augroup Yank
	  autocmd!
	  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
	  augroup END
  ]]
end

