defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator
  require CalculatorTestHelper

  failure_fun =
    Application.get_env(:calculator, :randomize_failures)
    |> case do
      "true" -> fn a, b -> Enum.random(0..(a + b)) end
      _ -> fn a, b -> a + b end
    end


  CalculatorTestHelper.define_test_results(0, 10, fn a, b -> failure_fun.(a, b) end)
  |> Enum.map(fn {a, b, result} ->
    test_prefix = Application.get_env(:calculator, :test_prefix)

    test "#{test_prefix} unexpected result with #{a} + #{b}" do
      assert Calculator.add(unquote(a), unquote(b)) == unquote(result)
    end
  end)
end
