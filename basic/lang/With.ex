a =
  with startDate = ~D[2020-06-01],
       endDate = ~D[2020-07-01],
       do: Date.diff(endDate, startDate)

IO.inspect(a)

values = [1, 2, 3, 4, 5]

mean =
  with count = Enum.count(values),
       sum = Enum.sum(values),
       do: sum / count

IO.inspect(mean)
