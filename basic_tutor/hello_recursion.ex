defmodule Recurser do

  def print_multi_msg(msg, n) when n <= 1 do
    IO.puts msg
  end

  def print_multi_msg(msg,n) do
    IO.puts msg
    print_multi_msg(msg, n - 1)
  end

  def sum_list([head|tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end

  def match_elem(tuple,base) when base <= 0 do
    tuple
  end

  def match_elem(tuple,base) do
    case tuple do
      {:service,a,b,c} ->
        IO.puts elem(a, 1)
        IO.puts elem(b, 1)
        IO.puts elem(c, 1)
        #case result do
        #  {:recurser, msg} ->
        #    IO.puts msg
        #end
      {:error, result} ->
        IO.puts result
      _ ->
        IO.puts "No match at base #{base}"
        match_elem(tuple, base - 1)
    end
  end

  def finder(t,base) when base <= -1 do
    t
  end

  def finder(t,base) do
    IO.puts "#{elem(elem(t, base),0)} :: #{elem(elem(t, base),1)}"
    finder(t, base - 1)
  end

end

val = {
  {:that, "that"},
  {:whose, "barn"},
  {:whose, "boot"},
  {:whose, "manure"},
  {:whose, "horse"},
  {:whose, "hay"},
  {:those, "those"}
}
Recurser.finder(val,(tuple_size(val) - 1))
#Enum.reduce(val, fn x -> elem(x, 1) end)

IO.puts Recurser.sum_list([2,5,7,9], 0)
service_tuple = {:service, {:recurser, "Message Payload"}, {:error, "Some Error"}, {:resurser, "resurser"}}
Recurser.match_elem(service_tuple,10)

error_tuple = {:this, "error message"}
Recurser.match_elem(error_tuple,10)
