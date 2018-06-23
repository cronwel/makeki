require "makeki/version"
require "makeki/array"

module Makeki
  class Application
    def call(env)
      `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
       ["Hello from Ruby on Makeki"]]
    end
  end
end
