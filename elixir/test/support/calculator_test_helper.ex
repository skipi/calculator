defmodule CalculatorTestHelper do
  defmacro define_test_results(runs, min, max, res_fun) do
    0..runs
    |> Enum.map(fn _ ->
      {Enum.random(min..max), Enum.random(min..max)}
    end)
    |> Enum.map(fn {a, b} ->
      quote do
        {unquote(a), unquote(b), unquote(res_fun).(unquote(a), unquote(b))}
      end
    end)
  end
end
