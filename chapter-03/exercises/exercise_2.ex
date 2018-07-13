defmodule TicTacToe do
  # This function will repeat for each winning pattern (there must be a more elegant way to do this...)
  def winner({:player, :player, :player, _, _, _, _, _, _}) do
    {:winner, player}
  end

  # The final no winning pattern function, to catch any other combination and return :no_winner
  def winner(_) do
    :no_winner
  end
end
