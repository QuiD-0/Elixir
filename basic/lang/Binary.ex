binary = <<1, 2, 3, 4, "ok", "한글">>

byte_size(binary)
|> IO.inspect()

bit_size(binary)
|> IO.inspect()

binary
|> binary_slice(0, 2)
|> IO.inspect()
