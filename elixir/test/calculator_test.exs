defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  @tag :nodoctest
  test "greets the world" do
    assert Calculator.hello() == :world
  end

  @tag :nodoctest
  test "fails" do
    assert Calculator.hello() == :hello
  end

  @tag :nodoctest
  test "also fails" do
    assert Calculator.foo() == 0
  end
end
