local lualine = require('lualine')

local colors = {
  black = '#282828',
  white = '#ebdbb2',
  red = '#fb4934',
  green = '#b8bb26',
  blue = '#83a598',
  yellow = '#fe8019',
  gray = '#a89984',
  darkgray = '#3c3836',
  lightgray = '#504945',
  inactivegray = '#7c6f64',
}

local theme = {
  normal = {
    a = { bg = colors.gray, fg = colors.black, gui = 'bold' },
    b = { bg = colors.gray, fg = colors.black },
    c = { bg = colors.darkgray, fg = colors.gray },
  },
  insert = {
    a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
    b = { bg = colors.blue, fg = colors.black },
    c = { bg = colors.darkgray, fg = colors.gray },
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
    b = { bg = colors.yellow, fg = colors.black },
    c = { bg = colors.darkgray, fg = colors.gray },
  },
  replace = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = { bg = colors.red, fg = colors.black },
    c = { bg = colors.darkgray, fg = colors.gray },
  },
  command = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.green, fg = colors.black },
    c = { bg = colors.darkgray, fg = colors.gray },
  },
  inactive = {
    a = { bg = colors.darkgray, fg = colors.gray, gui = 'bold' },
    b = { bg = colors.darkgray, fg = colors.gray },
    c = { bg = colors.darkgray, fg = colors.gray },
  },
}

lualine.setup({
  options = {
    theme = theme,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      { 'branch', color = { bg = colors.lightgray, fg = colors.white } },
      { 'filename', file_status = false, path = 1, separator = { left = '', right = '' } },
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { { 'filetype', color = { bg = colors.lightgray, fg = colors.white } } },
    lualine_z = { '%l:%c' },
  },
})
