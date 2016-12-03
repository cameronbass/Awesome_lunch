defmodule AwesomeLunch.LocationsController do
  use AwesomeLunch.Web, :controller

  alias AwesomeLunch.Locations

  def new(conn, _params) do
    changeset = Locations.changeset(%Locations{})

    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"locations" => %{ "start" => start, "finish" => finish }}) do
    changeset = % Locations{start: start, finish: finish}
    Repo.insert(changeset)

    redirect conn, to: locations_path(conn, :index)
  end

  def show(conn, %{"id" => locations_id}) do
    locations = Repo.get!(Locations, locations_id)

    render conn, "show.html", locations: locations
  end

  def index(conn, _params) do
    locations = Repo.all(Locations)
    render conn, "index.html", locations: locations
  end
end
