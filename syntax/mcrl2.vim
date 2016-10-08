if exists("b:current_syntax")
  finish
endif

syntax keyword  mCRL2Todo       TODO FIXME XXX NOTE contained

syntax match    mCRL2Comment    "%.*" contains=mCRL2Todo

syntax keyword  mCRL2Constant   delta false nil tau true

" Process labels
syntax keyword  mCRL2Label      act init proc
" Data labels
syntax keyword  mCRL2Label      cons eqn map sort var

" TODO: Categorize keywords
syntax keyword  mCRL2Keyword    hide rename comm allow
syntax keyword  mCRL2Keyword    div mod
syntax keyword  mCRL2Keyword    if end
syntax keyword  mCRL2Keyword    nu mu
syntax keyword  mCRL2Keyword    block delay exists forall glob in lambda
syntax keyword  mCRL2Keyword    pbes struct sum val whr yaled

syntax keyword  mCRL2Type       Bag Bool Int List Nat Pos Real Set

syntax match    mCRL2Id         "[A-Za-z_][A-Za-z_0-9']*"

syntax match    mCRL2Number     "0\|\([1-9][0-9]*\)"

highlight link mCRL2Todo        Todo
highlight link mCRL2Comment     Comment
highlight link mCRL2Constant    Constant
highlight link mCRL2Label       Label
highlight link mCRL2Keyword     Keyword
highlight link mCRL2Type        Type
highlight link mCRL2Id          Identifier
highlight link mCRL2Number      Number

let b:current_syntax = "mCRL2"
