require "vagrant-librarian/version"
require "vagrant-librarian/install"

if Vagrant::VERSION < '1.1.0'
  Vagrant.actions[:up].insert_before Vagrant::Action::VM::Provision, Vagrant::Librarian::Install
  Vagrant.actions[:reload].insert_before Vagrant::Action::VM::Provision, Vagrant::Librarian::Install
  Vagrant.actions[:provision].insert_before Vagrant::Action::VM::Provision, Vagrant::Librarian::Install
else
  module Vagrant
    module Librarian
      class Plugin < Vagrant.plugin("2")

        name "vagrant-librarian"
        description "vagrant-librarian is a vagrant plugin that takes care of installing and updating librarian-managed cookbooks as part of your normal vagrant workflow."

        # Hook before _all_ Provision middlewares there are
        action_hook(self::ALL_ACTIONS) do |hook|
          hook.before(Vagrant::Action::Builtin::Provision, Vagrant::Librarian::Install)
        end
      end
    end
  end
end