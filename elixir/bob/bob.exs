defmodule Bob do
  def hey(input) do
    cond do
      String.ends_with?(input, "?") == true -> "Sure."
      String.strip(input) == ""             -> "Fine. Be that way!"
      Regex.match?( ~r/[\p{L}]/, input) && String.upcase(input) == input -> "Whoa, chill out!"
      input                                 -> "Whatever."
    end
  end
end
