# rulers/lib/rulers/routing.rb
module Rulers
  class Application
    def get_controller_and_action(env)
      puts "in the get_controller_and_action"
      _, cont, action, after =
      env["PATH_INFO"].split('/', 4)
      cont = cont.capitalize # "People"
      cont += "Controller" # "PeopleController"
      [Object.const_get(cont), action]
    end
  end
end