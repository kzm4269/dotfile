augroup MyAutoCmd
  autocmd BufNewFile,BufRead *.md set filetype=markdown
  autocmd BufNewFile,BufRead *.tex set filetype=tex
  autocmd BufNewFile,BufRead *.json set filetype=json
  autocmd BufNewFile,BufRead *.plt set filetype=gnuplot
  autocmd BufNewFile,BufRead *.sage,*.pyx,*.spyx set filetype=python
  autocmd BufNewFile,BufRead *.scl set filetype=vhdl
  autocmd BufNewFile,BufRead *.conkyrc set filetype=conkyrc
  autocmd BufNewFile,BufRead conky.conf set filetype=conkyrc
  autocmd BufNewFile,BufRead *.jinja2,*.j2,*.jinja set filetype=html
augroup END
