setopt prompt_subst
# --- Colors ---
autoload -Uz colors && colors
autoload -Uz compinit
compinit

setopt menucomplete
setopt auto_list
setopt auto_menu

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

BLUE=$'%F{33}'
GREEN=$'%F{46}'
YELLOW=$'%F{226}'
RESET=$'%f'

# --- Force dark green text everywhere ---
echo -en "\033]10;#009900\007"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=120'

# --- LS colors ---
export LS_COLORS='di=34:fi=37'

# --- Function to get git branch ---
git_branch() {
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$branch" ]; then
    echo "${YELLOW}(${branch})${RESET}"
  fi
}

# --- Prompt ---
setopt prompt_subst

PROMPT='${BLUE}inialiyaar${RESET} ${BLUE}%~${RESET} $(git_branch) $ '
zle_highlight+=(suffix:fg=120)

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt inc_append_history
setopt share_history
