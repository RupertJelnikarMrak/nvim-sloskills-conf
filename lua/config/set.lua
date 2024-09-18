vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.opt.cursorline = true

vim.cmd([[
augroup filetypedetect
  au! BufRead,BufNewFile *.vert setfiletype glsl
  au! BufRead,BufNewFile *.frag setfiletype glsl
  au! BufRead,BufNewFile *.geom setfiletype glsl
  au! BufRead,BufNewFile *.comp setfiletype glsl
  au! BufRead,BufNewFile *.tesc setfiletype glsl
  au! BufRead,BufNewFile *.tese setfiletype glsl
augroup END
]])

vim.wo.number = true
vim.wo.relativenumber = true

function ToggleLineNumber()
  local relative = vim.wo.relativenumber

  vim.wo.relativenumber = not relative
end

vim.api.nvim_set_keymap('n', '<leader>ln', ':lua ToggleLineNumber()<CR>', { noremap = true, silent = true })
