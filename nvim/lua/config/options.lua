local opt = vim.opt

-- tab/indent
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.softtabstop = 4
opt.startofline = true
opt.tabstop = 4
opt.wrap = false

-- search
opt.ignorecase = true
opt.incsearch = true
opt.smartcase = true

-- visual
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.termguicolors = true

-- etc
opt.cmdheight = 1
opt.encoding = "UTF-8"
opt.mouse:append("a") -- mouse usage on
opt.scrolloff = 10
