defmodule InmanagerWeb.RestaurantsView do
  use InmanagerWeb, :view

  def render("create.json", %{restaurant: restaurant}) do
    %{
      message: "Restaurant created",
      restaurant: restaurant
    }
  end
end
