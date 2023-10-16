------------------------------------------------------------------------
--                      dashboard configuration                       --
------------------------------------------------------------------------
local dashboard = require('dashboard')

local config = {}
config.header = {
  '                                                       ',
  '                                                       ',
  '                                                       ',
  '                                                       ',
  '                                                       ',
  '                                                       ',
  '                                                       ',
  '                                                       ',
  '                                                       ',
  '                                                       ',
  '                                                       ',
  '                                                       ',
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
  '                                                       ',
  '                                                       ',
  '                                                       ',
  '                                                       ',
}

config.center = {
  {
    icon = '󰈞  ',
    desc = 'Find File                              ',
    action = 'Telescope find_files',
    key = '<Leader> ff',
  },
  {
    icon = '󰈢  ',
    desc = 'Recently opened files                   ',
    action = 'Telescope oldfiles',
    key = '<none>',
  },
  {
    icon = '󰈬  ',
    desc = 'Project grep                            ',
    action = 'Telescope live_grep',
    key = '<Leader> fg',
  },
  {
    icon = '  ',
    desc = 'New file                                ',
    action = 'enew',
    key = 'e',
  },
  {
    icon = '󰗼  ',
    desc = 'Quit Nvim                               ',
    action = 'qa',
    key = 'q',
  },
}

dashboard.setup({
  theme = 'doom',
  shortcut_type = 'number',
  config = config,
})
