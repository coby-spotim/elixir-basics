defmodule MatchstickFactory do
  @big_box_size 50
  @medium_box_size 20
  @small_box_size 5

  def boxes(number_of_matchsticks) do
    big_boxes = div(number_of_matchsticks, @big_box_size)
    remaining_matchsticks = rem(number_of_matchsticks, @big_box_size)

    medium_boxes = div(remaining_matchsticks, @medium_box_size)
    remaining_matchsticks = rem(remaining_matchsticks, @medium_box_size)

    small_boxes = div(remaining_matchsticks, @small_box_size)
    remaining_matchsticks = rem(remaining_matchsticks, @small_box_size)

    %{big: big_boxes, medium: medium_boxes, small: small_boxes, remaining_matchsticks: remaining_matchsticks}
  end
end

# Commands to use in IEx session
# c("exercise_4.ex")
# MatchstickFactory.boxes(98)
# MatchstickFactory.boxes(39)
