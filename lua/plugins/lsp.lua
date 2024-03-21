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
    lspconfig.clang.setup({
      cmd = { "clangd" },
      filetypes = { "c", "cpp", "h", "hpp", "objc", "objcpp", "cuda", "proto" },
      -- root_dir = root_pattern('.clangd','.clang-tidy','.clang-format','compile_commands.json','compile_flags.txt','configure.ac','.git')
      single_file_support = true
    })

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
      single_file_support = true
    })

    -- ------------------------------------------------------------------------
    -- Eslint LSP
    -- ------------------------------------------------------------------------
    lspconfig.eslint.setup({
      cmd = { "vscode-eslint-language-server", "--stdio" },
      filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
        "vue",
        "svelte",
        "astro" },
      --handlers = {
      --  ["eslint/confirmESLintExecution"] = <function 1>,
      --  ["eslint/noLibrary"] = <function 2>,
      --  ["eslint/openDoc"] = <function 3>,
      --  ["eslint/probeFailed"] = <function 4>
      --},
      settings = {
        codeAction = {
          disableRuleComment = {
            enable = true,
            location = "separateLine"
          },
          showDocumentation = { enable = true }
        },
        codeActionOnSave = {
          enable = false,
          mode = "all"
        },
        experimental = { useFlatConfig = false },
        format = true,
        nodePath = "",
        onIgnoredFiles = "off",
        problems = { shortenToSingleLine = false },
        quiet = false,
        rulesCustomizations = {},
        run = "onType",
        useESLintClass = false,
        validate = "on",
        workingDirectory = { mode = "location" }
      }
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
          cabalFormattingProvider = "cabalfmt",
          formattingProvider = "ormolu"
        }
      },
      single_file_support = true
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

    -- ------------------------------------------------------------------------
    -- Lua LSP
    -- ------------------------------------------------------------------------
    lspconfig.lua_ls.setup{}

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
      single_file_support = true
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
      single_file_support = true
    })

    -- ------------------------------------------------------------------------
    -- Typescript LSP
    -- ------------------------------------------------------------------------
    lspconfig.tsserver.setup{}

  end
}
