require('wincent.commandt').setup({
	scanners = {
		file = {
			max_files = 100000, -- A "big" limit.
		},
		find = {
			max_files = 10, -- A small limit.
		},
		git = {
			max_files = 0, -- Same as no limit.
		},
		rg = {
			-- No setting, no limit.
		},
	},
	selection_highlight = 'PMenuSel',
	smart_case = nil, -- If nil, will infer from Neovim's `'smartcase'`.
	threads = nil, -- Let heuristic apply.
	height = 30,
	margin = 50,
	never_show_dot_files = false,
	order = 'reverse', -- 'forward' or 'reverse'.
	position = 'bottom', -- 'bottom', 'center' or 'top'.
})
