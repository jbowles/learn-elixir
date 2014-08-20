Enum.map([1,2,3,4,5,6,7,8,9], fn x -> x * 3 end) |> Enum.filter(fn x -> rem(x,7) != 0 end)
Enum.map([1,2,3,4,5,6,7,8,9], &(&1 * 3)) |> Enum.filter(&(rem(&1, 7) != 0))

Stream.map([1,2,3,4,5,6,7,8,9], &(&1 *3))
#Stream<[enum: [7, 14, 21, 1, 2, 3, 4, 5],
# funs: [#Function<37.75994740/1 in Stream.map/2>]]>

# Stream does not copy the entire list piped to filter, instead it does it one by one
Stream.map([7,14,21,1,2,3,4,5], &(&1 *3)) |> Enum.filter(&(rem(&1, 7) != 0))


s = "Check out this sentece and it has some words for counting and passing data from one function to another... yay."
words = Regex.scan(~r/\w+/,s)
Enum.map(words, &(to_string(&1) <> "-ending, ")) |> IO.puts 

## stream words and transfrom and print to stdout
Stream.map(words, &(&1)) |> Enum.map(&(to_string(&1) <> "-postfixing, ")) |> IO.puts

Enum.map(words, &(HashDict.new &1))



