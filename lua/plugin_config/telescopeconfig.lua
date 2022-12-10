local telescope = require('telescope')
local keymap = vim.keymap

telescope.setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    find_files = {
      find_command = {
        "fd",
        ".",
        "--type",
        "file",
        "--hidden",
        "--strip-cwd-prefix"
      }
    }
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

-- Telescope settings
--local builtin = require('telescope.builtin')
--keymap.set('n', '<leader>f', builtin.find_files, {})
--keymap.set('n', '<leader>fg', builtin.live_grep, {})
--keymap.set('n', '<leader>fb', builtin.buffers, {})
--keymap.set('n', '<leader>fh', builtin.help_tags, {})

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true}
map('n', '<C-f>', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", default_opts)
map('n', '<C-a>', "<cmd>lua require'telescope.builtin'.grep_string({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", default_opts)
map('n', '<leader>r', "<cmd>lua require'telescope.builtin'.buffers({ show_all_buffers = true })<cr>", default_opts)
map('n', '<leader>g', "<cmd>lua require'telescope.builtin'.git_status()<cr>", default_opts)