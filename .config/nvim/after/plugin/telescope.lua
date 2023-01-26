local builtin = require('telescope.builtin')
local telescope = require('telescope')
telescope.setup {
	defaults = {
		file_ignore_patterns = {
		".vscode",
		".mozilla",
		".local",
		".cache",
		".git",
	}},

	pickers = {
		git_branches = {
			initial_mode = "normal",
			sort_lastused = true,
			theme = "ivy",
			mappings = {
				n = {
					["q"] = require("telescope.actions").close,
					["<c-o>"] = require("telescope.actions").git_checkout,
				}
			}
		},
		git_files = {
			initial_mode = "insert",
			mappings = {
				n = {
					["q"] = require("telescope.actions").close,
				}
			}
		},
		buffers = {
			initial_mode = "normal",
			sort_lastused = true,
			theme = "ivy",
			mappings = {
				i = {
					-- Right hand side can also be the name of the action as a string
					["<c-d>"] = require("telescope.actions").delete_buffer,
				},
				n = {
					["<c-d>"] = require("telescope.actions").delete_buffer,
					["q"] = require("telescope.actions").close,
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
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})



