  return {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  dependencies = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  --{'hrsh7th/cmp-nvim-lsp'},
		  --{'hrsh7th/cmp-path'},
		  --{'hrsh7th/cmp-cmdline'},
		  --{'L3MON4D3/LuaSnip'},
	  },
	  --config = function()
	  --    local lsp = require('lsp-zero')
	  --    lsp.setup_nvim_cmp({
	  --  	  preselect = 'none',
	  --  	  completion = {
	  --  		  completeopt = 'menu,menuone,noinsert,noselect'
	  --  	  },
	  --    })
	  --end,
  }

