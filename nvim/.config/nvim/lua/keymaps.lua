local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.localleader = " "

-- edit file in current window, h-split, v-split, tab
keymap("n", "<leader>ew", ":e %%", opts)
keymap("n", "<leader>es", ":sp %%", opts)
keymap("n", "<leader>ev", ":vsp %%", opts)
keymap("n", "<leader>et", ":tabe %%", opts)

-- window-movements
keymap("n", "<C-j>", "<C-W>j", opts)
keymap("n", "<C-k>", "<C-W>k", opts)
keymap("n", "<C-h>", "<C-W>h", opts)
keymap("n", "<C-l>", "<C-W>l", opts)

-- open netrw
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- resize windows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":versical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":versical resize +2<CR>", opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprev<CR>", opts)

-- move line vertically
keymap("n", "<Up>",   "[e", opts)
keymap("n", "<Down>", "]e", opts)
keymap("v", "<Up>",   "[egv", opts)
keymap("v", "<Down>", "]egv", opts)

-- move lines horizontally
keymap("n", "<Left>",  "<<", opts)
keymap("n", "<Right>", ">>", opts)
keymap("v", "<Left>",  "<'[V']", opts)
keymap("v", "<Right>", ">'[V']", opts)

-- move vertically by visual line
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- center search item
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

keymap("n", ";", ":", { noremap = true})
keymap("i", "jk", "<ESC>", opts)
