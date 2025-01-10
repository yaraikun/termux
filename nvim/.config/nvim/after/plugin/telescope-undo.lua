vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<CR>")

require("telescope").setup({
    extensions = {
        undo = {
            mappings = {
                i = {
                    ["<cr>"] = require("telescope-undo.actions").restore,
                    ["<S-cr>"] = require("telescope-undo.actions").yank_additions,
                    ["<C-cr>"] = require("telescope-undo.actions").yank_deletions,
                },
            },
        },
    },
})
