-- ------------------------------------------------------------------------------------------------
-- Install/Config file to LSP 
-- Author: Dk4LL (dk4ll@proton.me)
-- Date: 17/03/2024
-- ------------------------------------------------------------------------------------------------

return {
--  {
--    "williamboman/mason.nvim",
--    config = function()
--      require("mason").setup()
--    end
--  },
--  {
--    "williamboman/mason-lspconfig.nvim",
--    config = function()
--      require("mason-lspconfig").setup({
--        ensure_installed = {
--          "texlab"
--        }
--      })
--    end
--  }
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    -- ------------------------------------------------------------------------
    -- HTML LSP
    -- ------------------------------------------------------------------------
    lspconfig.html.setup({
      cmd = { "vscode-html-language-server", "--stdio" },
      filetypes = { "html", "templ" },
      init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
          css = true,
          javascript = true
        },
        provideFormatter = true
      },
      settings = {},
      single_file_support = true
    })

    -- ------------------------------------------------------------------------
    -- Latex LSP
    -- ------------------------------------------------------------------------
    lspconfig.texlab.setup({
      cmd = { "texlab" },
      filetypes = { "tex", "plaintex", "bib" },
      settings = {
        texlab = {
          auxDirectory = ".",
          bibtexFormatter = "texlab",
          build = {
            args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
            executable = "latexmk",
            forwardSearchAfter = false,
            onSave = false
          },
          chktex = {
            onEdit = false,
            onOpenAndSave = false
          },
          diagnosticsDelay = 300,
          formatterLineLength = 80,
          forwardSearch = {
            args = {}
          },
          latexFormatter = "latexindent",
          latexindent = {
            modifyLineBreaks = false
          }
        }
      },
      single_file_support = true
    })
  end
}
