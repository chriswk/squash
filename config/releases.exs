import Config

config :squash, SquashWeb.Endpoint,
  server: true,
  http: [port: {:system, "PORT"}],
  url: [host: System.get_env("APP_NAME") <> ".gigalixirapp.com", port: 443],
  check_origin: ["https://squash.chriswk.com", System.get_env("APP_NAME") <> ".gigalixirapp.com"]
