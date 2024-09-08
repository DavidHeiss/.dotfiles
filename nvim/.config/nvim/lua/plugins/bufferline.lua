return {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = function()
        return {
            options = {
                themable = true,
                indicator = { style = "none" },
                show_close_icon = false,
                show_buffer_close_icons = false,
                separator_style = {"",""},
                tabsize = 10,
                always_show_bufferline = false,
            },
        }
    end
}
