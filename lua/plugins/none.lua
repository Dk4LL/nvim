-- ------------------------------------------------------------------------------------------------
-- Install/Config file to none-ls
-- Author: Dk4LL (dk4ll@proton.me)
-- Date: 23/03/2024
-- ------------------------------------------------------------------------------------------------

return {
  "nvimtools/none-ls.nvim",
  config = function()
    local nullls = require("null-ls")

    nullls.setup({
      sources = {
        -- Formatter Lua
        nullls.builtins.formatting.stylua,
      },
    })

    local keyset = vim.keymap.set

    keyset("n", "<leader>lf", vim.lsp.buf.format, {})
  end,
}
