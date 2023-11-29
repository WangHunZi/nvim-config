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
keymap.set("n", "<leader>o", "<C-o>zz")

-- hop
local hop = require('hop')
keymap.set("n", "<leader>g", ":HopWord<cr>")
local directions = require('hop.hint').HintDirection
keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})
keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})


-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
