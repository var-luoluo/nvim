-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local mapp = vim.keymap.set

-- Quickly move in command mode
mapp({ "n", "v" }, ";", ":", { desc = "quick command" })

-- Quickly move down
mapp("n", "J", "5j")

-- Change wrap
---> <leader>uw
-- mapp("n", ",ww", "&wrap == 1 ? ':set nowrap<cr>' : ':set wrap<cr>'", { expr = true, silent = true })

-- Disable function for Q, S and J
mapp("n", "Q", "<nop>")
mapp("n", "S", "<nop>")
-- mapp("n", "J", "<nop>")

-- Move selected line with J and K
mapp("v", "J", ":m '>+1<cr>gv=gv")
mapp("v", "K", ":m '<-2<cr>gv=gv")

-- Centering Highlighted letter
---> which cooperate well with <leader>s 😄
mapp("n", "n", "nzzzv", { desc = "centering the next hl-letter" })
mapp("n", "N", "Nzzzv", { desc = "centering the previous hl letter" })

-- Delete to void register
---> for example <leader>diw
mapp({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to void register" })

-- Make file executable
-- mapp("n", "<leader>x", "<cmd>!chomd +x %<cr>", { silent = true })
