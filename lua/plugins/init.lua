-- init.lua

return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- "lua-language-server",
        "pyright",
        "black",
        "debugpy",
        "mypy",
        -- "ruff",  -- Removed temporarily due to loading issues
        "clangd",
        "clang-format",
        "codelldb",
        "rustfmt",
      },
    },
  },

  -- Rust Configuration
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    ft = "rust",
  },

  -- Debug Adapter Protocol (DAP) Configuration
  {
    "mfussenegger/nvim-dap",
  },

  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      require("dap-python").setup("python3")
    end,
  },
  {
    "saecki/crates.nvim",
    tag = "stable",
    event = { "BufRead Cargo.toml" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup()
    end,
  },

  -- Navigation and Preview Plugins
  {
    "rmagatti/goto-preview",
    lazy = false,
    config = function()
      require("goto-preview").setup {
        default_mappings = true,
      }
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.10.0",
    opts = {
      -- NvChad defaults: lua, luadoc, printf, vim, vimdoc
      ensure_installed = { "lua", "luadoc", "printf", "vim", "vimdoc", "c", "cpp", "python", "rust" },
    },
  },

  -- Code Structure and Documentation Navigation
  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("aerial").setup {
        on_attach = function(bufnr)
          -- Jump forwards/backwards with '{' and '}'
          vim.keymap.set("n", "}", "<cmd>AerialPrev<CR>", { buffer = bufnr })
          vim.keymap.set("n", "{", "<cmd>AerialNext<CR>", { buffer = bufnr })
        end,
      }
      -- Keymap to toggle aerial
      vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
    end,
    lazy = false,
  },

  -- Git GUI
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  -- C/C++ Configuration
  {
    "p00f/clangd_extensions.nvim",
    config = function() end,
    ft = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  },
}
