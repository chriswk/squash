defmodule SquashWeb.RefereeLive do
  use SquashWeb, :live_view

  def mount(_session, socket) do
    {:ok, assign(socket, :player1, 0)}
  end

end
