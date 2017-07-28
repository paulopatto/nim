from strutils import parseFloat, formatFloat, ffDecimal

proc aplusb(a, b: float): float =
  return a + b

proc getNumber(): float =
  try:
    parseFloat(readLine(stdin))
  except ValueError:
    echo("Please enter a number: ")
    getNumber()

echo("First number please: ")
let first: float = getNumber()

echo("Second number please: ")
let second: float = getNumber()

echo("Result: " & formatFloat(aplusb(first, second), ffDecimal, 2))
