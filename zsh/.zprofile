
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# Load machine-specific overrides.
if [ -f "${ZDOTDIR:-$HOME}/.zprofile.local" ]; then
    . "${ZDOTDIR:-$HOME}/.zprofile.local"
fi
