return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "onsails/lspkind.nvim",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
    },
    opts = function()
        local cmp = require "cmp"
        local lspkind = require('lspkind')
        return {
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end
            },
            window = {
                completion = {
                    side_padding = 0,
                    scrolloff = 1,
                }
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<CR>"] = cmp.mapping.confirm({ select = true })
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "path" },
            }),
            formatting = {
                expandable_indicator = true,
                fields = {"kind" , "abbr", "menu"},
                format = function(entry, vim_item)
                    local item = require("lspkind").cmp_format({
                        mode = "symbol_text",
                        preset = "codicons",
                        maxwidth = 25,
                        ellipsis_char = " ...",
                    })(entry, vim_item)

                    local split = vim.split(item.kind, "%s", {
                        trimempty=true
                    })

                    local kind, menu = split[1], split[2]

                    item.kind = " " .. kind .. " "
                    item.menu = menu

                    return item
                end,
            },
            completion = {
                completeopt = 'menu,menuone,noinsert'
            }
        }
    end
}
