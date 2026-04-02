-- lspconfig.lua
-- load defaults i.e lua_ls, sets up global LspAttach for on_attach/capabilities
require("nvchad.configs.lspconfig").defaults()

-- lsps with default config
vim.lsp.enable({ "html", "cssls", "pyright" })

-- Enhanced Clangd configuration
vim.lsp.config('clangd', {
  on_attach = function(client, bufnr)
    -- Disable signature help
    if client.server_capabilities then
      client.server_capabilities.signatureHelpProvider = nil
    end

    -- C/C++ specific keymaps
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "<leader>h", "<cmd>ClangdSwitchSourceHeader<cr>", opts)
    vim.keymap.set("n", "<leader>st", "<cmd>ClangdAST<cr>", opts)
    vim.keymap.set("n", "<A-k>", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, opts)
  end,
  cmd = {
    "clangd",
    "--background-index",
    "--suggest-missing-includes",
    "--clang-tidy",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--function-arg-placeholders",
    "--fallback-style=microsoft",
  },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
})
vim.lsp.enable('clangd')
