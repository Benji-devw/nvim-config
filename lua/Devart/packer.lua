-- Auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- Automatically source and re-sync packer when you save `packer.lua`.
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	command = "source <afile> | PackerSync",
	group = packer_group,
	pattern = vim.fn.expand("packer.lua"),
})

local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
	return
end

local packer_util_ok, packer_util = pcall(require, "packer.util")
if not packer_util_ok then
	return
end

-- Plugins
packer.startup({
	function(use)
		-- Packer manager
		use("wbthomason/packer.nvim")

		-- Colorscheme
		use("folke/tokyonight.nvim")
	  use { 'catppuccin/nvim', as = 'catppuccin' }
		use 'Mofiqul/dracula.nvim'

		-- Display
		-- use("TaDaa/vimade")
		-- use("lukas-reineke/indent-blankline.nvim")

		-- nvim-colorizer => color highlighter
		use("NvChad/nvim-colorizer.lua")

		-- nvim-web-devicons => icons
		use("nvim-tree/nvim-web-devicons")

		-- nvim-tree => file explorer
		use({
			"nvim-tree/nvim-tree.lua",
			requires = { "nvim-tree/nvim-web-devicons" },
			tag = "nightly",
		})

		-- Comment => easy way to comment code
		use "terrortylor/nvim-comment"
		-- use("numToStr/Comment.nvim")
		-- todo-comments => highlight and search for todo comments like TODO, HACK, BUG in the code base.
		-- use({
		-- 	"folke/todo-comments.nvim",
		-- 	requires = { "nvim-lua/plenary.nvim" },
		-- })
    -- use({
		-- 	"dhruvmanila/telescope-bookmarks.nvim",
		-- 	-- Uncomment if the selected browser is Firefox or buku
		-- 	requires = {
		-- 		"kkharji/sqlite.lua",
		-- 	},
		-- })

		-- which-key => easy way to find your <leader> mapping
		use("folke/which-key.nvim")

		-- lualine => status bar (bottom)
		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'nvim-tree/nvim-web-devicons', opt = true }
		}

		-- winbar => window bar (top)
		use("fgheng/winbar.nvim")

		-- colorful-winsep => window color separation
		use("nvim-zh/colorful-winsep.nvim")
		-- Have an issue with Lualine and performance...
		-- see https://github.com/nvim-zh/colorful-winsep.nvim/issues/26

		-- wilder => wildmenu
		use({ "gelguy/wilder.nvim", requires = { "romgrk/fzy-lua-native" } })

		-- bqf => better quickfix list
		use({ "kevinhwang91/nvim-bqf" })

		-- trouble => a pretty list for showing diagnostics, references, telescope results, quickfix and location lists.
		use({
			"folke/trouble.nvim",
			requires = { "nvim-tree/nvim-web-devicons" },
		})

		-- telescope => fuzzy finder
		use({
			"nvim-telescope/telescope.nvim",
			branch = "0.1.x", -- tag = '0.1.0',
			requires = { "nvim-lua/plenary.nvim" },
		})

		-- Fzf
		-- use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
		use({
			"nvim-telescope/telescope-fzf-native.nvim",
			run = "make",
			-- run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
			cond = vim.fn.executable("make") == 1,
		})

		-- telescope => more Telescope plugins integration.
		use("benfowler/telescope-luasnip.nvim")
		use("jvgrootveld/telescope-zoxide")
		use("cljoly/telescope-repo.nvim")
		use("AckslD/nvim-neoclip.lua")    -- Sessions persistent
		use("nvim-telescope/telescope-symbols.nvim")
		use("sudormrfbin/cheatsheet.nvim")
		use("nvim-telescope/telescope-packer.nvim")


		-- Buffers 
		-- https://github.com/akinsho/bufferline.nvim
		-- BufferLine
		use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}


		-- harpoon => navigate between files
		use({ "ThePrimeagen/harpoon", requires = { "nvim-lua/plenary.nvim" } })

		-- nvim-treesitter => highlighting and indenting code
		use({
			"nvim-treesitter/nvim-treesitter",
			run = function()
				pcall(require("nvim-treesitter.install").update({ with_sync = true }))
				-- local ts_update = pcall(require("nvim-treesitter.install").update({ with_sync = true }))
				-- ts_update() -- make sure parsers are automatically updated whenever nvim-treesitter is installed/updated
			end,
		})

		-- nvim-lspconfig => integration for LSP (Language Server Protocol)
		-- mason => installing and managing LSP servers, linters and formatters
		-- mason-lspconfig => fill the gap between nvim-lspconfig and mason
		-- use({
		-- 	"williamboman/mason.nvim",
		-- })
		-- use({
		-- 	"neovim/nvim-lspconfig",
		-- 	requires = {
		-- 		"williamboman/mason.nvim",
		-- 		"williamboman/mason-lspconfig.nvim",
		--
		-- 		-- Display useful loading status updates for LSP
		-- 		"j-hui/fidget.nvim",
		--
		-- 		-- Additional lua configuration, makes nvim stuff amazing
		-- 		"folke/neodev.nvim",
		--
		-- 		"RRethy/vim-illuminate",
		-- 	},
		-- })

		-- null-ls => formatting and linting
		-- mason-null-ls => fill the gap between null-ls and mason
		-- use("jose-elias-alvarez/null-ls.nvim")
		-- use("jayp0521/mason-null-ls.nvim")

		-- Hop 
		-- Navigate to any word
		-- https://github.com/phaazon/hop.nvim#installation
		use {
			'phaazon/hop.nvim',
			branch = 'v2', -- optional but strongly recommended
			config = function()
				-- you can configure Hop the way you like here; see :h hop-config
				require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
			end
		}


		-- nvim-cmp => Autocompletion
		use({
			"hrsh7th/nvim-cmp",
			requires = {
				"hrsh7th/cmp-nvim-lsp", -- integration for nvim-lspconfig
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-cmdline",
				"L3MON4D3/LuaSnip",
				"saadparwaiz1/cmp_luasnip", -- integration for luasnip
				"rafamadriz/friendly-snippets", -- collection of snippets
				"onsails/lspkind.nvim",
			},
		})

		-- color in nvim-cmp for Tailwind CSS.
		use("roobert/tailwindcss-colorizer-cmp.nvim")

		-- Databases
		use("tpope/vim-dadbod")
		use("kristijanhusak/vim-dadbod-ui")

		-- nvim-notify => notifications
		use("rcarriga/nvim-notify")

		-- GIT
		-- use("lewis6991/gitsigns.nvim")

		-- glow => markdown
		use("ellisonleao/glow.nvim")

		-- Documentation
		-- check if it's still relevant since we have neodev for lsp !
		use("nanotee/luv-vimdocs")
		use("milisims/nvim-luaref")

		-- rust-tools => toolbox for Rust
		use("simrat39/rust-tools.nvim")

		-- nvim-dap => debug
		-- use("mfussenegger/nvim-dap")

		-- Autoclosing, autorename and autopair
		use("tpope/vim-surround") -- easy way to surround word or text
		use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose and autorename html tag with treesitter
	  use("windwp/nvim-autopairs") -- autopair parents, brackets, quotes, etc...

		-- taboo => tab manager
		-- use("gcmt/taboo.vim")

		-- vim-signature => easy way to manage marks
		-- use("kshenoy/vim-signature")

		-- Tmux
		use({
			"aserowy/tmux.nvim",
			config = function() return require("tmux").setup({}) end
		})
		use { 'alexghergh/nvim-tmux-navigation', config = function()
        require'nvim-tmux-navigation'.setup {
            disable_when_zoomed = true, -- defaults to false
            keybindings = {
                left = "<C-h>",
                down = "<C-j>",
                up = "<C-k>",
                right = "<C-l>",
                last_active = "<C-\\>",
                next = "<C-Space>",
            }
        }
    end
  }


  
		-- Automatically set up your configuration after cloning packer.nvim
		-- Put this at the end after all plugins
		if packer_bootstrap then
			require("packer").sync()
		end
	end,
	config = {
		display = {
			open_fn = function()
				return packer_util.float({ border = "single" })
			end,
		},
	},
})
