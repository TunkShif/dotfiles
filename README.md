# dotfiles

My config files, managed by git. Works on macOS and Arch Linux.

Current content:

- `fish/` — fish shell config

## Setup

1. Clone this repo:

```sh
git clone git@github.com:TunkShif/dotfiles.git ~/Dotfiles
```

2. Link fish config:

```sh
ln -s ~/Dotfiles/fish ~/.config/fish
```

3. Install [fisher](https://github.com/jorgebucaran/fisher) plugins (listed in `fish/fish_plugins`):

```fish
fisher update
```

## First use: set machine role

This config uses roles to load different settings per machine.

Run once on each new machine:

```fish
set -U FISH_ROLE work
```

or:

```fish
set -U FISH_ROLE personal
```

- `work` — office work machine (loads `conf.d/50-tools-work.fish`)
- `personal` — home PC (loads `conf.d/50-tools-personal.fish`, defaults to this if unset)

## How it works

Two global vars control behavior:

- `FISH_OS` — set in `conf.d/00-profile.fish` from `uname -s` (`darwin` / `linux`)
- `FISH_ROLE` — `work` or `personal`, stored as a universal var

Files in `fish/conf.d/` load in name order:

| File | Purpose |
| ---- | ------- |
| `00-profile.fish` | Sets `FISH_OS` and default `FISH_ROLE` |
| `05-homebrew-darwin.fish` | macOS only: loads Homebrew env |
| `10-path.fish` | `PATH`, npm prefix, `GOPATH` |
| `20-env.fish` | `EDITOR`, Erlang shell history |
| `50-tools.fish` | Shared tools: zoxide, atuin, fzf (interactive only) |
| `50-tools-work.fish` | Work-only tools (interactive only) |
| `50-tools-personal.fish` | Personal-only tools (e.g. OrbStack) |
| `60-abbr.fish` | Abbreviations (interactive only) |
