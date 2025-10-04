if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> PATH >>>
# <<< PATH <<<

# >>> Software init >>>
fzf --fish | source
zoxide init fish --cmd cd | source
starship init fish | source
# <<< Software init <<<

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# >>> custom aliases >>>
alias ls='eza'
alias lsa='ls -lAh --color=auto'
# <<< custom aliases <<<
