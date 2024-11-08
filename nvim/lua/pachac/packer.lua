-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  use { 
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  }


  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
      }
  use "nvim-lua/plenary.nvim"
  use {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      requires = { {"nvim-lua/plenary.nvim"} }
  }

  use 'tpope/vim-fugitive'

  use {
	  'neovim/nvim-lspconfig',
	  requires = {{'hrsh7th/cmp-nvim-lsp'}}
  }

  use {
	  'hrsh7th/nvim-cmp',
	  requires = {{'L3MON4D3/LuaSnip'}}
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x'
  }

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'github/copilot.vim'

end)
