defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter({:milliliter, value}), do:
    {:milliliter, value * 1}

  def to_milliliter({:cup, value}), do:
    {:milliliter, value * 240}

  def to_milliliter({:fluid_ounce, value}), do:
    {:milliliter, value * 30}

  def to_milliliter({:teaspoon, value}), do:
    {:milliliter, value * 5}

  def to_milliliter({:tablespoon, value}), do:
    {:milliliter, value * 15}

  def from_milliliter({:milliliter, value}, :milliliter = unit), do:
    {unit, value/1}

  def from_milliliter({:milliliter, value}, :cup = unit), do:
    {unit, value/240}

  def from_milliliter({:milliliter, value}, :fluid_ounce = unit), do:
    {unit, value/30}

  def from_milliliter({:milliliter, value}, :teaspoon = unit), do:
    {unit, value/5}

  def from_milliliter({:milliliter, value}, :tablespoon = unit), do:
    {unit, value/15}

  defp convert_unit(unit) do
    cond do
      unit == :teaspoon -> 5
      unit == :tablespoon -> 15
      unit == :cup -> 240
      unit == :fluid_ounce -> 30
    end
  end

  def convert({ unit, value }, final_unit) do
    {final_unit, convert_unit(unit)/convert_unit(final_unit) * value}
  end
end

5
