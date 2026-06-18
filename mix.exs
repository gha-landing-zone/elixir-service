defmodule HelloWorld.MixProject do
  use Mix.Project

  def project do
    [
      app: :hello_world,
      version: "0.1.0",
      elixir: "-> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {HelloWorld.Application, []}
    ]
  end

  defp deps do
    [
      {:plug, "-> 1.16"},
      {:bandit, "-> 1.0"}

      # Dev/text
      {:credo, "-> 1.7", only: [:dev, :test], runtime: false}
    ]
  end
end
