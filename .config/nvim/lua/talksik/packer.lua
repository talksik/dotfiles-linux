-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use('nvim-lua/plenary.nvim')


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' }, { 'xiyaowong/telescope-emoji.nvim' } }
    }

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('mbbill/undotree')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use {"shortcuts/no-neck-pain.nvim", tag = "*" }

    use("github/copilot.vim")
    use("eandrju/cellular-automaton.nvim")

    use("nvim-tree/nvim-web-devicons")

    use {
        'nvim-lualine/lualine.nvim',
    }

    use("f-person/git-blame.nvim")

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Adds extra functionality over rust analyzer
    use("simrat39/rust-tools.nvim")

    use("ThePrimeagen/harpoon")

    -- themes
    use { "catppuccin/nvim", as = "catppuccin" }
    use('maxmx03/solarized.nvim')
    use({
      "neanias/everforest-nvim",
    })

    use('nvim-lua/lsp-status.nvim')

    use {
      "startup-nvim/startup.nvim",
      requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    }

    use('RobertBrunhage/flutter-riverpod-snippets')
    use('Neevash/awesome-flutter-snippets')

    use {
        'akinsho/flutter-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
    }

    use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
    })

    use('peterhoeg/vim-qml')

    -- nvim v0.7.2
    use({
      "kdheepak/lazygit.nvim",
      -- optional for floating window border decoration
      requires = {
        "nvim-lua/plenary.nvim",
      },
    })

    -- version 2.0
    use("lukas-reineke/indent-blankline.nvim")

    use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

    -- treesitter context
    use("nvim-treesitter/nvim-treesitter-context")
end)


