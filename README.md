# Vagrant::Librarian

This gem is a [Vagrant](http://vagrantup.com) plugin that takes care of
installing and updating librarian-managed cookbooks as part of your normal
Vagrant workflow. This version currently only supports Chef cookbooks.

## Installation

Add the gem to your Gemfile:

    gem "vagrant-librarian"

## Usage

This gem automatically hooks into `vagrant up`. All you need is a suitably
formatted Cheffile and to provision your Vagrant VM with Chef solo.

## Contributing

Please submit issues and pull requests to the [GitHub page of the
project](https://github.com/thegcat/vagrant-librarian)
