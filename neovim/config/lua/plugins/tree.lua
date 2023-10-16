------------------------------------------------------------------------
--                      nvim-tree configuration                       --
------------------------------------------------------------------------
require('nvim-tree').setup({
  auto_reload_on_write = true,
  disable_netrw = true,
  hijack_cursor = true,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  open_on_tab = false,
  sort_by = 'name',
  update_cwd = false,
  view = {
    width = 32,
    side = 'left',
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = 'yes',
  },
  renderer = {
    icons = {
      webdev_colors = true,
    },
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  system_open = {
    cmd = '',
    args = {},
  },
  diagnostics = {
    enable = false,
    show_on_dirs = false,
  },
  filters = {
    dotfiles = false,
    custom = {},
    exclude = {},
  },
  git = {
    enable = false,
    ignore = false,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890',
        exclude = {
          filetype = { 'notify', 'qf', 'diff', 'fugitive', 'fugitiveblame' },
          buftype = { 'nofile', 'terminal', 'help' },
        },
      },
    },
  },
  trash = {
    cmd = 'trash',
    require_confirm = true,
  },
})
