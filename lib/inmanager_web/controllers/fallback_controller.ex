defmodule InmanagerWeb.FallbackController do
  use InmanagerWeb, :controller

  alias InmanagerWeb.ErrorView

  def call(conn, {:error, %{result: result, status: status}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end
end
