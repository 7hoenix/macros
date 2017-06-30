defmodule Client do
  use RegisteringAttributes

  scope "/" do
    get "/", PageController, :index
    get "/users", UserController, :index
  end
end
