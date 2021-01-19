require 'pry'

class Application 

    def call(env)
        r = Rack::Response.new
        current_time = Time.new
        binding.pry
        if current_time.hour.to_i.between?(0, 12)
            r.write "Good Morning!"
        elsif current_time.hour.to_i.between?(12, 24)
            r.write "Good Afternoon!"
        end 
        r.finish
    end

end 
