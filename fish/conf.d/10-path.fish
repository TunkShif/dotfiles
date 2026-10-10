fish_add_path "$HOME/.local/bin"

# npm global install location: shared across node versions (mise), outside any node install dir.
# Exported so npm (and anything it spawns) uses it; no need for `prefix=` in ~/.npmrc.
set -gx NPM_CONFIG_PREFIX "$HOME/.local/share/npm-packages"
test -d "$NPM_CONFIG_PREFIX/bin"; or mkdir -p "$NPM_CONFIG_PREFIX/bin" "$NPM_CONFIG_PREFIX/lib"
fish_add_path "$NPM_CONFIG_PREFIX/bin"

# go: change default GOPATH
set -gx GOPATH "$HOME/.local/share/go"
fish_add_path "$GOPATH/bin"
