defmodule Comprehensions do
  def pow(list) do
    for x <- list,
        do: x * x
  end

  def values(list) do
    for {_key, val} <- list,
        do: val
  end

  def is_ok(list) do
    for :ok <- list,
        do: :ok
  end
end

list = [1, 2, 3, 4, 5]

Comprehensions.pow(list)
|> IO.inspect()

list = [one: 1, two: 2, three: 3]

Comprehensions.values(list)
|> IO.inspect()

list = [:ok, :error, :ok, :error]

Comprehensions.is_ok(list)
|> IO.inspect()
