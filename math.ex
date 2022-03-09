defmodule Math do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def sum_tr([], acc), do: acc
  def sum_tr([head | tail], acc), do: sum_tr(tail, head + acc)
end
