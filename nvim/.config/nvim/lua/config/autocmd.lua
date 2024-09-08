vim.api.nvim_create_augroup('SmartRelativeNumbers', { clear = true })

vim.api.nvim_create_autocmd('InsertEnter', {
  group = 'SmartRelativeNumbers',
  callback = function()
    vim.opt.relativenumber = false
  end
})

vim.api.nvim_create_autocmd('InsertLeave', {
  group = 'SmartRelativeNumbers',
  callback = function()
    vim.opt.relativenumber = true
  end
})
