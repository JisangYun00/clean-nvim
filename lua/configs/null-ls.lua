-- null-ls.lua
--

local null_ls = require "null-ls"
local opts = {
  sources = {
    -- clang_format removed: handled by conform.nvim
    null_ls.builtins.formatting.black,
  },
}
return opts
