vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'nzzzv')

vim.api.nvim_create_autocmd('VimEnter', {
    callback = function() 
        vim.keymap.set('n', '<leader>y', "\"+y")
        vim.keymap.set('v', '<leader>y', "\"+y")
        vim.keymap.set('n', '<leader>Y', "\"+Y")
        vim.keymap.set('n', '<leader>wh', '<C-w>h')
        vim.keymap.set('n', '<leader>wl', '<C-w>l')
        vim.keymap.set('n', '<leader>wj', '<C-w>j')
        vim.keymap.set('n', '<leader>wk', '<C-w>k')
        vim.keymap.set('x', '<leader>p', '"_dP')
        vim.keymap.set('v', '<leader>p', '"_dP')
        vim.keymap.set('n', '<leader>d', "\"_d")
        vim.keymap.set('v', '<leader>d', "\"_d")
    end
})


vim.keymap.set('n', '<C-f>', '<cmd>silent !mux neww tmux-sessionizer<CR>')
vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format()
end)

vim.keymap.set('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>')
vim.keymap.set('n', '<leader>x', '<cmd>!chmod %<CR>', { silent = true })

vim.keymap.set('n', '<leader>st', '<cmd>NvimTreeToggle<CR>')
