module Makeki
    class Application
        def get_controller_and_action(env)
            _, action, cont, after =
            env["PATH_INFO"].split('/', 4)
            cont = cont.capitalize 
            cont += "Controller"
            [action, Object.const_get(cont)]
        end      
    end
end