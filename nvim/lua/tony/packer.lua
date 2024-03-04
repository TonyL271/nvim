-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use({ 'nyoom-engineering/oxocarbon.nvim', as = 'oxocarbon' })
	use({ 'cseelus/vim-colors-lucid', as = 'lucid' })



	use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('ThePrimeagen/harpoon')
	use('navarasu/onedark.nvim')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

	use {
		'windwp/nvim-autopairs',
		config = function() require("nvim-autopairs").setup {} end
	}

	use {
		'windwp/nvim-ts-autotag',
		config = function() require('nvim-ts-autotag').setup() end
	}

	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/vim-vsnip'
		}
	}
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage the language servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
    use("nvim-tree/nvim-tree.lua")
    use("nvim-tree/nvim-web-devicons")
    use("christoomey/vim-tmux-navigator")

    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}


end)
