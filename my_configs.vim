" You can install llvm by following the Automatic installation script section of this 
" instructions:
"   https://apt.llvm.org/
" Uncomment this line if you added the llvm bin (e.g., /usr/lib/llvm-15/bin/clang) 
" to $PATH
"Glaive codefmt clang_format_executable="clang-format-15"
Glaive codefmt clang_format_style="google"

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer black
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
  autocmd FileType swift AutoFormatBuffer swift-format
augroup END

set cc=88

let g:ale_linters = {'python': ['mypy', 'ruff']}
