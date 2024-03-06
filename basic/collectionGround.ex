defmodule CollectionGround do
  @moduledoc """
  This module contains functions for working with collections.
  """

  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def double([]), do: []
  def double([head | tail]), do: [head * 2 | double(tail)]

end
