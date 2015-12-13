# RubyEnv

Vagrant config and provision bootstrap for Ruby on Rails development.

## Requirements

You only must have installed:

* [VirtualBox](https://www.virtualbox.org/wiki/downloads)
* [Vagrant](http://vagrantup.com/downloads.html)

## How to build

Just clone the repo and up Vagrant:

    $ git clone https://github.com/rubycoach/rubyenv.git
    $ cd rubyenv
    $ vagrant up

**tip: this will take a while**

After the installation has finished, you can access via ssh:

    $ vagrant ssh

Then please set your git credentials:

    vagrant $ git config --global user.name [Your Name]
    vagrant $ git config --global user.email [Your Email]

## Workflow

Up and access virtual machine:

    $ vagrant up
    $ vagrant ssh

Go to shared folder:

    vagrant $ cd /vagrant

Have fun with your new Rails app:

    vagrant $ rails new myapp
    vagrant $ cd myapp
    vagrant $ bundle
    vagrant $ rake db:create
    vagrant $ bin/rails server -b 0.0.0.0

## What's inside

**running on Ubuntu 14.04 LTS**

* Git
* Ag (Silver Searcher)
* Redis
* ImageMagick
* PostgreSQL
* Ruby
* Rbenv
* Ruby on Rails
* Heroku Toolbelt
* Bash Git Prompt
* Vim plugins
* dotfiles

## License

Released under the MIT License
