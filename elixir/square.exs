defmodule Math do
  def square(x), do: x * x

  def square_of_sum(a, b) do
    square(a + b)
  end
end

IO.puts("Square of sum: #{Math.square_of_sum(3, 4)}")
