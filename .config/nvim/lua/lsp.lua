vim.diagnostic.config({ virtual_text = true })

vim.lsp.config('*', {
  root_markers = { '.git' },
})

vim.lsp.config.clangd = {
  cmd = { 'clangd', '--background-index' },
  filetypes = { 'c', 'cpp' },
}
vim.lsp.enable('clangd')

vim.lsp.config.ts_ls = {
  cmd = { 'typescript-language-server', '--stdio' }, 
  filetypes = { 'javascript', 'typescript' },
}
vim.lsp.enable('ts_ls')

vim.lsp.config.ocamllsp = {
  cmd = { 'ocamllsp' },
  filetypes = { 'ocaml' },
}
vim.lsp.enable('ocamllsp')

vim.lsp.config.jdtls = {
  cmd = { 'jdtls' },
  filetypes = { 'java' },
}
vim.lsp.enable('jdtls')

vim.lsp.config.erlangls = {
  cmd = { 'erlang_ls' },
  filetypes = { 'erlang' },
}
vim.lsp.enable('erlangls')

vim.lsp.config.pyright = {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
}
vim.lsp.enable('pyright')

vim.lsp.config.rust_analyzer = {
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' },
}
vim.lsp.enable('rust_analyzer')

vim.lsp.config.gopls = {
  cmd = { 'gopls' },
  filetypes = { 'go' },
}
vim.lsp.enable('gopls')

vim.lsp.config.svelteserver = {
  cmd = { 'svelteserver', '--stdio' },
  filetypes = { 'svelte' },
}
vim.lsp.enable('svelteserver')
