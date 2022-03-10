defmodule BinarySearch do


  @spec search(tuple, integer) :: {:ok, integer} | :not_found
  def search({}, _key), do: :not_found
  def search(numbers, key) do
    bin_search(numbers, key, 0, tuple_size(numbers) - 1)
  end

  defp bin_search(_numbers, _key, min, max) when min > max, do: :not_found
  defp bin_search(numbers, key, min, max) do
    mid = div(min + max, 2)
    cond do
      key == elem(numbers,mid) -> {:ok, mid}
      key > elem(numbers,mid) -> bin_search(numbers, key, mid + 1, max)
      key < elem(numbers,mid) -> bin_search(numbers, key, min, mid - 1)
    end
  end
end
