local use = require("packer").use

return require('packer').startup(function()
    -- packer list
    use 'wbthomason/packer.nvim'
    -- theme
    use {
        "ellisonleao/gruvbox.nvim",
        requires = {"rktjmp/lush.nvim"}
    }
    -- nvim-tree (新增)
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons', opt = true
        }
    }
    use {
        'glepnir/dashboard-nvim',
        requires = {'nvim-tree/nvim-web-devicons'}
    }
    use {"folke/which-key.nvim"}
    use {"akinsho/toggleterm.nvim", tag = 'v2.*'}
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0',   requires = { {'nvim-lua/plenary.nvim'} } }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use {'rmagatti/auto-session'}
    use {'neovim/nvim-lspconfig'}
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })


    -- nvim-cmp
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    -- vsnip
    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}
    use {'rafamadriz/friendly-snippets'}
    -- lspkind
    use {'onsails/lspkind-nvim'}
    use{"glepnir/lspsaga.nvim"}
    use {
        "windwp/nvim-autopairs",
    }
    use {'simrat39/symbols-outline.nvim'}
    use 'Mofiqul/vscode.nvim'
    use "rebelot/kanagawa.nvim"

    -- dap
    use {'mfussenegger/nvim-dap'}
    use {'theHamsta/nvim-dap-virtual-text'}
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use {'leoluz/nvim-dap-go'}

    -- comment plugin
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }


    -- git
    use {
        'tanvirtin/vgit.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use {'lewis6991/gitsigns.nvim' }
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

    -- formatter 
    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    })
end)

