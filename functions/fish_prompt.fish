function fish_prompt
    set -l last_status $status
    if set -q SSH_CONNECTION
        set_color $fish_color_user
        echo -n $USER
        set_color $fish_color_separator
        echo -n "@"
        set_color $fish_color_host
        echo -n (prompt_hostname)" " 
    end
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    if test $last_status -eq 0
      set_color $fish_color_separator
      echo -n " "
    else
      set_color $fish_color_separator_error
      echo -n "!"
    end
    echo -n "> "
    set_color normal
end
