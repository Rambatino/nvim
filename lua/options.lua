require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map <leader>e to toggle nvim-tree
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
