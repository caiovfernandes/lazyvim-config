-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt -- for conciseness

-- Performance optimizations
opt.updatetime = 250 -- Faster completion (default 4000ms)
opt.timeoutlen = 300 -- Faster key sequence timeout (default 1000ms)
opt.redrawtime = 1500 -- Time in milliseconds for redrawing the display
opt.synmaxcol = 240 -- Only highlight syntax for first 240 columns
opt.lazyredraw = false -- Don't redraw while executing macros (can cause issues with some plugins)

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = false -- highlight the current cursor line (disabled for performance)

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- disable tabline for performance
opt.showtabline = 0

opt.termguicolors = true -- enable true color support
opt.background = "dark"

-- Memory and performance optimizations
opt.hidden = true -- Enable background buffers
opt.history = 100 -- Reduce history size
opt.maxmempattern = 1000 -- Reduce max memory for pattern matching
