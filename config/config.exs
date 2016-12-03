# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :awesome_lunch,
  ecto_repos: [AwesomeLunch.Repo]

# Configures the endpoint
config :awesome_lunch, AwesomeLunch.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KRQC6dysFZqqqbFfk6vPSuf8oMg7V7g4N6E9nZ470YWu8XyiCsGfG+UvJr77X2u8",
  render_errors: [view: AwesomeLunch.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AwesomeLunch.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
