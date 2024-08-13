states1 = %{"AL" => "Albania", "DE" => "Germany", "FR" => "France"}
states2 = %{kr: "Korea", jp: "Japan"}

IO.puts(states1["AL"])
IO.puts(states2.kr)

%{:ok => value} = %{:ok => "1"}

IO.puts(value)


name = "HELLO"
%{String.downcase(name) => name}
|> IO.inspect
