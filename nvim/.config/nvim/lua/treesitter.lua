local treesitter = require("nvim-treesitter.configs")

treesitter.setup {
    ensure_installed = { "python", "lua", "java", "typescript" },
    sync_installl = false,              -- install languages synchronously
    ignore_install = { "" },            -- list of parsers to ignore installing
    highlight = {
        enable = true,
        disable = { "" },               -- list of languages disabled
        additional_vim_regex_highlighting = true,
    },
    indent = {
        enable = true,
        disable = { "yaml", "python" },
    },
}
