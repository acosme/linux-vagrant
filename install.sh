#packages and fast mirrors in Brazil
sudo sh -c 'cat /dev/null > /etc/apt/sources.list && cat fast_source_wheezy.txt >> /etc/apt/sources.list' && sudo apt-get update && sudo apt-get install debian-archive-keyring && sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

#rvm config
sudo apt-get install curl && curl -L https://get.rvm.io | bash -s stable && source ~/.rvm/scripts/rvm && echo "[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm" > ~/.bashrc

#essencials libs
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion && sudo apt-get install git git-svn gitk ssh libssh-dev

#rvm main
rvm install ruby-1.9.3-p194 && rvm 1.9.3-p194 --default

#essencial packages
sudo apt-get install mysql-server mysql-client libmysqlclient-dev imagemagick libmagickwand-dev geany && cd ~ && wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb && sudo dpkg -i google-chrome-stable_current_i386.deb && ssh-keygen

#gvim #ou apenas sudo apt-get install vim-gnome
git clone git://github.com/akitaonrails/vimfiles.git ~/.vim && cd ~/.vim && git submodule update --init && echo "filetype on" > ~/.vimrc && echo "source ~/.vim/vimrc" >> ~/.vimrc

#others and dropbox:
rm ~/google-chrome-stable_current_i386.deb && mkdir ~/projetos &&
cd ~/projetos && cat bashrc_git_rvm.txt >> ~/.bashrc && cat bashrc_aliasing.txt >> ~/.bashrc && source ~/.bashrc && sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E && sudo apt-get install dropbox
