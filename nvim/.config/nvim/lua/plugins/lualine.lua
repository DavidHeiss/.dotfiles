return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = function()
        local theme = require "lualine.themes.oxocarbon"

        for _, mode in pairs(theme) do
            if mode.c ~= nil then
                mode.c.bg = nil
            end
        end

        return {
            options = {
                theme = theme,
                component_separators = "",
                section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_a = {
                    { "mode", separator = { left = "", right = "" }, padding = 0 }
                },
                lualine_b = {
                    { "branch", padding = { left = 1, right = 0 } }
                },
                lualine_c = { "filename" },
                lualine_x = { "diagnostics", "filetype" },
                lualine_y = {},
                lualine_z = {}
            }
        }
    end
}
