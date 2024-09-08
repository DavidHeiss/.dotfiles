return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    keys = function()
        local telescope = require "telescope.builtin"
        return {
            { "<leader>ff", telescope.find_files, desc = "Find files" }
        }
    end
}
