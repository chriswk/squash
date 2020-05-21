defmodule SquashWeb.RefereeLive do
  use SquashWeb, :live_view

  def mount(%{"matchid" => matchid}, %{}, socket) do
    {:ok, assign(socket, player1score: 0, player2score: 0, matchid: matchid)}
  end
end
