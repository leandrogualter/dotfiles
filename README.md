# dotfiles

    cd ~
    git init
    git remote add origin git@github.com:leandrogualter/dotfiles.git
    git fetch
    git branch master origin/master
    git checkout master
    git submodule init
    git submodule update --recursive
