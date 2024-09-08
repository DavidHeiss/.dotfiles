for i = 1, 9 do
    vim.api.nvim_set_keymap("n", "<C-"..i..">", ":BufferLineGoToBuffer "..i.."<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<A-"..i..">", ":BufferLineGoToBuffer "..i.."<CR>", { noremap = true, silent = true })
end

vim.api.nvim_set_keymap("n", "<C-C>", ":bdelete <CR>", { noremap = true, silent = true })
