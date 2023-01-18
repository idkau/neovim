-- [[ plug.lua ]]
config = {
  package_root = vim.fn.stdpath('config') .. '/site/pack'
}

return require('packer').startup(function(use)
    -- insert plugins here
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use { 'mhinz/vim-startify' }
    use { 'DanilaMihailov/beacon.nvim'}
    use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'nvim-tree/nvim-web-devicons',
                opt = true}
  }
  use { 'Mofiqul/dracula.nvim' }                     -- colorscheme
  
  -- [[ Dev ]]
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.   

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/nvim-lsp-installer' }
  use {'hrsh7th/cmp-nvim-lsp'}
  use { 'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/vim-vsnip-integ'}
  use {'hrsh7th/vim-vsnip'}
end)
