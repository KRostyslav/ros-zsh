################################################################
# Based on tutorial
# https://blog.carbonfive.com/writing-zsh-themes-a-quickref/
################################################################
# Based on robbyrussell theme
# https://github.com/robbyrussell 
################################################################

# Main prompt
################################################################

# Icons from https://graphemica.com/categories/other-symbol


# Returns the current directory and its parent directory.
local home="%2/" 

# Return username
local user="%n" 

# Add colors and styles
# Text color: %F{black}
# Reset text color: %f
# Background color: %K{black}
# Reset background color: %k
# Reset both text and background color: %{$reset_color%}
# Start boldface: %B
# Stop boldface: %b
# Start underline: %U
# Stop underline: %u
# Start standout: %S
# Stop standout: %s

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}🗁  ${home}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}|%{$fg[red]%}✗%{$fg[blue]%})%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}|%{$fg[green]%}🗹 %{$fg[blue]%})%{$fg[yellow]%}"		

# Right prompt
################################################################

# Returns the current time in 24-hour format with seconds.
local time="%*"

# Add colors and styles
local right="[%{%K{white}%F{black}%}⌚ $time %f%k]"

RPROMPT="${right}"
