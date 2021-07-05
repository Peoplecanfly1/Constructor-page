defmodule ExampleWeb.Router do
  use ExampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ExampleWeb do
    pipe_through :api
    get("/products/:id", ProductsController, :show)
    put("/products/:id", ProductsController, :update)
  end
end
