vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local yarai_Fugitive = vim.api.nvim_create_augroup("yarai_Fugitive", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWinEnter", {
    group = yarai_Fugitive,
    pattern = "*",
    callback = function()

        -- If buffer is not fugitive buffer, don't execute this code block.
        if vim.bo.ft ~= "fugitive" then
            return
        end

        -- Keybinds set.
        vim.keymap.set("n", "<leader>gs", "<cmd>q<cr>", { buffer = 0 })
        vim.keymap.set("n", "<leader>a", "<cmd>Git add .<cr>", { buffer = 0 })
        vim.keymap.set("n", "<leader>c", "<cmd>Git commit -a<cr>", { buffer = 0 })
        vim.keymap.set("n", "<leader>p", "<cmd>Git push<cr>", { buffer = 0 })
        vim.keymap.set("n", "<leader>P", "<cmd>Git pull --rebase<cr>", { buffer = 0 })
    end,
})
