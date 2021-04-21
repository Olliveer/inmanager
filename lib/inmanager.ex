defmodule Inmanager do
  alias Inmanager.Restaurants.Create

  defdelegate create_restaurant(params), to: Create, as: :call
end
