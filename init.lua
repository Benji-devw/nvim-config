require("Devart.packer")
require("bufferline").setup()
require("Devart.options")
require("Devart.keymaps")
require("Devart.utils")
require("Devart.lualine")
require'hop'.setup()
require('nvim_comment').setup()
require("Devart.cmp")
require'luasnip'.filetype_extend("ruby", {"rails"})

-- Rust but still WIP
require("Devart.autosave")
require("Devart.autorun")
