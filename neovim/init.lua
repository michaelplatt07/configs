-- TODO(map) Write a todo-ist plugin to search only for todo stuff
vim.g.mapleader = " "
vim.opt.timeoutlen = 250

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

vim.o.hidden = false

-- Set color
vim.cmd.colorscheme("kanagawa")
-- vim.cmd.colorscheme("tokyonight")
-- vim.cmd.colorscheme("cyberdream")
-- vim.cmd.colorscheme("aurora")
-- vim.cmd.colorscheme("bamboo")
-- vim.cmd.colorscheme("blossom")

-- Set split preferences
vim.o.splitright = true
vim.o.splitbelow = true

-- Extra configs
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd("set laststatus=2")
vim.cmd("set hlsearch")

-- Global clipboard
vim.api.nvim_set_option_value("clipboard", "unnamed", {scope="global"})
vim.keymap.set("v", "<leader>y", '"+y')


-- Automatically format a file
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})

-- Automatically isort
augroup("__isorter__", { clear = true })
autocmd("BufWritePost", {
	group = "__isorter__",
    pattern = "*.py",
	command = ":silent! !isort %",
})

-- Set cursor configurations
vim.cmd("hi Cursorline cterm=none ctermbg=60 ctermfg=255 guibg=mediumpurple4 guifg=grey93")
vim.cmd("set cursorline")

-- Rainbow
vim.cmd("let g:rainbow#max_level = 16")
vim.cmd("let g:rainbow#pairs = [['(',')'],['{','}'],['[',']'],['<','>']]")
vim.cmd("au VimEnter * RainbowParentheses")

-- Four space width tabs
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")

-- Set tab width for C++ files only
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cpp", "h", "hpp" }, -- Set for cpp, h, and hpp files
	callback = function()
		vim.opt_local.shiftwidth = 2 -- Number of spaces for indentation
		vim.opt_local.tabstop = 2 -- Number of spaces per tab
		vim.opt_local.softtabstop = 2 -- Number of spaces for a soft tab
		vim.opt_local.expandtab = true -- Use spaces instead of tabs
	end,
})

-- Set the scrolloff to put lines above and below the cursor
vim.cmd("set scrolloff=5")
vim.cmd("set nowrap")

-- Search and column colouring.
vim.cmd("set cc=120")
vim.cmd("hi ColorColumn ctermbg=grey guibg=grey")
vim.cmd("hi Search cterm=none ctermfg=black ctermbg=white guifg=black guibg=white")

-- Toggle file structure
vim.keymap.set("n", "<leader>a", ":AerialToggle<cr>")

-- Git settings
vim.o.updatetime = 300
vim.o.incsearch = false
vim.wo.signcolumn = "yes"

-- Map splitting controls
vim.keymap.set("n", "<leader>vs", ":vsplit<cr>")
vim.keymap.set("n", "<leader>hs", ":split<cr>")

-- Map moving between panes and tabs
vim.keymap.set("n", "<leader>h", ":wincmd h<cr>")
vim.keymap.set("n", "<leader>l", ":wincmd l<cr>")
vim.keymap.set("n", "<leader>j", ":wincmd j<cr>")
vim.keymap.set("n", "<leader>k", ":wincmd k<cr>")

-- Custom code navigation functions
function split_v_go_to_def()
	vim.cmd("vsplit")
	vim.lsp.buf.definition()
end

function split_h_go_to_def()
	vim.cmd("split")
	vim.lsp.buf.definition()
end

-- Code navigation
vim.keymap.set("n", "<leader>.", ":bn<cr>")
vim.keymap.set("n", "<leader>,", ":bp<cr>")
vim.keymap.set("n", "<leader>e", ":Ex<cr>")
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gvd", split_v_go_to_def)
vim.keymap.set("n", "ghd", split_h_go_to_def)
vim.keymap.set("n", "gh", vim.lsp.buf.hover)
vim.keymap.set("n", "gr", ":PreviewMe<cr>")
vim.keymap.set("n", "gro", vim.lsp.buf.references)

-- Buffer management
vim.keymap.set("n", "<leader>b", ":BufferMe<cr>")
vim.keymap.set("n", "<leader>ba", ":BufferAppend<cr>")
vim.keymap.set("n", "<leader>bb", ":BufferAddAll<cr>")
vim.keymap.set("n", "<leader>bs", ":BufferSet<cr>")
vim.keymap.set("n", "<leader>bd", ":BufferRemove<cr>")
vim.keymap.set("n", "<leader>br", ":BufferClearAll<cr>")
vim.keymap.set("n", "<leader>bn", ":BufferGoNext<cr>")
vim.keymap.set("n", "<leader>bp", ":BufferPrevNext<cr>")
vim.keymap.set("n", "<leader>bfs", ":BufferSetFirstHotswap<cr>")
vim.keymap.set("n", "<leader>bfo", ":BufferOpenFirstHotswap<cr>")
vim.keymap.set("n", "<leader>bss", ":BufferSetSecondHotswap<cr>")
vim.keymap.set("n", "<leader>bso", ":BufferOpenSecondHotswap<cr>")
vim.keymap.set("n", "<leader><tab>", ":BufferToggleHotswap<cr>")
vim.keymap.set("n", "<leader><space>", ":BufferOpenMostRecent<cr>")

-- Mapping Searching keys
vim.keymap.set("n", "<leader>d", ":Telescope fd<cr>")
vim.keymap.set("n", "<leader>f", ":Telescope live_grep<cr>")
-- vim.keymap.set("n", "<leader>b", ":Telescope buffers<cr>")
vim.keymap.set("n", "<leader>x", ":nohl<cr>")

-- -- Mapping Navigation keys
vim.keymap.set("n", "<leader>t", ":tabe<cr>")
vim.keymap.set("n", "+", "gt")
vim.keymap.set("n", "-", "gT")
vim.keymap.set("n", "g1", "1gt")
vim.keymap.set("n", "g2", "2gt")
vim.keymap.set("n", "g3", "3gt")
vim.keymap.set("n", "g4", "4gt")
vim.keymap.set("n", "g5", "5gt")
vim.keymap.set("n", "g6", "6gt")
vim.keymap.set("n", "g7", "7gt")
vim.keymap.set("n", "g8", "8gt")
vim.keymap.set("n", "g9", "9gt")
vim.keymap.set("n", "g0", "0gt")
