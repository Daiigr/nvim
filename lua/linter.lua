require('lint').linters_by_ft = {
  markdown = {'vale',}
  c = {'compiler',}
}
au BufWritePost * lua require('lint').try_lint()
