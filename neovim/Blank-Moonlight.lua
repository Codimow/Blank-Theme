-- Blank-Moonlight.lua - Enhanced for Neovim
vim.cmd[[highlight clear]]

local highlight = function(group, bg, fg, attr)
    fg = fg and 'guifg=' .. fg or ''
    bg = bg and 'guibg=' .. bg or ''
    attr = attr and 'gui=' .. attr or ''

    vim.api.nvim_command('highlight ' .. group .. ' '.. fg .. ' ' .. bg .. ' '.. attr)
end

local link = function(target, group)
    vim.api.nvim_command('highlight! link ' .. target .. ' '.. group)
end

-- Core color palette
local black = '#000000'       -- True black background
local dark_gray = '#111216'   -- Slightly lighter black for UI elements
local comment_gray = '#43444D'
local light_gray = '#575861'
local text_gray = '#868690'
local inactive_gray = '#131317'

-- Accent colors
local blue = '#8eb6f5'
local purple = '#c58fff'
local orange = '#ffbb88'
local pink = '#f58ee0'
local light_gray_2 = '#9898a6'
local white = '#fdfdfe'

-- Additional UI colors
local transparent = '#0000'
local selection_bg = '#817c9c26'
local highlight_bg = '#817c9c14'

-- Core editor elements
highlight('Normal', black, text_gray, nil)
highlight('NormalFloat', dark_gray, text_gray, nil)
highlight('EndOfBuffer', black, comment_gray, nil)
highlight('Cursor', nil, purple, nil)
highlight('CursorLine', inactive_gray, nil, nil)
highlight('CursorColumn', inactive_gray, nil, nil)
highlight('ColorColumn', inactive_gray, nil, nil)
highlight('SignColumn', black, nil, nil)
highlight('LineNr', nil, light_gray, nil)
highlight('CursorLineNr', nil, orange, nil)
highlight('VertSplit', nil, light_gray, nil)
highlight('WinSeparator', nil, light_gray, nil) -- Neovim 0.9+ idfk why it's not working
highlight('Folded', black, comment_gray, nil)
highlight('FoldColumn', black, light_gray, nil)

-- Status line and tabs
highlight('StatusLine', light_gray, black, nil)
highlight('StatusLineNC', black, light_gray, nil)
highlight('TabLine', transparent, light_gray, nil)
highlight('TabLineSel', text_gray, dark_gray, nil)
highlight('TabLineFill', transparent, light_gray, nil)

-- Popups and menus
highlight('Pmenu', black, text_gray, nil)
highlight('PmenuSel', text_gray, dark_gray, nil)
highlight('PmenuSbar', dark_gray, nil, nil)
highlight('PmenuThumb', black, text_gray, nil)
highlight('WildMenu', black, text_gray, nil)
highlight('Question', nil, orange, nil)
highlight('Title', nil, orange, 'bold')

-- Search and selection
highlight('Visual', inactive_gray, nil, nil)
highlight('VisualNOS', inactive_gray, nil, 'underline')
highlight('Search', selection_bg, text_gray, nil)
highlight('IncSearch', orange, black, nil)
highlight('MatchParen', selection_bg, nil, 'bold')

-- Diagnostics and errors
highlight('Error', nil, pink, nil)
highlight('ErrorMsg', nil, pink, nil)
highlight('WarningMsg', nil, orange, nil)
highlight('DiagnosticError', nil, pink, nil)
highlight('DiagnosticWarn', nil, orange, nil)
highlight('DiagnosticInfo', nil, purple, nil)
highlight('DiagnosticHint', nil, blue, nil)
highlight('DiagnosticUnderlineError', nil, nil, 'undercurl,fg=' .. pink)
highlight('DiagnosticUnderlineWarn', nil, nil, 'undercurl,fg=' .. orange)
highlight('DiagnosticUnderlineInfo', nil, nil, 'undercurl,fg=' .. purple)
highlight('DiagnosticUnderlineHint', nil, nil, 'undercurl,fg=' .. blue)
highlight('DiagnosticVirtualTextError', nil, pink, nil)
highlight('DiagnosticVirtualTextWarn', nil, orange, nil)
highlight('DiagnosticVirtualTextInfo', nil, purple, nil)
highlight('DiagnosticVirtualTextHint', nil, blue, nil)
highlight('DiagnosticFloatingError', nil, pink, nil)
highlight('DiagnosticFloatingWarn', nil, orange, nil)
highlight('DiagnosticFloatingInfo', nil, purple, nil)
highlight('DiagnosticFloatingHint', nil, blue, nil)
highlight('DiagnosticSignError', nil, pink, nil)
highlight('DiagnosticSignWarn', nil, orange, nil)
highlight('DiagnosticSignInfo', nil, purple, nil)
highlight('DiagnosticSignHint', nil, blue, nil)

-- Diffs
highlight('DiffAdd', '#07090d', nil, nil)
highlight('DiffChange', '#070a0c', nil, nil)
highlight('DiffDelete', '#0a090b', nil, nil)
highlight('DiffText', nil, text_gray, nil)

-- Syntax highlighting
highlight('Comment', nil, comment_gray, 'italic')
highlight('Constant', nil, blue, nil)
highlight('Number', nil, orange, nil)
highlight('String', nil, light_gray_2, nil)
highlight('Identifier', nil, orange, 'italic')
highlight('Function', nil, pink, 'italic')
highlight('Statement', nil, blue, nil)
highlight('Keyword', nil, blue, nil)
highlight('Operator', nil, blue, nil)
highlight('PreProc', nil, blue, nil)
highlight('Type', nil, purple, nil)
highlight('Special', nil, pink, nil)
highlight('Underlined', nil, purple, 'underline')
highlight('Todo', nil, orange, 'bold')

-- TreeSitter specific
highlight('TSPunctDelimiter', nil, text_gray, nil)
highlight('TSVariable', nil, orange, 'italic')
highlight('TSType', nil, purple, nil)
highlight('TSFunction', nil, pink, 'italic')
highlight('TSComment', nil, comment_gray, 'italic')
highlight('TSString', nil, light_gray_2, nil)
highlight('TSKeyword', nil, blue, nil)
highlight('TSOperator', nil, blue, nil)

-- LSP Specific (enhanced)
highlight('LspReferenceText', selection_bg, nil, nil)
highlight('LspReferenceRead', selection_bg, nil, nil)
highlight('LspReferenceWrite', selection_bg, nil, 'bold')
highlight('LspCodeLens', nil, comment_gray, 'italic')
highlight('LspCodeLensSeparator', nil, light_gray, nil)
highlight('LspSignatureActiveParameter', nil, orange, 'bold')
highlight('LspInlayHint', dark_gray, comment_gray, 'italic')

-- Floating windows (Neovim 0.9+)
highlight('FloatBorder', nil, light_gray, nil)
highlight('FloatTitle', dark_gray, orange, 'bold')
highlight('FloatFooter', dark_gray, comment_gray, nil)
highlight('FloatShadow', '#000000', nil, nil)
highlight('FloatShadowThrough', '#00000088', nil, nil)

-- Winbar (Neovim 0.9+)
highlight('WinBar', black, text_gray, nil)
highlight('WinBarNC', black, light_gray, nil)

-- Neovim terminal colors
highlight('TermCursor', nil, purple, nil)
highlight('TermCursorNC', nil, light_gray, nil)
vim.g.terminal_color_0 = black
vim.g.terminal_color_1 = pink
vim.g.terminal_color_2 = blue
vim.g.terminal_color_3 = orange
vim.g.terminal_color_4 = purple
vim.g.terminal_color_5 = pink
vim.g.terminal_color_6 = light_gray_2
vim.g.terminal_color_7 = text_gray
vim.g.terminal_color_8 = light_gray
vim.g.terminal_color_9 = pink
vim.g.terminal_color_10 = blue
vim.g.terminal_color_11 = orange
vim.g.terminal_color_12 = purple
vim.g.terminal_color_13 = pink
vim.g.terminal_color_14 = light_gray_2
vim.g.terminal_color_15 = white

-- Neovim notifications (0.9+)
highlight('NotifyERRORBorder', nil, pink, nil)
highlight('NotifyWARNBorder', nil, orange, nil)
highlight('NotifyINFOBorder', nil, blue, nil)
highlight('NotifyDEBUGBorder', nil, light_gray, nil)
highlight('NotifyTRACEBorder', nil, purple, nil)
highlight('NotifyERRORIcon', nil, pink, nil)
highlight('NotifyWARNIcon', nil, orange, nil)
highlight('NotifyINFOIcon', nil, blue, nil)
highlight('NotifyDEBUGIcon', nil, light_gray, nil)
highlight('NotifyTRACEIcon', nil, purple, nil)
highlight('NotifyERRORTitle', nil, pink, nil)
highlight('NotifyWARNTitle', nil, orange, nil)
highlight('NotifyINFOTitle', nil, blue, nil)
highlight('NotifyDEBUGTitle', nil, light_gray, nil)
highlight('NotifyTRACETitle', nil, purple, nil)

-- Links to standard groups
link('NonText', 'Comment')
link('Whitespace', 'Comment')
link('Conditional', 'Keyword')
link('Repeat', 'Conditional')
link('Label', 'Keyword')
link('Macro', 'Function')
link('PreCondit', 'PreProc')
link('Structure', 'Type')
link('Typedef', 'Type')
link('SpecialChar', 'Special')
link('Tag', 'Special')
link('Delimiter', 'Special')
link('SpecialComment', 'Special')
link('Debug', 'Special')

-- Additional TreeSitter links
link('TSConstant', 'Constant')
link('TSNumber', 'Number')
link('TSFloat', 'Number')
link('TSBoolean', 'Constant')
link('TSConstructor', 'Type')
link('TSField', 'Identifier')
link('TSParameter', 'Identifier')
link('TSParameterReference', 'TSParameter')
link('TSProperty', 'TSField')
link('TSMethod', 'Function')
link('TSConditional', 'Conditional')
link('TSRepeat', 'Repeat')
link('TSLabel', 'Label')
link('TSException', 'Exception')
link('TSNamespace', 'Type')
link('TSTag', 'Tag')
link('TSTagDelimiter', 'Delimiter')
link('TSPunctSpecial', 'TSPunctDelimiter')

-- UI elements for plugins
link('TelescopeNormal', 'Normal')
link('TelescopeBorder', 'FloatBorder')
link('TelescopeTitle', 'FloatTitle')
link('TelescopePromptPrefix', 'Identifier')
link('TelescopeMatching', 'Search')
link('TelescopePromptCounter', 'Comment')

link('NvimTreeNormal', 'Normal')
link('NvimTreeFolderName', 'Directory')
link('NvimTreeRootFolder', 'Type')
link('NvimTreeFolderIcon', 'Type')
link('NvimTreeFileIcon', 'Type')
link('NvimTreeSpecialFile', 'Type')
link('NvimTreeOpenedFile', 'Type')
link('NvimTreeIndentMarker', 'IndentBlanklineChar')
link('NvimTreeWindowPicker', 'FloatTitle')

link('BufferLineFill', 'TabLineFill')
link('BufferLineBackground', 'TabLine')
link('BufferLineBufferSelected', 'TabLineSel')

-- Additional Neovim 0.9+ highlights
link('IlluminatedWordRead', 'LspReferenceRead')
link('IlluminatedWordText', 'LspReferenceText')
link('IlluminatedWordWrite', 'LspReferenceWrite')

-- Navic (breadcrumbs) support
highlight('NavicIconsFile', nil, blue, nil)
highlight('NavicIconsModule', nil, orange, nil)
highlight('NavicIconsNamespace', nil, blue, nil)
highlight('NavicIconsPackage', nil, light_gray, nil)
highlight('NavicIconsClass', nil, orange, nil)
highlight('NavicIconsMethod', nil, pink, nil)
highlight('NavicIconsProperty', nil, light_gray_2, nil)
highlight('NavicIconsField', nil, light_gray_2, nil)
highlight('NavicIconsConstructor', nil, orange, nil)
highlight('NavicIconsEnum', nil, orange, nil)
highlight('NavicIconsInterface', nil, purple, nil)
highlight('NavicIconsFunction', nil, pink, nil)
highlight('NavicIconsVariable', nil, light_gray_2, nil)
highlight('NavicIconsConstant', nil, orange, nil)
highlight('NavicIconsString', nil, light_gray_2, nil)
highlight('NavicIconsNumber', nil, orange, nil)
highlight('NavicIconsBoolean', nil, orange, nil)
highlight('NavicIconsArray', nil, orange, nil)
highlight('NavicIconsObject', nil, orange, nil)
highlight('NavicIconsKey', nil, blue, nil)
highlight('NavicIconsNull', nil, comment_gray, nil)
highlight('NavicIconsEnumMember', nil, light_gray_2, nil)
highlight('NavicIconsStruct', nil, orange, nil)
highlight('NavicIconsEvent', nil, orange, nil)
highlight('NavicIconsOperator', nil, blue, nil)
highlight('NavicIconsTypeParameter', nil, light_gray_2, nil)
highlight('NavicText', nil, text_gray, nil)
highlight('NavicSeparator', nil, light_gray, nil)
