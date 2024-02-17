return {
      --'rose-pine/neovim',
      --name = 'rose-pine',
	  --'rebelot/kanagawa.nvim',
	  'bluz71/vim-moonfly-colors',
	  --'bluz71/vim-nightfly-colors',
	  priority = 10000,
	  -- causes problem
	  --name = 'moonfly',
	  lazy = false,
	  config = function()
		  --require('moonfly').setup({})
		  -- moonfly is implied somewhere..
		  vim.cmd.colorscheme('moonfly')
		  --vim.cmd.colorscheme('nightfly')
	  end,
}
