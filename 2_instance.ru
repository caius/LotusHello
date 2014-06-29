require "lotus/router"

class Hello
  def call(env)
    [200, {}, ["Hello World!\n"]]
  end
end

routes = Lotus::Router.new do
  get "/", to: "Hello"
end

run routes
