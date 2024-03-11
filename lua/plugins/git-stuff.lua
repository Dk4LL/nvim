-- ------------------------------------------------------------------------------------------------
-- Install/Config file to Git tools
-- Author: Dk4LL (dk4ll@proton.me)
-- Date: 10/03/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      keyset = vim.keymap.set

      keyset("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      keyset("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end
  }
}
