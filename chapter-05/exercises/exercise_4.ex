defmodule QuickSort do
  def sort([]), do: []
  def sort([pivot | tail]) do
    {less_than_pivot, greater_than_pivot} = Enum.split_with(tail, &(&1 <= pivot))
    sort(less_than_pivot) ++ [pivot] ++ sort(greater_than_pivot)
  end
end
