vim.cmd [[
try
  colorscheme oxocarbon-lua
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
