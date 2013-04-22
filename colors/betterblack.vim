set background=light

hi Normal guibg=#FFFFFF guifg=#000000 gui=NONE ctermbg=Black ctermfg=White cterm=NONE
" Coding 
hi String guibg=NONE guifg=#FF0000 gui=NONE ctermbg=NONE ctermfg=Red cterm=NONE
hi Comment guibg=NONE guifg=#FF7300 gui=NONE ctermbg=NONE ctermfg=Yellow cterm=NONE
hi Number guibg=NONE guifg=#C92040 gui=NONE ctermbg=NONE ctermfg=Red cterm=NONE
hi Function guibg=NONE guifg=#0Fef33 gui=NONE ctermbg=NONE ctermfg=Green cterm=NONE
hi Keyword guibg=NONE guifg=#0051FF gui=NONE ctermbg=NONE ctermfg=Blue cterm=NONE
hi Statement guibg=NONE guifg=#0052FF gui=NONE ctermbg=NONE ctermfg=Blue cterm=NONE
hi Identifier guibg=NONE guifg=#00ED45 gui=NONE ctermbg=NONE ctermfg=Green cterm=NONE
hi Type guibg=NONE guifg=#0052FF gui=NONE ctermbg=NONE ctermfg=Blue cterm=NONE
hi Todo guibg=#ffdddd guifg=#FF3300 gui=NONE ctermbg=NONE ctermfg=Yellow cterm=NONE
hi Title guibg=#000000 guifg=#FFFFFF gui=NONE ctermbg=NONE ctermfg=White cterm=NONE

" VIM gui 
hi LineNr guibg=#aaaaaa guifg=#4444ee gui=NONE ctermbg=DarkGray ctermfg=White cterm=NONE
hi NonText guibg=#ffffff guifg=#cccccc gui=NONE ctermbg=Black ctermfg=DarkGray cterm=NONE
hi PMenu guibg=#cccccc guifg=#FFFFFF gui=NONE ctermbg=DarkGray ctermfg=White cterm=NONE
hi PMenuSelect guibg=#cccccc guifg=#FFFFFF gui=NONE ctermbg=Black ctermfg=White cterm=NONE
hi VertSplit guibg=#888888 guifg=#999999 gui=NONE ctermbg=Black ctermfg=DarkGray cterm=NONE
hi Folded guibg=#f0f0f0 guifg=#224422 gui=NONE ctermbg=Black ctermfg=White cterm=NONE
hi FoldColumn guibg=#f0f0f0 guifg=#113322 gui=NONE ctermbg=Black ctermfg=Yellow cterm=NONE
hi PMenuThumb guibg=#000000 guifg=#EEFFAA gui=NONE ctermbg=Black ctermfg=Yellow cterm=NONE
hi MatchParen guibg=#99ff99 guifg=#22aa22 gui=NONE ctermbg=DarkGray ctermfg=White cterm=NONE
hi TabLineFill guibg=#000000 guifg=#FFFFFF gui=NONE ctermbg=Black ctermfg=White cterm=NONE
hi TabLineSel guibg=#cccccc guifg=#222222 gui=NONE ctermbg=DarkGray ctermfg=White cterm=NONE
hi TabLine guibg=#222222 guifg=#FFFFFF gui=NONE ctermbg=DarkGray ctermfg=White cterm=NONE
" hi StatusLine guibg=#222222 guifg=#FFFFFF gui=NONE ctermbg=DarkGray ctermfg=White cterm=NONE
" hi StatusLineNC guibg=#222222 guifg=#FFFFFF gui=NONE ctermbg=DarkGray ctermfg=White cterm=NONE
hi Search guibg=#FFFF22 guifg=#000000 gui=NONE ctermbg=Yellow ctermfg=Black cterm=NONE
hi IncSearch guibg=#AAAAFF guifg=#000000 gui=NONE ctermbg=Blue ctermfg=Black cterm=NONE
hi CursorLine guibg=#ccccff  gui=NONE ctermbg=NONE ctermfg=DarkGray cterm=NONE
hi CursorColumn guibg=#ccccff gui=NONE ctermbg=NONE ctermfg=DarkGray cterm=NONE
hi FoldColumn guibg=#ccffcc guifg=#222222 gui=NONE ctermbg=NONE ctermfg=White cterm=NONE
hi Visual guibg=#cccccc gui=NONE ctermbg=NONE ctermfg=DarkGray cterm=NONE
hi SignColumn guibg=#bbbbbb guifg=#111111 gui=NONE ctermbg=DarkGray ctermfg=White cterm=NONE
hi helpSpecial guibg=NONE guifg=#FFFF71
" PHP
hi link phpRegion Normal
hi link Delimiter Normal
hi link None String
hi link phpStringSingle String
hi link phpStringDouble String
hi link phpVarSelector Normal
hi link phpIdentifier Normal
hi link phpOperator Normal
hi link phpRelation Normal

" VIM
hi link vimCommentTitle Comment

" NERDTree
hi NERDTreeDir guibg=#ffffff guifg=#0052FF gui=NONE ctermbg=Black ctermfg=Blue cterm=NONE
hi NERDTreeLink guibg=#ffffff guifg=#00FFFF gui=NONE ctermbg=Black ctermfg=Cyan cterm=NONE
hi NERDTreePartFile guibg=#ffffff guifg=#222222 gui=NONE ctermbg=Black ctermfg=White cterm=NONE
hi NERDTreeOpenable guibg=#ffffff guifg=#222222 gui=NONE ctermbg=Black ctermfg=White cterm=NONE
hi NERDTreePart guibg=#ffffff guifg=#222222 gui=NONE ctermbg=Black ctermfg=White cterm=NONE
hi NERDTreeDirSlash guibg=#ffffff guifg=#0052FF gui=NONE ctermbg=Black ctermfg=White cterm=NONE
hi link NERDTreeHelp Comment

" Taglist
hi TaglistFileName guibg=#000000 guifg=#FFFFFF gui=italic ctermbg=Black ctermfg=White cterm=NONE
hi TaglistTagName guibg=#000000 guifg=#00ED45 gui=NONE ctermbg=Black ctermfg=Green cterm=NONE
hi TaglistTitle guibg=#000000 guifg=#FF0000 gui=NONE ctermbg=Black ctermfg=Red cterm=NONE
hi link TagListComment Comment

" TagBar
hi TagbarHighlight guibg=#333333 guifg=NONE gui=NONE  ctermbg=DarkGray ctermfg=NONE cterm=NONE

" Python
hi link PythonEscape String
hi link PythonDecorator PythonFunction
hi link pythonDocTestValue Normal

" MATLAB
hi link matlabSemicolon Normal
hi link matlabImplicit Normal
hi link matlabOperator Normal

" Markdown
hi link markdownItalic Normal
hi markdownH1 guibg=#ffffff guifg=#44FF44 gui=NONE ctermbg=Black ctermfg=Green cterm=NONE
hi markdownH2 guibg=#ffffff guifg=#BBFFBB gui=NONE ctermbg=Black ctermfg=Green cterm=NONE
hi markdownHeadingDelimiter NONE

" HTML
hi link htmlLink Normal

" Javascript
hi link Javascript Normal
hi link JavascriptSpecial String

" Vimdiff
hi DiffAdd guibg=#22FF22 guifg=#000000 gui=None ctermbg=DarkGreen ctermfg=Black cterm=NONE
hi DiffDelete guibg=#FF2222 guifg=#000000 gui=None ctermbg=DarkRed ctermfg=Black cterm=NONE
hi DiffChange guibg=#4444FF guifg=#000000 gui=None ctermbg=DarkBlue ctermfg=Black cterm=NONE
hi DiffText guibg=#8888FF guifg=#000000 gui=None ctermbg=Blue ctermfg=Black cterm=NONE

