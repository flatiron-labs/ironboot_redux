require 'ironboot_redux/application/application'

module IronbootRedux
  module Application
    class Registry
      APPS = [
        :ironboard,
        :curriculum,
        :ironbuild,
        :ironbroker
      ]

      attr_reader :app_name

      def initialize(app_name)
        @app_name = app_name.to_sym
      end

      def apps
        APPS
      end

      def app_exists?
        apps.include?(app_name)
      end

      def app
        IronbootRedux::Application::Application.new(self.app_name)
      end
    end
  end
end
