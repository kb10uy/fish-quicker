bind \cf 'quicker_fast_travel'
bind \cq 'quicker_quick_draw'

function quicker_fast_travel
  set target ( \
    cat "$QUICKER_FAST_TRAVEL" | \
    fzf -d ':' --with-nth 1 --height 30% --border --preview 'exa -la (eval {1})' \
  )
  commandline "cd $target"
  commandline -f repaint
end

function quicker_quick_draw
  set target ( \
    cat "$QUICKER_QUICK_DRAW" | \
    fzf -d ':' --with-nth 1 --height 30% --border --preview 'exa -la .' \
  )
  commandline $target
  commandline -f repaint
end
