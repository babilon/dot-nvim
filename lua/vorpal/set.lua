vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.guifont="IBM Plex Mono:h12:b"

vim.opt.termguicolors = true

vim.opt.expandtab=true
vim.opt.tabstop=8
vim.o.breakindent = true

vim.opt.shiftwidth=4
vim.opt.softtabstop=4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.textwidth=80
-- idk what this is for
vim.opt.shiftround=true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Enable ignorecase + smartcase for better searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 3
-- don't know what these do
--vim.opt.signcolumn = "yes"
--vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.o.completeopt = 'menu,menuone,noinsert,noselect'
