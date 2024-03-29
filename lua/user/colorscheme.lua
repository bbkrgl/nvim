require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { "all"
    -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups
    -- example of akinsho/nvim-bufferline.lua
   -- "BufferLineTabClose",
   -- "BufferlineBufferSelected",
   -- "BufferLineFill",
   -- "BufferLineBackground",
   -- "BufferLineSeparator",
   -- "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})

vim.cmd [[
try
  set termguicolors
  colorscheme kanagawa
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
--require("boo-colorscheme").use({
--  italic = true, -- toggle italics
  --theme = "crimson_moonlight"
--  theme = "radioactive_waste"
--})
