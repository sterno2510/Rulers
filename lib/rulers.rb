# rulers/lib/rulers.rb
require "rulers/version"
require "rulers/array"

# rulers/lib/rulers.rb
module Rulers
  class Application
    def call(env)
      `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
      ["Hello from Ruby on Rulers!"]]
    end
  end
end