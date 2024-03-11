-- ------------------------------------------------------------------------------------------------
-- Install/Config file to color scheme
-- Author: Dk4LL (dk4ll@proton.me)
-- Date: 10/03/2024
-- ------------------------------------------------------------------------------------------------

return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    name = "kanagawa",
    priority = 1000,
    config = function()
      -- {wave, dragon, lotus}
      require("kanagawa").load("wave")
    end
  }
}


