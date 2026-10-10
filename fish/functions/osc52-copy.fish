function osc52-copy --description "Copy text through OSC 52"
    argparse -n osc52-copy 'h/help' -- $argv
    or return 2

    if set -q _flag_help
        printf '%s\n' \
            'Usage:' \
            '  osc52-copy [OPTIONS] [TEXT ...]' \
            '  COMMAND | osc52-copy' \
            '' \
            'Copy text to the local terminal clipboard using OSC 52.' \
            '' \
            'With TEXT arguments, joins them with spaces and copies the result.' \
            'With no TEXT arguments, reads the content to copy from standard input.' \
            '' \
            'Options:' \
            '  -h, --help  Show this help message and exit' \
            '  --          Treat all following arguments as text' \
            '' \
            'Examples:' \
            '  osc52-copy "hello world"' \
            '  osc52-copy hello world' \
            '  osc52-copy -- "-text beginning with a dash"' \
            '  printf %s "hello world" | osc52-copy' \
            '  cat file.txt | osc52-copy'
        return 0
    end

    if test (count $argv) -gt 0
        printf '%s' (string join ' ' -- $argv) | base64 | tr -d '\r\n' | read -z data
    else
        base64 | tr -d '\r\n' | read -z data
    end

    or begin
        printf 'osc52-copy: failed to encode input\n' >&2
        return 1
    end

    printf '\e]52;c;%s\a' "$data"
end
