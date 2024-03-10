-- ------------------------------------------------------------------------------------------------
-- Install/Config file to Gitsigns
-- Author: Dk4LL (dk4ll@proton.me)
-- Date: 10/03/2024
-- ------------------------------------------------------------------------------------------------

return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()

    keyset = vim.keymap.set

    keyset("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
  end
}
