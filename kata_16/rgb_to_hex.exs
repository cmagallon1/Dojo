defmodule Kata do
    def clamp(n, min..max), do: max(min, min(n, max))
    
    def rgb(r,g,b) do
      Enum.map([r,g,b], fn n -> clamp(n, 0..255) |> Integer.to_string(16) |> String.pad_leading(2, "0") end) |> Enum.join("")
    end
end

IO.puts Kata.rgb(0,0,0) == "000000"
IO.puts Kata.rgb(0,0,-20) == "000000"
IO.puts Kata.rgb(1,2,3) == "010203"
IO.puts Kata.rgb(255,255,255) == "FFFFFF"
IO.puts Kata.rgb(255,255,300) == "FFFFFF"
IO.puts Kata.rgb(148,0,211) == "9400D3"
IO.puts Kata.rgb(212,53,12) == "D4350C"
IO.puts Kata.rgb(173,255,47) == "ADFF2F"
