require 'thor'
require 'ironboot_redux/application/loader'

module IronbootRedux
  class CLI < Thor

    desc "setup", "configure and install necessary dependencies"
    long_desc <<-SETUPDESC
    `ironboot setup` will install any missing dependencies and configure your
    development environment.
    SETUPDESC
    def setup

    end

    desc "start APP", "boot up APP for development"
    long_desc <<-STARTDESC
    `ironboot start APP` will prepare the given application for development.

    If not already started, a Vagrant VM will be spun up, and the application
    code will be opened in a Docker container. All code files will be mirrored
    on your machine, in the directory specified during initial setup.
    STARTDESC
    def start(app)
      loader = IronbootRedux::Application::Loader.new(app)
      loader.boot_up
    end

  end
end
