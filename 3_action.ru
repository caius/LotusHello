require "lotus/router"
require "lotus/controller"

class Hello
  include Lotus::Action

  def call(params)
    self.status = 200
    self.body = "Hello World!\n"
  end
end

routes = Lotus::Router.new do
  get "/", to: "Hello"
end

run routes
