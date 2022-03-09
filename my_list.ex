defmodule MyList do

  #Recorrer listas con pattern matching y recursion

  def max([]), do: nil
  def max([a]), do: a
  def max([a, b | rest]) when a >= b, do: find_max(rest, a)
  def max([a, b | rest]) when a < b, do: find_max(rest, b)

  defp find_max([], max), do: max
  defp find_max([head | rest], max) when head >= max, do: find_max(rest, head)
  defp find_max([head | rest], max) when head < max, do: find_max(rest, max)


  #recursion chombi q funciona (?)
  # def max([a | []]) do
  #   a
  # end
  # def max([a | tail]) do
  #   max(a, max(tail))
  # end

  def min([]), do: nil
  def min([a]), do: a
  def min([a, b | rest]) when a <= b, do: find_min(rest, a)
  def min([a, b | rest]) when a > b, do: find_min(rest, b)

  defp find_min([], min), do: min
  defp find_min([head | rest], min) when head <= min, do: find_min(rest, head)
  defp find_min([head | rest], min) when head > min, do: find_min(rest, min)
end
