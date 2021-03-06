require "makeki/version"
require "makeki/array"
require "makeki/routing"

module Makeki
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404, {'Content-Type' => 'text/html'}, []]
      end
      
      classic, act = get_controller_and_action(env)
      controller = classic.new(env)
      text = controller.send(act)
      [200, {'Content-Type' => 'text/html'},
       [text]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end
end
