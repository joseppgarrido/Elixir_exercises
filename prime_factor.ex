defmodule PrimeFactors do
  @doc """
  Compute the prime factors for 'number'.

  The prime factors are prime numbers that when multiplied give the desired
  number.

  The prime factors of 'number' will be ordered lowest to highest.
  """
  @spec factors_for(pos_integer) :: [pos_integer]
  def factors_for(number) do
    factor(number, 2, [])
    |> Enum.reverse()
  end

  defp factor(1, _, acc), do: acc
  defp factor(number, divisor, acc) when rem(number, divisor) == 0, do: factor(div(number, divisor), divisor, [divisor | acc])
  defp factor(number, divisor, acc), do: factor(number, divisor + 1, acc)
end
