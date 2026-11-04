if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Load machine-specific overrides.
if [ -f "$HOME/.bash_profile.local" ]; then
    . "$HOME/.bash_profile.local"
fi
