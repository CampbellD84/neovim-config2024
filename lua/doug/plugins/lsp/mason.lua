return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright",
        "cairo_ls",
        "move_analyzer",
        "volar",
        "solidity_ls_nomicfoundation",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",
        "biome",
        "tailwindcss",
        "isort",
        "black",
        "elm-format",
        "stylua",
        "unocss",
        "solidity_ls_nomicfoundation",
        "eslint",
        "revive",
        "solhint",
        "move_analyzer",
      },
    })
  end,
}
