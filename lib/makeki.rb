require "makeki/version"

module Makeki
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'},
      ["Hello from Ruby on Makeki"]]
    end
  end
end
