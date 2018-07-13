defmodule MyList do
  def max([]), do: nil
  def max([a]), do: a
  def max([a, b | rest]) when a >= b, do: find_max(a, rest)
  def max([a, b | rest]) when a < b, do: find_max(b, rest)

  defp find_max(a, []), do: a
  defp find_max(a, [head | rest]) when a >= head, do: find_max(a, rest)
  defp find_max(a, [head | rest]) when a < head, do: find_max(head, rest)

  def min([]), do: nil
  def min([a]), do: a
  def min([a, b | rest]) when a <= b, do: find_min(a, rest)
  def min([a, b | rest]) when a > b, do: find_min(b, rest)

  defp find_min(a, []), do: a
  defp find_min(a, [head | rest]) when a <= head, do: find_min(a, rest)
  defp find_min(a, [head | rest]) when a > head, do: find_min(head, rest)


end
