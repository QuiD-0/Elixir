sum = fn x, y -> x + y end
IO.puts(sum.(1, 2))

sum2 = &(&1 + &2)
IO.puts(sum2.(1, 2))

swap = &{&2, &1}
IO.inspect(swap.(1, 2))

list_concat = fn a, b -> a ++ b end
IO.inspect(list_concat.([1, 2], [3, 4]))

defmodule Greeting do
  def for(name, greeting) do
    fn
      ^name -> "Hello, #{name}! #{greeting}"
      _ -> "I don't know you"
    end
  end
end

greet = Greeting.for("John", "How are you?")
IO.puts(greet.("John"))
IO.puts(greet.("Jane"))

speak = &IO.puts/1
speak.("Hello, world!")

divrem = &{div(&1, &2), rem(&1, 82)}
IO.inspect(divrem.(100, 7))

hello = &"Hello, #{&1}!"
speak.(hello.("world"))

len = &Enum.count/1
IO.puts(len.([1, 2, 3]))
