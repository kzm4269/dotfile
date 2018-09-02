cnoremap w!! w !sudo tee > /dev/null %

if 1
  command! -range WordCount :%s/\%V./\0/gn |:noh
  command! -range Ej :<line1>,<line2>w !gt -s en -d ja
  command! -range Je :<line1>,<line2>w !gt -s en -d ja
endif
