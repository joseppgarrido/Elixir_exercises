defmodule Sum do
  def up_to(0), do: 0
  def up_to(n), do: n + up_to(n - 1)

  def up_to_tr(0, acc), do: acc
  def up_to_tr(n, acc) when n > 0, do: up_to_tr(n - 1, n + acc)
end
