defmodule Superrentals.Router do
  use Superrentals.Web, :router
  require IEx

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    # plug :accepts, ["json", "json-api"]
    # plug JaSerializer.ContentTypeNegotiation
    # plug JaSerializer.Deserializer
    plug :accepts, ["json"]
  end

  scope "/", Superrentals do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", Superrentals do
    pipe_through :api
    IEx.pry

    resources "/rentals", RentalController, except: [:new, :edit]
  end
end
