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

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lspconfig = require("lspconfig")
    local keyset = vim.keymap.set

    -- ------------------------------------------------------------------------
    -- Keymaps
    -- ------------------------------------------------------------------------
    keyset('n', 'K', vim.lsp.buf.hover, {})
    keyset('n', 'gd', vim.lsp.buf.definition, {})
    keyset({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

    -- ------------------------------------------------------------------------
    -- C/C++ LSP
    -- ------------------------------------------------------------------------
    --lspconfig.clang.setup({
    --  cmd = { "clangd" },
    --  filetypes = { "c", "cpp", "h", "hpp", "objc", "objcpp", "cuda", "proto" },
      -- root_dir = root_pattern('.clangd','.clang-tidy','.clang-format','compile_commands.json','compile_flags.txt','configure.ac','.git')
    --  single_file_support = true,
    --  capabilities = capabilities
    --})

    -- ------------------------------------------------------------------------
    -- CSS LSP
    -- ------------------------------------------------------------------------
    lspconfig.cssls.setup({
      cmd = { "vscode-css-language-server", "--stdio" },
      filetypes = { "css", "scss", "less" },
      init_options = {
        provideFormatter = true
      },
      --root_dir = root_pattern("package.json", ".git") or bufdir,
      settings = {
        css = { validate = true },
        less = { validate = true },
        scss = { validate = true }
      },
      single_file_support = true,
      capabilities = capabilities
    })

    -- ------------------------------------------------------------------------
    -- Haskell LSP
    -- ------------------------------------------------------------------------
    lspconfig.hls.setup({
      cmd = { "haskell-language-server-wrapper", "--lsp" },
      filetypes = { 'haskell', 'lhaskell', 'cabal' },
      --root_dir = lspconfig.util.root_pattern("hie.yaml", "stack.yaml", "cabal.project", "*.cabal", "package.yaml")
      settings = {
        haskell = {
          cabalFormattingProvider = "cabal-fmt",
          formattingProvider = "ormolu"
        }
      },
      single_file_support = true,
      capabilities = capabilities
    })

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
      single_file_support = true,
      capabilities = capabilities
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
      single_file_support = true,
      capabilities = capabilities
    })

    -- ------------------------------------------------------------------------
    -- Lua LSP
    -- ------------------------------------------------------------------------
    lspconfig.lua_ls.setup{
      capabilities = capabilities
    }

    -- ------------------------------------------------------------------------
    -- Ocaml LSP
    -- ------------------------------------------------------------------------
    lspconfig.ocamllsp.setup({
      cmd = { "ocamllsp" },
      filetypes = {
        "ocaml",
        "menhir",
        "ocamlinterface",
        "ocamllex",
        "reason",
        "dune" },
      -- para usar o root_patter tem que marcar false no single_file_support
      --root_dir = lspconfig.util.root_pattern("*.opam", "esy.json", "package.json", ".git", "dune-project", "dune-workspace")
      single_file_support = true,
      capabilities = capabilities
    })

    -- ------------------------------------------------------------------------
    -- Python LSP
    -- ------------------------------------------------------------------------
    lspconfig.pyright.setup({
      cmd = { "pyright-langserver", "--stdio" },
      filetypes = { "python" },
      settings = {
        python = {
          analysis = {
            autoSearchPaths = true,
            diagnosticMode = "openFilesOnly",
            useLibraryCodeForTypes = true
          }
        }
      },
      single_file_support = true,
      capabilities = capabilities
    })

    -- ------------------------------------------------------------------------
    -- Typescript LSP
    -- ------------------------------------------------------------------------
    lspconfig.tsserver.setup{
      capabilities = capabilities
    }

  end
}
