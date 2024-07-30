return {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
    opts = {
        options = {
            icons_enabled = true,
            theme = 'auto',
            globalstatus = true,
            section_separators = { left = '', right = '' },
            component_separators = { left = '│', right = '│' },
        },
        sections = {
            lualine_a = { { 'mode', separator = { left = '', right = '' } } },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { 'searchcount' },
            lualine_x = { 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { { 'location', separator = { left = '', right = '' } } }
        },
    }
}
