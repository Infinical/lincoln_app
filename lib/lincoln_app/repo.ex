defmodule LincolnApp.Repo do
  use Ecto.Repo,
    otp_app: :lincoln_app,
    adapter: Ecto.Adapters.Postgres
end
