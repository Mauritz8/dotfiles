vim.diagnostic.config({ virtual_text = true })

vim.lsp.config('*', {
  root_markers = { '.git' },
})

vim.lsp.enable('clangd')
vim.lsp.enable('ts_ls')
vim.lsp.enable('ocamllsp')
vim.lsp.enable('jdtls')
vim.lsp.enable('erlangls')
vim.lsp.enable('pyright')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('gopls')
vim.lsp.enable('svelte')

vim.lsp.config.lua_ls = {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("lua", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
vim.lsp.enable('lua_ls')
vim.lsp.enable('eslint')
