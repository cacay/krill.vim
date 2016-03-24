" Vim syntax file
" Language:     Krill
" Maintainer:   Josh Acay <coskuacay@gmail.com>
" Last Change:  Novermber 15, 2015
"
" Version:      1.0
" Url:          TODO
"
" Original Author: Josh Acay <coskuacay@gmail.com>


if exists("b:current_syntax")
  finish
endif


" Identifiers
syn match krillConstructor "\<[A-Z][a-zA-Z0-9_]*\>"
" syn match krillIdent       "\<[a-z][a-zA-Z0-9_]*\>"
syn match krillChannel     "`[a-z][a-zA-Z0-9_]*"

" Reserved symbols--cannot be overloaded.
syn match krillDelimiter  "(\|)\|\[\|\]\|,\|;\|_\|{\|}"



" Structural keywords
syn keyword krillModule module
syn keyword krillTypedef data type
syn keyword krillStructure where
syn keyword krillStatement do let in

" Process keywords
syn keyword krillProcess close wait send recv case of

" Operators
syn keyword krillType 1
syn keyword krillOperator and or & + * -o . -> <-
syn match krillOperator ":\|&\|\*\|+\|-o\|\.\|->\|<-"


" Comments
syn keyword krillCommentTodo TODO FIXME XXX TBD contained
syn match krillLineComment "---*\(.*\)\?$" contains=krillCommentTodo,@Spell
syn region krillBlockComment start="{-"  end="-}" contains=krillBlockComment,krillCommentTodo,@Spell


" Mapping
hi link krillModule            krillStructure
hi link krillStructure         Structure
hi link krillStatement         Statement
hi link krillTypedef           Typedef

hi link krillConstructor       Type
hi link krillType              Type
" hi link krillIdent             Identifier
hi link krillChannel           Identifier
hi link krillProcess           Keyword

hi link krillOperator          Operator

hi link krillBlockComment      krillComment
hi link krillLineComment       krillComment
hi link krillComment           Comment
" hi link krillFunction          Function

let b:current_syntax = "krill"
