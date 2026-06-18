import Config

config :hello_world,
  port: String.to_integer(System.get_env("PORT", "4000"))
