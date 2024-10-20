return {
	'stevearc/conform.nvim',
	event = 'BufWritePre',
	enabled = false,
	opts = {
		formatters_by_ft = {
			lua = { 'stylua' },
			python = { 'black' },
			go = { 'gofmt' },
			rust = { 'rustfmt' },
			ocaml = { 'ocamlformat' },
		},
		format_on_save = {
			lsp_fallback = true,
			timeout_ms = 500,
		},
		notify_on_error = false,
	},
}
