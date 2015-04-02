defmodule Comp do
  #obj = [1,2,3,4]
  def square(obj) do
    for num <- obj, do: num * num
  end
  #obj = ["","",""]
  def string_mesh(obj) do
    #Enum.map_reduce(obj, "", fn(x, acc) -> {x <> "*", x <> "/" <> acc} end)
    for  <- obj, do: " " <> str
  end
end
