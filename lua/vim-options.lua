vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.swapfile = false

--look into nerdfont later
vim.g.have_nerd_font = true

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.splitright = true
vim.opt.splitbelow = true

--dont show mode 
vim.o.showmode = false

--save undos from other sessions
vim.o.undofile = true
--Case insensitive searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- show the cursor line
vim.o.cursorline = true

--Always keep some lines up and down the cursor
vim.opt.scrolloff = 10

--Clear search highlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")


--Highlight when yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
