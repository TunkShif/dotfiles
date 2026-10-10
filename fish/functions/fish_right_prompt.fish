function fish_right_prompt
  if set -q SSH_CONNECTION; or set -q SSH_CLIENT; or set -q SSH_TTY
    set -l white (set_color white)
    set -l normal (set_color normal)
    set -l ssh_host (prompt_hostname)
    echo -n -s $white '[' $ssh_host ']' $normal
  end
end
