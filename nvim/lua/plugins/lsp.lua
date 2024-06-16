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
                ensure_installed = { "clangd", "lua_ls", "pyright", "tsserver" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.tsserver.setup({})

            mapKey("K", vim.lsp.buf.hover)
            mapKey("gd", vim.lsp.buf.definition)
            mapKey("<leader>ca", vim.lsp.buf.code_action)
        end
    },
}
