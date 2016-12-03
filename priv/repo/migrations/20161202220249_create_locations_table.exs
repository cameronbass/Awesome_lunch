defmodule AwesomeLunch.Repo.Migrations.CreateLocationsTable do
  use Ecto.Migration

  def change do
    create table(:location) do
      add :start, :string
      add :end,   :string

      timestamps
    end
  end
end
