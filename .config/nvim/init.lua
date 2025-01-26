vim.o.termguicolors = false -- no clue why but this being on breaks colors even though it should do the opposite? 
vim.o.ignorecase = true
vim.o.number = true -- line numbers
vim.cmd.colorscheme('wpgtk') -- nicer than base terminal colorscheme

require("config.lazy")

