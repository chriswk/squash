defmodule Squash.Repo do
  use Ecto.Repo,
    otp_app: :squash,
    adapter: Ecto.Adapters.Postgres
end
