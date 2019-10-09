defmodule LincolnAppWeb.AdminController do
  use LincolnAppWeb, :controller

  alias LincolnApp.Admin
  alias LincolnApp.Admin.Supervisor

  def index(conn, _params) do
    supervisors = Admin.list_supervisors()
    render(conn, "index.html", supervisors: supervisors)
  end

  def new(conn, _params) do
    changeset = Admin.change_supervisor(%Supervisor{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"supervisor" => supervisor_params}) do
      {:ok, supervisor}= Admin.create_supervisor(supervisor_params)

      conn
      |> put_flash(:info, "#{supervisor.username} created!")
      |> redirect(to: Routes.admin_path(conn, :index))
  end
end
