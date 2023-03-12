local packer = require("packer") -- Make a variable for convenience

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float {border = "rounded"}
        end,
    },
}

return packer.startup(function(use)
    use "wbthomason/packer.nvim" -- Packer can manage itself

    use "folke/tokyonight.nvim"  -- Tokyonight colorscheme

    use "lukas-reineke/indent-blankline.nvim" -- Indent lines 

    use { -- NvimTree file explorer
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
    }

    use "fedepujol/move.nvim" -- Allows moving around lines and blocks

    use "winston0410/commented.nvim" -- Allows commenting out code

    use { -- Telescope fuzzy finder
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
        },
    }

    use { -- Better syntax highlighting
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }

    use "akinsho/toggleterm.nvim" -- Terminal inside neovim

    use "akinsho/bufferline.nvim" -- Buffer line

    use "windwp/nvim-autopairs" -- Autopairing for brackets

    use "ojroques/nvim-bufdel" -- Better buffer deletion



    -- LSP
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"


    -- Code completions
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    use "hrsh7th/cmp-nvim-lsp-signature-help"
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/vim-vsnip"

    use "rafamadriz/friendly-snippets"
end)
