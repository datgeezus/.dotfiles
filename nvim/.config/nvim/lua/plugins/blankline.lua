return {
    'lukas-reineke/indent-blankline.nvim',
    config = function ()
        require('lualine').setup {
            show_current_context = true,
            show_current_context_start = true,
            show_end_of_line = true,
        }
    end
}
