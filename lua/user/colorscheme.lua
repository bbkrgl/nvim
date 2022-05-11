vim.cmd [[
try
  colorscheme no-clown-fiesta
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
