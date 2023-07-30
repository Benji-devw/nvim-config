local tokyo_status, tokyonight = pcall(require, 'tokyonight')
if not tokyo_status then
	return
end
tokyonight.setup({
	transparent = true,
	style = 'moon' -- 'storm', 'night', 'moon' and 'day'
})
-- vim.cmd [[ colorscheme tokyonight ]]

-- CATPPUCIN THEME
-- latte, frappe, macchiato, mocha
vim.g.catppuccin_flavour = 'frappe'
require'catppuccin'.setup({
  transparent_background = true,
})
vim.cmd [[ colorscheme catppuccin ]]




local dracula = require("dracula")
dracula.setup({
		show_end_of_buffer = true,
		transparent_bg = true,
  options = {
    
    theme = 'dracula-nvim'
    -- ...
  }
})
-- vim.cmd[[colorscheme dracula]]
