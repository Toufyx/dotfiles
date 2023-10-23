------------------------------------------------------------------------
--                       lualine configuration                        --
------------------------------------------------------------------------
local colors = require('colors')

-- theme definition
local theme = {
  normal = {
    a = { fg = colors.base, bg = colors.blue },
    b = { fg = colors.text, bg = colors.surface0 },
    c = { fg = colors.text, bg = colors.surface0 },
  },

  insert = { a = { fg = colors.base, bg = colors.peach } },
  visual = { a = { fg = colors.base, bg = colors.mauve } },
  replace = { a = { fg = colors.base, bg = colors.red } },
  command = { a = { fg = colors.base, bg = colors.yellow } },

  inactive = {
    a = { fg = colors.text, bg = colors.mantle },
    b = { fg = colors.text, bg = colors.mantle },
    c = { fg = colors.text, bg = colors.mantle },
  },
}

--- get the current buffer's file name, defaults to '[no name]'
local function get_filename()
  local filename = vim.api.nvim_buf_get_name(0)
  if filename == '' then
    return '[no name]'
  end
  -- this is some vim magic to remove the current working directory path
  -- from the absilute path of the filename in order to make the filename
  -- relative to the current working directory
  return vim.fn.fnamemodify(filename, ':~:.')
end

--- get the current buffer's file type, defaults to '[not type]'
local function get_filetype()
  local icon = '󰈚'
  local filetype = vim.bo.filetype
  if filetype == '' then
    return icon .. ' [no type]'
  end
  local devicons_present, devicons = pcall(require, 'nvim-web-devicons')
  if devicons_present then
    local ft_icon = devicons.get_icon_by_filetype(filetype)
    icon = (ft_icon ~= nil and ft_icon) or icon
  end
  return icon .. ' ' .. filetype:lower()
end

-- get the current buffer's LSP clients if any
local function get_lsp_clients()
  if next(vim.lsp.buf_get_clients()) == nil then
    return ''
  end
  local output = '  LSP'
  for _, client in ipairs(vim.lsp.buf_get_clients()) do
    if client.name ~= 'null-ls' then
      output = output .. ' ' .. client.name
    end
  end
  return output
end

-- get buffer modification state
local function get_modified()
  if vim.bo.modified then
    return '[+]'
  elseif vim.bo.modifiable == false or vim.bo.readonly == true then
    return '[-]'
  end
  return ''
end

-- get python virtual env information
local get_python_virtual_env = function()
  if vim.bo.filetype ~= 'python' then
    return ''
  end

  local venv_path = os.getenv('VIRTUAL_ENV')
  if venv_path == nil then
    return '  system'
  else
    local venv_name = vim.fn.fnamemodify(venv_path, ':t')
    return string.format('  %s (venv)', venv_name)
  end
end

require('lualine').setup({
  options = {
    icons_enabled = false,
    theme = theme,
    component_separators = '',
    section_separators = {},
    disabled_filetypes = { 'NvimTree' },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '', right = '' } },
    },
    lualine_b = {
      {
        'branch',
        icons_enabled = true,
        separator = { left = '', right = '' },
        color = { fg = colors.base, bg = colors.green },
      },
    },
    lualine_c = {
      { get_filename, padding = { left = 1, right = 1 } },
      { get_modified, padding = { left = 0, right = 1 } },
    },

    lualine_x = {
      'diagnostics',
      get_python_virtual_env,
    },
    lualine_y = {
      {
        get_lsp_clients,
        separator = { left = '' },
        color = { fg = colors.base, bg = colors.yellow },
      },
      {
        get_filetype,
        separator = { left = '' },
        color = { fg = colors.base, bg = colors.teal },
      },
    },

    lualine_z = {
      { 'location', padding = 1, separator = { left = '', right = '' } },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = { 'quickfix', 'nvim-tree' },
})
