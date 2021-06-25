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

  use 'joshdick/onedark.vim'
  use 'akinsho/nvim-bufferline.lua'
  use 'mhinz/vim-startify'
  use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }

  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'terrortylor/nvim-comment'
  use 'justinmk/vim-sneak'
  use 'unblevable/quick-scope'
  use 'windwp/nvim-autopairs'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  use 'elixir-editors/vim-elixir'

-- use {
--   'glepnir/galaxyline.nvim',
--     requires = {'kyazdani42/nvim-web-devicons', opt = true}
-- }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

end)
