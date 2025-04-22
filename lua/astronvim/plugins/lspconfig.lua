return {
  "neovim/nvim-lspconfig",
  specs = {
    {
      "AstroNvim/astrolsp",
      optional = true,
      dependencies = { "neovim/nvim-lspconfig" },
    },
  },
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      dependencies = { "williamboman/mason.nvim" },
      cmd = { "LspInstall", "LspUninstall" },
      opts_extend = { "ensure_installed" },
      opts = {
        ensure_installed = {},
        handlers = { function(server) require("astrolsp").lsp_setup(server) end },
      },
      config = function(...) require "astronvim.plugins.configs.mason-lspconfig"(...) end,
    },
  },
  cmd = { "LspInfo", "LspLog", "LspStart" },
  event = "User AstroFile",
}
