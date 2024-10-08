defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim
    |> String.first
  end

  def initial(name) do
    name
    |> first_letter()
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    full_name
    |> String.split()
    |> Enum.map(&initial/1)
    |> Enum.join(" ")
    |> String.trim
  end

  def pair(full_name1, full_name2) do
    i = initials(full_name1)
    you = initials(full_name2)
               """
                   ******       ******
                 **      **   **      **
               **         ** **         **
              **            *            **
              **                         **
              **     #{i}  +  #{you}     **
               **                       **
                 **                   **
                   **               **
                     **           **
                       **       **
                         **   **
                           ***
                            *
              """
  end
end
