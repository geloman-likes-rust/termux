return {
	'rebelot/kanagawa.nvim',
	lazy = false,
	priority = 1000,
	transparent = true,
	opts = {
		keywordStyle = { italic = false },
		commentStyle = { italic = false },
		colors = {
			theme = {
				all = {
					ui = {
						bg_gutter = 'none',
					},
				},
			},
		},
	},
	config = function(_, opts)
		require('kanagawa').setup(opts)
		require('kanagawa').load 'wave'
	end,
}
