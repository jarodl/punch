let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <M-Down> }
inoremap <D-Down> <C-End>
imap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
inoremap <S-Tab> 
imap <silent> <D-f> <Plug>LookupFile
cnoremap <Right>  <BS><Right>
cnoremap <Left>  <BS><Left>
inoremap <Up> gk
inoremap <Down> gj
map! <D-v> *
map  0
map  $
map + :IncrementNumber
map ,s :call StripWhitespace ()
map ,w :call Browser ()
map ,l :exec ':set ft=' . &filetype
map ,c :e ~/.carl_uris
map ,t :FuzzyFinderTextMate
map ,h :so ~/.vim/heroku.vim
map ,d :e %:h/
map ,f :tabnew <cfile>
nmap K <Plug>ManPageView
vnoremap Q gq
nnoremap Q gqap
vmap [% [%m'gv``
vmap ]% ]%m'gv``
map _ :DecrementNumber
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
vnoremap j gj
nnoremap j gj
vnoremap k gk
nnoremap k gk
map <M-Down> }
noremap <D-Down> <C-End>
map <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nmap <silent> <D-f> <Plug>LookupFile
vnoremap <Up> gk
vnoremap <Down> gj
nnoremap <Up> gk
nnoremap <Down> gj
map <M-F7> :copen
map <S-F7> :cp
map <F7> :cn
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
imap  0
imap  $
imap 	 
imap  =CtrlXPP()
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=2
set backupcopy=yes
set backupdir=~/.vim/backup
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set cmdheight=2
set confirm
set directory=~/.vim/swap//,.,~/tmp,/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set formatoptions=tcqn
set helplang=en
set history=1000
set ignorecase
set incsearch
set iskeyword=@,48-57,_,192-255,_,$,@,%,#,-
set laststatus=2
set listchars=trail:.,tab:>.
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set report=0
set ruler
set shiftwidth=2
set shortmess=filtIoOA
set showmatch
set smartindent
set nostartofline
set tabpagemax=50
set tabstop=2
set termencoding=utf-8
set textwidth=80
set viminfo='1000,f1,:100,@100,/20
set virtualedit=block
set visualbell
set whichwrap=b,s,<,>,h,l,[,]
set wildmenu
set wildmode=list:longest,full
set window=51
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/Repositories/punch
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +2 punch.rb
badd +10 views/index.haml
badd +1 views/fail.haml
badd +1 bin/client.rb
badd +253 ~/.vim/plugin/sessionman.vim
badd +0 views/new.haml
silent! argdel *
edit punch.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
iabbr <buffer> module moduleend<Up>$
iabbr <buffer> def defend<Up>$
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,_,$,@,%,#,-
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,/usr/include,,.,/usr/local/lib/ruby/site_ruby/1.8,/usr/local/lib/ruby/site_ruby/1.8/i686-darwin10.0.0,/usr/local/lib/ruby/site_ruby,/usr/local/lib/ruby/vendor_ruby/1.8,/usr/local/lib/ruby/vendor_ruby/1.8/i686-darwin10.0.0,/usr/local/lib/ruby/vendor_ruby,/usr/local/lib/ruby/1.8,/usr/local/lib/ruby/1.8/i686-darwin10.0.0,,~/.gem/ruby/1.8/gems/actionmailer-2.2.2/lib,~/.gem/ruby/1.8/gems/actionpack-2.2.2/lib,~/.gem/ruby/1.8/gems/activerecord-2.2.2/lib,~/.gem/ruby/1.8/gems/activeresource-2.2.2/lib,~/.gem/ruby/1.8/gems/activesupport-2.2.2/lib,~/.gem/ruby/1.8/gems/jamis-fuzzy_file_finder-1.0.4/lib,~/.gem/ruby/1.8/gems/rails-2.2.2/lib,/usr/local/lib/ruby/gems/1.8/gems/actionmailer-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/actionmailer-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/actionpack-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/actionpack-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/activerecord-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/activerecord-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/activeresource-
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 44 - ((43 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 04l
tabedit bin/client.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
iabbr <buffer> module moduleend<Up>$
iabbr <buffer> def defend<Up>$
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,_,$,@,%,#,-
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,/usr/include,,.,~/.rip/active/lib,/usr/local/lib/ruby/site_ruby/1.8,/usr/local/lib/ruby/site_ruby/1.8/i686-darwin10.0.0,/usr/local/lib/ruby/site_ruby,/usr/local/lib/ruby/vendor_ruby/1.8,/usr/local/lib/ruby/vendor_ruby/1.8/i686-darwin10.0.0,/usr/local/lib/ruby/vendor_ruby,/usr/local/lib/ruby/1.8,/usr/local/lib/ruby/1.8/i686-darwin10.0.0,,~/.gem/ruby/1.8/gems/actionmailer-2.2.2/lib,~/.gem/ruby/1.8/gems/actionpack-2.2.2/lib,~/.gem/ruby/1.8/gems/activerecord-2.2.2/lib,~/.gem/ruby/1.8/gems/activeresource-2.2.2/lib,~/.gem/ruby/1.8/gems/activesupport-2.2.2/lib,~/.gem/ruby/1.8/gems/jamis-fuzzy_file_finder-1.0.4/lib,~/.gem/ruby/1.8/gems/rails-2.2.2/lib,/usr/local/lib/ruby/gems/1.8/gems/actionmailer-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/actionmailer-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/actionpack-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/actionpack-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/activerecord-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/activerecord-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/ge
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit views/index.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
iabbr <buffer> module moduleend<Up>$
iabbr <buffer> def defend<Up>$
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=6
setlocal foldmarker={{{,}}}
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=getline(v:foldstart)
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,_,$,@,%,#,-
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,/usr/include,,.,/usr/local/lib/ruby/site_ruby/1.8,/usr/local/lib/ruby/site_ruby/1.8/i686-darwin10.0.0,/usr/local/lib/ruby/site_ruby,/usr/local/lib/ruby/vendor_ruby/1.8,/usr/local/lib/ruby/vendor_ruby/1.8/i686-darwin10.0.0,/usr/local/lib/ruby/vendor_ruby,/usr/local/lib/ruby/1.8,/usr/local/lib/ruby/1.8/i686-darwin10.0.0,,~/.gem/ruby/1.8/gems/actionmailer-2.2.2/lib,~/.gem/ruby/1.8/gems/actionpack-2.2.2/lib,~/.gem/ruby/1.8/gems/activerecord-2.2.2/lib,~/.gem/ruby/1.8/gems/activeresource-2.2.2/lib,~/.gem/ruby/1.8/gems/activesupport-2.2.2/lib,~/.gem/ruby/1.8/gems/jamis-fuzzy_file_finder-1.0.4/lib,~/.gem/ruby/1.8/gems/rails-2.2.2/lib,/usr/local/lib/ruby/gems/1.8/gems/actionmailer-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/actionmailer-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/actionpack-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/actionpack-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/activerecord-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/activerecord-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/activeresource-
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 10 - ((9 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 015l
tabedit views/new.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
iabbr <buffer> module moduleend<Up>$
iabbr <buffer> def defend<Up>$
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=6
setlocal foldmarker={{{,}}}
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=getline(v:foldstart)
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,_,$,@,%,#,-
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,/usr/include,,.,/usr/local/lib/ruby/site_ruby/1.8,/usr/local/lib/ruby/site_ruby/1.8/i686-darwin10.0.0,/usr/local/lib/ruby/site_ruby,/usr/local/lib/ruby/vendor_ruby/1.8,/usr/local/lib/ruby/vendor_ruby/1.8/i686-darwin10.0.0,/usr/local/lib/ruby/vendor_ruby,/usr/local/lib/ruby/1.8,/usr/local/lib/ruby/1.8/i686-darwin10.0.0,,~/.gem/ruby/1.8/gems/actionmailer-2.2.2/lib,~/.gem/ruby/1.8/gems/actionpack-2.2.2/lib,~/.gem/ruby/1.8/gems/activerecord-2.2.2/lib,~/.gem/ruby/1.8/gems/activeresource-2.2.2/lib,~/.gem/ruby/1.8/gems/activesupport-2.2.2/lib,~/.gem/ruby/1.8/gems/jamis-fuzzy_file_finder-1.0.4/lib,~/.gem/ruby/1.8/gems/rails-2.2.2/lib,/usr/local/lib/ruby/gems/1.8/gems/actionmailer-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/actionmailer-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/actionpack-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/actionpack-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/activerecord-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/activerecord-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/activeresource-
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 3 - ((2 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 02l
tabedit views/fail.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
iabbr <buffer> module moduleend<Up>$
iabbr <buffer> def defend<Up>$
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=6
setlocal foldmarker={{{,}}}
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=getline(v:foldstart)
setlocal formatexpr=
setlocal formatoptions=ncroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,_,$,@,%,#,-
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,/usr/include,,.,~/.rip/active/lib,/usr/local/lib/ruby/site_ruby/1.8,/usr/local/lib/ruby/site_ruby/1.8/i686-darwin10.0.0,/usr/local/lib/ruby/site_ruby,/usr/local/lib/ruby/vendor_ruby/1.8,/usr/local/lib/ruby/vendor_ruby/1.8/i686-darwin10.0.0,/usr/local/lib/ruby/vendor_ruby,/usr/local/lib/ruby/1.8,/usr/local/lib/ruby/1.8/i686-darwin10.0.0,,~/.gem/ruby/1.8/gems/actionmailer-2.2.2/lib,~/.gem/ruby/1.8/gems/actionpack-2.2.2/lib,~/.gem/ruby/1.8/gems/activerecord-2.2.2/lib,~/.gem/ruby/1.8/gems/activeresource-2.2.2/lib,~/.gem/ruby/1.8/gems/activesupport-2.2.2/lib,~/.gem/ruby/1.8/gems/jamis-fuzzy_file_finder-1.0.4/lib,~/.gem/ruby/1.8/gems/rails-2.2.2/lib,/usr/local/lib/ruby/gems/1.8/gems/actionmailer-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/actionmailer-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/actionpack-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/actionpack-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/gems/activerecord-2.3.3/lib,/usr/local/lib/ruby/gems/1.8/gems/activerecord-2.3.4/lib,/usr/local/lib/ruby/gems/1.8/ge
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filtIoOA
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
