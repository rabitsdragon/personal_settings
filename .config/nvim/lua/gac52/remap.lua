
vim.g.mapleader = " "
 -- telescope --
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", vim.cmd.UndotreeToggle)


local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

vim.g.maplocalleader = " "


-- Terminal Navigation --
--keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-q>", "<C-\\><C-N>gt<cr>", term_opts)
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-D>", "<C-\\><C-N>:q<cr><C-w>l", term_opts)

-- Nvim Tree --
keymap("n", "<leader>ef", ":NvimTreeFocus<cr>", opts)
keymap("n", "<leader>ec", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>eo", ":NvimTreeFindFile<cr>", opts)
keymap("n", "<C-q>", ":tabl<cr>i", opts)
keymap("i", "jk", "<Esc>", opts)

-- run current python file --
keymap("n", "<leader>rt", ":w<cr>:!python %<cr>", opts)
keymap("n", "<leader>tt", ":w<cr>:tabnew | term<cr>i", opts)
keymap("n", "<leader>ts", ":w<cr>:botright split | terminal<cr>i", opts)
keymap("n", "<leader>ta", ":tabnew<cr>", opts)
keymap("n", "<leader>wq", ":w<cr>:bd<cr>", opts)
keymap("n", "<leader>w", ":w<cr>", opts)
keymap("n", "<leader>q", ":q<cr>", opts)
--keymap("t", "<leader>tp", ":w<cr>:tabnew | term<cr>ipython", opts)

-- remove highlight on next command? --
 keymap('n', '<CR>', '{->v:hlsearch ? ":nohl\\<CR>" : "\\<CR>"}()', { expr = true })

 --undotree --

