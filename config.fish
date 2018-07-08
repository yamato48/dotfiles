# 起動時の文章
set fish_greeting

# vi mode
fish_vi_key_bindings


##################################################
# git
set git_dirty_color red
set git_not_dirty_color green

function parse_git_branch
  set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  set -l git_diff (git diff)

  if test -n "$git_diff"
    echo (set_color $git_dirty_color)$branch(set_color normal)
  else
    echo (set_color $git_not_dirty_color)$branch(set_color normal)
  end
end

# prompt
function fish_prompt
  #コマンド失敗時変化
  if [ $status -eq 0 ]
    set status_owata (set_color normal)"＼(^o^)／ < "
  else
    set status_owata (set_color red)"／(^o^)＼ < "
  end

  set -l git_dir (git rev-parse --git-dir 2> /dev/null)
  set prompt (set_color brgreen)(prompt_pwd)

  if test -n "$git_dir"
    echo $prompt [(parse_git_branch)]
    echo $status_owata
  else
    echo $prompt
    echo $status_owata
  end
end

function fish_right_prompt
    date '+%y/%m/%d %H:%M'
end
