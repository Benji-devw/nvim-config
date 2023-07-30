local col_win_status, col_win = pcall(require, 'colorful-winsep')
if not col_win_status then
	return
end

col_win.setup({
	highlight = {
		-- bg = '#eb6f92',
		fg = '#eb6f92'
	},
	-- timer refresh rate
	interval = 10,
	-- This plugin will not be activated for filetype in the following table.
	no_exec_files = { 'packer', 'TelescopePrompt', 'mason', 'NvimTree' },
	symbols = { "─", "│", "┌", "┐", "└", "┘" },
	close_event = function()
		-- Executed after closing the window separator
	end,
	create_event = function()
		-- Executed after creating the window separator
	end
})
