import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :discussionForum, DiscussionForum.Repo,
  username: System.get_env("DB_USERNAME") || "default_username",
  password: System.get_env("DB_PASSWORD") || "default_password",
  hostname: System.get_env("DB_HOST") || "localhost",
  database: "discussionforum_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :discussionForum, DiscussionForumWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Jr+sckt5ZmAXXJ0IcbSmP1BFLEIEWhJ2wbLxCLrDt8vsrrwpMKFqooCR5v+7Uip9",
  server: false

# In test we don't send emails.
config :discussionForum, DiscussionForum.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
