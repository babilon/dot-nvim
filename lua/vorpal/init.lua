require("vorpal.remap")
require("vorpal.set")
require("vorpal.lazy")

-- idk what this is for
vim.o.shiftround=true

-- not sure what to do with these, if they're useful..
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

vim.g.python3_host_prog = '/usr/bin/python3'

--vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
--vim.g.qs_delay = 50
-- always on and appears to fail to activate on the special key press
--vim.g.qs_enable = 0
--vim.g.qs_lazy_highlight = 0
--vim.g.qs_max_chars=150
--vim.g.qs_buftype_blacklist = {'terminal', 'nofile'}
--vim.g.qs_filetype_blacklist = {'dashboard', 'startify'}
