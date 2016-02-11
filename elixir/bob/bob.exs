defmodule Bob do
  def hey(input) do
    cond do
      String.ends_with?(input, "?") == true -> "Sure."
      String.strip(input) == ""             -> "Fine. Be that way!"
      check_upcase(input)                   -> "Whoa, chill out!"
      input                                 -> "Whatever."
    end
  end

  def check_upcase(input) do
    if Regex.match?( ~r/[A-Z]/, input) ||
       Regex.match?( ~r/[\p{L}]/, input)
       do
        String.upcase(input) == input
    else
        false
    end
  end
end
