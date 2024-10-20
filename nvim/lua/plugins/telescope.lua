return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	version = '*',
	cmd = 'Telescope',
	keys = function()
		local cmd = function(command)
			return function() vim.cmd(command) end
		end
		return {

			-- NEOVIM CONFIG FILES
			{
				'<leader>cn',
				function()
					require('telescope.builtin').find_files {
						cwd = vim.fn.stdpath 'config',
					}
				end,
				desc = 'neovim config files',
			},

			-- BUFFERS, FILES, JUMPLIST, AND REGISTERS
			{
				'<leader>ff',
				cmd 'Telescope find_files',
				desc = '[F]ind [F]iles',
			},
			{
				'<leader>fr',
				cmd 'Telescope registers',
				desc = '[F]ind [R]egisters',
			},
			{
				'<leader><space>',
				cmd 'Telescope buffers',
				desc = '[ ] Find existing buffers',
			},
			{
				'<leader>jl',
				cmd 'Telescope jumplist',
				desc = '[J]ump [L]ist',
			},

			-- REGULAR EXPRESSIONS
			{
				'<leader>lg',
				cmd 'Telescope live_grep',
				desc = '[L]ive [G]rep',
			},
			{
				'<leader>fw',
				cmd 'Telescope grep_string',
				desc = '[F]ind [W]ord under cursor',
			},

			-- LSP RELATED
			{
				'<leader>wd',
				cmd 'Telescope diagnostics',
				desc = '[W]orkspace [D]iagnostics',
			},

			-- COLORSCHEMES AND HIGHLIGHTS
			{
				'<leader>hp',
				cmd 'Telescope highlights',
				desc = '[H]ighlights [P]review',
			},
			{
				'<leader>cc',
				cmd 'Telescope colorscheme',
				desc = '[C]hange [C]olorscheme',
			},

			-- GIT COMMANDS
			{
				'<leader>gs',
				cmd 'Telescope git_status',
				desc = '[G]it [S]tatus',
			},
			{
				'<leader>gf',
				cmd 'Telescope git_files',
				desc = '[G]it [F]iles',
			},
			{
				'<leader>gts',
				cmd 'Telescope git_stash',
				desc = 'Git Stash',
			},
			{
				'<leader>gtb',
				cmd 'Telescope git_bcommits',
				desc = 'Git Current Buffer Commits',
			},

			-- TELESCOPE'S EASTER EGG
			{
				'<leader>ps',
				cmd 'Telescope planets',
				desc = 'Love and Peace',
			},

			-- HELP TAGS
			{
				'<leader>hh',
				cmd 'Telescope help_tags',
				desc = 'Search Help',
			},
			{
				'<leader>mp',
				cmd 'Telescope man_pages',
				desc = 'Man Pages',
			},
		}
	end,
	opts = function()
		local actions = require 'telescope.actions'
		local options = {
			pickers = {

				planets = {
					show_pluto = true,
					show_moon = true,
				},

				jumplist = {
					layout_strategy = 'vertical',
					layout_config = {
						vertical = {
							preview_height = 0.40,
						},
					},
				},

				help_tags = {
					initial_mode = 'insert',
					layout_config = {
						width = 0.95,
						height = 0.95,
						preview_width = 0,
					},
					layout_strategy = 'horizontal',
				},

				man_pages = {
					initial_mode = 'insert',
					layout_config = {
						width = 0.95,
						height = 0.95,
						preview_width = 0,
					},
					layout_strategy = 'horizontal',
				},

				live_grep = {
					initial_mode = 'insert',
					layout_strategy = 'vertical',
					layout_config = {
						vertical = {
							preview_height = 0.40,
						},
					},
				},

				lsp_references = {
					layout_strategy = 'flex',
					layout_config = {
						vertical = {
							preview_height = 0.20,
						},
					},
				},

				colorscheme = {
					colors = {
						'kanagawa',
						'onedark',
						'tokyonight',
						'catppuccin',
						'gruvbox',
					},
					initial_mode = 'insert',
					results_title = 'Colorschemes',
					layout_config = {
						width = 0.40,
						height = 0.60,
					},
				},

				grep_string = {
					word_match = '-w',
					layout_strategy = 'vertical',
					layout_config = {
						vertical = {
							preview_height = 0.20,
						},
					},
				},

				buffers = {
					mappings = {
						n = {
							['dd'] = actions.delete_buffer,
						},
					},
				},

				find_files = {
					hidden = true,
					initial_mode = 'insert',
				},

				git_status = {
					show_untracked = true,
				},

				git_files = {
					initial_mode = 'insert',
					show_untracked = true,
				},
			},

			defaults = {
				initial_mode = 'normal',
				dynamic_preview_title = true,

				mappings = {
					n = { ['q'] = actions.close },
					i = {
						['<C-k>'] = actions.move_selection_previous,
						['<C-j>'] = actions.move_selection_next,
					},
				},

				layout_strategy = 'flex',
				layout_config = {
					height = 0.95,
					width = 0.95,
					horizontal = {
						preview_width = 0.50,
						preview_cutoff = 70,
					},
					vertical = {
						preview_cutoff = 30,
						prompt_position = 'bottom',
					},
				},

				-- selection_caret = '  ',
				selection_caret = '  ',
				prompt_prefix = '   ',
			},
		}
		return options
	end,
}
