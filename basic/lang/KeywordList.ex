defmodule MyModule do
  @styles [bg: "blue", fg: "white"]

  def print_styles(text, options \\ []) do
    options = Keyword.merge(@styles, options)
    IO.puts("Text: #{text}, Options: #{inspect(options)}")
    IO.puts("#{options[:bg]}")
  end
end

MyModule.print_styles("Hello", bg: "red", font: "bold")
