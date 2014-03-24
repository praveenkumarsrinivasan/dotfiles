# dotfiles

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

- **Step 1 : Get Repo**

    `mkdir ~/dotfiles/praveenkumarsrinivasan && cd ~/dotfiles/praveenkumarsrinivasan/`
    
    `git clone https://github.com/praveenkumarsrinivasan/dotfiles.git`
    
- **Step 2 : Setup** `zsh` **and** `oh-my-zsh`

    - Get `oh-my-zsh`
    
        `cd ~/dotfiles/praveenkumarsrinivasan/dotfiles/zsh/`
    
        `sh tools/init_oh-my-zsh.sh`

    - Link `.zshrc`
    
        `cd ~ && ln -s ~/dotfiles/praveenkumarsrinivasan/dotfiles/zsh/.zshrc`
    
- **Step 3 : Setup** `vim` **and bundles**
    
    `cd ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim/`
            
    - Get `pathogen`
    
        `sh tools/init_pathogen.sh`
        
    - Get `bundles`
    
        `sh tools/init_bundles.sh`
        
    - Get `colors`
     
        `sh tools/init_colors.sh`
    
    - Get `spell`
     
        `sh tools/init_spell.sh`

    - Link `.vim` and `.vimrc`

        `cd ~ && ln -s ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vim`    
        
        `cd ~ && ln -s ~/dotfiles/praveenkumarsrinivasan/dotfiles/vim/.vimrc`    

   