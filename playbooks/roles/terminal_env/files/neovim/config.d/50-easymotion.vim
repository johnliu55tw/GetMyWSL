let g:EasyMotion_do_mapping = 0 " Disable defautl mappings
let g:EasyMotion_smartcase = 1 " Turn on case insensitive feature
" 'f' for Search first 2 characters
nmap f <Plug>(easymotion-overwin-w)
" 's' for Word motion
nmap s <Plug>(easymotion-overwin-f2)
" JK motions: Line motions
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
" Enhanced Search
map  / <Plug>(easymotion-sn)
