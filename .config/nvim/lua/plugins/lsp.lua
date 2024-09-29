vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
        vim.keymap.set("n", "<C-w>d", vim.diagnostic.open_float, opts)
        vim.keymap.set("i", "<C-s>", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

    end,
})

return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.gopls.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.pyright.setup({})
            lspconfig.metals.setup({})
            lspconfig.html.setup({})
            lspconfig.cssls.setup({})
            lspconfig.eslint.setup({})
            lspconfig.dartls.setup({})
            lspconfig.ocamllsp.setup({})
            lspconfig.jdtls.setup({})
            lspconfig.svelte.setup({})
            lspconfig.tailwindcss.setup({})
            lspconfig.csharp_ls.setup({})
            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" }
                        }
                    }
                }
            })
        end
    },

    {
      'echasnovski/mini.completion',
      config = function()
        require('mini.completion').setup()
      end
    },
}
