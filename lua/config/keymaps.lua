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

-- Spectre
-- vim.keymap.set("n", "<leader>S", '<cmd>lua require("spectre").open()<CR>', {
--   desc = "Open Spectre",
-- })
vim.keymap.set("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word",
})
vim.keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word",
})
vim.keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file",
})
