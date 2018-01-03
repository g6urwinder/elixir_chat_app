# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_chat_app,
  ecto_repos: [ElixirChatApp.Repo]

# Configures the endpoint
config :elixir_chat_app, ElixirChatAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B2OKQwTocBQ5E5aFNLLHMjziIrGbx43zsuSoCuXIar4sNWcuBJkHPAc+enCtaazl",
  render_errors: [view: ElixirChatAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirChatApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
