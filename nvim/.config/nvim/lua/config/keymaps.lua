-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymap = vim.keymap

-- window navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })

-- quit all
keymap.set("n", "Q", ":qa<CR>", { desc = "Quit all", remap = true })

-- buffers navigation
keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })

-- Use Alt + hjkl for resizing
keymap.set("n", "<M-h>", ":vertical resize -2<CR>", { desc = "Decrease width" })
keymap.set("n", "<M-l>", ":vertical resize +2<CR>", { desc = "Increase width" })
keymap.set("n", "<M-k>", ":resize +2<CR>", { desc = "Increase height" })
keymap.set("n", "<M-j>", ":resize -2<CR>", { desc = "Decrease height" })
-- Manual session management
keymap.set("n", "<leader>qs", ":mksession! .session.vim<CR>", { desc = "Save manual session", remap = true })
