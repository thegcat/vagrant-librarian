module Vagrant
  module Librarian

    # Vagrant middleware to install librarian-managed cookbooks in the current
    # Vagrant environment
    class Install
      def initialize(app, env)
        @app = app
      end

      def call(env)
        @app.call(env)
      end
    end
  end
end
