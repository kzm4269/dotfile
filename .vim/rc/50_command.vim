cnoremap w!! w !sudo tee > /dev/null %

if 1
  command! -range WordCount :%s/\%V./\0/gn |:noh
endif
