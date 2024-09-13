defmodule LanguageList do
  def new, do: []

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    [_head | new_list] = list
    new_list
  end

  def first(list) do
    [head | _tail] = list
    head
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    functional_leanguages = ["Clojure", "Haskell", "Erlang", "Elixir", "F#"]
    list == functional_leanguages
  end
end
