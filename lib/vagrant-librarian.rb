require "vagrant-librarian/version"
require "vagrant-librarian/install"

Vagrant.actions[:up].insert_before Vagrant::Action::VM::Provision, Vagrant::Librarian::Install
Vagrant.actions[:reload].insert_before Vagrant::Action::VM::Provision, Vagrant::Librarian::Install
Vagrant.actions[:provision].insert_before Vagrant::Action::VM::Provision, Vagrant::Librarian::Install
