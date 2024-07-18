defmodule CalculatorTestHelper do
  defmacro define_test_results(min, max, res_fun) do
    0..(max - min)
    |> Enum.map(fn i ->
      quote do
        {unquote(min + i), unquote(max), unquote(res_fun).(unquote(min + i), unquote(max))}
      end
    end)
  end
end
