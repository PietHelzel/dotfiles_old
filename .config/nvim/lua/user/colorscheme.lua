vim.cmd "colorscheme catppuccin"

require("catppuccin").setup({
    flavour = "mocha",
    integrations = {
        cmp = true,
        nvimtree = true,
        telescope = true,
        mason = true,
    }
})


require("tokyonight").setup({
    style = "night"
})
