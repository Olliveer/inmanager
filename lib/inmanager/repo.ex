defmodule Inmanager.Repo do
  use Ecto.Repo,
    otp_app: :inmanager,
    adapter: Ecto.Adapters.Postgres
end
