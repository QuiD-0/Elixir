defmodule MyList do
  def len([]), do: 0
  def len([_ | tail]), do: 1 + len(tail)
  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]
  def add_1([]), do: []
  def add_1([head | tail]), do: [head + 1 | add_1(tail)]
  def map([], _), do: []
  def map([head | tail], fun), do: [fun.(head) | map(tail, fun)]
  def min([]), do: nil

  def min([head | tail]) do
    case min(tail) do
      nil -> head
      min_tail -> if head < min_tail, do: head, else: min_tail
    end
  end

  def swap([]), do: []
  def swap([a, b | tail]), do: [b, a | swap(tail)]

  def swap([_]) do
    raise "List must have an even number of elements"
  end
end

IO.puts(MyList.len([1, 2, 3, 4, 5]))

[99, 97, 116]
|> IO.inspect()

MyList.square([1, 2, 3, 4, 5])
|> IO.inspect()

MyList.add_1([1, 2, 3, 4, 5])
|> IO.inspect()

MyList.map([1, 2, 3, 4, 5], &(&1 * 2))
|> IO.inspect()

MyList.min([1, 2, 3, 4, 5])
|> IO.inspect()

MyList.span([1, 5])
|> IO.inspect()

# MyList.swap([1, 2, 3, 4, 5])
# |> IO.inspect()

defmodule WeatherHistory do
  def for_location([], _), do: []

  def for_location([head = [_, target_location, _, _] | tail], target_location),
    do: [head | for_location(tail, target_location)]

  def for_location([_ | tail], target_location), do: for_location(tail, target_location)
end

weather_data = [
  ["2017-01-01", "New York", 10, 20],
  ["2017-01-02", "New York", 15, 25],
  ["2017-01-03", "New York", 20, 30],
  ["2017-01-01", "Los Angeles", 20, 30],
  ["2017-01-02", "Los Angeles", 25, 35],
  ["2017-01-03", "Los Angeles", 30, 40]
]

WeatherHistory.for_location(weather_data, "New York")
|> IO.inspect()
