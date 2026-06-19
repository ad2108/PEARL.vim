" Vim syntax file
" Language: OpenPEARL / PEARL 90
" Maintainer: Generated from PEARL 90 language report by ChatGpt
" Filename: syntax/openpearl.vim

if exists("b:current_syntax")
  finish
endif

syn case ignore

" ============================================================================
" Comments
" ============================================================================

syn keyword pearlTodo TODO FIXME XXX NOTE contained

syn region pearlComment start="/\*" end="\*/" contains=pearlTodo
syn match  pearlComment "!.*$"

" ============================================================================
" Strings
" ============================================================================

syn region pearlString start="'" skip="''" end="'"

" ============================================================================
" Numbers
" ============================================================================

syn match pearlInteger "\<\d\+\>"

syn match pearlFloat "\<\d\+\.\d*\([Ee][+-]\?\d\+\)\?\>"
syn match pearlFloat "\<\d\+[Ee][+-]\?\d\+\>"
syn match pearlFloat "\<\.\d\+\([Ee][+-]\?\d\+\)\?\>"

" ============================================================================
" Bit String Constants
" ============================================================================

syn match pearlBitConst "'[01]\+'B1\>"
syn match pearlBitConst "'[01]\+'B\>"
syn match pearlBitConst "'[0-3]\+'B2\>"
syn match pearlBitConst "'[0-7]\+'B3\>"
syn match pearlBitConst "'[0-9A-Fa-f]\+'B4\>"

" ============================================================================
" Time / Duration Constants
" ============================================================================

syn match pearlClock "\<\d\+:\d\+:\d\+\(\.\d\+\)\?\>"

syn match pearlDuration "\<\d\+\s\+HRS\>"
syn match pearlDuration "\<\d\+\s\+MIN\>"
syn match pearlDuration "\<\d\+\(\.\d\+\)\?\s\+SEC\>"

" ============================================================================
" Structure
" ============================================================================

syn keyword pearlStructure
      \ MODULE
      \ MODEND
      \ SYSTEM
      \ PROBLEM
      \ BEGIN
      \ END
      \ MAIN

" ============================================================================
" Declarations
" ============================================================================

syn keyword pearlDeclaration
      \ DCL
      \ DECLARE
      \ SPC
      \ SPECIFY
      \ IDENT
      \ GLOBAL
      \ INV
      \ INIT
      \ INITIAL
      \ TYPE
      \ LENGTH
      \ ENTRY
      \ CREATED

" ============================================================================
" Types
" ============================================================================

syn keyword pearlType
      \ BIT
      \ CHAR
      \ CHARACTER
      \ FIXED
      \ FLOAT
      \ CLOCK
      \ DURATION
      \ DUR
      \ REF
      \ STRUCT
      \ DATION
      \ SIGNAL
      \ SEMA
      \ BOLT
      \ INTERRUPT
      \ IRPT

" ============================================================================
" Procedures
" ============================================================================

syn keyword pearlProcedure
      \ PROC
      \ PROCEDURE
      \ CALL
      \ RETURN
      \ RETURNS

" ============================================================================
" Tasking
" ============================================================================

syn keyword pearlTask
      \ TASK
      \ ACTIVATE
      \ TERMINATE
      \ SUSPEND
      \ CONTINUE
      \ RESUME
      \ PREVENT
      \ AFTER
      \ AT
      \ ALL
      \ WHEN
      \ PRIORITY
      \ PRIO
      \ DURING
      \ CYCLIC
      \ NOCYCL

" ============================================================================
" Synchronization
" ============================================================================

syn keyword pearlSynchronization
      \ REQUEST
      \ RELEASE
      \ RESERVE
      \ FREE
      \ ENTER
      \ LEAVE

" ============================================================================
" Interrupt Handling
" ============================================================================

syn keyword pearlInterrupt
      \ ENABLE
      \ DISABLE
      \ TRIGGER
      \ INDUCE

" ============================================================================
" Control Flow
" ============================================================================

syn keyword pearlConditional
      \ IF
      \ THEN
      \ ELSE
      \ FIN
      \ CASE
      \ ALT
      \ OUT

syn keyword pearlRepeat
      \ FOR
      \ FROM
      \ BY
      \ TO
      \ FORWARD
      \ FORBACK
      \ REPEAT
      \ WHILE
      \ UNTIL
      \ EXIT
      \ GOTO

" ============================================================================
" I/O
" ============================================================================

syn keyword pearlIO
      \ READ
      \ WRITE
      \ GET
      \ PUT
      \ TAKE
      \ SEND
      \ OPEN
      \ CLOSE
      \ CONVERT
      \ STREAM
      \ NOSTREAM
      \ DIRECT
      \ INOUT
      \ IN
      \ OUT
      \ FROM
      \ TO
      \ BY
      \ RST

" ============================================================================
" Formats
" ============================================================================

syn keyword pearlFormat
      \ A
      \ B
      \ B1
      \ B2
      \ B3
      \ B4
      \ D
      \ E
      \ F
      \ R
      \ S
      \ LIST

" ============================================================================
" Positioning / Dation Options
" ============================================================================

syn keyword pearlIOOption
      \ ADV
      \ COL
      \ LINE
      \ PAGE
      \ POS
      \ SKIP
      \ SOP
      \ CAN
      \ PRM
      \ OLD
      \ NEW
      \ IDF
      \ ANY

" ============================================================================
" Operators (word form)
" ============================================================================

syn keyword pearlOperatorWord
      \ AND
      \ OR
      \ EXOR
      \ NOT
      \ IS
      \ ISNT
      \ CAT
      \ CSHIFT
      \ FIT
      \ REM

" ============================================================================
" Comparison Words
" ============================================================================

syn keyword pearlComparison
      \ LT
      \ LE
      \ EQ
      \ NE
      \ GE
      \ GT

" ============================================================================
" Builtins
" ============================================================================

syn keyword pearlBuiltin
      \ ABS
      \ ATAN
      \ COS
      \ DATE
      \ ENTIER
      \ EXP
      \ LN
      \ MAX
      \ MIN
      \ NIL
      \ NOW
      \ ROUND
      \ SIGN
      \ SIN
      \ SIZEOF
      \ SQRT
      \ TAN
      \ TRUNC

" ============================================================================
" Symbolic Operators
" ============================================================================

syn match pearlOperator ":="
syn match pearlOperator "\*\*"
syn match pearlOperator "//"
syn match pearlOperator "=="
syn match pearlOperator "/="
syn match pearlOperator "<="
syn match pearlOperator ">="
syn match pearlOperator "<>"
syn match pearlOperator "><"

" ============================================================================
" Labels
" ============================================================================

syn match pearlLabel "^\s*[A-Za-z][A-Za-z0-9_]*\s*:"
syn match pearlLabel "\<\zs[A-Za-z][A-Za-z0-9_]*\ze\s*:\s*\(PROC\|PROCEDURE\|TASK\|FORMAT\)\>"

" ============================================================================
" Highlight Links
" ============================================================================

hi def link pearlTodo             Todo

hi def link pearlComment          Comment
hi def link pearlString           String

hi def link pearlInteger          Number
hi def link pearlFloat            Float
hi def link pearlBitConst         Number
hi def link pearlClock            Number
hi def link pearlDuration         Number

hi def link pearlStructure        Structure
hi def link pearlDeclaration      StorageClass
hi def link pearlType             Type

hi def link pearlProcedure        Function

hi def link pearlTask             Statement
hi def link pearlSynchronization  Statement
hi def link pearlInterrupt        Statement
hi def link pearlIO               Statement

hi def link pearlConditional      Conditional
hi def link pearlRepeat           Repeat

hi def link pearlOperator         Operator
hi def link pearlOperatorWord     Operator
hi def link pearlComparison       Operator

hi def link pearlFormat           Special
hi def link pearlIOOption         Special

hi def link pearlBuiltin          Constant
hi def link pearlLabel            Label

let b:current_syntax = "openpearl"
