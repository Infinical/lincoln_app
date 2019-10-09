defmodule LincolnApp.Admin.Supervisor do
  use Ecto.Schema
  import Ecto.Changeset

  schema "supervisors" do
    field :email, :string
    field :username, :string

    timestamps()
  end

  def changeset(supervisor, attrs) do
    supervisor
    |> cast(attrs, [:email, :username])
    |> validate_required([:email, :username])
    |> validate_length(:email, min: 1, max: 20)
    |> validate_length(:username, min: 1, max: 20)
  end
end
