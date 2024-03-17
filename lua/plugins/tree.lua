-- ------------------------------------------------------------------------------------------------
-- Install/Config to tree-sitter
-- Author: Dk4LL (dk4ll@proton.me)
-- Date: 15/03/2024
-- ------------------------------------------------------------------------------------------------

return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", 
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "css", "haskell", "html", "java", "javascript", "latex", "lua", "ocaml", "python", "typescript", "vim", "vimdoc" },
      --sync_install = false, 
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}
