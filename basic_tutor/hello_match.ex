defmodule Mymatcher do

  def matchme do
    {:hello,b,c} = {:hello, "matcher", 42}
    IO.puts b
    IO.puts c
  end

  # match against a tuple IFF first elem atom matches
  def matchit(tuple) do
    case tuple do
      {:me, b, c} ->
        IO.puts b
        IO.puts c
    end
  end

  def normalize({:down, str}) do
    String.downcase(str)
  end
  def normalize({:up, str}) do
    String.upcase(str)
  end
  def normalize({_, str}) do
    str
  end

  #def normalize(string_direction) do
  #  case string_direction do
  #    {:down, str} ->
  #      String.downcase(str)
  #    {:up, str} ->
  #      String.upcase(str)
  #    {_, str} ->
  #      str
  #  end
  #end

  # recursivley match against a list of tuples IFF first elem atom matches
  #  def matchit([tuple]) do
  #    {:ok,b,c} = tuple
  #    IO.puts b
  #    IO.puts c
  #  end

end

#Mymatcher.matchme
#Mymatcher.matchit({:me, "this","that"})
IO.puts Mymatcher.normalize({:up, "Up this that"})
IO.puts Mymatcher.normalize({:down, "Down THIS that"})
IO.puts Mymatcher.normalize({:ok, "Ok thiS that"})
#Mymatcher.matchit({:hello, "this", "that"})
