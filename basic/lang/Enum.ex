defmodule Command do
  def to_value(map) do
    map
    |> Enum.map(fn {_, value} -> value end)
  end

  def now(), do: DateTime.utc_now() |> DateTime.add(9 * 60 * 60)
end

%{name: "quid", type: "enum"}
|> Command.to_value()
|> IO.inspect()

{:abc, "B", ~c"c"}
|> Tuple.delete_at(0)
|> IO.inspect()

quote do
  1 + 2
end
|> IO.inspect()

Atom.to_charlist(:"An atom")
|> IO.puts()

Command.now()
|> IO.inspect()

[1, 2, 3, 4]
|> Enum.map(&(&1 * 2))
|> IO.inspect()

Enum.to_list(1..5)
|> IO.inspect()

Enum.reduce(1..5, 0, &+/2)
|> IO.inspect()

Enum.concat([1, 2, 3], [4, 5, 6])
|> IO.inspect()

Enum.filter(1..10, &(&1 > 5))
|> IO.inspect()

Enum.sort([3, 1, 2])
|> IO.inspect()

Enum.sort(["cat", "apple", "bird"])
|> IO.inspect()

Enum.sort(["cat", "apple", "bird"], &(String.length(&1) < String.length(&2)))
|> IO.inspect()

Enum.max([3, 1, 2])
|> IO.inspect()

Enum.max_by(["cat", "apple", "bird"], &String.length/1)
|> IO.inspect()

Enum.all?([1, 2, 3], &(&1 > 0))
|> IO.inspect()

Enum.any?([1, 2, 3], &(&1 > 2))
|> IO.inspect()

Enum.chunk_every([1, 2, 3, 4, 5, 6, 7], 2)
|> IO.inspect()

Enum.join(["cat", "apple", "bird"], ", ")
|> IO.puts()

Enum.zip([1, 2, 3], [:a, :b, :c])
|> IO.inspect()

Enum.with_index([:a, :b, :c])
|> IO.inspect()

Enum.with_index([:a, :b, :c], 10)
|> IO.inspect()

deck =
  Enum.map([~c"A", ~c"B", ~c"C", ~c"D"], fn suit ->
    Enum.map(1..13, fn rank ->
      {suit, rank}
    end)
  end)
  |> List.flatten()

Enum.shuffle(deck)
|> Enum.take(5)
|> IO.inspect()
