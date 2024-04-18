return {
	'nvim-telescope/telescope.nvim', 
	tag = '0.1.6',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		telescope.setup{
			pickers = {
				find_files = {
					hidden = true
				}
			},
			defaults = {
				file_ignore_patterns = {
					".git" ,"node_modules", "build", "dist", "yarn.lock"
				},
			}
		}

		vim.keymap.set("n", '<C-p>', builtin.find_files, {})
		vim.keymap.set("n", '<Leader>gf', builtin.live_grep, {})
	end
}
