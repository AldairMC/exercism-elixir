defmodule HighScore do
  @reset_value 0

  def new, do: %{}

  def add_player(scores, name, score \\ 0) do
    Map.merge(scores, %{name => score})
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    Map.update(scores, name, @reset_value, fn _value -> @reset_value end)
  end

  def update_score(scores, name, score) do
    Map.update(scores, name, score, fn value -> value + score end)
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
