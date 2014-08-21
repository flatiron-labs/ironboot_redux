require 'ironboot_redux/application/registry'

module IronbootRedux
  module Application
    class Loader
      attr_reader :app, :registry

      def initialize(app)
        @app = app
        @registry = IronbootRedux::Application::Registry.new(app)
      end

      def boot_up
        if registry.app_exists?
          registry.app.boot
        else
          puts "Cannot find application with name: #{app}"
        end
      end
    end
  end
end
