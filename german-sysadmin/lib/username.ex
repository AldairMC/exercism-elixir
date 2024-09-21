defmodule Username do
  @allowed_characters ~c"abcdefghijklmnopqrstuvwxyz_ßäöü"

  def sanitize(username) do
    replace_letter = fn letter ->
      case letter do
        "ä" -> "ae"
        "ö" -> "oe"
        "ü" -> "ue"
        "ß" -> "ss"
        letter -> letter
      end
    end
    username
      |> Enum.filter(&(&1 in @allowed_characters))
      |> Enum.map(fn char -> <<char::utf8>> end)
      |> Enum.map(replace_letter)
      |> Enum.join()
      |> String.to_charlist()
  end
end
