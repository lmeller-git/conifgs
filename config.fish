if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> PATH >>>
set -gx PATH $PATH /home/louis/.local/bin
set -gx PATH $PATH /home/linuxbrew/.linuxbrew/bin
set -gx PATH $PATH /home/louis/software/qemu/build
set -gx PATH $PATH /home/louis/Coding/term
# <<< PATH <<<

# >>> Software init >>>
export HELIX_RUNTIME=~/software/helix/runtime
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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/louis/miniconda3/bin/conda
    eval /home/louis/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/louis/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/louis/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/louis/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<
