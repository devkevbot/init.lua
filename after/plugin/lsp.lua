local lsp = require("lsp-zero").preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_server = false,
})

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
})

lsp.configure('eslint', {
    on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
        })
    end,
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
    lsp.buffer_autoformat()
end)

lsp.setup()

-- Shows diagnostic information beside the relevant line of code
vim.diagnostic.config({
    virtual_text = true,
})
