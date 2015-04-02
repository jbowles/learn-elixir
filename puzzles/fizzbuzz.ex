defmodule Puzzles.FizzBuzz do

  # Enum.map(1..100, fn x -> IO.puts rem(x,5) end)
  def matcher do
    Enum.map(1..100, fn x ->
      IO.puts(case {rem(x,3), rem(x,5)} do
        {0,0} -> :fizzbuzz
        {0,_} -> :fizz
        {_,0} -> :buzz
        {_,_} -> x
      end)
    end)
  end

  #  def recurser, do: recurser(Enum.map(1..100, fn x -> x end))
  #  defp recurser([head|tail]) do
  #    {0,0} = {rem(head,3), rem(head, 5)} IO.puts("fizbuzz")
  #    {0,_} = {rem(head,3), rem(head, 5)} IO.puts("fiz")
  #    {_,0} = {rem(head,3), rem(head, 5)} IO.puts("buzz")
  #    {_,_} = {rem(head,3), rem(head, 5)} IO.puts(head)
  #  end

end

IO.puts Puzzles.FizzBuzz.matcher
