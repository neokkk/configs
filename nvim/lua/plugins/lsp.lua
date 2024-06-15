local mapKey = require("utils/keyMapper").mapKey

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "clangd", "lua_ls", "tsserver" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})

            -- vim.lsp.buf.hover
            -- vim.lsp.buf.definition
            -- vim.lsp.buf.code_action
            mapKey("K", vim.lsp.buf.hover)
            mapKey("gd", vim.lsp.buf.definition)
            mapKey("<leader>ca", vim.lsp.buf.code_action)
        end
    },
}
