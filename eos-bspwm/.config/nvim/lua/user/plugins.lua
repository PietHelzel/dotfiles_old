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

    use "akinsho/bufferline.nvim" -- Buffer line

    use "windwp/nvim-autopairs" -- Autopairing for brackets

    use "ojroques/nvim-bufdel" -- Better buffer deletion

    use "rafamadriz/friendly-snippets"

    use "nvim-lualine/lualine.nvim" -- Statusline

    use "p00f/nvim-ts-rainbow" -- Rainbow brackets

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    }) -- Markdown preview

    use {
        "L3MON4D3/LuaSnip", -- Snippet engine
        config = function()
            require("luasnip/loaders/from_vscode").lazy_load({ paths = { "~/.local/share/nvim/site/pack/packer/start/friendly-snippets" } })
        end
    }

    use "hrsh7th/nvim-cmp" -- Completion engine
    use "hrsh7th/cmp-nvim-lsp" -- Cmp integration for nvim-lsp
    use "saadparwaiz1/cmp_luasnip" -- Luasnip integration

    use "williamboman/mason.nvim" -- LSP server manager
    use "williamboman/mason-lspconfig.nvim" -- Mason integration into lspconfig
    use "neovim/nvim-lspconfig" -- Quick lsp configurations

    use "https://git.sr.ht/~whynothugo/lsp_lines.nvim" -- Diagnostics on virtual lines
end)
