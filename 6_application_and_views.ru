require "lotus/application"

module LotusHello
  class Application < Lotus::Application
    configure do
      routes do
        get "/", :to => "Hello#index"
      end
    end
  end

  module Controllers
    module Hello
      include Lotus::Controller

      action :Index do
        def call(params)
        end
      end
    end
  end

  module Views
    module Hello
      class Index
        include Lotus::View

        def render
          "Hello World!\n"
        end
      end
    end
  end
end

run LotusHello::Application.new
