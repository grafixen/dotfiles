# Set username to consider a default context, which by default will not be shown.
# https://github.com/bhilburn/powerlevel9k/blob/next/segments/context/README.md
DEFAULT_USER='happy'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="clean"

# Set P9KGT background color, either 'light' or 'dark' (this should match the GNOME Terminal's theme).
# P9KGT_BACKGROUND='dark'
# if [[ $P9KGT_BACKGROUND != 'light' ]] && [[ $P9KGT_BACKGROUND != 'dark' ]]
#   then
#     P9KGT_ERROR=true
#     echo "P9KGT error: variable 'P9KGT_BACKGROUND' should be either 'light' or 'dark'"
# fi
#
# # Set P9KGT color scheme, either 'light', 'dark' or 'bright' (choose by preference).
# P9KGT_COLORS='bright'
# if [[ $P9KGT_COLORS != 'light' ]] && [[ $P9KGT_COLORS != 'dark' ]] && [[ $P9KGT_COLORS != 'bright' ]]
#   then
#     P9KGT_ERROR=true
#     echo "P9KGT error: variable 'P9KGT_COLORS' should be either 'light', 'dark' or 'bright'"
# fi
#
# # Set P9KGT fonts mode, either 'default', 'awesome-fontconfig', 'awesome-mapped-fontconfig', 'awesome-patched', 'nerdfont-complete' or 'nerdfont-fontconfig'.
# # https://github.com/bhilburn/powerlevel9k/wiki/About-Fonts
# P9KGT_FONTS='nerdfont-fontconfig'
# if [[ $P9KGT_FONTS != 'default' ]] && [[ $P9KGT_FONTS != 'awesome-fontconfig' ]] && [[ $P9KGT_FONTS != 'awesome-mapped-fontconfig' ]] &&
#     [[ $P9KGT_FONTS != 'awesome-patched' ]] && [[ $P9KGT_FONTS != 'nerdfont-complete' ]] && [[ $P9KGT_FONTS != 'nerdfont-fontconfig' ]]
#   then
#     P9KGT_ERROR=true
#     echo "P9KGT error: variable 'P9KGT_FONTS' should be either 'default', 'awesome-fontconfig', 'awesome-mapped-fontconfig', 'awesome-patched', 'nerdfont-complete' or 'nerdfont-fontconfig'"
#   else
#     POWERLEVEL9K_MODE=$P9KGT_FONTS
# fi
#
# if [[ $P9KGT_ERROR != true ]]
#   then
#
#     # Set P9KGT background color
#     if [[ $P9KGT_BACKGROUND == 'light' ]]
#       then
#         # https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt#light-color-theme
#         POWERLEVEL9K_COLOR_SCHEME='light'
#         P9KGT_TERMINAL_BACKGROUND=231
#     elif [[ $P9KGT_BACKGROUND == 'dark' ]]
#       then
#         POWERLEVEL9K_COLOR_SCHEME='dark'
#         P9KGT_TERMINAL_BACKGROUND=236
#     fi
#
#     # Set P9KGT foreground colors
#     if [[ $P9KGT_COLORS == 'light' ]]
#       then
#         P9KGT_RED=009
#         P9KGT_GREEN=010
#         P9KGT_YELLOW=011
#         P9KGT_BLUE=012
#     elif [[ $P9KGT_COLORS == 'dark' ]]
#       then
#         P9KGT_RED=001
#         P9KGT_GREEN=002
#         P9KGT_YELLOW=003
#         P9KGT_BLUE=004
#     elif [[ $P9KGT_COLORS == 'bright' ]]
#       then
#         P9KGT_RED=196
#         #P9KGT_GREEN=148
#         P9KGT_GREEN=154
#         P9KGT_YELLOW=220
#         P9KGT_BLUE=075
#     fi
#
#     # Customize prompt
#     # https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt#adding-newline-before-each-prompt
#     POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#     POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#     POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
#     POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "
#     # https://github.com/bhilburn/powerlevel9k/tree/next#customizing-prompt-segments
#     POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
#     POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status node_version custom_wifi_signal ip disk_usage background_jobs)
#
#     # Set 'context' segment colors
#     # https://github.com/bhilburn/powerlevel9k/blob/next/segments/context/README.md
#     POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=$P9KGT_YELLOW
#     POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=$P9KGT_YELLOW
#     POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND=$P9KGT_YELLOW
#     POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND=$P9KGT_YELLOW
#     POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND=$P9KGT_YELLOW
#     POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
#
#     # Set 'dir_writable' segment colors
#     # https://github.com/bhilburn/powerlevel9k/blob/next/segments/dir_writable/README.md
#     POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=$P9KGT_YELLOW
#     POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=$P9KGT_RED
#
#     # Set 'dir' segment colors
#     # https://github.com/bhilburn/powerlevel9k/blob/next/segments/dir/README.md
#     POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_DIR_HOME_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_DIR_ETC_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=$P9KGT_BLUE
#     POWERLEVEL9K_DIR_HOME_BACKGROUND=$P9KGT_BLUE
#     POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=$P9KGT_BLUE
#     POWERLEVEL9K_DIR_ETC_BACKGROUND=$P9KGT_BLUE
#
#     # Set 'vcs' segment colors
#     # https://github.com/bhilburn/powerlevel9k/blob/next/segments/vcs/README.md
#     POWERLEVEL9K_VCS_CLEAN_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_VCS_CLOBBERED_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_VCS_CLEAN_BACKGROUND=$P9KGT_GREEN
#     POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=$P9KGT_YELLOW
#     POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND=$P9KGT_RED
#     POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=$P9KGT_GREEN
#
#     # Set 'status' segment colors
#     # https://github.com/bhilburn/powerlevel9k/blob/next/segments/status/README.md
#     POWERLEVEL9K_STATUS_CROSS=true
#     POWERLEVEL9K_STATUS_OK_FOREGROUND=$P9KGT_GREEN
#     POWERLEVEL9K_STATUS_ERROR_FOREGROUND=$P9KGT_RED
#     POWERLEVEL9K_STATUS_OK_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_STATUS_ERROR_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
#
#     # Set 'root_indicator' segment colors
#     # https://github.com/bhilburn/powerlevel9k/blob/next/segments/root_indicator/README.md
#     POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND=$P9KGT_YELLOW
#     POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
#
#     # Set 'background_jobs' segment colors
#     # https://github.com/bhilburn/powerlevel9k/blob/next/segments/background_jobs/README.md
#     POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
#     POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=$P9KGT_YELLOW
#
#     POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
#     POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="white"
#     POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="black"
#
#     zsh_wifi_signal(){
#       local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
#       local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')
#
#       if [ "$airport" = "Off" ]; then
#         local color='%F{black}'
#         echo -n "%{$color%}Wifi Off"
#       else
#         local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
#         local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
#         local color='%F{black}'
#
#         [[ $speed -gt 100 ]] && color='%F{black}'
#         [[ $speed -lt 50 ]] && color='%F{red}'
#
#         echo -n "%{$color%}$speed Mbps \uf1eb%{%f%}" # removed char not in my PowerLine font
#       fi
#     }
# fi


# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
)

# Loads zsh-completions
autoload -U compinit && compinit

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Calling nvm use automatically in a directory with a .nvmrc file
autoload -U add-zsh-hook
function load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc


# ZSH & Fonts
. $ZSH/oh-my-zsh.sh
# . ~/.fonts/*.sh

### User configuration

# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Load External Aliases
for file in ~/.zsh/custom/*.zsh; do
    source "$file"
done

# Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ASDF
. $(brew --prefix asdf)/asdf.sh
