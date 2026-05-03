vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("n", "<leader>cd", vim.cmd.Ex)
keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
keymap.set("n", "<leader>m", "<cmd>tabnew<CR>", { desc = "New tab" })
keymap.set("i", "jj", "<Esc>", { desc = "New tab" })
keymap.set("n", "<leader>tt", "<cmd>Themery<CR>", { desc = "New tab" })
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
