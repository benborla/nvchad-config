local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { { "prettierd", "prettier" } },
    html = { { "prettierd", "prettier" } },
    javascript = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    vue = { { "prettierd", "prettier" } },
    php = { "easy-coding-standard" }
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
