defmodule Inmanager do
  alias Inmanager.Restaurants.Create, as: RestaurantCreate
  alias Inmanager.Supplies.Create, as: SupplyCreate
  alias Inmanager.Supplies.Get, as: SupplyGet

  defdelegate create_restaurant(params), to: RestaurantCreate, as: :call

  defdelegate create_supply(params), to: SupplyCreate, as: :call
  defdelegate get_supply(params), to: SupplyGet, as: :call
end
