-- Blank-Ghibli.lua - Enhanced for Neovim
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

-- Ghibli-specific accent colors
local green = '#648f68'       -- Forest green
local blue = '#5c87a4'        -- Muted blue
local brown = '#a27e57'       -- Earthy brown
local coral = '#da674b'       -- Reddish coral
local teal = '#829fa7'        -- Blue-gray teal
local yellow = '#e8b246'      -- Warm yellow

-- Additional UI colors
local transparent = '#0000'
local selection_bg = '#817c9c26'
local highlight_bg = '#817c9c14'
local diff_add_bg = '#070a0c'
local diff_change_bg = '#0a0c0d'
local diff_delete_bg = '#0a090c'

-- Core editor elements
highlight('Normal', black, text_gray, nil)
highlight('NormalFloat', dark_gray, text_gray, nil)
highlight('EndOfBuffer', black, comment_gray, nil)
highlight('Cursor', nil, blue, nil)
highlight('CursorLine', inactive_gray, nil, nil)
highlight('CursorColumn', inactive_gray, nil, nil)
highlight('ColorColumn', inactive_gray, nil, nil)
highlight('SignColumn', black, nil, nil)
highlight('LineNr', nil, light_gray, nil)
highlight('CursorLineNr', nil, brown, nil)
highlight('VertSplit', nil, light_gray, nil)
highlight('WinSeparator', nil, light_gray, nil) -- Neovim 0.9+
highlight('Folded', black, comment_gray, nil)
highlight('FoldColumn', black, light_gray, nil)

-- Status line and tabs
highlight('StatusLine', light_gray, black, nil)
highlight('StatusLineNC', black, light_gray, nil)
highlight('TabLine', transparent, light_gray, nil)
highlight('TabLineSel', yellow, dark_gray, nil)
highlight('TabLineFill', transparent, light_gray, nil)

-- Popups and menus
highlight('Pmenu', black, text_gray, nil)
highlight('PmenuSel', text_gray, dark_gray, nil)
highlight('PmenuSbar', dark_gray, nil, nil)
highlight('PmenuThumb', black, text_gray, nil)
highlight('WildMenu', black, text_gray, nil)
highlight('Question', nil, brown, nil)
highlight('Title', nil, brown, 'bold')

-- Search and selection
highlight('Visual', inactive_gray, nil, nil)
highlight('VisualNOS', inactive_gray, nil, 'underline')
highlight('Search', selection_bg, text_gray, nil)
highlight('IncSearch', brown, black, nil)
highlight('MatchParen', selection_bg, nil, 'bold')

-- Diagnostics and errors
highlight('Error', nil, coral, nil)
highlight('ErrorMsg', nil, coral, nil)
highlight('WarningMsg', nil, yellow, nil)
highlight('DiagnosticError', nil, coral, nil)
highlight('DiagnosticWarn', nil, yellow, nil)
highlight('DiagnosticInfo', nil, blue, nil)
highlight('DiagnosticHint', nil, green, nil)
highlight('DiagnosticUnderlineError', nil, nil, 'undercurl,fg=' .. coral)
highlight('DiagnosticUnderlineWarn', nil, nil, 'undercurl,fg=' .. yellow)
highlight('DiagnosticUnderlineInfo', nil, nil, 'undercurl,fg=' .. blue)
highlight('DiagnosticUnderlineHint', nil, nil, 'undercurl,fg=' .. green)
highlight('DiagnosticVirtualTextError', nil, coral, nil)
highlight('DiagnosticVirtualTextWarn', nil, yellow, nil)
highlight('DiagnosticVirtualTextInfo', nil, blue, nil)
highlight('DiagnosticVirtualTextHint', nil, green, nil)
highlight('DiagnosticFloatingError', nil, coral, nil)
highlight('DiagnosticFloatingWarn', nil, yellow, nil)
highlight('DiagnosticFloatingInfo', nil, blue, nil)
highlight('DiagnosticFloatingHint', nil, green, nil)
highlight('DiagnosticSignError', nil, coral, nil)
highlight('DiagnosticSignWarn', nil, yellow, nil)
highlight('DiagnosticSignInfo', nil, blue, nil)
highlight('DiagnosticSignHint', nil, green, nil)

-- Diffs
highlight('DiffAdd', diff_add_bg, nil, nil)
highlight('DiffChange', diff_change_bg, nil, nil)
highlight('DiffDelete', diff_delete_bg, nil, nil)
highlight('DiffText', nil, text_gray, nil)

-- Syntax highlighting
highlight('Comment', nil, comment_gray, 'italic')
highlight('Constant', nil, green, nil)
highlight('Number', nil, brown, nil)
highlight('String', nil, coral, nil)
highlight('Identifier', nil, brown, 'italic')
highlight('Function', nil, teal, 'italic')
highlight('Statement', nil, green, nil)
highlight('Keyword', nil, green, nil)
highlight('Operator', nil, green, nil)
highlight('PreProc', nil, green, nil)
highlight('Type', nil, blue, nil)
highlight('Special', nil, teal, nil)
highlight('Underlined', nil, blue, 'underline')
highlight('Todo', nil, yellow, 'bold')

-- TreeSitter specific
highlight('TSPunctDelimiter', nil, text_gray, nil)
highlight('TSVariable', nil, brown, 'italic')
highlight('TSType', nil, blue, nil)
highlight('TSFunction', nil, teal, 'italic')
highlight('TSComment', nil, comment_gray, 'italic')
highlight('TSString', nil, coral, nil)
highlight('TSKeyword', nil, green, nil)
highlight('TSOperator', nil, green, nil)

-- LSP Specific (enhanced)
highlight('LspReferenceText', selection_bg, nil, nil)
highlight('LspReferenceRead', selection_bg, nil, nil)
highlight('LspReferenceWrite', selection_bg, nil, 'bold')
highlight('LspCodeLens', nil, comment_gray, 'italic')
highlight('LspCodeLensSeparator', nil, light_gray, nil)
highlight('LspSignatureActiveParameter', nil, brown, 'bold')
highlight('LspInlayHint', dark_gray, comment_gray, 'italic')

-- Floating windows (Neovim 0.9+)
highlight('FloatBorder', nil, light_gray, nil)
highlight('FloatTitle', dark_gray, yellow, 'bold')
highlight('FloatFooter', dark_gray, comment_gray, nil)
highlight('FloatShadow', '#000000', nil, nil)
highlight('FloatShadowThrough', '#00000088', nil, nil)

-- Winbar (Neovim 0.9+)
highlight('WinBar', black, text_gray, nil)
highlight('WinBarNC', black, light_gray, nil)

-- Neovim terminal colors
highlight('TermCursor', nil, blue, nil)
highlight('TermCursorNC', nil, light_gray, nil)
vim.g.terminal_color_0 = black
vim.g.terminal_color_1 = coral
vim.g.terminal_color_2 = green
vim.g.terminal_color_3 = brown
vim.g.terminal_color_4 = blue
vim.g.terminal_color_5 = teal
vim.g.terminal_color_6 = yellow
vim.g.terminal_color_7 = text_gray
vim.g.terminal_color_8 = light_gray
vim.g.terminal_color_9 = coral
vim.g.terminal_color_10 = green
vim.g.terminal_color_11 = brown
vim.g.terminal_color_12 = blue
vim.g.terminal_color_13 = teal
vim.g.terminal_color_14 = yellow
vim.g.terminal_color_15 = '#e6e6e6'  -- Light gray/almost white

-- Neovim notifications (0.9+)
highlight('NotifyERRORBorder', nil, coral, nil)
highlight('NotifyWARNBorder', nil, yellow, nil)
highlight('NotifyINFOBorder', nil, green, nil)
highlight('NotifyDEBUGBorder', nil, light_gray, nil)
highlight('NotifyTRACEBorder', nil, blue, nil)
highlight('NotifyERRORIcon', nil, coral, nil)
highlight('NotifyWARNIcon', nil, yellow, nil)
highlight('NotifyINFOIcon', nil, green, nil)
highlight('NotifyDEBUGIcon', nil, light_gray, nil)
highlight('NotifyTRACEIcon', nil, blue, nil)
highlight('NotifyERRORTitle', nil, coral, nil)
highlight('NotifyWARNTitle', nil, yellow, nil)
highlight('NotifyINFOTitle', nil, green, nil)
highlight('NotifyDEBUGTitle', nil, light_gray, nil)
highlight('NotifyTRACETitle', nil, blue, nil)

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
highlight('NavicIconsFile', nil, green, nil)
highlight('NavicIconsModule', nil, brown, nil)
highlight('NavicIconsNamespace', nil, green, nil)
highlight('NavicIconsPackage', nil, light_gray, nil)
highlight('NavicIconsClass', nil, brown, nil)
highlight('NavicIconsMethod', nil, teal, nil)
highlight('NavicIconsProperty', nil, coral, nil)
highlight('NavicIconsField', nil, coral, nil)
highlight('NavicIconsConstructor', nil, brown, nil)
highlight('NavicIconsEnum', nil, brown, nil)
highlight('NavicIconsInterface', nil, blue, nil)
highlight('NavicIconsFunction', nil, teal, nil)
highlight('NavicIconsVariable', nil, coral, nil)
highlight('NavicIconsConstant', nil, brown, nil)
highlight('NavicIconsString', nil, coral, nil)
highlight('NavicIconsNumber', nil, brown, nil)
highlight('NavicIconsBoolean', nil, brown, nil)
highlight('NavicIconsArray', nil, brown, nil)
highlight('NavicIconsObject', nil, brown, nil)
highlight('NavicIconsKey', nil, green, nil)
highlight('NavicIconsNull', nil, comment_gray, nil)
highlight('NavicIconsEnumMember', nil, coral, nil)
highlight('NavicIconsStruct', nil, brown, nil)
highlight('NavicIconsEvent', nil, brown, nil)
highlight('NavicIconsOperator', nil, green, nil)
highlight('NavicIconsTypeParameter', nil, coral, nil)
highlight('NavicText', nil, text_gray, nil)
highlight('NavicSeparator', nil, light_gray, nil)

-- Git and diff highlighting enhancements
highlight('GitSignsAdd', nil, green, nil)
highlight('GitSignsChange', nil, yellow, nil)
highlight('GitSignsDelete', nil, coral, nil)
highlight('GitSignsCurrentLineBlame', nil, comment_gray, 'italic')

-- Indent guides
highlight('IndentBlanklineChar', nil, light_gray, nil)
highlight('IndentBlanklineContextChar', nil, yellow, nil)
