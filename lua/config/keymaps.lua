-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Kill-word
vim.keymap.set("!", "<C-H>", "<C-o>db", { silent = true, desc = "Kill-word" })

-- COMMENTS
-- Single line
vim.keymap.set("n", "<C-i>", ":CommentToggle <enter>", { desc = "Comment Line" })
-- -- Comment multiple lines
vim.keymap.set("n", "<C-_>", ":'<,'>CommentToggle <enter>", { silent = true, desc = "Comment Multiplelines" })
