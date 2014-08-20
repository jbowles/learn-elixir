defmodule Mather do
  def numbers(x,y) do
    f = fn
      x,y when x>0 -> x + y
      x,y -> x*y
    end
    IO.puts f.(x,y)
  end

  # A tail call optimized fibonacci. 
  # found this at https://searchcode.com/codesearch/view/2719356/
  def fibonacci(n) do
    fibonacci(n, 1, 0)
  end

  defp fibonacci(0, _, result) do
    result
  end

  defp fibonacci(n, next, result) do
    fibonacci(n - 1, next + result, next)
  end
end

defmodule Fib do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n) when is_integer(n) and n > 1, do: fib(n-1) + fib(n-2)
  def fib(y), do: raise "Can't find Fibonacci for fib(#{y})"
end


#Mather.numbers(-10,40)
#Mather.numbers(10,40)


##looking at the time
#IO.puts Fib.fib(40)
#102334155
#elixir basic_math.ex  6.44s user 0.10s system 101% cpu 6.465 total

IO.puts Mather.fibonacci(40)
#102334155
#elixir basic_math.ex  0.26s user 0.09s system 123% cpu 0.284 total
