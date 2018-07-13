defmodule StringList do
  def upcase([]), do: []
  def upcase([first | rest]), do: [String.upcase(first) | upcase(rest)]
end

# Commands to use in IEx session
# c("string_list.ex")
# StringList.upcase(["dogs", "hot dogs", "bananas"])
