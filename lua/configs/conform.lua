local format_on_save_enabled = true

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    python = { "black" },
    cpp = { "clang_format" },
    c = { "clang_format" },
    rust = { "rustfmt" },
  },

  formatters = {
    clang_format = {
      args = { "--style=google" },
    },
  },

  format_on_save = function()
    if not format_on_save_enabled then return end
    return { timeout_ms = 500, lsp_format = "fallback" }
  end,
}

vim.keymap.set("n", "<leader>tf", function()
  format_on_save_enabled = not format_on_save_enabled
  print("Format on save: " .. (format_on_save_enabled and "ON" or "OFF"))
end, { desc = "Toggle format on save" })

return options
