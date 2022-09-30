-- define colors
local colors = {
  color000 = '#060A17',
  color001 = '#CF3709',
  color002 = '#72892F',
  color003 = '#F8990D',
  color004 = '#0B398E',
  color005 = '#93588F',
  color006 = '#459EA6',
  color007 = '#444A5E',
  color008 = '#141929',
  color009 = '#DB7E57',
  color010 = '#88B073',
  color011 = '#DBB956',
  color012 = '#04628B',
  color013 = '#B38BC3',
  color014 = '#A1D0C8',
  color015 = '#B0BFBC',
  none = 'none',
}

local function highlight(group, args)
  vim.cmd('highlight clear ' .. group)
  local command = 'highlight! ' .. group
  if args.fg then
    command = command .. ' guifg=' .. args.fg
  end
  if args.bg then
    command = command .. ' guibg=' .. args.bg
  end
  vim.cmd(command)
end

-- set right background and color config
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.o.cursorline = true

-- reset xisting highlights and syntax
vim.cmd('highlight! clear')
vim.cmd('syntax reset')

-- interface colors
highlight('LineNr', { fg = colors.color008 })
highlight('CursorLineNr', { fg = colors.color007 })
highlight('CursorLine', { fg = colors.none, bg = colors.none })
highlight('Error', { fg = colors.color000, bg = colors.color001 })
highlight('ErrorMsg', { fg = colors.color000, bg = colors.color001 })
highlight('DiagnosticError', { fg = colors.color001 })
highlight('DiagnosticWarn', { fg = colors.color003 })
highlight('Search', { fg = colors.color000, bg = colors.color011 })
highlight('Pmenu', { fg = colors.color015, bg = colors.color008 })
highlight('PmenuSel', { fg = colors.color000, bg = colors.color015 })
highlight('MatchParen', { fg = colors.color015, bg = colors.color012 })
highlight('Visual', { fg = colors.color015, bg = colors.color012 })
highlight('NonText', { fg = colors.color015 })
highlight('DiffAdd', { fg = colors.color002 })
highlight('DiffDelete', { fg = colors.color001 })
highlight('DiffChange', { fg = colors.color003 })
highlight('SignColumn', { fg = colors.color015 })

-- code colors
highlight('Normal', { fg = colors.color015 })
highlight('Identifier', { fg = colors.color015 })
highlight('EndOfBuffer', { fg = colors.color015 })
highlight('Function', { fg = colors.color014 })
highlight('Constant', { fg = colors.color012 })
highlight('PreProc', { fg = colors.color015 })
highlight('Comment', { fg = colors.color007 })
highlight('Statement', { fg = colors.color006 })
highlight('SpecialKey', { fg = colors.color015 })
highlight('Special', { fg = colors.color015 })
highlight('Type', { fg = colors.color010 })
highlight('Title', { fg = colors.color015 })
highlight('VertSplit', { fg = colors.color015 })
