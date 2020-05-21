defmodule Squash.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Squash.Repo,
      # Start the Telemetry supervisor
      SquashWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Squash.PubSub},
      # Start the Endpoint (http/https)
      SquashWeb.Endpoint
      # Start a worker by calling: Squash.Worker.start_link(arg)
      # {Squash.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Squash.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    SquashWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
