require("nvim-treesitter").setup({
	ensure_installed = { "c", "perl", "lua", "vim", "cpp", "python", "html", "javascript" },

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	},

})
