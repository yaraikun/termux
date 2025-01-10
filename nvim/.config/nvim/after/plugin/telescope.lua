local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({ hidden = true })
end, { desc = 'Telescope find files (including hidden)' })

vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find files' })
