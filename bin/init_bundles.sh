cd ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim/
sed '/bundle/d' .gitignore >> a.out
mv a.out .gitignore
mkdir bundle
cd ~/dotfiles/praveenkumarsrinivasan/dotfiles/
sh bin/get_bundles.sh
cd ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim/
echo bundle >> .gitignore
cd ~/dotfiles/praveenkumarsrinivasan/dotfiles/
