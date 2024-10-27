require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local cmp = require('cmp')

-- Access the existing setup and modify the mappings
cmp.mapping['<C-j>'] = cmp.mapping.select_next_item()
cmp.mapping['<C-k>'] = cmp.mapping.select_prev_item()
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
