ExUnit.start
# Mix.Task.run "ecto.drop", ~w(-r Superrentals.Repo --quiet)
Mix.Task.run "ecto.create", ~w(-r Superrentals.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Superrentals.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Superrentals.Repo)
