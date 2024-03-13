defprotocol Utility do
  def type(value)
end

defimpl Utility, for: BitString do
  def type(value), do: "hello " <> value
end

defimpl Utility, for: Integer do
  def type(value), do: "integer: " <> Integer.to_string(value)
end

defimpl Utility, for: List do
  def type(value), do: value |> Enum.join(", ")
end

Utility.type("foo")
|> IO.puts()

Utility.type(42)
|> IO.puts()

Utility.type([1, 2, 3])
|> IO.puts()

defmodule User do
  defstruct [:name, :age]
  def new(name, age), do: %User{name: name, age: age}
end

defimpl Utility, for: User do
  def type(%User{name: name, age: age}), do: "User: #{name} (#{age})"
end

User.new("John Doe", 42)
|> Utility.type()
|> IO.puts()
