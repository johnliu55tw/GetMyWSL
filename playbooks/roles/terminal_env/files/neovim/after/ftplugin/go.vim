" Use tab instead of spaces for indentation
setlocal shiftwidth=4
setlocal tabstop=4
setlocal noexpandtab
" Only allow linters other than gopls
let g:ale_linters = {'go': ['gofmt', 'staticcheck']}
let g:ale_fixers = {'go': ['gofmt', 'goimports']}
