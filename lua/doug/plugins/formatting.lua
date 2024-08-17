return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        javascript = { "biome", "tailwindcss" },
        typescript = { "biome", "tailwindcss" },
        javascriptreact = { "biome", "tailwindcss" },
        typescriptreact = { "biome", "tailwindcss" },
        svelte = { "biome", "tailwindcss" },
        css = { "prettier" },
        html = { "tailwindcss" },
        json = { "biome" },
        yaml = {},
        markdown = {},
        graphql = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { "rust_analyzer", "rustfmt", "yew-fmt" },
        vue = { "unocss", "tailwindcss" },
        go = { "gofmt" },
        elixir = { "tailwindcss" },
        solidity = { "solidity_ls_nomicfoundation", "forge_fmt" },
        elm = { "elm-format" },
        move = { "move-analyzer" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
