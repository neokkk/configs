return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        require("nvim-treesitter").install { "c", "cpp", "javascript", "lua", "python", "rust" }
    end
}
