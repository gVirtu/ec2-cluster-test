defmodule ClusterWeb.Router do
  use ClusterWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ClusterWeb do
    pipe_through :api

    get "/", PageController, :index
  end
end
