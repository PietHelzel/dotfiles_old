local opts = {noremap = true, silent = true} -- Options for keybindings
                                             -- "noremap": No recursive mapping
                                             -- "silent": Show no message when keybinding is used

local keymap = vim.api.nvim_set_keymap -- Shorter name for convenience

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts) -- Remove space key bindings
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- # Normal mode bindings

-- Better window navigation
-- Doesn't require the extra w press when switching windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Better buffer navigation
keymap("n", "<A-l>", ":bnext<CR>", opts)
keymap("n", "<A-h>", ":bprevious<CR>", opts)

-- # Insert mode bindings


-- # Visual mode bindings

-- Stay in indent mode after indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("n", "<A-j>", ":MoveLine(1)<CR>", opts)
keymap("n", "<A-k>", ":MoveLine(-1)<CR>", opts)
keymap("v", "<A-j>", ":MoveBlock(1)<CR>", opts)
keymap("v", "<A-k>", ":MoveBlock(-1)<CR>", opts)

-- Workaround to :wqa not working when terminal was opened
vim.cmd "command WQAworkaround wa | qa"
vim.cmd "cabbrev wqa WQAworkaround"

-- Paste over selected text without yanking it
keymap("v", "p", '"_dP', opts)



-- # Plugin keybindings

-- NvimTree
keymap("n", "<leader><S-e>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>e", ":NvimTreeFocus<CR>", opts)

-- Comment.nvim: Keybindings can be found in ./plugin-settings


-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

-- bufdel
keymap("n", "<leader>q", ":BufDel<CR>", opts)
require("bufdel").setup {quit = false}
