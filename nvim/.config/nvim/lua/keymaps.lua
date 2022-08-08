local opts = { noremap = true, silent = true }
local opts_no_silent = { noremap = true }
local opts_silent = { silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.localleader = " "

-- edit file in current window, h-split, v-split, tab
keymap("n", "<leader>ew", ":e %%", opts)
keymap("n", "<leader>es", ":sp %%", opts)
keymap("n", "<leader>ev", ":vsp %%", opts)
keymap("n", "<leader>et", ":tabe %%", opts)

keymap("n", "<leader>j", "jzz", opts)
keymap("n", "<leader>k", "kzz", opts)

-- window-movements
keymap("n", "<C-j>", "<C-W>j", opts)
keymap("n", "<C-k>", "<C-W>k", opts)
keymap("n", "<C-h>", "<C-W>h", opts)
keymap("n", "<C-l>", "<C-W>l", opts)

-- open netrw
keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- resize windows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":versical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":versical resize +2<CR>", opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprev<CR>", opts)
keymap("n", "<S-x>", ":bd<CR>", opts)

-- move line vertically
keymap("n", "<Up>",   ":m .-2<CR>==", opts)
keymap("n", "<Down>", ":m .+1<CR>==", opts)
keymap("v", "<Up>",   ":m '<-2<CR>gv=gv", opts)
keymap("v", "<Down>", ":m '>+1<CR>gv=gv", opts)

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

-- normal regex
keymap("n", "/", "/\\v", opts_no_silent)
keymap("v", "/", "/\\v", opts_no_silent)

-- window split
keymap("n", "<leader>s", ":split<CR>", opts)
keymap("n", "<leader>v", ":vsplit<CR>", opts)

keymap("n", "<leader><space>", ":nohlsearch<CR>", opts)

keymap("n", ";", ":", opts_no_silent)
keymap("i", "jk", "<ESC>", opts)

-- telescope
keymap("n", "<leader>ff", "<CMD>lua require('telescope.builtin').find_files()<CR>", opts)
keymap("n", "<leader>fg", "<CMD>lua require('telescope.builtin').live_grep()<CR>", opts)
keymap("n", "<leader>fb", "<CMD>lua require('telescope.builtin').buffers()<CR>", opts)
keymap("n", "<leader>fh", "<CMD>lua require('telescope.builtin').help_tags()<CR>", opts)
