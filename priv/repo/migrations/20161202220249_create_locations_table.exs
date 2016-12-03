defmodule AwesomeLunch.Repo.Migrations.CreateLocationsTable do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :start,  :string
      add :finish, :string
    end
  end
end
