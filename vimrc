call pathogen#infect()

set background=dark
set nocompatible
syntax on

filetype plugin indent on
set laststatus=2

" http://vim.wikia.com/wiki/Source_vimrc_and_use_tags_in_a_parent_directory
let parent=1
let local_tags = "tags"
while parent <= 8
  let local_tags = "../". local_tags
  exe ":set tags+=".local_tags
  let parent = parent+1
  " TODO: stop at the root on any system and also ~ on Unix.
endwhile
unlet parent

