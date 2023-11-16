--
-- Configuração de atalhos pessoais usados por mim
-- Valdigleis (Dk4LL)
-- dk4ll@proton.me
--

local discipline = require("Dk4LL.discipline")
discipline.cowboy()

-- Variáveis básicas usadas na configuração
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Para incrementar e decrementar valores inteiros no código
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Deletar uma palavra
keymap.set("n", "dw", "vb_d")

-- Selecionar todo o texto
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Comando para Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Comando para inicializar uma nova tab
keymap.set("n", "te", ":tabedit", opts)

-- Comandos para mudar entre as tabs
--keymap.set("n", "<tab>", ":tabnext<Return>", opts)
--keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Comandos para redimensionar as janelas
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Comandos para os diagnósticos
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
