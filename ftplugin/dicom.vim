" Standard starter stuff
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

" Could add in the ability to modify the original file metadata instead of just being readonly
setlocal readonly

autocmd BufReadPost <buffer> silent %!dcmdump -M +uc "%"
