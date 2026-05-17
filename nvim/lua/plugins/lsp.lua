local mapKey = require("utils/keyMapper").mapKey

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "lua_ls",
          "pyright",
          "ts_ls",
          "rust_analyzer",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lsp = vim.lsp

      lsp.config("clangd", {
        on_attach = function(client)
          client.server_capabilities.documentFormattingProvider = false
        end,
      })

      lsp.config("lua_ls", {})
      lsp.config("pyright", {})
      lsp.config("ts_ls", {})

      lsp.enable("clangd")
      lsp.enable("lua_ls")
      lsp.enable("pyright")
      lsp.enable("ts_ls")
      -- rust_analyzer는 rustaceanvim이 설정하므로 여기서 setup하지 않음

      mapKey("K", lsp.buf.hover)
      mapKey("gd", lsp.buf.definition)
      mapKey("<leader>ca", lsp.buf.code_action)
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^6",
    lazy = false,
  },
}
