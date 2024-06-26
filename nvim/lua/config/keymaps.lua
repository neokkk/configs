local mapKey = require("utils/keyMapper").mapKey

-- Neotree start
-- toggle
mapKey("<leader>e", ":Neotree position=left dir=%:p:h:h toggle<cr>")

-- navigate pane
mapKey("<C-h>", "<C-w>h") -- left
mapKey("<C-j>", "<C-w>j") -- down
mapKey("<C-k>", "<C-w>k") -- up
mapKey("<C-l>", "<C-w>l") -- right

-- Neotree end

-- clear search highlight
mapKey("<leader>h", ":nohlsearch<CR>")

-- indent
mapKey("<", "<gv", "v")
mapKey(">", ">gv", "v")
