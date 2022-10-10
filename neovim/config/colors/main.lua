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
  if args.underline then
    command = command .. ' gui=underline'
  end
  vim.cmd(command)
end

local function link(group, to_group)
  vim.cmd('highlight link ' .. group .. ' ' .. to_group)
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
highlight('VertSplit', { fg = colors.color015 })
highlight('EndOfBuffer', { fg = colors.color015 })

-- syntax group
-- descriptions and ordering from ':h w18'

highlight('Comment', { fg = colors.color007 })
highlight('Constant', { fg = colors.color009 })
highlight('String', { fg = colors.color009 })
highlight('Character', { fg = colors.color009 })
highlight('Number', { fg = colors.color009 })
highlight('Boolean', { fg = colors.color009 })
highlight('Float', { fg = colors.color009 })
highlight('Identifier', { fg = colors.color015 })
highlight('Function', { fg = colors.color006 })
highlight('Statement', { fg = colors.color006 })
highlight('Conditional', { fg = colors.color006 })
highlight('Repeat', { fg = colors.color006 })
highlight('Label', { fg = colors.color006 })
highlight('Operator', { fg = colors.color015 })
highlight('Keyword', { fg = colors.color010 })
highlight('Exception', { fg = colors.color009 })
highlight('PreProc', { fg = colors.color006 })
highlight('Include', { fg = colors.color006 })
highlight('Define', { fg = colors.color006 })
highlight('Macro', { fg = colors.color006 })
highlight('PreCondit', { fg = colors.color006 })
highlight('Type', { fg = colors.color014 })
highlight('StorageClass', { fg = colors.color010 })
highlight('Typedef', { fg = colors.color010 })
highlight('Special', { fg = colors.color010 })
highlight('SpecialChar', { fg = colors.color015 })
highlight('Tag', { fg = colors.color015 })
highlight('Delimiter', { fg = colors.color015 })
highlight('SpecialComment', { fg = colors.color007 })
highlight('Debug', { fg = colors.color015 })
highlight('Underlined', { fg = colors.color015, underline = true })
highlight('Ignore', { fg = colors.color015 })
highlight('Error', { fg = colors.color001 })
highlight('Todo', { fg = colors.color000, bg = colors.color003 })
highlight('Normal', { fg = colors.color015 })

-- typescript specifics
highlight('tsxEscJs', { fg = colors.color013 })
highlight('tsxTag', { fg = colors.color005 })
link('tsxIntrinsicTagName', 'tsxTag')
link('tsxCloseTag', 'tsxTag')
link('tsxTagName', 'tsxTag')

highlight('typescriptDefault', { fg = colors.color015 })
link('typescriptTypeReference', 'Type')
link('typescriptBraces', 'Normal')
link('typescriptObjectLabel', 'Normal')
link('typescriptVariable', 'Statement')
link('typescriptTemplateSB', 'String')
link('typescriptCall', 'Normal')
