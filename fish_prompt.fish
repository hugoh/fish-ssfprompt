set fish_prompt_pwd_dir_length 0

set fish_color_user blue
set fish_color_host green
set fish_color_cwd cyan
set fish_color_separator yellow

set __fish_git_prompt_show_informative_status 1
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showupstream 'auto'

if set -q SSH_CONNECTION
  set __fish_prompt_hostname (prompt_hostname)
else
  set __fish_prompt_hostname ''
end

function fish_prompt
    set_color $fish_color_user
    echo -n $USER
    set_color $fish_color_separator
    echo -n "@"
    set_color $fish_color_host
    echo -n $__fish_prompt_hostname " "
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color $fish_color_separator
    echo -n " > "
    set_color normal
end

function fish_right_prompt
  __fish_git_prompt "%s"
end
