return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
            vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
        end,
    },

    {
        "nvzone/typr",
        dependencies = "nvzone/volt",
        opts = {},
        cmd = { "Typr", "TyprStats" },
    },

    -- {
    --     "nvim-tree/nvim-tree.lua",
    --     dependencies = {
    --         "nvim-tree/nvim-web-devicons",
    --     },
    --     config = function()
    --         require("nvim-tree").setup {
    --             git = {
    --                 enable = true,
    --                 ignore = false, -- This setting likely controls ignoring .gitignore
    --                 timeout = 500,
    --             },
    --             sort = {
    --                 sorter = "case_sensitive",
    --             },
    --             view = {
    --                 width = 30,
    --             },
    --             renderer = {
    --                 group_empty = true,
    --             },
    --             filters = {
    --                 dotfiles = false,
    --             },
    --         }
    --     end,
    -- },
}
