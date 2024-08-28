defmodule Is2024Year do
  def check(%DateTime{year: 2024}), do: "Is 2024 year"
  def check(_), do: "Is not 2024 year"
end

DateTime.utc_now()
|> IO.inspect()

~D[2020-01-01]
|> IO.inspect()
|> Date.day_of_week()
|> IO.inspect()

~D[2020-01-01]
|> Date.add(10)
|> IO.inspect()

startDate = ~D[2020-06-01]
endDate = ~D[2020-07-01]

Date.diff(endDate, startDate)
|> IO.inspect()

Date.range(startDate, endDate)
|> Enum.each(&IO.inspect(&1))

Time.utc_now()
|> IO.inspect()

Time.add(Time.utc_now(), 10)
|> IO.inspect()

Time.new(23, 59, 59)
|> IO.inspect()

NaiveDateTime.utc_now()
|> IO.inspect()

DateTime.utc_now()
|> Is2024Year.check()
|> IO.inspect()
