local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local servers = { "sumneko_lua" }

mason_lspconfig.setup({
    ensure_installed = servers,
})

local function keymaps()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
end


local opts = {
    on_attach = keymaps
}

for _, server in pairs(servers) do
    lspconfig[server].setup(opts)
end
