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

  def listConnect(list1, list2), do: list1 ++ list2
  def appendFirst(list, item), do: [item | list]
end

IO.puts(Collections.sum([1, 2, 3, 4, 5]))

list = [1, 2, 3, 4, 5]

Collections.sum(list)
|> IO.puts()

stringList = ["hello", "world"]

Collections.join(stringList, "")
|> IO.puts()

joinList = [3.14, :pie]

Collections.join(joinList, ", ")
|> IO.puts()

string = "Hello, World"

Collections.separate(string, "")
|> IO.puts()

list1 = [1, 2, 3]
list2 = [4, 5, 6]

Collections.listConnect(list1, list2)
|> IO.inspect()

Collections.appendFirst(list1, 4)
|> IO.inspect()

map = %{
  "a" => 1,
  "b" => 2,
  "c" => 3
}

Map.put(map, "d", 4)
|> IO.inspect()

map["a"]
|> IO.inspect()

atomMap = %{
  a: 1,
  b: 2,
  c: 3
}

Map.put(atomMap, :d, 4)
|> IO.inspect()

atomMap.a
|> IO.inspect()
