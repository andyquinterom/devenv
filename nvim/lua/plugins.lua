vim.cmd [[packadd packer.nvim]]

-- Copilot keys need to be set before loading the plugin
-- vim.g.copilot_no_tab_map = true
-- vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

return require("packer").startup(function()

    -- Rust.vim
    use("rust-lang/rust.vim")

    use("wbthomason/packer.nvim")
    use("sbdchd/neoformat")

    -- Simple plugins can be specified as strings
    use("TimUntersberger/neogit")

    -- All the things
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    -- Neovim tree sitter
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    use("nvim-treesitter/playground")

    -- Color scheme
    use "folke/tokyonight.nvim"
    use "ellisonleao/gruvbox.nvim"

    -- Fugutive
    use("tpope/vim-fugitive")
    use("vim-airline/vim-airline")

    -- telescope
    use("nvim-lua/popup.nvim")
    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope.nvim")

    -- Git Gutter
    use("airblade/vim-gitgutter")

    -- Dev icons
    use("ryanoasis/vim-devicons")

    -- Pandoc
    use("vim-pandoc/vim-pandoc")
    use("vim-pandoc/vim-pandoc-syntax")
    use("vim-pandoc/vim-rmarkdown")


    -- Copilot
    -- use("github/copilot.vim")

end)
