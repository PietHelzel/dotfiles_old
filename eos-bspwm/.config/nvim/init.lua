-- Disable netrw file explorer (nvim-tree is used instead)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.timeout = false
vim.opt.shell = "zsh"

require "user.plugins"

require "user.options"
require "user.keymap"

require "user.colorscheme"

require "user.plugin-settings.nvim-tree"

require("commented").setup()

require "user.plugin-settings.nvim-treesitter"

require "user.plugin-settings.bufferline"

require "user.plugin-settings.nvim-autopairs"

require "user.plugin-settings.cmp"

require "user.plugin-settings.mason"


require "user.plugin-settings.telescope"

require "user.plugin-settings.lualine"

require "user.plugin-settings.markdown-preview"
