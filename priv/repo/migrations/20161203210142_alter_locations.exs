defmodule AwesomeLunch.Repo.Migrations.AlterLocations do
  use Ecto.Migration

  def change do
    alter table(:locations) do
      add :street, :string
    end
  end
end
