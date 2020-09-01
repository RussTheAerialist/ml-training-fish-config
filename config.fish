source ~/.cargo/env

if test -e ~/.cargo/bin
    alias cat='~/.cargo/bin/bat'
    alias ls='~/.cargo/bin/exa --icons'
    alias ll='~/.cargo/bin/exa --icons -l'
    alias find='~/.cargo/bin/fd'
    alias ps='~/.cargo/bin/procs'
    alias sed='~/.cargo/bin/sd'
    alias du='~/.cargo/bin/dust'
    alias grep='~/.cargo/bin/rg'
    alias top='~/.cargo/bin/ytop'
end
