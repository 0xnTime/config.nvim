-- handmade.lua - A port of the Handmade Hero Emacs theme for Neovim
-- Based on the theme used by Casey Muratori
-- Place this file in ~/.config/nvim/colors/handmade.lua

vim.cmd('hi clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'handmade'

-- Color palette
local colors = {
  beige = '#deb887',           -- burlywood3
  dark_blue = '#191970',       -- midnight blue
  dark_gray = '#000000',
  dark_green = '#006400',      -- DarkGreen
  gold = '#cd950c',            -- DarkGoldenrod3
  light_beige = '#dab98f',
  light_gray = '#7f7f7f',      -- gray50
  light_green = '#40ff40',
  olive = '#6b8e23',           -- olive drab
  red = '#ff0000',             -- Red
  yellow = '#ffff00',          -- Yellow
}

-- Helper function to set highlights
local function hi(group, opts)
  local cmd = 'hi ' .. group
  if opts.fg then cmd = cmd .. ' guifg=' .. opts.fg end
  if opts.bg then cmd = cmd .. ' guibg=' .. opts.bg end
  if opts.style then cmd = cmd .. ' gui=' .. opts.style end
  if opts.sp then cmd = cmd .. ' guisp=' .. opts.sp end
  vim.cmd(cmd)
end

-- Editor highlights
hi('Normal', { fg = colors.beige, bg = colors.dark_gray })
hi('Cursor', { bg = colors.light_green })
hi('CursorLine', { bg = colors.dark_blue })
hi('CursorLineNr', { fg = colors.beige })
hi('LineNr', { fg = colors.light_gray })
hi('Visual', { bg = colors.dark_blue })

-- Syntax highlights
hi('Comment', { fg = colors.light_gray })
hi('Constant', { fg = colors.olive })
hi('String', { fg = colors.olive })
hi('Character', { fg = colors.olive })
hi('Number', { fg = colors.olive })
hi('Boolean', { fg = colors.olive })
hi('Float', { fg = colors.olive })

hi('Identifier', { fg = colors.beige })
hi('Function', { fg = colors.beige })

hi('Statement', { fg = colors.gold })
hi('Conditional', { fg = colors.gold })
hi('Repeat', { fg = colors.gold })
hi('Label', { fg = colors.gold })
hi('Operator', { fg = colors.gold })
hi('Keyword', { fg = colors.gold })
hi('Exception', { fg = colors.gold })

hi('PreProc', { fg = colors.light_beige })
hi('Include', { fg = colors.light_beige })
hi('Define', { fg = colors.light_beige })
hi('Macro', { fg = colors.light_beige })
hi('PreCondit', { fg = colors.light_beige })

hi('Type', { fg = colors.beige })
hi('StorageClass', { fg = colors.beige })
hi('Structure', { fg = colors.beige })
hi('Typedef', { fg = colors.beige })

hi('Special', { fg = colors.light_beige })
hi('SpecialChar', { fg = colors.light_beige })
hi('Tag', { fg = colors.light_beige })
hi('Delimiter', { fg = colors.beige })
hi('SpecialComment', { fg = colors.light_gray })
hi('Debug', { fg = colors.red })

-- Special keywords (like IMPORTANT, NOTE, TODO)
hi('Todo', { fg = colors.red, style = 'bold,underline' })

-- Custom highlight groups for special comments
vim.cmd([[
  augroup HandmadeKeywords
    autocmd!
    autocmd Syntax * syn keyword handmadeImportant IMPORTANT STUDY containedin=.*Comment
    autocmd Syntax * syn keyword handmadeNote NOTE containedin=.*Comment
    autocmd Syntax * syn keyword handmadeTodo TODO XXX containedin=.*Comment
  augroup END
]])

hi('handmadeImportant', { fg = colors.yellow, style = 'bold,underline' })
hi('handmadeNote', { fg = colors.dark_green, style = 'bold,underline' })
hi('handmadeTodo', { fg = colors.red, style = 'bold,underline' })

-- UI elements
hi('Pmenu', { fg = colors.beige, bg = colors.dark_blue })
hi('PmenuSel', { fg = colors.light_green, bg = colors.dark_blue, style = 'bold' })
hi('StatusLine', { fg = colors.beige, bg = colors.dark_blue })
hi('StatusLineNC', { fg = colors.light_gray, bg = colors.dark_gray })
hi('VertSplit', { fg = colors.light_gray, bg = colors.dark_gray })
hi('Search', { fg = colors.dark_gray, bg = colors.yellow })
hi('IncSearch', { fg = colors.dark_gray, bg = colors.light_green })

-- Diagnostic highlights (for LSP)
hi('DiagnosticError', { fg = colors.red })
hi('DiagnosticWarn', { fg = colors.yellow })
hi('DiagnosticInfo', { fg = colors.light_beige })
hi('DiagnosticHint', { fg = colors.light_gray })

-- TreeSitter highlights (if available)
hi('@comment', { fg = colors.light_gray })
hi('@keyword', { fg = colors.gold })
hi('@string', { fg = colors.olive })
hi('@function', { fg = colors.beige })
hi('@variable', { fg = colors.beige })
hi('@type', { fg = colors.beige })
hi('@constant', { fg = colors.olive })
