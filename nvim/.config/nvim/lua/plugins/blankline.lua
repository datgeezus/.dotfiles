return {
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
    -- event = { "BufReadPost", "BufNewFile" },
    opts = {
        indent = {
            char = "│",
        },
        -- filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
        -- space_char_blankline = " ",
        -- show_current_context = true,
        -- show_current_context_start = true,
        -- show_end_of_line = true,
    }
}
