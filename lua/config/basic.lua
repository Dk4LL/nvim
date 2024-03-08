-- ------------------------------------------------------------------------------------------------
-- File create by Dk4LL (dk4ll@proton.me)
-- ------------------------------------------------------------------------------------------------


-- Define my leader key
vim.g.mapleader = " "

-- Define std shell program
vim.opt.shell = "zsh"

-- Define encoding
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Compatibility with VI
vim.opt.compatible = false

-- Max number commands in memory
vim.opt.history = 15

-- Show number lines
vim.opt.number = true

-- Show relative number lines
vim.opt.relativenumber = true

-- Show columns number
vim.opt.ruler = true

-- No create backup files
vim.opt.backup = false

-- Height for the command line
vim.opt.cmdheight = 2

-- Show status line
vim.opt.laststatus = 2

-- Define the use space for the tabulation
vim.opt.expandtab = true

-- Autoread files
vim.opt.autoread = true

-- Define lines above cursor
vim.opt.scrolloff = 10

-- Define number control in tabulation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Active smart tabulation
vim.opt.smarttab = true

-- Active incremental search
vim.opt.incsearch = true

-- Active horizontal preview substituiton
vim.opt.inccommand = "split"

-- Desactive case sensitive
vim.opt.ignorecase = true

-- Active highlight in search
vim.opt.hlsearch = true

-- Jump between buffers without saving 
vim.opt.hidden = true

-- Define foldmode by tabulation
vim.opt.foldmethod = "indent"

-- Smart break line actived
vim.opt.linebreak = true

-- Show recommendation in command line
vim.opt.wildmenu = true

