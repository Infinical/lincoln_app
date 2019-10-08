defmodule LincolnAppWeb.PageController do
  use LincolnAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
