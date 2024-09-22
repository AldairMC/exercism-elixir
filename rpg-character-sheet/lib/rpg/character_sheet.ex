defmodule RPG.CharacterSheet do
  defp get_text(text) do
    render_text = "What is your character's #{text}?\n"
    IO.gets(render_text) |> String.trim()
  end

  def welcome() do
    IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  def ask_name() do
    get_text("name")
  end

  def ask_class() do
    get_text("class")
  end

  def ask_level() do
    level = get_text("level")
    String.to_integer(level)
  end

  def run() do
    welcome()
    name = ask_name()
    class = ask_class()
    level = ask_level()
    character = %{name: name, class: class, level: level}
    IO.inspect(character, label: "Your character")
  end
end
