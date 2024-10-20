--- keymaps
local function keymap(mode, lhs, rhs, opts)
	opts = opts or {}
	vim.keymap.set(mode, lhs, rhs, opts)
end

local toggle_numberln = function()
	vim.cmd 'set number!'
	vim.cmd 'set relativenumber!'
end

-- toggle lazy profiler
keymap('n', '<leader>lp', '<cmd>Lazy profile<cr>', { desc = 'Lazy Profile' })

-- keymap for cnext and cprev
keymap('n', '<c-n>', '<cmd>cnext<cr>', { desc = 'cnext' })
keymap('n', '<c-p>', '<cmd>cprev<cr>', { desc = 'cprevious' })
keymap('n', '<c-q>', '<cmd>copen 5<cr>', { desc = 'copen' })

-- toggle highlight search
keymap(
	'n',
	'<leader>hl',
	':set hlsearch!<cr>',
	{ noremap = true, silent = true, desc = 'toggle [H]ighlight [S]earch' }
)

-- move cursor to bottom and center the screen
keymap('n', 'L', 'Lzz')
keymap('n', 'G', 'Gzz')

-- navigate across wrapped lines
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
keymap(
	'n',
	'k',
	'v:count == 0 ? \'gk\' : \'k\'',
	{ expr = true, silent = true }
)
keymap(
	'n',
	'j',
	'v:count == 0 ? \'gj\' : \'j\'',
	{ expr = true, silent = true }
)
