require "lotus/application"

module LotusHello
  class Application < Lotus::Application
    configure do
      routes do
        get "/", to: "Hello#index"
      end
    end
  end

  module Controllers
    module Hello
      include Lotus::Controller

      class Index
        include Lotus::Action

        def call(params)
          self.status = 200
          self.body = "Hello World!\n"
        end
      end
    end
  end
end

run LotusHello::Application.new
