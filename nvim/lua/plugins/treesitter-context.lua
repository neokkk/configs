return {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
        local configs = require("treesitter-context")

        configs.setup({
            enable = true,
            max_lines = 0,
            min_windows_height = 0,
            line_numbers = true,
            multiline_threshold = 20,
            trim_scope = "outer",
            mode = "cursor",
            seperator = nil,
            zindex = 20,
            on_attach = nil,
        })
    end
}
