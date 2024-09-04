states1 = %{"AL" => "Albania", "DE" => "Germany", "FR" => "France"}
states2 = %{kr: "Korea", jp: "Japan"}

IO.puts(states1["AL"])
IO.puts(states2.kr)

%{:ok => value} = %{:ok => "1", :error => "2"}

IO.puts(value)

name = "HELLO"

%{String.downcase(name) => name}
|> IO.inspect()

Map.keys(states1)
|> IO.inspect()

Map.values(states1)
|> IO.inspect()
|> Enum.map(&String.downcase/1)
|> IO.inspect()

data = %{
  name: "John",
  age: 27,
  city: "New York"
}

Map.drop(data, [:age])
|> IO.inspect()

Map.put(data, :city, "San Francisco")
|> IO.inspect()

Map.take(data, [:name, :age])
|> IO.inspect()

Map.has_key?(data, :name)
|> IO.inspect()

{key, value} = Map.pop(data, :name)

IO.puts(key)
IO.inspect(value)

person = %{name: "John", age: 27, city: "New York"}

%{name: username} = person
IO.puts(username)

%{name: _, age: age} = person
IO.puts(age)

%{name: _, age: _, city: city} = person
IO.puts(city)

%{name: name, age: age, city: "New York"} = person
IO.puts(name)

people = [
  %{name: "John", age: 27, city: "New York"},
  %{name: "Alice", age: 23, city: "Los Angeles"},
  %{name: "Bob", age: 30, city: "Chicago"}
]

for %{name: name, age: age} <- people, age < 30 do
  IO.puts("#{name} is #{age} years old")
end

%{person | age: 10, city: "Seoul"}
|> IO.inspect()
