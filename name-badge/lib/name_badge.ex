defmodule NameBadge do
  def print(id, name, department) do
    is_id? = if id == nil, do: "", else: "[#{id}] - "
    is_department? = if department == nil, do: "OWNER", else: String.upcase(department)
    "#{is_id?}#{name} - #{is_department?}"
  end
end
