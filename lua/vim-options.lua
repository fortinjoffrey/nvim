
vim.cmd("set expandtab")
vim.cmd("set shiftwidth=2") -- amount of whitespace for indentation 
vim.cmd("set tabstop=2") -- number of chars a tab takes (only for display) 
vim.cmd("set softtabstop=2")

vim.g.mapleader = " "



-- Line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = "unnamedplus"

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Open file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
