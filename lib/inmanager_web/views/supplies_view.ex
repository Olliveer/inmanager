defmodule InmanagerWeb.SuppliesView do
  use InmanagerWeb, :view

  def render("create.json", %{supply: supply}) do
    %{
      message: "Supply created",
      supply: supply
    }
  end

  def render("show.json", %{supply: supply}) do
    %{
      supply: supply
    }
  end
end
