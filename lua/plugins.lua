
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

-- plugin for file browser on telescope 
use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
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

-- nvim treesitter for text colors
use 'nvim-treesitter/nvim-treesitter';

-- theme tokyonight
use 'folke/tokyonight.nvim'

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
	run = "make install_jsregexp", 
})

-- cmp for luasnip
use 'saadparwaiz1/cmp_luasnip'
use 'mason-org/mason.nvim'
use 'mason-org/mason-lspconfig.nvim'

-- plugin for more icons
use 'nvim-tree/nvim-web-devicons'

-- plugin for render mark down on nvim
use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'nvim-mini/mini.nvim', opt = true },            -- if you use the mini.nvim suite
    -- requires = { 'nvim-mini/mini.icons', opt = true },        -- if you use standalone mini plugins
    -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    config = function()
        require('render-markdown').setup({})
    end,
})

-- plugin for preview mark down on browser
-- install without yarn or npm
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

-- plugin for discord connection
use 'andweeb/presence.nvim'

-- plugin for scroll barr on files
use 'dstein64/nvim-scrollview'

-- plugin for diagnostic lsp 
use {
  "folke/trouble.nvim",
  requires = "nvim-tree/nvim-web-devicons",
  config = function()
    require("trouble").setup {}
  end
}

-- hover plugim 
use "lewis6991/hover.nvim"

-- plugin for info inline
use({
  "rachartier/tiny-inline-diagnostic.nvim",
  config = function()
    require("tiny-inline-diagnostic").setup({
      -- Exemplo de opções:
      preset = "amongus",
      options = {
        show_source = true,
        update_in_insert = true,
        refresh_on_insert_mode = true,
      },
    })
  end
})


end)


