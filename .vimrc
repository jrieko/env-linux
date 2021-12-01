
colorscheme jellybeans
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
endif
let g:jellybeans_use_term_italics = 1

filetype plugin indent on
syntax on
set formatoptions-=t
set tabstop=2 shiftwidth=2 expandtab
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" search-replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
set ignorecase
set smartcase
set splitbelow
set splitright
set number
set backspace=indent,eol,start  " more powerful backspacing

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_stl_format = "[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_loc_list_height = 1
"let g:syntastic_aggregate_errors = 1
"let g:syntastic_id_checkers = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_auto_jump = 1
"" pending compatible with PEP-484
"let g:syntastic_mode_map = {
"  \ "mode": "active",
"  \ "passive_filetypes": ["python"] }
""let g:syntastic_chef_checkers = ['foodcritic']
""let g:syntastic_chef_foodcritic_args = "-I ~/.chef/foodcritic"
""let g:syntastic_ruby_checkers = ['rubocop']
"autocmd BufNewFile,BufRead */\(attributes\|definitions\|libraries\|providers\|recipes\|resources\)/*.rb set filetype=ruby.chef
"autocmd BufNewFile,BufRead */templates/*/*.erb set filetype=eruby.chef
"autocmd BufNewFile,BufRead */metadata.rb set filetype=ruby.chef
"autocmd BufNewFile,BufReadPost *.md,*.markdown set filetype=markdown
"autocmd BufNewFile,BufReadPost *.md,*.markdown let g:airline#extensions#whitespace#checks = [ 'indent', 'mixed-indent-file' ]
"autocmd BufNewFile,BufReadPost *.json set filetype=json

" Airline Config
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#syntastic#enabled = 1
"let g:airline_powerline_fonts = 1
"let g:airline_theme = 'base16_default'

" promptline.vim
"let g:promptline_preset = {
"  \'a' : [ promptline#slices#host() ],
"  \'b' : [ promptline#slices#user() ],
"  \'c' : [ promptline#slices#cwd() ],
"  \'y' : [ promptline#slices#vcs_branch() ],
"  \'warn' : [ promptline#slices#last_exit_code() ]}
