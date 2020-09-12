syntax on

set clipboard=unnamedplus

colorscheme simple-dark
set termguicolors

" Refreshes the file if modified externally
" TODO Get autoread working
set autoread

" Setting up cursor settings
hi EditCursor guifg=darkgreen guibg=darkgreen
hi NavCursor guifg=darkred guibg=darkred
set guicursor=n-v-c:block-blinkon0-NavCursor,i:block-blinkon0-EditCursor

" Sample function that I'm using to just show that I can return a string
"function! SampleStatusLine()
"	return 'Test String'
"endfunction
"set statusline=
"set statusline+=%{SampleStatusLine()}

set statusline=
" Setting status line highlights to identify current window
hi StatusLine guifg=white guibg=darkgreen
hi StatusLineNC guifg=black guibg=darkred

" indentation
set autoindent

" set number " Uncomment to have normal line numbers
set number relativenumber
set nu rnu

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()syntax on
