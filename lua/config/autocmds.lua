--
-- Arquivo com a configuração dos meus autocomandos pessoais
-- Valdigleis (Dk4LL)
-- dk4ll@proton.me
--

-- Turn off paste mode when leaving insert
--vim.api.nvim_create_autocmd("InsertLeave", {
--  pattern = "*",
--  command = "set nopaste",
--})

-- Desliga o destaque de aspas nos arquivos json
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})
