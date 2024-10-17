vim.g.mapleader = " "

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt.scrolloff = 999

vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })

-- prevent breaking colorscheme changes in 0.10.0
vim.cmd('colorscheme vim')

vim.cmd("highlight SignColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE")
vim.cmd("highlight ColorColumn cterm=NONE ctermbg=NONE guibg=NONE")
vim.cmd("highlight Pmenu guifg=Yellow ctermfg=Yellow ctermbg=NONE guibg=NONE")

-- Use the same colors for the tabline as the status line
vim.cmd('highlight TabLine cterm=NONE ctermfg=NONE ctermbg=NONE')
vim.cmd('highlight TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE')
vim.cmd('highlight TabLineSel cterm=underline ctermfg=NONE ctermbg=NONE')

vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'

cterm=None guifg=NONE guibg=NONE
