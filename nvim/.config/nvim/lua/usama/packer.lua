-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  vim.cmd [[packadd packer.nvim]]
end

-- stylua: ignore start
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb' 

  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } } 

  use 'numToStr/Comment.nvim' 

  use 'nvim-treesitter/nvim-treesitter' 
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  use { 
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  use 'folke/tokyonight.nvim'
  -- use 'lukas-reineke/indent-blankline.nvim'
  --
  use 'tpope/vim-sleuth' 

  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }

  use "mbbill/undotree"

  -- use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable "make" == 1 }
  use("onsails/lspkind-nvim")

  use("simrat39/symbols-outline.nvim")

  use("hrsh7th/cmp-buffer")

  use("ThePrimeagen/harpoon")

  use("romgrk/nvim-treesitter-context")
  
  use("mfussenegger/nvim-dap")
  use("rcarriga/nvim-dap-ui")
  use("theHamsta/nvim-dap-virtual-text")
  --use 'yriveiro/dap-go.nvim'

  use {"nvim-lualine/lualine.nvim", requires = { 'kyazdani42/nvim-web-devicons', opt = true }}

  use("leoluz/nvim-dap-go")
  if is_bootstrap then
    require('packer').sync()
  end
end)
-- stylua: ignore end

-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
--
-- You'll need to restart nvim, and then it will work.
if is_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end
