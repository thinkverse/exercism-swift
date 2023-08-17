// TODO: define the 'birthday' String constant
let birthday: String = "Birthday"

// TODO: define the 'valentine' String constant
let valentine: String = "Valentine's Day"

// TODO: define the 'anniversary' String constant
let anniversary: String = "Anniversary"

// TODO: define the 'space' Character constant
let space: Character = " "

// TODO: define the 'exclamation' Character constant
let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
  return "Happy\(space)\(occasion)\(space)\(name)\(exclamation)"
}

func graduationFor(name: String, year: Int) -> String {
  return """
  Congratulations\(space)\(name)\(exclamation)
  Class\(space)of\(space)\(year)
  """
}

func costOf(sign: String) -> Int {
  return 20 + (sign.count * 2)
}
