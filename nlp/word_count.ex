defmodule WordCounter do
  def count(sent) do
    sent |> normalize |> find_words |> count_unique |> Enum.sort()
  end

  #Enum.sort(list)
  #def some(dict) do
    #Enum.map(list, &(elem(&1, 0))) # by word
    #Enum.map(list, &(elem(&1, 1))) #by count
    #Enum.map(list, &(to_string(elem(&1, 0))) )
    #end

  #hd = HashDict.new
  #hd = HashDict.put(hd, "new key", "new value")
  #HashDict.get(hd, "")
  #hd = HashDict.update(hd, "new_key", "new value", fn x -> x = "newer val" end)

  #Enum.map(words, fn x -> x end )
  #Enum.map(words, fn x -> to_string(x) <> "-end" end)
  #def count_words(words) do
  #  Enum.reduce(words, HashDict.new, fn(word, dict) -> HashDict.update(dict, word, ^1, &1 + 1) end)
  #end

  def count_unique(words), do: count_unique(HashDict.new, words)
  defp count_unique(hash, [head|tail]) do
    #hash = HashDict.update hash, head, 1, fn val -> val + 1 end
    hash = HashDict.update hash, head, 1, &(&1 + 1)
    count_unique hash, tail
  end
  defp count_unique(hash, []), do: hash

  def find_words(sent) do
    Regex.scan(~r/\w+/, sent)
  end

  def normalize(string) do
    String.downcase(string)
  end
end

s = "Check out this this sentece sentence and and and and it has some words for counting and passing data from one one one function to another... yay yay, yay."

IO.puts length(WordCounter.count(s))
#IO.puts Word.count(s)
#words = Word.find_words(s)
#IO.puts words

#count = Word.count_unique(words)
#IO.puts Word.normalize(s)
