#{:ok, file} = File.open "file_hello", [:write]
#{:ok, file} = File.open "newfile.txt", [:write, :utf8]

#s = "Check out this sentece and it has some words for counting and passing data from one function to another... yay."

#words = Regex.scan(~r/\w+/,s)
#IO.binwrite file, Enum.map(words, &(to_string(&1) <> "-ending, "))

#IO.binwrite file, Enum.map(Regex.scan(~r/\w+/,s), &(to_string(&1) <> "-ending, "))
