defmodule Dynotest.Mixfile do
  use Mix.Project

  def project do
    [ app: :dynotest,
      version: "0.0.1",
      dynamos: [Dynotest.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/dynotest/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { Dynotest, [] } ]
  end

  defp deps do
    [ { :cowboy, %r(.*), github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", github: "elixir-lang/dynamo" } ]
  end
end
