require("mason").setup()

require("mason-null-ls").setup({
    ensure_installed = {
        -- Opt to list sources here, when available in mason.
        "black",
        "clang-format",
    },
    automatic_installation = true,
    handlers = {},
})

local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- Anything not supported by mason.
    null_ls.builtins.formatting.black,
    -- null_ls.builtins.formatting.clang_format,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
          vim.lsp.buf.format({ async = true })
        end,
      })
    end
  end,
})
