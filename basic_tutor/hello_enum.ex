#Enum.map([1,2,3,4,5,6,7,8,9], fn x -> x * 3 end) |> Enum.filter(fn x -> rem(x,7) != 0 end)
#Enum.map([1,2,3,4,5,6,7,8,9], &(&1 * 3)) |> Enum.filter(&(rem(&1, 7) != 0))
#
#Stream.map([1,2,3,4,5,6,7,8,9], &(&1 *3))
##Stream<[enum: [7, 14, 21, 1, 2, 3, 4, 5],
## funs: [#Function<37.75994740/1 in Stream.map/2>]]>
#
## Stream does not copy the entire list piped to filter, instead it does it one by one
#Stream.map([7,14,21,1,2,3,4,5], &(&1 *3)) |> Enum.filter(&(rem(&1, 7) != 0))

defmodule WordEnum do

  #Enum.map(words, &(HashDict.new &1))
  ## map words and transfrom and write to file
  def mapper(text, filename) do
    {:ok, file} = File.open filename, [:write, :utf8]
    IO.write file, Enum.map(String.split(text), &(&1 <> "  -map,\n"))
  end

  ## stream words and transfrom and write to file
  def stream_mapper(text, filename) do
    {:ok, file} = File.open filename, [:write, :utf8]
    IO.write file, Stream.map(String.split(text), &(&1)) |> Enum.map(&((&1) <> "  -stream,\n"))
  end

  def readfile(filename) do
    #IO.puts File.read!(filename)
    case File.read(filename) do
      {:ok, body} -> IO.puts body
      {:error, err} -> IO.inspect err
    end
  end
end

suni = "Check out this sentence ç † ∫ ˆ ¶ ˆ § ¶ ® ƒ ¥ ¨ ˚ ¬∆ º and it has some words for counting and passing data from one function to another... yay."

f1 = "word_mapper.txt"
f2 = "word_stream_mapper.txt"
WordEnum.mapper(suni, f1)
WordEnum.stream_mapper(suni, f2)

WordEnum.readfile(f1)
WordEnum.readfile(f2)
