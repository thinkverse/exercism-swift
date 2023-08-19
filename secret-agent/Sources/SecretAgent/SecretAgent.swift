func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  { password == $0 ? secret : "Sorry. No hidden secrets here." }
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let first: Int = f(room)
  let second: Int = f(first)
  let third: Int = f(second)

  return (first, second, third)
}
