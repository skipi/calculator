defmodule Calculator.Subtractor do
  @moduledoc false

  @doc ~S"""
  Subtracts two numbers given as input

  ## Examples

      iex> Calculator.Subtractor.run(1,2)
      -1
  """
  def run(a, b) do
    a - b
  end
end
