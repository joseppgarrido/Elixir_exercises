defmodule IncomeTax do
  def tax(salary) when salary <= 2000, do: 0
  def tax(salary) when salary <= 3000, do: salary * 0.05
  def tax(salary) when salary <= 6000, do: salary * 0.10
  def tax(salary), do: salary * 0.15

  input = IO.gets "Your salary:\n"

  case Float.parse(input) do
    :error -> IO.puts "Invalid salary: #{input}"
    {salary, _} ->
      tax = IncomeTax.tax(salary)
      IO.puts "Net wage: #{salary - tax} - Income tax: #{tax}"
  end
end
