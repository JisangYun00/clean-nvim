local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    python = { "black" },
    cpp = { "clang_format" },
    c = { "clang_format" },
  },

  formatters = {
    clang_format = {
      args = { "--style=google" }, -- Set code format style
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
  },
}
return options
