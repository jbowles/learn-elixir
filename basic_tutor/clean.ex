defmodule Clean do
  #IO.puts "Defining the function world"

  def world do
    IO.puts "Hello World\n"
  end

  #IO.puts "Function world defined"

  def byte_remainder(string,divisor,multiplier) do
    IO.puts "'#{string}'\t length == #{String.length(string)} ... remainder == #{rem((String.length(string)),divisor)*multiplier}"
    IO.puts "'#{string}'\t byte_size == #{byte_size(string)} ... remainder ==  #{rem((byte_size(string)),divisor)*multiplier}"
  end

  def naive_index(str) do
    String.split(str) 
    |> Enum.map( &(String.downcase(&1)) )
  end


end



IO.puts Clean.naive_index("this is a sentence")
Clean.world
Clean.byte_remainder("the string hełło", 3, 10)
Clean.byte_remainder("the string hello", 3, 10)
Clean.byte_remainder("√ç≈≤≥¬˚∆˙©ƒ∂ßåœ∑´†¥¨", 3, 10)
Clean.byte_remainder("89743827302-1iuhscgdsi6o", 3, 10)

IO.puts "string 'ł' is code point == #{?ł}"
IO.puts "string 'l' is code point == #{?l}"
IO.puts String.codepoints("hełło")
