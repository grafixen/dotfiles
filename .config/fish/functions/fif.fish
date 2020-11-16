# ~/.config/fish/functions/fif.fish
function fif
  if test $argv -gt 0
    echo "Need a string to search for!"; return 1;
  end
  rg -i --files-with-matches --no-messages $argv | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
end
