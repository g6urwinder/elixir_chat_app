defmodule ElixirChatAppWeb.PageController do
  use ElixirChatAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
