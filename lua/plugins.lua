return require('packer').startup(function(use)
use 'wbthomason/packer.nvim'
use 'williamboman/mason.nvim' 
use 'wakatime/vim-wakatime'
use 'nvim-tree/nvim-web-devicons'
use 'williamboman/mason-lspconfig.nvim'
use 'neovim/nvim-lspconfig'
use 'hrsh7th/nvim-cmp' 
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-nvim-lua'
use 'hrsh7th/cmp-nvim-lsp-signature-help'
use 'hrsh7th/cmp-vsnip'                             
use 'hrsh7th/cmp-path'                              
use 'hrsh7th/cmp-buffer'                            
use 'hrsh7th/vim-vsnip'
use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
use 'mfussenegger/nvim-dap'
use 'sitiom/nvim-numbertoggle'
use {'nvim-treesitter/nvim-treesitter', 
run = function() 
local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
ts_update()
end,}
use 'mfussenegger/nvim-lint'
use "ray-x/lsp_signature.nvim"
use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}
use { 
  'olivercederborg/poimandres.nvim',
  config = function()
    require('poimandres').setup {
      -- leave this setup function empty for default config
      -- or refer to the configuration section
      -- for configuration options
    }
  end
}
use "lukas-reineke/indent-blankline.nvim"
-- Nvim tree so i can see my files
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}

use {"folke/todo-comments.nvim"}
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
end)
