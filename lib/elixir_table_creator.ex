defmodule ElixirTableCreator.CLI do
  @moduledoc """
  Documentation for ElixirTableCreator.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTableCreator.hello()
      :world

  """
  def hello do
    :world
  end
  
  def main(args) do
    options = [switches: [file: :string, table_name: :string], aliases: [f: :file, t: :table_name]]

    { opts, _, _ } = OptionParser.parse(args, options)
    IO.inspect opts, label: "Input"
  end
end
