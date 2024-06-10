" -----------------------------------------------------------------------------
if has('termguicolors')
    set termguicolors
else
    set t_Co=256			" Habilita 256 cores.
endif
" -----------------------------------------------------------------------------
"" Tema de cores e destaque de sintaxe.
colorscheme shine
"------------------------------------------------------------------------------
set noshowmode
set laststatus=2                       " Barra de status permanente.
" -----------------------------------------------------------------------------
set nocompatible                       " Inicia o Vim no modo incompatível com o Vi.
filetype plugin indent on              " Detecta indentação pelo tipo de arquivo.
syntax on                              " Habilita destaque de sintaxe.
set title                              " Exibe título na janela do terminal.
set encoding=utf-8                     " Define codificação de caracteres para UTF-8.
set backspace=indent,eol,start         " Habilita voltar apagando até a indentação,
"                                      " o fim da linha (juntando com a linha
"                                      " acima) e até o início da inserção.
set noerrorbells                       " Inibe a sinalização de erros.
set confirm                            " Exibe opções em comandos que resultem em erro.
set hidden                             " Permite ocultar o buffer corrente não salvo
set splitbelow				           " Abre novas janelas abaixo por padrão.
set splitright                         " Abre novas janelas à direita por padrão.
" set mouse=a                            " Habilita o uso do mouse em todos os modos
"------------------------------------------------------------------------------------------
set path=.,**                          " Define caminhos para buscas.
set noswapfile                         " Não cria arquivos temporários.
set nobackup                           " Não cria arquivos de backup.
set undodir=~/.vim/undodir             " Define onde os arquivos de undo serão criados.
set undofile                           " Habilita o undo persistente.
"------------------------------------------------------------------------------------------
set nowrap                             " Não quebra linhas longas por padrão.
set linebreak                          " Quebra linhas nas palavras.
set nolist                             " Não mostra indicadores de caracteres não-imprimíveis por padrão.
set listchars=tab:→·,space:·,eol:¬     " Caracteres para tabulações, espaços e fim de linha.
set fillchars=vert:│,fold:-,eob:~,lastline:@
"------------------------------------------------------------------------------------------
set number                             " Habilitando 'number' e 'relativenumber' o número
set relativenumber                     " da linha corrente é exibido em vez de 0.
set scrolloff=2                        " Quantidade de linhas visíveis antes e depois da atual.
set cursorline                         " Destaca a linha corrente.
"------------------------------------------------------------------------------------------
let &t_SI="\e[6 q"                     " Muda cursor para barra não piscante no modo insert.
let &t_EI="\e[2 q"                     " Muda o cursor para bloco não piscante no modo normal.
"------------------------------------------------------------------------------------------
set autoindent                         " Copia a indentação atual para a linha seguinte.
set smartindent                        " Habilita a indentação inteligente.
"------------------------------------------------------------------------------------------
set expandtab                          " Insere espaços com a tecla TAB.
set tabstop=4 
set softtabstop=4            		   " Define tamanho das tabulações para 4 espaços.
set shiftwidth=4                       " Insere ou remove recuo de 4 espaços.
"------------------------------------------------------------------------------------------
set ignorecase
set smartcase
set incsearch                          " Mostra os resultados da busca durante a digitação.
set hls
let @/ = ""
"------------------------------------------------------------------------------------------
set wildmenu                            "Mostra menu ao tentar completar comando com a tecla Tab.
set wildmode=longest,full
set wildoptions=pum
"------------------------------------------------------------------------------------------
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
set spelllang=en
" set nospell
"------------------------------------------------------------------------------------------



"let $RTP=split(&runtimepath, ',')[0]   " Define o caminho dos recursos do Vim.
"let $RC="$HOME/.vimrc"                 " Define o caminho e o nome do arquivo rc.
"
"
"set foldmethod=syntax                  " A dobra do código é definida pela sintaxe.
"
"" --- STATUS LINE ---
"
"function! UnloadStatusLine()
"    set showmode
"    set laststatus=0
"endfunction
"
"function! LoadStatusLine()
"
"
"    hi statusline cterm=NONE ctermfg=245 ctermbg=0
"    hi statuslinenc cterm=NONE ctermfg=8 ctermbg=0
"
"    au InsertEnter * hi statusline cterm=NONE ctermfg=0 ctermbg=10
"    au InsertLeave * hi statusline cterm=NONE ctermfg=7 ctermbg=0
"
"    let g:left_sep='⟩'    " Outros: ⟩ │ ┊
"    let g:right_sep='⟨'   " Outros: ⟨ │ ┊
"
"    let g:currentmode={
"        \ 'n'  : 'Normal',
"        \ 'no' : 'Normal-Operator Pending',
"        \ 'v'  : 'Visual',
"        \ 'V'  : 'V-Line',
"        \ '^V' : 'V-Block',
"        \ 's'  : 'Select',
"        \ 'S'  : 'S-Line',
"        \ '^S' : 'S-Block',
"        \ 'i'  : 'Insert',
"        \ 'R'  : 'Replace',
"        \ 'Rv' : 'V-Replace',
"        \ 'c'  : 'Command',
"        \ 'cv' : 'Vim Ex',
"        \ 'ce' : 'Ex',
"        \ 'r'  : 'Prompt',
"        \ 'rm' : 'More',
"        \ 'r?' : 'Confirm',
"        \ '!'  : 'Shell',
"        \ 't'  : 'Terminal'
"        \}
"
"    set statusline=\ %{toupper(g:currentmode[mode()])}
"    set statusline+=\ %{left_sep}
"    set statusline+=\ %n
"    set statusline+=\ %{left_sep}
"    set statusline+=\ %f%m\ %y
"    set statusline+=\ %{left_sep}
"    set statusline+=\ %{&ff}\ %{&fenc!=''?&fenc:&enc}
"    set statusline+=\ %{left_sep}
"    set statusline+=\ %=
"    set statusline+=\ %{right_sep}
"    set statusline+=\ %l/%L,%v
"    set statusline+=\ %{right_sep}
"    set statusline+=\ %P\ 
"
"endfunction
"
"call LoadStatusLine()
"
"" --- MAPPINGS ---
"
"" Buffer switching
"map <C-b> :bn<cr>
"imap <C-b> <C-o>:bn<cr>
"
"" Leader key...
"let mapleader = "," 
"
"" Toggle line number...
"map <leader>l :set number! relativenumber!<cr>
"
"" Make arrows and j and k move cursor by lines, instead of visual lines.
"map j gj
"map k gk
"map <down> gj
"map <up> gk
"imap <down> <C-o>gj
"imap <up> <C-o>gk
"
"" Toggle line wrapping...
"map <leader>w :set wrap!<CR>
"imap <F4> <C-o>:set wrap!<CR>
"
"" Toggle invisible chars...
"map <leader>i :set list!<CR>
"imap <F5> <C-o>:set list!<CR>
"
"" Toggle spell check...
"map <leader>s :set spell! spelllang=pt,en<CR>
"imap <F6> <C-o>:set spell! spelllang=pt,en<CR>
"map <leader>sn ]s
"map <leader>sp [s
"
"" Startup files...
"map <leader>br :e ~/.bashrc<cr>:set filetype=bash<cr>
"map <leader>ba :e ~/.bash_aliases<cr>:set filetype=bash<cr>
"map <leader>bf :e ~/.bash_functions<cr>:set filetype=bash<cr>
"map <leader>i3 :e ~/.config/i3/config<cr>
"
"" Move line up and down...
"nnoremap <C-A-Down> :m .+1<CR>==
"nnoremap <C-A-Up> :m .-2<CR>==
"inoremap <C-A-Down> <Esc>:m .+1<CR>==gi
"inoremap <C-A-Up> <Esc>:m .-2<CR>==gi
"vnoremap <C-A-Down> :m '>+1<CR>gv=gv
"vnoremap <C-A-Up> :m '<-2<CR>gv=gv
"
"" Abreviações...
"abbr _bash #!/usr/bin/env bash
"abbr _sh #!/bin/sh
"abbr _awk #!/usr/bin/env -S awk -f
"
