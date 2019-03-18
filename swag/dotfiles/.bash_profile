
# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#   Change Prompt
#   ------------------------------------------------------------
#export PS1="\w\e \$(parse_git_branch) \e>$ \e "
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS2="> "
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced

# GIT
alias push='git push'
alias sudopush='git commit -am $1 && git push origin --tags'
alias pushtags='git push origin ---tags'
alias pull='git pull'
alias prune="git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
alias remote='git remote remove origin && sleep .5 && git remote add origin $1'
alias status='git branch && git status'
alias commit='git commit -am $1'

alias gitdriveby='git add --all; git commit -m "$(curl -s http://whatthecommit.com/index.txt ) (brought to you by gitdriveby: https://goo.gl/VNF1wJ)"; git push'
alias ohshitgit='open http://ohshitgit.com'

#cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
#alias cd='cd  && ll'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .2='cd ../..'
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias path='echo -e ${PATH//:/\\n}'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir
alias ll='ls -alG'
alias l='ls -alG'


alias editbash='nano ~/.bash_profile'
alias vibash='vi ~/.bash_profile'
alias vicvim='vi ~/.cvimrc'
alias backupbash='echo "Saving bash..." && ~/repos/personal/next-mac/dotfiles/auto-save-bash.sh'
alias vibackup='vi ~/repos/personal/next-mac/dotfiles/auto-save-bash.sh'

alias meteors='meteor --settings settings.json'


export GOPATH=$HOME/repos/go
export PATH=$PATH:$(go env GOPATH)/bin

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

###############
# Kube stuff
###############
export KUBE_EDITOR="nano"
# i2p.online
#alias i2pbash = "kubectl exec -it `kubectl get pods --selector=app=gitlab --namespace gitlab -o jsonpath='{.items[*].metadata.name}'` --namespace gitlab bash"
alias i2pbash='kubectl exec -it `kubectl get pods --selector=app=gitlab --namespace gitlab -o jsonpath="{.items[*].metadata.name}"` --namespace gitlab bash'

#tanuki.cloud
export KOPS_STATE_STORE=s3://clusters.aws.tanuki.cloud

### LAST EXPORT!
export PATH=~/bin:$PATH
source ~/.profile

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/brendan/google-cloud-sdk/path.bash.inc' ]; then source '/Users/brendan/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/brendan/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/brendan/google-cloud-sdk/completion.bash.inc'; fi

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/opt/postgresql@9.6/bin:/usr/local/opt/node@8/bin:$PATH"
