function install {
  echo installing $1
  shift
  sudo apt-get -y install "$@"
}

echo =============
echo Station Setup

echo updating package information
sudo apt-get -y update

install 'Git' git
install 'Ag' silversearcher-ag
install 'Redis' redis-server
install 'ImageMagick' imagemagick
install 'ExecJS runtime' nodejs
install 'PostgreSQL' postgresql postgresql-contrib libpq-dev
install 'Ruby dependencies' libssl-dev libreadline-dev zlib1g-dev
install 'Nokogiri dependencies' libxml2 libxml2-dev libxslt1-dev

echo setting Postgres user
sudo -u postgres createuser --superuser vagrant

echo installing Rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo installing bash-git-prompt
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt

echo installing Heroku Toolbelt
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku

echo setting environment config
for file in profile gemrc gitconfig gitmessage railsrc vim vimrc ; do
  ln -sfv /vagrant/dotfiles/$file ~/.$file
done

echo installing Ruby
source ~/.profile
rbenv install 2.2.3
rbenv global 2.2.3

echo installing Ruby on Rails
gem install rails
rbenv rehash

echo installing Vim plugins
vim +PlugInstall +qall >/dev/null 2>&1

# Needed for docs generation.
sudo update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8

echo ========================================
echo Please, type vagrant ssh
echo and set your github user info
echo git config --global user.name [seu nome]
echo git config --global user.email [seu email]
echo lets code!
