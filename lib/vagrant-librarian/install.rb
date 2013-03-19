require "librarian/chef"
require "librarian/action"

module Vagrant
  module Librarian

    # Vagrant middleware to install librarian-managed cookbooks in the current
    # Vagrant environment
    class Install
      def initialize(app, env)
        @app = app
        @env = env
      end

      def call(env)
        @env[:ui].info "Installing CookBooks, this can take a few minutes..."

        lce = ::Librarian::Chef::Environment.new
        ::Librarian::Action::Ensure.new(lce).run
        ::Librarian::Action::Resolve.new(lce).run
        ::Librarian::Action::Install.new(lce).run

        @app.call(env)
      end
    end
  end
end
