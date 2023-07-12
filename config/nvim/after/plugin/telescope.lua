pcall(require('telescope').load_extension, 'fzf') -- Enable telescope fzf native, if installed
local ignore_files = { "target", "node_modules", "wwwroot/lib", "**/Debug", "**.cache", "**/assets", "**.png", "**.svg",
  "**.favicon.*", "**.gif", "**.jpg", "**.jpeg", "**.mp4", "**.mp3", "**.pdf", "go", "**.zip", "**.tar.gz", "**/tags",
  "**.ttf" }

require('telescope').setup {
  pickers = {
    grep_string = {
      word_match = "-w"
    },
  },
  defaults = {
    layout_strategy = "vertical",
    -- theme = "dropdown",
    layout_config = {
      preview_height = 0.75,
      width = 0.95,
      height = 0.95,
    },
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
    initial_mode = "normal",
    file_ignore_patterns = ignore_files,
  },
}

vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>hh', require('telescope.builtin').help_tags, { desc = 'Search Help' })
vim.keymap.set('n', '<leader>gs', require('telescope.builtin').grep_string, { desc = '[G]rep [S]tring' })
vim.keymap.set('n', '<leader>lg', require('telescope.builtin').live_grep, { desc = '[L]ive [G]rep' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
