defmodule Lasagna do
  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(minute), do: expected_minutes_in_oven() - minute

  def preparation_time_in_minutes(minute), do: minute * 2

  def total_time_in_minutes(layer, minute) do
    total_layer = preparation_time_in_minutes(layer)
    total_layer + minute
  end

  def alarm, do: "Ding!"
end
