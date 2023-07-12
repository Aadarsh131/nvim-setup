require('packer').startup(function(use)
  --packer
  use 'wbthomason/packer.nvim'

  --mason (its a pkg manager with LSP, DAP, Linter, Formatter)
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate"      -- :MasonUpdate updates registry contents
    , "williamboman/mason-lspconfig.nvim",
  }

  --for LSP
  use { 'neovim/nvim-lspconfig' }

  --nvim-tree ( a file explorer tree)
  use { "nvim-tree/nvim-tree.lua" }

  --treesitter (syntax highlighting)
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  --bufferline (for buffers,tabs,windows,and many more)
  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }

  --alpha (for initial page)
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  }

  --statusline plugin
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  --colorscheme plugins
  use { "catppuccin/nvim", as = "catppuccin" }
  use {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  }
  use {'martinsione/darkplus.nvim'}

  --telescope (for find, filter, preview, pick)
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
end)
