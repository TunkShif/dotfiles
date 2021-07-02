local fn = vim.fn
local cmd = vim.cmd
local execute = vim.api.nvim_command

-- packer.nvim auto-installation
local packer_install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(packer_install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. packer_install_path)
  execute 'packadd packer.nvim'
end

cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- auto compile when there are changes in plugins.lua

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'Th3Whit3Wolf/one-nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'glepnir/galaxyline.nvim'
  use 'mhinz/vim-startify'
  use 'folke/which-key.nvim'
  use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }

  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'terrortylor/nvim-comment'
  use 'justinmk/vim-sneak'
  use 'unblevable/quick-scope'
  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } }

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'rafamadriz/friendly-snippets'
  use 'mhartington/formatter.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'elixir-editors/vim-elixir'
end)
