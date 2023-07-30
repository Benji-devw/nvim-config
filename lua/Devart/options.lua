-- DOC => https://neovim.io/doc/user/#_-advanced-editing
-- :h title

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


vim.opt.termguicolors = true


local options = {
	-- DISPLAY
	title = true,
	number = true,
	relativenumber = true,
	wrap = false,
	scrolloff = 10,
	sidescrolloff = 10,
	mouse = "a",
	cursorline = true,
	colorcolumn = "100",
	numberwidth = 4,
	textwidth = 80,
	shiftwidth = 2,
	tabstop = 2,
	softtabstop = 2,
	fileencoding = "utf-8",
	signcolumn = "yes",
	cmdheight = 2,
	showmode = false,
	splitbelow = true,
	splitright = true,
	smartindent = true,
	clipboard = "unnamedplus",
	laststatus = 2, -- set to 3 for an unique lualine bar.
	termguicolors = true, -- to enable highlight groups
	updatetime = 1000,

	-- SAVING
	backup = false,
	writebackup = false,
	swapfile = false,
	undodir = vim.fn.expand("~") .. "/AppData/Local/nvim/lua/Devart/undodir",
	undofile = true,
	undolevels = 500,

	-- SEARCH
	ignorecase = true,
	smartcase = true,
	hlsearch = true,

	-- COMPLETION
	wildignore = "*.o,*.r,*.so,*.sl",
	completeopt = { "menu", "menuone", "noselect" }, -- need it for nvim-cmp

	-- REMOVE BEEP
	visualbell = true,
	errorbells = false,
}



for key, value in pairs(options) do
	vim.opt[key] = value
end


