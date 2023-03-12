require("Comment").setup({
    ignore = "^$", -- Ignore empty lines
    mappings = { -- Don't use extra mappings
        basic = true,
        extra = false,
    },
    toggler = { -- Toggle keybinds
        line = "<leader>cc",
        block = "<leader>cb",
    },
    opleader = { -- Keybinds for operations requiring further movements
        line = "<leader><S-c>c",
        block = "<leader><S-c>b",
    },
})
