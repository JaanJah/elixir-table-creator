defmodule ElixirTableCreator.CLI do
  @moduledoc """
  Documentation for ElixirTableCreator.
  """
  
  def main(args) do
    # Possible parameters
    options = [switches: [file: :string, table_name: :string], aliases: [f: :file, t: :table_name]]

    # Parse input arguments
    { opts, _, _ } = OptionParser.parse(args, options)

    # Parse out arguments
    table = opts[:table_name]
    file = opts[:file]

    # Output input for debug
    IO.inspect ("Table: #{table}, File: #{file}"), label: "Input"
  end
end
