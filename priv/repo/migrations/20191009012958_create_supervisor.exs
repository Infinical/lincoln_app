defmodule LincolnApp.Repo.Migrations.CreateSupervisor do
  use Ecto.Migration

  def change do
    create table(:supervisors) do
      add :email , :string, null: false
      add :username, :string, null: false

      timestamps()
    end

    create unique_index(:supervisors, [:email])
  end
end
