
if test -e ~/.cargo/env
    source ~/.cargo/env
end

if test -e ~/.cargo/bin/bat
    alias cat='~/.cargo/bin/bat'
end

if test -e ~/.cargo/bin/exa
    alias ls='~/.cargo/bin/exa --icons'
    alias ll='~/.cargo/bin/exa --icons -l'
end

if test -e ~/.cargo/bin/fd
    alias find='~/.cargo/bin/fd'
end

if test -e ~/.cargo/bin/procs
    alias ps='~/.cargo/bin/procs'
end

if test -e ~/.cargo/bin/sd
    alias sed='~/.cargo/bin/sd'
end

if test -e ~/.cargo/bin/dust
    alias du='~/.cargo/bin/dust'
end

if test -e ~/.cargo/bin/rg
    alias grep='~/.cargo/bin/rg'
end

if test -e ~/.cargo/bin/ytop
    alias top='~/.cargo/bin/ytop'
end
