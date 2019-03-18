alias finder='ofd'
alias backup='/Users/brendan/repos/personal/next-mac/dotfiles/auto-save-bash.sh'
alias restart_bluetooth='/Users/brendan/repos/personal/next-mac/dotfiles/restart_bluetooth.sh'

alias reset='clear && source ~/.zshrc'
alias cs='curl cht.sh/$1'
alias path="echo $PATH | tr : '\n'"
alias serve="python -m SimpleHTTPServer 8000"
alias sshu="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $1"
alias devgl='ssh -i "~/.ssh/customer-success.pem" ubuntu@ec2-52-18-102-13.eu-west-1.compute.amazonaws.com'

alias upstream='ggsup'
alias setupstream='ggsup'
alias addaltssh="git remote add altssh $(git remote get-url origin | sed 's/@gitlab.com/@altssh.gitlab.com/')"

alias hn='hncli'
alias hnn='hncli next'
alias hno='hncli open'
alias hnc='hncli comments'
alias hnr='hncli resetr'



cat ~/gitlab_words

###
# GitLab `lab` CLI section
###

alias ci='lab ci view'
alias traceci='lab ci trace'
alias lint='lab ci lint'

###
# GitLab repo stuff
###
alias testwww='bundle exec rake lint'
alias mountgl='sudo mount -o resvport,rw -t nfs 10.0.0.33:/home/brendan/repos /private/ub-repos'
alias unmountgl='sudo umount -f /private/ub-repos'

###
# Brendan's CLI todo-er
###

#alias todo='cd ~/repos/personal/todo && lab issue list && cd -'

alias t='python ~/repos/opensource/t-gl/t.py --task-dir ~/repos/personal/tasks --list tasks'


export BAT_THEME='TwoDark'
export GITLAB_API_ENDPOINT=https://gitlab.com/api/v4
export GITLAB_API_PRIVATE_TOKEN=$(cat ~/.gitlab-token)
export AFTERSHIP_API_KEY=e64c3e67-9f26-449f-8c7f-1a62c28bfa50
export DOTNET_CLI_TELEMETRY_OPTOUT=1