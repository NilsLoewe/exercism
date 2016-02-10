defmodule Bob do
  def hey(input) do

    question_reply = "Sure."
    yell_reply     = "Whoa, chill out!"
    nothing_reply  = "Fine. Be that way!"
    anything_reply = "Whatever."

    cond do
      String.ends_with?(input, "?") == true -> question_reply
      String.strip(input) == "" -> nothing_reply
      check_upcase(input) -> yell_reply
      input -> anything_reply
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
