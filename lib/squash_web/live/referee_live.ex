defmodule SquashWeb.RefereeLive do
  use SquashWeb, :live_view
  @moduledoc "Setup refereeing"

  def mount(%{"matchid" => matchid}, %{}, socket) do
    {:ok,
     assign(socket,
       player1name: "Gaultier",
       player2name: "Elshorbagy",
       player1score: 0,
       player2score: 0,
       matchid: matchid
     )}
  end

  def handle_event("incp1", _, socket) do
    {:noreply, assign(socket, player1score: socket.assigns.player1score + 1)}
  end

  def handle_event("decp1", _, socket) do
    {:noreply, assign(socket, player1score: max(0, socket.assigns.player1score - 1))}
  end

  def handle_event("incp2", _, socket) do
    {:noreply, assign(socket, player2score: socket.assigns.player2score + 1)}
  end

  def handle_event("decp2", _, socket) do
    {:noreply, assign(socket, player2score: max(0, socket.assigns.player2score - 1))}
  end
end
