defmodule GuessingGame do
  # Def compare/2
  def compare(secret_number, guess) when
    secret_number === guess do "Correct"
  end
  def compare(secret_number, guess) when
    guess - secret_number >= 2 do "Too high"
  end
  def compare(secret_number, guess) when
    guess - secret_number <= -2 do "Too low"
  end
  def compare(secret_number, guess) when
    guess - secret_number === -1 or guess - secret_number === 1 do "So close"
  end
  def compare(_secret_number, _guess), do: "Make a guess"

  # Def compare/1
  def compare(_), do: "Make a guess"
end
