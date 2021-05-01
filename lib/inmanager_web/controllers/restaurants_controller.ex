defmodule InmanagerWeb.RestaurantsController do
  use InmanagerWeb, :controller

  alias Inmanager.Restaurant
  alias InmanagerWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- Inmanager.create_restaurant(params) do
      conn
      |> put_status(:created)
      |> render("create.json", restaurant: restaurant)
    end
  end
end
