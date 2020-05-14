defmodule RumblWeb.UserController do
  use RumblWeb, :controller
  alias Rumbl.Repo

  def index(conn, _params) do
    users = Repo.all(RumblWeb.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(RumblWeb.User, id)
    render conn, "show.html", user: user
  end
end
