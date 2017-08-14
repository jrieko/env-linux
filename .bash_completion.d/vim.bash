#!/bin/bash
debug "file: ${BASH_SOURCE[0]}"
_vimBash() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$(ls -A ~/.bashrc.d/)" -- $cur) )
}

complete -F _vimBash .vim.bash
