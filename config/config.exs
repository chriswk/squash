# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :squash,
  ecto_repos: [Squash.Repo]

# Configures the endpoint
config :squash, SquashWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zJnYah5dbifXxRK+Xn2lJjzsEf1Yrgs52Qmzpmrfl3+6W3y02UJpimvromoWHpGz",
  render_errors: [view: SquashWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Squash.PubSub,
  live_view: [signing_salt: "ti1PoTzh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
