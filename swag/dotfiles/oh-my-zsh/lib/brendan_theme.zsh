ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  node
  ruby          # Ruby section
  swift         # Swift section
  golang        # Go section
  docker        # Docker section
  aws           # Amazon Web Services section
  exec_time     # Execution time
  exit_code
  line_sep
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Backgound jobs indicator
  char          # Prompt character
)

#SPACESHIP_TIME_SHOW="true"
SPACESHIP_BATTERY_SHOW="false"
#SPACESHIP_PROMPT_SYMBOL="🦊"
#SPACESHIP_PROMPT_SYMBOL="\xef\x8a\x96 "
SPACESHIP_PROMPT_SYMBOL="\033[38;5;202m\xef\x8a\x96 "
SPACESHIP_EXIT_CODE_SHOW="true"
SPACESHIP_EXIT_CODE_SYMBOL="\n😱 "
SPACESHIP_PROMPT_ADD_NEWLINE="false"
SPACESHIP_PROMPT_PREFIXES_SHOW="false"

SPACESHIP_GIT_BRANCH_COLOR="cyan"
SPACESHIP_DIR_COLOR="magenta"
