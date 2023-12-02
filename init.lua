require('plugins')
-- check if lazy.nvim is installed
BootstrapLazy()
-- start lazy.nvim
StartLazy()


-- start mason
require("mason").setup()

-- start treesitter
require('treesitter')

-- start Copilot 
require('cpilot')

-- start completion
require('completion')

-- lualine 
require('lline')
