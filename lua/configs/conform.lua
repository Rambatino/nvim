local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = {
      "goimports",
      "gofmt",
      "goimports-revisor",
    },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_after_save = {
    async = true,
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.fn.jobstart("go mod tidy", { detach = true })
  end,
})

return options
