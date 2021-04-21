# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :inmanager,
  ecto_repos: [Inmanager.Repo]

config :inmanager, Inmanager.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :inmanager, InmanagerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oaiJMUERy8bVq0ITWutyJwCZEfVXVlY9ws4q503SfdhPPwgj/AFKIc/2g4aDGvhf",
  render_errors: [view: InmanagerWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Inmanager.PubSub,
  live_view: [signing_salt: "l99iNVQg"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
