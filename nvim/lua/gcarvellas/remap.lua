vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Use J and K when something is highlighted and it'll also auto indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor stays in place after pasteing
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- next greatest remap ever : asbjornHaland
-- Yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Save and quit 
vim.keymap.set("n", "<leader>w", ":w<cr>", { silent = true})
vim.keymap.set("n", "<leader>q", ":q!<cr>", { silent = true})

-- Tab management
vim.keymap.set('n', '<S-t>', ":tabnew<cr>", { silent = true })
vim.keymap.set('n', '<leader>b', ':vsp<cr>', { silent = true})
vim.keymap.set('n', '<leader>v', ":sp<cr>", { silent = true})
vim.keymap.set('n', '<leader><BS>', ":tabonly<CR>", { silent = true})
vim.keymap.set('n', '<S-h>', ":tabprevious<cr>", { silent = true})
vim.keymap.set('n', '<S-l>', ":tabnext<cr>", { silent = true})
vim.keymap.set('n', '<S-1>', ":tabnext 1<cr>", { silent = true})
vim.keymap.set('n', '<S-2>', ":tabnext 2<cr>", { silent = true})
vim.keymap.set('n', '<S-3>', ":tabnext 3<cr>", { silent = true})
vim.keymap.set('n', '<S-4>', ":tabnext 4<cr>", { silent = true})
vim.keymap.set('n', '<S-5>', ":tabnext 5<cr>", { silent = true})
vim.keymap.set('n', '<S-6>', ":tabnext 6<cr>", { silent = true})
vim.keymap.set('n', '<S-7>', ":tabnext 7<cr>", { silent = true})
vim.keymap.set('n', '<S-8>', ":tabnext 8<cr>", { silent = true})
vim.keymap.set('n', '<S-9>', ":tabnext 9<cr>", { silent = true})
vim.keymap.set('n', '<S-0>', ":tabnext 10<cr>", { silent = true})

