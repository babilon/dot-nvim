  return {
	  'wincent/command-t',
	  build = 'cd lua/wincent/commandt/lib && make',
	  init = function ()
		  vim.g.CommandTPreferredImplementation = 'lua'
	  end,
	  config = function()
		  require('wincent.commandt').setup({
			  -- Customizations go here.
		  })
	  end,
  }

