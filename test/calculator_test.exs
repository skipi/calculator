defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  @tag :nodoctest
  test "greets the world" do
    assert Calculator.hello() == :world
  end
end
