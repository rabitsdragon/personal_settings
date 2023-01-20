local builtin = require('telescope.builtin')
local telescope = require('telescope')
telescope.setup {
	defaults = {
		file_ignore_patterns = {
		".vscode",
		".mozilla",
		".local",
		".cache",
	}},

	pickers = {
		--find_files = {"rg", "--ignore", "-L", "--hidden", "--files"},	
		buffers = {
			initial_mode = "normal",
			sort_lastused = true,
			theme = "dropdown",
			previewer = false,
			mappings = {
				i = {
					-- Right hand side can also be the name of the action as a string
					["<c-d>"] = require("telescope.actions").delete_buffer,
				},
				n = {
					["<c-d>"] = require("telescope.actions").delete_buffer,
				}
			}
		},
		find_files = {
			hidden = true,
			follow = true
		}
	}
}
--telescope.load_extension('cder')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
