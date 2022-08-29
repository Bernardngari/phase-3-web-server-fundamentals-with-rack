require 'rack'

class App
  def call(env)
		path  = env["PATH_INFO"]

		if path == "/"
			[200, {"Content-Type" => "text/html"}, ["<h2>Hello <em>World</em>!</h2>"]]
			elsif path == "/potato"
			[200, {"Content-Type" => "text/html"}, ["<h2> I am on path called potato</h2>"]]
			else 
			[404, {"Content-Type" => "text/html"}, ["<h2>I will return an error because this path does not exist.</h2>"]]
		end
  end
end

run App.new