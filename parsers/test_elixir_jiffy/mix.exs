defmodule TestElixirJiffy.MixProject do
  use Mix.Project

  def project do
    [
      app: :test_elixir_jiffy,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      escript: [ main_module: TestElixirJiffy ],
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jiffy, "0.15.0"}
    ]
  end
end
