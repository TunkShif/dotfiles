test "$FISH_ROLE" = work; or return
status is-interactive; or return

alias iclaude="CLAUDE_CONFIG_DIR=~/.claude tclaude"
alias icodex="COLORTERM=truecolor GIT_TERMINAL_PROMPT=0 CODEX_HOME=~/.codex tcodex"
