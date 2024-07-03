" Maintainer:  https://github.com/DuckyShine004
" Last Change: 02/07/2024

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "matrix"

" Define bright green and background colors directly for easier access
let s:bright_green_gui = "#00FF00"
let s:bright_green_cterm = "46"
let s:dark_green_gui = "#008000"  
let s:dark_green_cterm = "22"
let s:white_gui = "#FFFFFF"
let s:white_cterm = "256"
let s:dark_background_gui = "#000000"
let s:dark_background_cterm = "0"

" Function to set highlights
function! s:h(group, fg_gui, fg_cterm, bg_gui, bg_cterm)
  execute "highlight " . a:group
        \ " guifg=" . a:fg_gui
        \ " guibg=" . a:bg_gui
        \ " ctermfg=" . a:fg_cterm
        \ " ctermbg=" . a:bg_cterm
endfunction

" Apply the bright green color to all text and dark background to all areas
call s:h('Normal', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Comment', s:dark_green_gui, s:dark_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Constant', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Identifier', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Statement', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('PreProc', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Type', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Special', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Underlined', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Todo', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Error', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('CursorLine', s:bright_green_gui, s:bright_green_cterm, 'NONE', 'NONE')
call s:h('Visual', s:white_gui, s:white_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Search', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('NonText', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('LineNr', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('CursorLineNr', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('MatchParen', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('VertSplit', s:dark_green_gui, s:dark_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('StatusLine', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('StatusLineNC', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Title', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Pmenu', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('PmenuSel', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('TabLine', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('TabLineSel', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('TabLineFill', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('ColorColumn', s:dark_background_gui, s:dark_background_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('CursorColumn', s:dark_background_gui, s:dark_background_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('Cursor', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('DiffAdd', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('DiffChange', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('DiffDelete', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)
call s:h('DiffText', s:bright_green_gui, s:bright_green_cterm, s:dark_background_gui, s:dark_background_cterm)

" restore &background's value in case changing Normal changed &background (:help :hi-normal-cterm)
if &background != 'dark'
   set background=dark
endif

