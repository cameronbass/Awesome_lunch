defmodule AwesomeLunch.Locations do
  use AwesomeLunch.Web, :model

  use Ecto.Schema
  import Ecto.Changeset

  schema "locations" do
    field :start
    field :finish
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:start, :finish])
    |> validate_required([:start, :finish])
  end
end
