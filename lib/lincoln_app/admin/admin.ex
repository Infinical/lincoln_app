defmodule LincolnApp.Admin do
  @moduledoc """
  Admin context
  """
  alias LincolnApp.Repo
  alias LincolnApp.Admin.Supervisor

  def get_supervisor(id) do
    Repo.get(Supervisor, id)
  end

  def get_supervisor!(id) do
    Repo.get!(Supervisor, id)
  end

  def get_supervisor_by(params) do
    Repo.get_by(Supervisor, params)
  end

  def list_supervisors do
    Repo.all(Supervisor)
  end

  def change_supervisor(%Supervisor{} = supervisor) do
    Supervisor.changeset(supervisor, %{})
  end

  def create_supervisor(attrs \\ %{}) do
    %Supervisor{}
    |> Supervisor.changeset(attrs)
    |> Repo.insert()
    end
end
