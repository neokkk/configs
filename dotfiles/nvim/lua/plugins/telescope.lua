local mapKey = require("utils.keyMapper").mapKey

return {
    "nvim-telescope/telescope.nvim", tag = "0.1.6",
-- or                              , branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local builtin = require("telescope.builtin")
        mapKey("<leader>ff", builtin.find_files)
        mapKey("<leader>fg", builtin.live_grep)
        mapKey("<leader>fb", builtin.buffers)
        mapKey("<leader>fh", builtin.help_tags)
    end,
}
