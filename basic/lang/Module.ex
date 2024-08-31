import IO, only: [puts: 1]

defmodule Mod do
  def func1 do
    IO.puts("Hello, world!")
  end

  def func2 do
    func1()
    IO.puts("Goodbye, world!")
  end
end

Mod.func2()

defmodule Outer do
  defmodule Inner do
    def in_fun do
      IO.puts("Inner")
    end
  end

  def out_fun do
    Inner.in_fun()
    IO.puts("Outer")
  end
end

Outer.out_fun()

defmodule Import do
  def func do
    puts("Hello, world!")
  end

  def func2 do
    import List, only: [flatten: 1]

    flatten([[1, 2], [3, 4]])
    |> IO.inspect()
  end
end

Import.func()
Import.func2()

defmodule Alias do
  def func do
    alias IO, as: MyIO
    MyIO.puts("Hello, alias!")
  end
end

Alias.func()

defmodule MyMacro do
  defmacro __using__(_) do
    quote do
      IO.puts("Hello, world!")
    end
  end
end

defmodule Use do
  def func do
    use MyMacro
  end
end

Use.func()

defmodule Attr do
  @author "quid"
  def hello do
    IO.puts("Hello #{@author}")
  end
end

Attr.hello()

defmodule Attr2 do
  @attr 1
  def one do
    IO.puts("One: #{@attr}")
  end

  @attr 2
  def two do
    IO.puts("Two: #{@attr}")
  end
end

Attr2.one()
Attr2.two()

is_atom(Attr)
|> IO.inspect()

to_string(Attr)
|> IO.inspect()

(:"Elixir.Attr" === Attr)
|> IO.inspect()
