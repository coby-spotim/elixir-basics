defmodule NumberCompare do
  def greater(number, other_number) do
    unless number >= other_number do
      other_number
    else
      number
    end
  end
end
