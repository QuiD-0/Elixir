defmodule Command do
  def to_value(map) do
    map
    |> Enum.map(fn {_, value} -> value end)
  end
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

# 현재 local 날짜와 시간을 출력
DateTime.utc_now()
|> IO.inspect()
