if not pcall(require, "nvim-treesitter") then
	return
end

local tree_conf_status, nvim_treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not tree_conf_status then
	return
end

nvim_treesitter_configs.setup({
	-- Add languages to be installed here that you want installed for treesitter
	ensure_installed = {
		"bash",
		"c",
		"css",
		"dockerfile",
		"gitignore",
		"graphql",
		"html",
		"javascript",
		"json",
		"lua",
		"markdown",
		"php",
		"prisma",
		"rasi",
		"regex",
		"rust",
		"sql",
		"scss",
		"toml",
		"tsx",
		"typescript",
		"vim",
	},
	autotag = { enable = true }, -- use nvim-ts-autotag plugin
	highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true },
})
