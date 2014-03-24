# dotfiles
===================

## About
 
This is a repo of my dotfiles. These dotfiles capture some of my favorite configurations, mapping, and settings. 
Big thanks to 

- [baskerville](https://github.com/baskerville/)
- [derekwyatt](https://github.com/derekwyatt/)
- [mathiasbynens](https://github.com/mathiasbynens/)
- [mbadolato](https://github.com/mbadolato/)
- [mbrochh](https://github.com/mbrochh/)
- [paulirish](https://github.com/paulirish/)
- [robbyrussell](https://github.com/robbyrussell/)
- [seebi](https://github.com/seebi/)
- [simonowendesign|s10wen](https://github.com/s10wen/)
- [vimbits](http://www.vimbits.com/)
- [commandlineflu](http://www.commandlinefu.com/)


## Configurations for
- Vim
- ZSH
- Git
- Common Scripts
- Bash 

## Installation
-----------------

- **Step 1 : Get Repo**

    `mkdir ~/dotfiles/praveenkumarsrinivasan && cd ~/dotfiles/praveenkumarsrinivasan/`
    
    `git clone https://github.com/praveenkumarsrinivasan/dotfiles.git`
    
- **Step 2 : Install** `oh-my-zsh`

    `cd ~/dotfiles/praveenkumarsrinivasan/dotfiles/zsh/`
    
    `git clone git://github.com/robbyrussell/oh-my-zsh.git`
    
    `mv oh-my-zsh/ .oh-my-zsh/`
    
    `cd ~/dotfiles/praveenkumarsrinivasan/dotfiles/zsh/.oh-my-zsh/custom/`
    
    `ln -s ~/dotfiles/praveenkumarsrinivasan/dotfiles/zsh/custom-aliases.zsh`
    
    `ln -s ~/dotfiles/praveenkumarsrinivasan/dotfiles/zsh/custom-keybindings.zsh`    

- **Step 3 : Link** `.zshrc`

    `cd ~ && ln -s ~/dotfiles/praveenkumarsrinivasan/dotfiles/zsh/.zshrc`
    
- **Step 4 : Install vim pathogen**
    
    `mkdir -p ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim/autoload`
    
    `mkdir -p ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim/bundle`
    
    `curl -Sso ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim/autoload/pathogen.vim \ 
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim`
    
- **Step 5 : Install vim submodules**

    Remove `bundle` from `~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim/.gitignore` 

    `cd ~/dotfiles/praveenkumarsrinivasan/dotfiles/`
    
    `cp ~/dotfiles/praveenkumarsrinivasan/dotfiles/git/git-add-submodules.sh .`
    
    `sh git-add-submodules.sh`
    
    `rm git-add-submodules.sh`
    
    Add `bundle` to `~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim/.gitignore` 
    
- **Step 6 : Install colors and spell packages**

    `mkdir ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim/colors`
    
    `cd ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim/colors`
    
    `wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400`
        
    `mkdir ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim/spell`   
    
    `wget https://github.com/derekwyatt/vim-config/blob/master/spell/en.utf-8.add`
    
    `wget https://github.com/derekwyatt/vim-config/blob/master/spell/en.utf-8.add.spl`    
    
    eclipse.vim, ir_black.vim, liquidcarbon.vim, navajo-night.vim, tolerable.vim, wombat.vim, wombat256.vim, wombat256mod.vim, xoria256.vim, zenburn.vim
    

- **Step 7 : Link** `.vimrc` **and** `.vim`

    `cd ~ && ln -s ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim`    
    
    `cd ~ && ln -s ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vimrc`    
    
    
TODO:    
   
- Change custom plugin linking to .oh-my-zsh
- Add standard colors and spell plugins

   