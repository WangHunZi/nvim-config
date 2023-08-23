vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
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

	use { "williamboman/nvim-lsp-installer", "neovim/nvim-lspconfig" }
end)
