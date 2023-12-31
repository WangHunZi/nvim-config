-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
	git = {
		enable = true,
	},

    sort_by = "case_sensitive",
    view = {
		width = 20,
    },
    renderer = {
		group_empty = true,
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "►",
					arrow_open = "▼",
				},
			},
		},
    },
    filters = {
		exclude = {
			".git/",
			".gitignore",
		},
		dotfiles = false,
    },
})

