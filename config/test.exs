use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :awesome_lunch, AwesomeLunch.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :awesome_lunch, AwesomeLunch.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "intern",
  password: "password",
  database: "awesome_lunch_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
