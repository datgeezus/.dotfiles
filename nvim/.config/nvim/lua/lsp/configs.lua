-- local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local servers = { "lua_ls", "jdtls", "tsserver", "pyright", "rust_analyzer", "jsonls", "yamlls", "taplo" }
--
-- mason_lspconfig.setup({
--     ensure_installed = servers,
-- })

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
    vim.keymap.set("n", "gw", vim.lsp.buf.document_symbol, bufopts)
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
    vim.keymap.set("n", "<leader>af", vim.lsp.buf.code_action, bufopts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, bufopts)
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, bufopts)
    vim.keymap.set("n", "<leader>dl", "<CMD>Telescope diagnostics<CR>", bufopts)
end

local lsp_flags = {
    debounce_text_changes = 150,
}

local opts = {
    on_attach = on_attach,
    flags = lsp_flags,
}

for _, server in pairs(servers) do
    lspconfig[server].setup(opts)
end

-- Per-language settings
lspconfig["lua_ls"].setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})
