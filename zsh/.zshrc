# ------------------------------------------
# HISTORY
# ------------------------------------------

# Arquivo onde os comandos serão armazenados.
HISTFILE="$HOME/.zsh_history"

# Quantidade de comandos mantidos na memória.
HISTSIZE=10000

# Quantidade de comandos salvos no arquivo.
SAVEHIST=10000

# Ativa histórico estendido.
setopt EXTENDED_HISTORY

# Compartilha histórico entre terminais.
setopt SHARE_HISTORY

# Evita duplicações consecutivas.
setopt HIST_IGNORE_DUPS

# Remove espaços extras no início dos comandos.
setopt HIST_REDUCE_BLANKS


# ------------------------------------------
# SHELL OPTIONS
# ------------------------------------------

# Permite utilizar atalhos de teclado estilo Emacs.
bindkey -e

# Não fecha o terminal com Ctrl+D acidentalmente.
setopt IGNORE_EOF

# Permite expandir variáveis dentro do prompt.
setopt PROMPT_SUBST


# ------------------------------------------
# COMPLETION
# ------------------------------------------

# Carrega o sistema de autocompletar.
autoload -Uz compinit
compinit

# Autocompletar com menu de seleção.
zstyle ':completion:*' menu select

# Ignora diferenças entre maiúsculas e minúsculas.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Cores no menu de autocompletar.
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"


# ------------------------------------------
# COLORS
# ------------------------------------------

# Cores para comandos como ls.
autoload -Uz colors
colors

# Sugestões discretas em cinza.
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'


# ------------------------------------------
# GIT INFORMATION
# ------------------------------------------

# Mostra a branch Git no prompt.
autoload -Uz vcs_info

zstyle ':vcs_info:git:*' formats ' %F{magenta}(%b)%f'

# Atualiza informações antes de cada prompt.
precmd() {
    vcs_info
}


# ------------------------------------------
# PROMPT
# ------------------------------------------

# Primeira linha: usuário, computador e diretório.
# Segunda linha: símbolo de entrada.
PROMPT='%F{magenta}%n@%m%f %F{blue}%~%f${vcs_info_msg_0_}
%F{magenta}❯%f '


# ------------------------------------------
# ALIASES
# ------------------------------------------

alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# Atalhos para atualizar o Debian.
alias update='sudo apt update'
alias upgrade='sudo apt update && sudo apt upgrade'


# ------------------------------------------
# PLUGINS
# ------------------------------------------

# Sugestões automáticas baseadas no histórico.
source "$HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Destaque de sintaxe.
# IMPORTANTE: deve ser carregado por último.
source "$HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
