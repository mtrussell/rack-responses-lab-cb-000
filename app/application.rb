class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.new
    current_hour = time.hour
    resp.write "It is currently #{current_hour} o' clock.\n"

    if current_hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
    
  end
end