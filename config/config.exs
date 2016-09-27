# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :shopping_list,
  ecto_repos: [ShoppingList.Repo]

# Configures the endpoint
config :shopping_list, ShoppingList.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "R3u8HeBn7WnYpOsEuKPaQPEhXo/0acaCEpV/r/3DihK08S1jYnyA8SgF3lgXwyTY",
  render_errors: [view: ShoppingList.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ShoppingList.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
