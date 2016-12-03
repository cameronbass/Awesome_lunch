defmodule AwesomeLunch.LocationsControllerTest do
  use AwesomeLunch.ConnCase
  import AwesomeLunch.Factory
  alias AwesomeLunch.Locations
  @valid_attrs %{first: "some content", finish: "more content"}

  test "shows start and finish for locations" do
    locations = insert(:locations)

    conn = get conn, locations_path(conn, :show, locations.id)

    assert html_response(conn, 200) =~ locations.start
  end

  test "changeset with valid attributes" do
    changeset = Locations.changeset(%Locations{}, @valid_attrs)
    assert changeset.valid?
  end
end
