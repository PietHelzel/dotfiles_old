require("toggleterm").setup({
    open_mapping = "<leader>t", -- Keybind to toggle the terminal
    shell = vim.o.shell, -- The used shell
    insert_mappings = false, -- Don't open terminal while in insert mode
})
