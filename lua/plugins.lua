-- This code checks if the 'lazy.nvim' plugin is installed. If not, it clones it from GitHub. Then it adds the plugin's path to Vim's runtime path.
function BootstrapLazy()
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
  end
  vim.opt.rtp:prepend(lazypath)
end

-- this is the actual plugin configuration 
function StartLazy()
  require("lazy").setup(Plugins, opts)
end

-- this is the list of plugins that will be loaded
Plugins = {
  {"folke/todo-comments.nvim", opt = true},
  -- mason.nvim 
   {"williamboman/mason.nvim", opt = true},
  -- lsp config
  {"neovim/nvim-lspconfig"},
  
  -- tree-sitter
  {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"},
  {"nvim-treesitter/nvim-treesitter-textobjects"},


  -- nvim-cmp (completion)
  {"hrsh7th/nvim-cmp"},
  {"hrsh7th/cmp-buffer"},
  {"hrsh7th/cmp-nvim-lsp"},
  {"hrsh7th/cmp-nvim-lua"},
  {"hrsh7th/cmp-path"},
  {"hrsh7th/cmp-vsnip"},
  {"zbirenbaum/copilot-cmp"},
  --lualine 
  {"hoob3rt/lualine.nvim", requires = {"kyazdani42/nvim-web-devicons", opt = true}},
  -- bufferline
  {"akinsho/nvim-bufferline.lua", requires = "kyazdani42/nvim-web-devicons"},
  --copilot.lua zbirenbaum
  {"zbirenbaum/copilot.lua"},
}
