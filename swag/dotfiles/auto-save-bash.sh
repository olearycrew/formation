echo ""
echo "\033[1;94m  📓  Note current path \033[0m"
echo ""

export bdoLastDir=$(pwd)

echo ""
echo "\033[1;94m  ✍️  Copy dotfiles to /next-mac repo \033[0m"
echo ""

cp ~/.bash_profile ~/repos/personal/next-mac/dotfiles
cp ~/.bashrc ~/repos/personal/next-mac/dotfiles
cp ~/.cvimrc ~/repos/personal/next-mac/dotfiles
cp ~/.docker/config.json ~/repos/personal/next-mac/dotfiles/.docker
cp ~/.gitignore ~/repos/personal/next-mac/dotfiles
cp ~/.gitignore_global ~/repos/personal/next-mac/dotfiles
cp ~/.gitconfig ~/repos/personal/next-mac/dotfiles
cp ~/.zshrc ~/repos/personal/next-mac/dotfiles

echo ""
echo "\033[1;94m  ✍️  Copy other customization to /next-mac repo \033[0m"
echo ""

cp -r ~/.oh-my-zsh/* ~/repos/personal/next-mac/dotfiles/oh-my-zsh/
cp -r ~/.maid/* ~/repos/personal/next-mac/maid/
cp -r ~/repos/workspaces/* ~/repos/personal/next-mac/workspaces/
cp ~/Library/Application\ Support/Code/User/settings.json ~/repos/personal/next-mac/dotfiles/vscode_settings.json

echo ""
echo "\033[1;94m  ➡️  Change to next-mac repo \033[0m"
echo ""
cd ~/repos/personal/next-mac/dotfiles
#git stash

echo ""
echo "\033[1;94m    ☑️  Checkout master \033[0m"
echo ""
git checkout master

echo ""
echo "\033[1;94m    ➕  Add various specific files \033[0m"
echo ""
git add .

echo ""
echo "\033[1;94m    ➕  Add /.oh-my-zsh \033[0m"
echo ""
cd ~/repos/personal/next-mac/dotfiles/oh-my-zsh
git add .

echo ""
echo "\033[1;94m    ➕  Add /.docker \033[0m"
echo ""
cd ~/repos/personal/next-mac/dotfiles/.docker
git add .

echo ""
echo "\033[1;94m    ➕  Add /.maid \033[0m"
echo ""
cd ~/repos/personal/next-mac/maid
git add .

echo ""
echo "\033[1;94m    ➕  Add /workspaces \033[0m"
echo ""
cd ~/repos/personal/next-mac/workspaces
git add .

echo ""
echo "\033[1;94m    📝  Commit \033[0m"
echo ""
git commit -m "Auto-save from zsh ($(date +"%F"))"

echo ""
echo "\033[1;94m    📌  Push \033[0m"
echo ""
git push

echo ""
echo "\033[1;94m  ➡️  Commiting OH-MY-ZSH changes (to support updating OH-MY-ZSH) \033[0m"
echo "\033[1;94m  🗒️  (note this will warn about push.  ignore it) \033[0m"
echo ""

cd ~/.oh-my-zsh
git add .
git commit -m "Auto-save from bash ($(date +"%F"))"

cd $bdoLastDir
