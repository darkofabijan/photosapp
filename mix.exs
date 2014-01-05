defmodule Photosapp.Mixfile do
  use Mix.Project

  def project do
    [
      app: :photosapp,
      version: "0.0.1",
      deps: deps(Mix.env)
    ]
  end

  def application do
    [
      applications: [],
      mod: {Photosapp, []}
    ]
  end

  defp deps(:prod) do
    [
      { :weber, github: "darkofabijan/weber", branch: "router-resources" }
    ]
  end

  defp deps(:test) do
    deps(:prod) ++ [{ :hackney, github: "benoitc/hackney" }]
  end

  defp deps(_) do
    deps(:prod)
  end
end
