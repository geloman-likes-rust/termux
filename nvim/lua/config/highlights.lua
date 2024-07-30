local function highlight_all()
    local function highlight(name, value)
        vim.api.nvim_set_hl(0, name, value)
    end

    -- CUSTOM HIGHLIGHTS
    highlight("Visual", { reverse = true })
    highlight("WinBar", { reverse = true })
    highlight("Search", { bg = "#2a324a" })
    highlight("CurSearch", { reverse = true })
    highlight("IncSearch", { reverse = true })
    highlight("CursorLine", { bg = "#2a324a" })
    highlight("CursorColumn", { bg = "#2a324a" })

    -- TELESCOPE HIGHLIGHTS
    highlight("TelescopeTitle", { reverse = true })
    highlight("TelescopePromptCounter", { fg = '#34bfd0' })

    -- LAZY HIGHLIGHTS
    highlight("LazyNormal", { blend = 0, link = 'none' })
    highlight("LazyProp", { blend = 0, link = 'none' })
    highlight("LazyDimmed", { blend = 0, link = 'none' })

    -- TREESITTER-CONTEXT HIGHLIGHTS
    highlight("TreesitterContext", { link = 'none' })
    highlight("TreesitterContextBottom", { underdotted = true })
    highlight("TreesitterContextLineNumberBottom", { underdotted = true })

    -- FLOATING WINDOW HIGHLIGHT
    highlight("FloatBorder", { blend = 0 })
    highlight("NormalFloat", { blend = 0 })

    -- VIM-DADBOD-UI HIGHLIGHTS
    highlight("NotificationError", { blend = 0, fg = '#f65866' })

    -- TROUBLE HIGHLIGHTS
    highlight("TroublePreview", { reverse = true })
end

highlight_all()

vim.api.nvim_create_autocmd('ColorScheme', {
    group = vim.api.nvim_create_augroup('CustomHighlights', { clear = true }),
    callback = highlight_all
})
