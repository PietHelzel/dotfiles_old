vim.opt.completeopt = {"menuone", "noselect", "noinsert", "preview"}

local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup {
    sources = {
        --  {name = "path"},
        {name = "nvim_lsp", max_item_count = 5},
        --  {name = "nvim_lsp_signature_help", max_item_count = 2},
        --  {name = "nvim_lua"},
        --  {name = "buffer", max_item_count = 3},
        {name = "luasnip", max_item_count = 2},
    },

    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({
            behaviour = cmp.ConfirmBehavior.Insert,
            select = true,
        }),
        -- Super-Tab behaviour
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.locally_jumpable(1) then
                luasnip.jump(1)
            else
                fallback()
            end
        end, {"i", "s"}),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {"i", "s"}),

    }),

    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    }
}
