spawn_link fn -> raise "oops" end

receive do
  :hello -> "lets wait until the process fails"
end
