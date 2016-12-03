defmodule AwesomeLunch.LocationsController do
  use AwesomeLunch.Web, :controller

  alias AwesomeLunch.Locations

  def new(conn, _params) do
    changeset = Locations.changeset(%Locations{})

    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"locations" => %{ "start" => start, "end" => finish }}) do
    changeset = % Locations{start: start, end: finish}
    Repo.insert(changeset)

    redirect conn, to: locations_path(conn, :index)
  end

  def index(conn, _params) do
    render conn, "index.html"
  end
end
