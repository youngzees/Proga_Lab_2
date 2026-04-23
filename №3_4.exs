{n, _} = IO.read(:line) |> String.trim() |> Integer.parse()
numbers = IO.read(:line) |> String.trim() |> String.split()

Enum.each(numbers, fn num ->
  rev = String.reverse(num)
  if num == rev do
    IO.write("Yes ")
  else
    IO.write("No ")
  end
end)

IO.puts("")
