defmodule Control do
  def if_example(msg) do
    if String.length(msg) > 10 do
      "Valid string!"
    else
      "Invalid string."
    end
  end

  def case_example(msg) do
    case String.length(msg) do
      len when len > 10 -> "Valid string!"
      _ -> "Invalid string."
    end
  end

  def case_example2(map) do
    case map do
      {:ok, result} -> result
      {:error} -> "Uh oh!"
      _ -> "Catch all"
    end
  end

  def condition(value) do
    cond do
      value == 10 -> "Equal to 10"
      true -> "Catch all"
    end
  end
end

Control.if_example("Hello, world!")
|> IO.inspect()

Control.if_example("Hello!")
|> IO.inspect()

Control.case_example("Hello, world!")
|> IO.inspect()

Control.case_example("Hello!")
|> IO.inspect()

Control.case_example2({:ok, "Success!"})
|> IO.inspect()

Control.case_example2({:error})
|> IO.inspect()

Control.case_example2(:something_else)
|> IO.inspect()

Control.condition(10)
|> IO.inspect()

Control.condition({:fail, "Hello"})
|> IO.inspect()
