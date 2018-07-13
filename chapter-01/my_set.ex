defmodule MySet do
  defstruct items: []

  def push(set = %{items: items}, item) do
    if Enum.member?(items, item) do
      set
    else
      %{set | items: items ++ [item]}
    end
  end
end

# Commands to use in IEx session
# c("my_set.ex")
# set = %MySet{}
# set = MySet.push(set, "apple")
# IO.inspect set

# new_set = %MySet{}
# new_set = MySet.push(new_set, "pie")
# IO.inspect new_set

# set = MySet.push(set, "apple")
# IO.inspect set

# new_set = MySet.push(new_set, "apple")
# IO.inspect new_set
