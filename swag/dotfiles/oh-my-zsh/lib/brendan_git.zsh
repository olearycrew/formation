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

alias develop='git checkout master && git pull && git checkout -b $1'