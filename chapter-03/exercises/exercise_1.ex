defmodule CharacterAttributes do
  def total_point_cost(%{strength: strength, dexterity: dexterity, intelligence: intelligence}) do
    (strength * 2) + (dexterity * 3) + (intelligence * 3)
  end
end
