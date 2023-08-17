func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func printSecret(_ confirmPassword: String) -> String {
    if password == confirmPassword {
      return secret
    }

    return "Sorry. No hidden secrets here."
  }

  return printSecret
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let first = f(room)
  let second = f(first)
  let third = f(second)

  return (first, second, third)
}
