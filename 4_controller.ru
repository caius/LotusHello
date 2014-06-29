require "lotus/router"
require "lotus/controller"

class HelloController
  include Lotus::Controller

  action :Index do
    def call(params)
      self.status = 200
      self.body = "Hello World!\n"
    end
  end
end

routes = Lotus::Router.new do
  get "/", to: "Hello#index"
end

run routes
