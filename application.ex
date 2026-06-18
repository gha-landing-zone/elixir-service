defmodule HelloWorld.Application do
  use Application

  @port Application.compile_env(:hello_world, :port, 4000)

  @impl true
  def start(_type, _args) do
    children = [
      {Bandit, plug: HelloWorld.Router, port: @port}
    ]

    opts = [strategy: :one_for_one, name: HelloWorld.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
