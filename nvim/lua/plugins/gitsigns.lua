return {
	'lewis6991/gitsigns.nvim',
	opts = {
		signs = {
			add = { text = '+' },
			change = { text = '~' },
			delete = { text = '_' },
			topdelete = { text = '‾' },
			changedelete = { text = '~' },
		},
		numhl = true,
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
			delay = 100,
		},
		preview_config = {
			border = 'rounded',
		},
		attach_to_untracked = true,
		on_attach = function(bufnr)
			local keymap = function(mode, lhs, rhs, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, lhs, rhs, opts)
			end

			-- custom keymaps
			keymap(
				'n',
				'<leader>N',
				'<cmd>Gitsigns prev_hunk<cr>',
				{ desc = '[N] go to previous hunk' }
			)
			keymap(
				'n',
				'<leader>n',
				'<cmd>Gitsigns next_hunk<cr>',
				{ desc = '[n] go to next hunk' }
			)
			keymap(
				'n',
				'<leader>ph',
				'<cmd>Gitsigns preview_hunk<cr>',
				{ desc = '[p]review [h]unk' }
			)
			keymap(
				'n',
				'ga',
				'<cmd>Gitsigns stage_hunk<cr>',
				{ desc = '[G]it [A]dd Hunk' }
			)
			keymap(
				'n',
				'<leader>gaa',
				'<cmd>Gitsigns stage_buffer<cr>',
				{ desc = '[G]it [A]dd [A]ll Hunks' }
			)
			keymap(
				'n',
				'<leader>gu',
				'<cmd>Gitsigns undo_stage_hunk<cr>',
				{ desc = '[G]it [U]nstage Last Staged' }
			)
			keymap(
				'n',
				'<leader>gr',
				'<cmd>Gitsigns reset_buffer<cr>',
				{ desc = '[G]it [R]eset Current Buffer' }
			)
			keymap(
				'n',
				'<leader>lb',
				'<cmd>Gitsigns toggle_current_line_blame<cr>',
				{ desc = '[L]ine [B]lame toggle' }
			)
		end,
	},
}
