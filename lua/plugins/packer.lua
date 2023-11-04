vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	config = {
		git = {
		  default_url_format = "git@github.com:%s",
		},
	},
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- theme
	use 'Mofiqul/vscode.nvim'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		tag = 'nightly'
	}

	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	use {
		  'nvim-lualine/lualine.nvim',
		  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "L3MON4D3/LuaSnip"
	use "saadparwaiz1/cmp_luasnip"
	use "rafamadriz/friendly-snippets"
	use "hrsh7th/cmp-path"

	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

	use {"akinsho/toggleterm.nvim", tag = 'v2.*'}

end)
