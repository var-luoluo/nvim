-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- No backup and swapfile
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- localLeader
vim.g.maplocalleader = " "

-- Disable some fanzy UI stuff when run in Neovide
if vim.g.neovide then
	vim.g.neovide_cursor_animation_length = 0
	vim.g.neovide_remember_window_size = true

	vim.opt.guifont = "FiraCode Nerd Font Mono:h18"
end
