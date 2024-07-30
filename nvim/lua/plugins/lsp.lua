return {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPost', 'BufWritePost', 'BufNewFile' },
    config = function()
        require 'lspconfig.ui.windows'.default_options.border = 'rounded'
        require('neodev').setup()
        local lspconfig = require 'lspconfig'
        local util = lspconfig.util

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

        --[[ LUA LSP ]]
        lspconfig.lua_ls.setup {
            cmd = { 'lua-language-server' },
            capabilities = capabilities,
        }

        --[[ PYTHON LSP ]]
        lspconfig.pyright.setup { capabilities = capabilities }

        --[[ RUST LSP ]]
        lspconfig.rust_analyzer.setup {
            cmd = { 'rust-analyzer' },
            capabilities = capabilities,
            root_dir = util.root_pattern('Cargo.toml', 'Cargo.lock', 'rust-project.json')
        }

        --[[ GOLANG LSP ]]
        lspconfig.gopls.setup {
            cmd = { 'gopls' },
            capabilities = capabilities,
            root_dir = util.root_pattern('go.work', 'go.mod', '.git')
        }
    end,
    dependencies = { 'folke/neodev.nvim' },
}
