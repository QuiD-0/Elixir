DateTime.utc_now()
|> IO.inspect()

~D[2020-01-01]
|> IO.inspect()
|> Date.day_of_week()
|> IO.inspect()

~D[2020-01-01]
|> Date.add(10)
|> IO.inspect()

startDate = ~D[2020-01-01]
endDate = ~D[2020-07-10]

Date.diff(endDate, startDate)
|> IO.inspect()

Date.range(startDate, endDate)
|> Enum.each(&IO.inspect/1)
