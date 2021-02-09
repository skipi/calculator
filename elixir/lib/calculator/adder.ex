defmodule Calculator.Adder do
  @moduledoc false

  @doc ~S"""
  Adds two numbers given as input

  ## Examples

      iex> Calculator.Adder.run(1,2)
      3
  """
  def run(a, b) do
    a + b
  end
end
