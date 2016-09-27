defmodule ShoppingList.ListController do
  use ShoppingList.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"list" => list}) do
    render conn, "show.html", list: list
  end
end
