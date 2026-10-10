if status is-interactive
  # disable fish shell greeting prompt
  set fish_greeting

  fish_config theme choose catppuccin-macchiato
end

# mise should be activated after all PATH modifications
mise activate fish | source
