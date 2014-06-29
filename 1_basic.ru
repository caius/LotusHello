require "lotus/router"

routes = Lotus::Router.new do
  get "/", to: -> (env) { [200, {}, ["Hello World!\n"]] }
end

run routes
