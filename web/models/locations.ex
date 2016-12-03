defmodule AwesomeLunch.Locations do
  use AwesomeLunch.Web, :model

  use Ecto.Schema
  import Ecto.Changeset

  schema "locations" do
    field :start
    field :end
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:start, :end])
    |> validate_required([:start, :end])
  end
end
