local opt = vim.opt -- for conciseness

-- set encoding file
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- cmd options
opt.showcmd = true
opt.cmdheight = 1

-- ignore files
vim.opt.wildignore:append({ "*/node_modules/*" })

-- back up file
opt.backup = false
opt.backupskip = { "/tmp/*", "/private/tmp/*" }

-- path
opt.path:append({ "**" }) -- Finding files - Search down into subfolders

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.breakindent = true -- Enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
opt.smarttab = true

-- Enable incremental searching
opt.incsearch = true
opt.hlsearch = true

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- Set completeopt to have a better completion experience
opt.completeopt = { "menuone", "noselect" }

-- Always keep 10 lines above/below cursor unless at start/end of file
opt.scrolloff = 10

-- Set fold settings
opt.fillchars = { fold = " " }
opt.foldmethod = "indent"

-- These options were reccommended by nvim-ufo
-- See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
opt.foldcolumn = "0"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Add asterisks in block comments
opt.formatoptions:append({ "r" })

-- set cmdheight if nvim-0.8
if vim.fn.has("nvim-0.8") == 1 then
	opt.cmdheight = 0
end
