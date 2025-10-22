
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	  -- Packer can manage itself
	  use 'wbthomason/packer.nvim'
	  -- plugin for status line
	  use 'tamton-aquib/staline.nvim'
	  -- plugin for hex code colors
	  use 'norcalli/nvim-colorizer.lua'
	  -- plugin for pairs of characteres "" or {} etc...
	  use {
	  "windwp/nvim-autopairs",
	  event = "InsertEnter",
	  config = function()
	  require("nvim-autopairs").setup {}
end
}
-- telescope for search files 
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
-- bufferline plugin for open multiples files
use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
-- tree for navigation for files
use 'nvim-tree/nvim-tree.lua'
-- float terminal for fast comands without close editor
use 'voldikss/vim-floaterm'
-- for best and bealtifull identation
use "lukas-reineke/indent-blankline.nvim"
-- notify for notifications boxes messages
use 'rcarriga/nvim-notify'
-- dashboard plugin for initial screen
use {
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim"},
  config = function()
    require"startup".setup()
  end
}

-- nvim cmp for autocomplete 
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'

-- luasnip for snippets
use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
})
-- cmp for luasnip
use 'saadparwaiz1/cmp_luasnip'
use 'mason-org/mason.nvim'
use 'mason-org/mason-lspconfig.nvim'
use 'nvim-tree/nvim-web-devicons'
end)

