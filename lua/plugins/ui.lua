-- ------------------------------------------------------------------------------------------------
-- Config file to welcone screen
-- Author: Dk4LL (dk4ll@proton.me)
-- Date: 23/04/2024
-- ------------------------------------------------------------------------------------------------
return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local alpha = require("alpha")

    local dashboard = require("alpha.themes.startify")

    dashboard.section.header.val = {
      [[                                            ]],
      [[ ██████╗        ██╗   ██╗ ██                ]],
      [[ ██╔══██╗       ██║   ██║                   ]],
      [[ ██║  ██║       ██║   ██║ ██╗ █████╗ ██████ ]],
      [[ ██║  ██║ ████  ██║   ██║ ██║ ██ ██║ ██║ ██ ]],
      [[ ██║  ██║       ╚██╗ ██╔╝ ██║ ██ ██║ ██║ ██ ]],
      [[ ██████╔╝        ╚████╔╝  ██║ ██ ╚█████╝ ██ ]],
      [[ ╚═════╝          ╚═══╝   ╚═╝ ██         ██ ]],
      [[                                            ]],
      [[      A personal NeoVim setup by Dk4LL      ]],
      [[                                            ]],
    }

    alpha.setup(dashboard.opts)
  end
}
