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

  use {
	  "justinmk/vim-sneak", as = 'vim-sneak'
  }

  use ({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
    	  vim.cmd('colorscheme rose-pine')
      end
  })

  use ({
	  'folke/tokyonight.nvim',
	  as = 'tokyonight',
	  config = function()
		  vim.cmd('colorscheme tokyonight')
	  end
  })

  use { "catppuccin/nvim", as = "catppuccin" }

  use { "rebelot/kanagawa.nvim", as = "kanagawa" }

  use { "bluz71/vim-moonfly-colors", as = "moonfly" }

  use (
	  'nvim-treesitter/nvim-treesitter',
	  {run = ':TSUpdate'}
  )

  use ('tpope/vim-fugitive')

  use {
	  'wincent/command-t',
	  run = 'cd lua/wincent/commandt/lib && make',
	  setup = function ()
		  vim.g.CommandTPreferredImplementation = 'lua'
	  end,
	  config = function()
		  require('wincent.commandt').setup({
			  -- Customizations go here.
		  })
	  end,
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
end)
