--command t just works better with \ for leader which is the default
--vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<Leader>b', '<Plug>(CommandTBuffer)')
vim.keymap.set('n', '<Leader>j', '<Plug>(CommandTJump)')
vim.keymap.set('n', '<Leader>t', '<Plug>(CommandTGit)')
vim.keymap.set('n', '<Leader>f', '<Plug>(CommandT)')

vim.keymap.set('n', '<C-J>', '<C-W><Down>')
vim.keymap.set('n', '<C-K>', '<C-W>k')
vim.keymap.set('n', '<C-H>', '<C-W>h')
vim.keymap.set('n', '<C-L>', '<C-W>l')

-- short cut to select a buffer
vim.keymap.set('n', ',b', ':ls<CR>:buffer<Space>')

vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>')

vim.keymap.set('n', '<S-Enter>', 'O<Esc>')
vim.keymap.set('n', '<CR>', 'o<Esc>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keeps the cursor at the position it was at when invoking "J" to combine lines
--vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever!
vim.keymap.set("x", "<leader>p", "\"_dP")

-- i like C-f for moving. might need to do C-d and C-u
-- this allows use of tmux
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- quick fix navigation
-- conflicts with my C-J above
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k>", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j>", "<cmd>lprev<CR>zz")


