test "$FISH_OS" = darwin; or return

# explicit `fish` arg: otherwise brew guesses the shell and may emit bash syntax
test -x /opt/homebrew/bin/brew; and /opt/homebrew/bin/brew shellenv fish | source
