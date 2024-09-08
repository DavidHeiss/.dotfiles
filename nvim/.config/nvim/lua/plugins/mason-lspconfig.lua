return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp"
    },
    opts = {
        automatic_installation = false,
        handlers = {
            function (server_name)
                local capabilities = require('cmp_nvim_lsp').default_capabilities()
                require("lspconfig")[server_name].setup {
                    capabilities = capabilities,
                    on_attach = function (_, bufnr)
                        local opts = { buffer = bufnr }

                        vim.lsp.inlay_hint.enable(true, opts)

                        vim.keymap.set({ "n", "i" }, "<C-S-Space>", vim.lsp.buf.signature_help)
                        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                        vim.keymap.set('n', 'gh', vim.lsp.buf.hover, opts)
                        vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, opts)
                        vim.keymap.set('n', '<C-.>', vim.lsp.buf.code_action, opts)
                        vim.keymap.set('n', '<S-C-I>', function() vim.lsp.buf.format { async = true } end, opts)
                    end
                }
            end
        }
    }
}


