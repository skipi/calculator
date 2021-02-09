defmodule Calculator.SubtractorTest do
  use ExUnit.Case
  require CalculatorTestHelper
  doctest Calculator.Subtractor

  CalculatorTestHelper.define_test_results(5, 0, 10, fn a, b -> a - b end)
  |> Enum.map(fn {a, b, result} ->
    test "succeeds with #{a} + #{b} = #{result} #{:rand.uniform()}" do
      assert Calculator.Subtractor.run(unquote(a), unquote(b)) == unquote(result)
    end
  end)

  CalculatorTestHelper.define_test_results(5, 0, 10, fn a, b -> a + b end)
  |> Enum.map(fn {a, b, result} ->
    test "fails with #{a} + #{b} = #{result} #{:rand.uniform()}" do
      assert Calculator.Subtractor.run(unquote(a), unquote(b)) == unquote(result)
    end
  end)

  CalculatorTestHelper.define_test_results(5, 0, 10, fn a, b -> Enum.random(0..(a + b)) end)
  |> Enum.map(fn {a, b, result} ->
    test "fails with #{a} + #{b} = #{result} #{:rand.uniform()}" do
      assert Calculator.Subtractor.run(unquote(a), unquote(b)) == unquote(result)
    end
  end)
end
