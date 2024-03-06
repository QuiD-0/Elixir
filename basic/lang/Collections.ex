defmodule Collections do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
  def join([head | tail]), do: head <> " " <> join(tail)

  def join(list, separator) do
    list
    |> Enum.join(separator)
  end

  def separate(list, separator) do
    list
    |> String.split(separator)
    |> Enum.map(&String.capitalize/1)
    |> Enum.sort()
  end
end

IO.puts(Collections.sum([1, 2, 3, 4, 5]))

list = [1, 2, 3, 4, 5]
IO.puts(Collections.sum(list))

stringList = ["hello", "world"]
IO.puts(Collections.join(stringList, ""))

joinList = [3.14, :pie]
IO.puts(Collections.join(joinList, ", "))

string = "Hello, World"
IO.puts(Collections.separate(string, ""))
