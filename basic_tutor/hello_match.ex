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

  # recursivley match against a list of tuples IFF first elem atom matches
  #  def matchit([tuple]) do
  #    {:ok,b,c} = tuple
  #    IO.puts b
  #    IO.puts c
  #  end

end

#Mymatcher.matchme
Mymatcher.matchit({:me, "this","that"})
#Mymatcher.matchit({:hello, "this", "that"})
